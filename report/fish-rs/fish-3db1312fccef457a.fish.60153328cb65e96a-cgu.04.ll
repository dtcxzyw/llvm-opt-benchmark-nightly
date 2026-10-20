Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.04?download=true
inline.NumInlined: 2047
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEB1i_:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !480, !noundef !8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !481
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit.i.i.i.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !483, !noundef !8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEBJ_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i.i
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !484
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEBJ_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEBJ_.exit

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEBJ_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !22, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #36
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !22, !invariant.load !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #36
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !22, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #36
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !22, !invariant.load !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #36
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB7_3vec3VecBJ_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit4, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBD_EEECs8frGy5WneL6_4fish.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.0.i1
  %i.c = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.d = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.e = icmp eq i64 %i.d, %.8.val
  br i1 %i.e, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.d, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #34
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph3
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %i.j = mul nuw nsw i64 %.8.val, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef 8) #36
  resume { ptr, i32 } %i.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBD_EEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.k = mul nuw nsw i64 %.8.val, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef 8) #36
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB7_3vec3VecBJ_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB7_3vec3VecBJ_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit4: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBD_EEECs8frGy5WneL6_4fish.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4cell4lazy5StateINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorENCNvNtCs8frGy5WneL6_4fish8wildcard33wildcard_test_flags_then_completes1_0EEB2q_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp ne i64 %.0.val, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i64 %.0.val, 2
  br i1 %.not.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i
    i64 1, label %bb.d
  ], !prof !23

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !487
  store i8 3, ptr %i.a, align 8, !alias.scope !487
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs8frGy5WneL6_4fish7threads8debounce8DebounceNtNtNtBI_6reader6reader15HighlightResultEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !510, !nonnull !8, !noundef !8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !510
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !513, !nonnull !8, !noundef !8
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !513
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1C_6reader6reader15HighlightResultEEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !516, !nonnull !8, !noundef !8
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !516
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit4

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1C_6reader6reader15HighlightResultEEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit4 unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !519, !nonnull !8, !noundef !8
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !519
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !522, !nonnull !8, !noundef !8
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !522
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit6

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit4
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit6: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit4, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs8frGy5WneL6_4fish7threads8debounce8DebounceNtNtNtBI_6reader6reader20AutosuggestionResultEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !545, !nonnull !8, !noundef !8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !545
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !548, !nonnull !8, !noundef !8
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !548
  %i.h = icmp eq i64 %i.g, 1
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event16EventDescriptionEBF_:bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

.sink.split:                                      ; preds = %bb.b, %bb.f
  %.sink = phi ptr [ %i.e, %bb.f ], [ %i.b, %bb.b ]
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !702, !nonnull !8, !noundef !8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !702
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #34
          to label %.body unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

.body:                                            ; preds = %bb.g, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.i, %bb.g ], [ %i.f, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #34
          to label %.body12 unwind label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !range !20, !alias.scope !703, !noundef !8
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body12 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.k

.body12:                                          ; preds = %bb.k, %bb.i, %.body
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.q, %bb.k ], [ %i.m, %bb.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val9 = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val10 = load i64, ptr %i.p, align 8, !noundef !8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish(ptr nonnull %.val9, i64 %.val10) #34
          to label %.body15 unwind label %bb.y

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body12

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val8 = load i64, ptr %i.s, align 8, !noundef !8 ; 6 uses
  %cond = icmp eq i64 %.val8, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish.exit, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.t = icmp eq i64 %i.v, %.val8
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBD_EEECs8frGy5WneL6_4fish.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, %bb.l
  %.sroa.0.0.i.i26 = phi i64 [ %i.v, %bb.l ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.0.i.i26
  %i.v = add nuw nsw i64 %.sroa.0.0.i.i26, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u)
          to label %bb.l unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph28
  %i.w = add i64 %.sroa.0.1.i.i27, 1              ; 2 uses
  %i.x = icmp eq i64 %i.w, %.val8
  br i1 %i.x, label %.body.i, label %.lr.ph28

bb.n:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = icmp eq i64 %i.v, %.val8
  br i1 %i.z, label %.body.i, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.n, %bb.m
  %.sroa.0.1.i.i27 = phi i64 [ %i.w, %bb.m ], [ %i.v, %bb.n ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.1.i.i27
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aa) #34
          to label %bb.m unwind label %bb.o

bb.o:                                             ; preds = %.lr.ph28
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

.body.i:                                          ; preds = %bb.m, %bb.n
  %i.ac = mul nuw nsw i64 %.val8, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 8) #36
  br label %.body15

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBD_EEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.l
  %i.ad = mul nuw nsw i64 %.val8, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ad, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish.exit

.body15:                                          ; preds = %.body.i, %.body12
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body12 ], [ %i.y, %.body.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !704, !noundef !8 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit, label %bb.p

bb.p:                                             ; preds = %.body15
  %i.ah = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !705
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBD_EEECs8frGy5WneL6_4fish.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !706, !noundef !8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish.exit
  %i.am = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !707
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19 unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.p, %.body15, %bb.q, %bb.v
  %.pn6 = phi { ptr, i32 } [ %i.at, %bb.v ], [ %.pn4, %bb.q ], [ %.pn4, %.body15 ], [ %.pn4, %bb.p ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !708, !noundef !8 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit21, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit
  %i.ar = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !709
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit21

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit21 unwind label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19: ; preds = %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish.exit, %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !710, !noundef !8 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit22, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19
  %i.ax = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !711
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit22

bb.x:                                             ; preds = %bb.w
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit22

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit22: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19, %bb.w, %bb.x
  ret void

bb.y:                                             ; preds = %bb.u, %bb.q, %.body12, %.body, %bb.c
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit21: ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit, %bb.u
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

end_hunk_1
begin_hunk_2_@_RNCNvNtCs8frGy5WneL6_4fish12env_dispatch25update_fish_color_supports1_0B5_:bb.a
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !905
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  unreachable

_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %i.l = load ptr, ptr %0, align 8, !alias.scope !909, !nonnull !8, !noundef !8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !909
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit4

bb.g:                                             ; preds = %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit4: ; preds = %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit, %bb.g
  %i.o = xor i1 %i.g, true
  ret i1 %i.o

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i32 @_RNCNvNtNtCs8frGy5WneL6_4fish8builtins8function14parse_cmd_opts0B7_(ptr %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6common14valid_var_name(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @_RNvNtCs8frGy5WneL6_4fish15parse_execution13varname_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  call void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread, label %bb.d

_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread: ; preds = %bb.d, %bb.c, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, %bb.b
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ], [ 0, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.sroa.0.0

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc noundef align 8 ptr @_RNvMNtNtNtCs8frGy5WneL6_4fish3env4impl3varNtB2_11ElectricVar8for_name(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit

_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !18, !noalias !917, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread

bb.e:                                             ; preds = %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @88, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 26, ptr %i.n, align 8
  store i64 -1, ptr %i.c, align 8
  %i.o = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.f unwind label %.loopexit.split-lp3.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.g, %.loopexit.split-lp3.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp3, %.loopexit.split-lp3.loopexit.split-lp.loopexit.split-lp ], [ %i.r, %bb.g ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #34
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp3.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc11.preheader, %bb.e
  %lpad.loopexit.split-lp3 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.e
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.p, i64 noundef %i.q, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef 1)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.s = load i8, ptr %i.d, align 8, !range !18, !alias.scope !918, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.i, label %.noexc11.preheader, !prof !13

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !919
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.v = load i8, ptr %i.u, align 1, !range !26, !alias.scope !918, !noundef !8
  store i8 %i.v, ptr %i.a, align 1, !noalias !919
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #33
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.i
  unreachable

.noexc11.preheader:                               ; preds = %bb.h
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit12 unwind label %.loopexit.split-lp3.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit12: ; preds = %.noexc11.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = load i64, ptr %i.c, align 8, !range !20, !alias.scope !920, !noundef !8
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit12
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.m

.body:                                            ; preds = %bb.m, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn8 = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.aa, %bb.m ], [ %i.y, %bb.k ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #34
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit12, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 0, ptr %i.af, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %.0.val, ptr %i.ab, align 8
  store i64 %.8.val, ptr %i.ac, align 8
  call void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  br label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body
  %lpad.loopexit.split-lp1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %.pn8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtNtBf_6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2h_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [216 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !926, !noalias !927, !align !17, !noundef !8 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !926, !noalias !927
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !18, !noalias !928, !noundef !8
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2f_.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #33, !noalias !928
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33, !noalias !928
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2f_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !928, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !928
  call void %i.f(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.a), !noalias !928, !inline_history !925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false), !noalias !928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !928
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtNtNtBh_11collections4hash3map7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3j_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !934, !noalias !935, !align !17, !noundef !8 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !934, !noalias !935
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !18, !noalias !936, !noundef !8
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtNtBf_11collections4hash3map7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3h_.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #33, !noalias !936
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33, !noalias !936
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtNtBf_11collections4hash3map7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3h_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !936, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !936
  call void %i.f(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a), !noalias !936, !inline_history !933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !936
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1S_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !942, !noalias !943, !align !17, !noundef !8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !942, !noalias !943
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.c, align 4, !range !18, !noalias !944, !noundef !8
  %i.d = trunc nuw i8 %.val.i.i to i1
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Q_.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #33, !noalias !944
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33, !noalias !944
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Q_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !noalias !944, !nonnull !8, !noundef !8
  %i.f = tail call noundef nonnull ptr %i.e(), !noalias !944, !inline_history !941
  store ptr %i.f, ptr %i.b, align 8, !noalias !944
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemId14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2 ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish10fd_monitorNtB2_16FdEventSignaller11try_consume(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = load i32, ptr %0, align 4, !range !27, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = call noundef i64 @read(i32 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 8) #36 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @_RNvCshLzK7otsFCg_5errno5errno()
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.d

.loopexit:                                        ; preds = %bb.b, %bb.d, %bb.e
  %i.g = icmp sgt i64 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef i32 @_RNvCshLzK7otsFCg_5errno5errno()
  %i.i = icmp eq i32 %i.h, 11
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCs3pTQYeTDvAj_9fish_util6perror(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 4)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvMNtCs8frGy5WneL6_4fish10fd_monitorNtB2_16FdEventSignaller3new() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @eventfd(i32 noundef 0, i32 noundef 526336) #36 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i32, i32 } @_RNvNtCs8frGy5WneL6_4fish3fds14heightenize_fd(i32 noundef %i.a, i1 noundef zeroext true) ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs3pTQYeTDvAj_9fish_util6perror(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 7)
  tail call void @_RNvCs5UXtnEuoeIl_11fish_common24exit_without_destructors(i32 noundef 1) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCs3pTQYeTDvAj_9fish_util6perror(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 7)
  tail call void @_RNvCs5UXtnEuoeIl_11fish_common24exit_without_destructors(i32 noundef 1) #37
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = extractvalue { i32, i32 } %i.c, 1
  ret i32 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs8frGy5WneL6_4fish10fd_monitorNtB2_16FdEventSignaller4post(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = load i32, ptr %0, align 4, !range !27, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  call void @_RINvNtCse7JGOylGlDZ_3nix6unistd5writeNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned10BorrowedFdECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, i32 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8)
  %i.e = load i32, ptr %i.b, align 8, !range !10, !noundef !8
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.b

end_hunk_2
begin_hunk_3_@_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser16parse_expression:bb.a
    i8 3, label %bb.k
    i8 5, label %bb.s
  ]

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #33, !noalias !1908, !inline_history !1880
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = add nuw i64 %1, 1
  %i.ag = tail call fastcc { ptr, ptr } @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_3_arg_expression(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.af, i64 noundef %2), !inline_history !1880 ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_4_arg_expression.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !8, !nonnull !8
  %i.al = invoke { i64, i64 } %i.ak(ptr noundef nonnull %i.ah)
          to label %bb.m unwind label %bb.q, !inline_history !1880

bb.m:                                             ; preds = %bb.l
  %i.am = extractvalue { i64, i64 } %i.al, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1908
  store ptr %i.ah, ptr %i.a, align 8, !noalias !1908
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %i.an, align 8, !noalias !1908
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.ao, align 8, !noalias !1908
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.am, ptr %i.ap, align 8, !noalias !1908
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1909
  %i.aq = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 121) 32, i64 noundef range(i64 1, 9) 8) #36, !noalias !1909 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.n, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13UnaryOperatorE3newBM_.exit.i, !prof !13

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #37
          to label %.noexc31 unwind label %bb.o

.noexc31:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13UnaryOperatorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #34
          to label %common.resume unwind label %bb.p, !inline_history !1880

bb.p:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !inline_history !1880
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13UnaryOperatorE3newBM_.exit.i: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1908
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_4_arg_expression.exit

common.resume:                                    ; preds = %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit26, %bb.ab, %bb.q, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.as, %bb.o ], [ %i.bk, %bb.ab ], [ %i.au, %bb.q ], [ %.pn17, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit26 ], [ %i.cf, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_(ptr nonnull %i.ah, ptr nonnull %i.ai) #34
          to label %common.resume unwind label %bb.r, !inline_history !1880

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !inline_history !1880
  unreachable

_RNvXsd_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_5TokenNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.i
  %i.aw = tail call fastcc ptr @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser26parse_combining_expression(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2)
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_4_arg_expression.exit

bb.s:                                             ; preds = %bb.i
  %i.ax = tail call fastcc ptr @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser19parse_parenthetical(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2)
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_4_arg_expression.exit

bb.t:                                             ; preds = %bb.b
  %i.ay = add nuw i64 %1, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.az = icmp eq i64 %1, -2
  br i1 %i.az, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = add nuw i64 %1, 2
  store i64 4, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ba, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 28, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 1)
          to label %bb.y unwind label %bb.x

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #37
          to label %bb.w unwind label %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.x, %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp66, %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp ], [ %i.bb, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc23.preheader, %bb.v
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.w:                                             ; preds = %bb.af, %bb.v
  unreachable

bb.x:                                             ; preds = %bb.z, %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  %i.bc = load i8, ptr %i.e, align 8, !range !18, !alias.scope !1910, !noundef !8
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.z, label %.noexc23.preheader, !prof !13

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1911
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !range !26, !alias.scope !1910, !noundef !8
  store i8 %i.bf, ptr %i.b, align 1, !noalias !1911
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #33
          to label %.noexc20 unwind label %bb.x

.noexc20:                                         ; preds = %bb.z
  unreachable

.noexc23.preheader:                               ; preds = %bb.y
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit24 unwind label %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit24: ; preds = %.noexc23.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !1912, !noundef !8 ; 5 uses
  %i.bi = load i64, ptr %0, align 8, !range !21, !alias.scope !1912, !noundef !8
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.aa, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit24
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i unwind label %bb.ab, !noalias !1913

bb.ab:                                            ; preds = %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #34
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1912, !nonnull !8, !noundef !8
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bp = add nsw i64 %i.bh, 1
  store i64 %i.bp, ptr %i.bg, align 8, !alias.scope !1912
  %i.bq = icmp slt i64 %i.bh, 384307168202282325
  call void @llvm.assume(i1 %i.bq)
  %i.br = icmp eq i64 %i.bh, 0
  br i1 %i.br, label %bb.ad, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit

bb.ad:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ay, ptr %i.bs, align 8, !alias.scope !1914
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_4_arg_expression.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit26, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_4_arg_expression.exit: ; preds = %bb.k, %bb.s, %_RNvXsd_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_5TokenNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13UnaryOperatorE3newBM_.exit.i, %bb.d, %bb.f, %bb.g, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit30
  %.sroa.7.0 = phi ptr [ undef, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit30 ], [ @262, %bb.d ], [ undef, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit ], [ %i.q, %bb.f ], [ %i.t, %bb.g ], [ undef, %bb.k ], [ @264, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13UnaryOperatorE3newBM_.exit.i ], [ @246, %bb.s ], [ @262, %_RNvXsd_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_5TokenNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit ]
  %.sroa.0.0 = phi ptr [ null, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit30 ], [ %i.n, %bb.d ], [ null, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit ], [ %i.p, %bb.f ], [ %i.s, %bb.g ], [ null, %bb.k ], [ %i.aq, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13UnaryOperatorE3newBM_.exit.i ], [ %i.ax, %bb.s ], [ %i.aw, %_RNvXsd_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_5TokenNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit ]
  %i.bt = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.bu = insertvalue { ptr, ptr } %i.bt, ptr %.sroa.7.0, 1
  ret { ptr, ptr } %i.bu

bb.ae:                                            ; preds = %bb.c
  %i.bv = add nuw i64 %1, 1
  store i64 4, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bv, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 28, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef 1)
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.c
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #37
          to label %bb.w unwind label %.loopexit.split-lp48.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit26: ; preds = %bb.ag, %.loopexit.split-lp48.loopexit.split-lp.loopexit.split-lp
  %.pn17 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp48.loopexit.split-lp.loopexit.split-lp ], [ %i.bw, %bb.ag ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp48.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc27.preheader, %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit26

bb.ag:                                            ; preds = %bb.ai, %bb.ae
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  %i.bx = load i8, ptr %i.i, align 8, !range !18, !alias.scope !1915, !noundef !8
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.ai, label %.noexc27.preheader, !prof !13

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1916
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !range !26, !alias.scope !1915, !noundef !8
  store i8 %i.ca, ptr %i.c, align 1, !noalias !1916
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #33
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.ai
  unreachable

.noexc27.preheader:                               ; preds = %bb.ah
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit28 unwind label %.loopexit.split-lp48.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit28: ; preds = %.noexc27.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !1917, !noundef !8 ; 5 uses
  %i.cd = load i64, ptr %0, align 8, !range !21, !alias.scope !1917, !noundef !8
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.aj, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i29

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit28
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i29 unwind label %bb.ak, !noalias !1918

bb.ak:                                            ; preds = %bb.aj
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #34
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i29: ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit28
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !1917, !nonnull !8, !noundef !8
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.ck = add nsw i64 %i.cc, 1
  store i64 %i.ck, ptr %i.cb, align 8, !alias.scope !1917
  %i.cl = icmp slt i64 %i.cc, 384307168202282325
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp eq i64 %i.cc, 0
  br i1 %i.cm, label %bb.am, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit30

bb.am:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i29
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.cn, align 8, !alias.scope !1919
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit30

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit30: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i29, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_4_arg_expression.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser19parse_parenthetical(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = icmp ugt i64 %1, -4
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw i64 %1, 3
  %.not = icmp ult i64 %i.m, %2
  br i1 %.not, label %bb.d, label %_RNvXsd_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_5TokenNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !8 ; 2 uses
  %i.q = icmp ult i64 %1, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !nonnull !8, !align !17, !noundef !8
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !8
  %i.x = tail call fastcc i24 @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions16token_for_string(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.u, i64 noundef %i.w)
  %.sroa.0.0.extract.trunc = trunc i24 %i.x to i8
  %i.y = icmp eq i8 %.sroa.0.0.extract.trunc, 5
  br i1 %i.y, label %bb.g, label %_RNvXsd_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_5TokenNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #33
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = add nuw i64 %1, 1
  %i.aa = tail call fastcc { ptr, ptr } @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser16parse_expression(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %i.z, i64 noundef %2) ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0      ; 7 uses
  %.not31 = icmp eq ptr %i.ab, null
  br i1 %.not31, label %_RNvXsd_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_5TokenNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1      ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !8, !nonnull !8
  %i.af = invoke { i64, i64 } %i.ae(ptr noundef nonnull %i.ab)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.q, %bb.p, %bb.k, %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.thread78

bb.j:                                             ; preds = %bb.h
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 8 uses
  %.not32 = icmp ugt i64 %i.ah, %2
  br i1 %.not32, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @244, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #37
          to label %bb.m unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.ai = icmp eq i64 %i.ah, %2
  br i1 %i.ai, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.an, %bb.q, %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aj = load i64, ptr %i.o, align 8, !noundef !8 ; 2 uses
  %i.ak = icmp ult i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.p, label %bb.q

end_hunk_3
begin_hunk_4_@_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser20parse_binary_primary:bb.a

.preheader.preheader:                             ; preds = %bb.a
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %1) ; 3 uses
  %i.l = sub i64 %umax, %1
  %.not48 = icmp ugt i64 %i.l, 2
  br i1 %.not48, label %bb.c, label %.preheader.preheader.split

.preheader.preheader.split:                       ; preds = %.preheader.preheader
  %i.m = add i64 %umax, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 4, ptr %i.f, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.m, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 28, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.f, i64 noundef 1)
          to label %bb.z unwind label %bb.y

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #33
  unreachable

bb.c:                                             ; preds = %.preheader.preheader
  %i.n = add nuw i64 %1, 1                        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noundef !8 ; 4 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !8, !align !17, !noundef !8 ; 3 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.n ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !8
  %i.y = tail call fastcc i24 @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions16token_for_string(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.v, i64 noundef %i.x) ; 2 uses
  %i.z = and i24 %i.y, 255
  %i.aa = icmp eq i24 %i.z, 2
  br i1 %i.aa, label %bb.f, label %bb.w

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #33
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.af, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.ag = load i64, ptr %i.c, align 8, !range !16, !noundef !8
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !25, !noundef !8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.ak, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.al) #37
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.ak, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.an = icmp ule i64 %i.af, %i.aj
  tail call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h
  store i64 %i.aj, ptr %i.d, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.am, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.af, ptr %.sroa.614.0..sroa_idx, align 8
  %i.ao = add nuw i64 %1, 2                       ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.p
  br i1 %i.ap, label %bb.m, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull align 4 %i.ad, i64 %i.aq, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.p, %bb.n, %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.p, %bb.n
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.ao ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !8, !noundef !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.aw, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.o unwind label %bb.k

bb.n:                                             ; preds = %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #37
          to label %bb.l unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.ax = load i64, ptr %i.b, align 8, !range !16, !noundef !8
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !25, !noundef !8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.bc = load i64, ptr %i.bb, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ba, i64 %i.bc) #37
          to label %bb.l unwind label %bb.k

bb.q:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %i.bb, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.be = icmp ule i64 %i.aw, %i.ba
  tail call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not30 = icmp eq i64 %i.aw, 0
  br i1 %.not30, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.ba, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bh = lshr i24 %i.y, 8
  %i.bi = trunc nuw i24 %i.bh to i16
  store i16 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %1, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.j, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1971
  %i.bl = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 121) 72, i64 noundef range(i64 1, 9) 8) #36, !noalias !1971 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.s, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13BinaryPrimaryE3newBM_.exit, !prof !13

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #37
          to label %.noexc34 unwind label %bb.t

.noexc34:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13BinaryPrimaryEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e) #34
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.ac, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.bn, %bb.t ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.ca, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13BinaryPrimaryE3newBM_.exit: ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bl, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.bp = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr nonnull align 4 %i.au, i64 %i.bp, i1 false)
  br label %bb.r

bb.w:                                             ; preds = %bb.d, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13BinaryPrimaryE3newBM_.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit ], [ %i.bl, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13BinaryPrimaryE3newBM_.exit ], [ null, %bb.d ]
  ret ptr %.sroa.0.0

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.x ], [ %i.br, %bb.y ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.noexc36.preheader
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.y:                                             ; preds = %bb.aa, %.preheader.preheader.split
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %.preheader.preheader.split
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  %i.bs = load i8, ptr %i.g, align 8, !range !18, !alias.scope !1972, !noundef !8
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.aa, label %.noexc36.preheader, !prof !13

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1973
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !range !26, !alias.scope !1972, !noundef !8
  store i8 %i.bv, ptr %i.a, align 1, !noalias !1973
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #33
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.aa
  unreachable

.noexc36.preheader:                               ; preds = %bb.z
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit37 unwind label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit37: ; preds = %.noexc36.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1974, !noundef !8 ; 5 uses
  %i.by = load i64, ptr %0, align 8, !range !21, !alias.scope !1974, !noundef !8
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.ab, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit37
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i unwind label %bb.ac, !noalias !1975

bb.ac:                                            ; preds = %bb.ab
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #34
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit37
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !1974, !nonnull !8, !noundef !8
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.cf = add nsw i64 %i.bx, 1
  store i64 %i.cf, ptr %i.bw, align 8, !alias.scope !1974
  %i.cg = icmp slt i64 %i.bx, 384307168202282325
  call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp eq i64 %i.bx, 0
  br i1 %i.ch, label %bb.ae, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit

bb.ae:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %umax, ptr %i.ci, align 8, !alias.scope !1976
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_3_arg_expression(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = icmp ult i64 %2, %1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %2, %1                       ; 2 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.f = icmp eq i64 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e, !prof !14

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = add nuw i64 %1, 1                        ; 4 uses
  %i.h = icmp eq i64 %1, -1
  br i1 %i.h, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @259, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #33
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !8 ; 2 uses
  %i.k = icmp ult i64 %i.g, %i.j
  br i1 %i.k, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #33
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !align !17, !noundef !8
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.g ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !8
  %i.s = tail call fastcc i24 @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions16token_for_string(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.p, i64 noundef %i.r) ; 2 uses
  %.sroa.019.1.extract.shift = lshr i24 %i.s, 8
  %.sroa.019.1.extract.trunc = trunc i24 %.sroa.019.1.extract.shift to i8
  %trunc = trunc i24 %i.s to i8
  switch i8 %trunc, label %bb.l [
    i8 2, label %bb.j
    i8 4, label %bb.k
  ]

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #33
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = tail call fastcc ptr @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser20parse_binary_primary(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit

bb.k:                                             ; preds = %bb.h
  %i.u = tail call fastcc { ptr, ptr } @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_unary_expression(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %i.g) ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 6 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit, label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.w = tail call fastcc { ptr, ptr } @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_unary_expression(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit

bb.m:                                             ; preds = %bb.k
  %i.z = extractvalue { ptr, ptr } %i.u, 1        ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = icmp ugt i64 %1, -4
  br i1 %i.aa, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.q, %bb.p
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.o:                                             ; preds = %bb.q
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.ac = add nuw i64 %1, 2
  %i.ad = add nuw i64 %1, 3
  %i.ae = invoke fastcc { ptr, ptr } @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_unary_expression(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %i.ac, i64 noundef %i.ad)
          to label %bb.r unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #37
          to label %bb.o unwind label %bb.n

bb.r:                                             ; preds = %bb.p
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 3 uses
  %.not27 = icmp eq ptr %i.af, null
  br i1 %.not27, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
end_hunk_4
begin_hunk_5_@_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_unary_expression:bb.a
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2038

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  %i.cg = load i8, ptr %i.e, align 8, !range !18, !alias.scope !2040, !noalias !2038, !noundef !8
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.w, label %.noexc38.i73.preheader, !prof !13

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2041
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !range !26, !alias.scope !2040, !noalias !2038, !noundef !8
  store i8 %i.cj, ptr %i.a, align 1, !noalias !2041
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #33
          to label %.noexc34.i unwind label %bb.u, !noalias !2038

.noexc34.i:                                       ; preds = %bb.w
  unreachable

.noexc38.i73.preheader:                           ; preds = %bb.v
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39.i unwind label %.loopexit.split-lp47.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2038

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39.i: ; preds = %.noexc38.i73.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2038
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !2042, !noundef !8 ; 5 uses
  %i.cm = load i64, ptr %0, align 8, !range !21, !alias.scope !2042, !noundef !8
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.x, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i74

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i74 unwind label %bb.y, !noalias !2043

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #34
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i74: ; preds = %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !2042, !nonnull !8, !noundef !8
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ct = add nsw i64 %i.cl, 1
  store i64 %i.ct, ptr %i.ck, align 8, !alias.scope !2042
  %i.cu = icmp slt i64 %i.cl, 384307168202282325
  call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp eq i64 %i.cl, 0
  br i1 %i.cv, label %bb.aa, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit.i75

bb.aa:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i74
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ao, ptr %i.cw, align 8, !alias.scope !2044
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit.i75

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit.i75: ; preds = %bb.aa, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2038
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc79, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit.i75
  %i.cx = call fastcc ptr @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser20parse_binary_primary(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) ; 2 uses
  %.not10.i = icmp eq ptr %i.cx, null
  br i1 %.not10.i, label %bb.ac, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser13parse_primary.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  %i.cy = load i64, ptr %i.z, align 8, !alias.scope !2045, !noundef !8 ; 2 uses
  %i.cz = icmp ult i64 %1, %i.cy
  br i1 %i.cz, label %.noexc42, label %.invoke156

.noexc42:                                         ; preds = %bb.ac
  %i.da = load ptr, ptr %i.ad, align 8, !alias.scope !2045, !nonnull !8, !align !17, !noundef !8
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %1 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !2045, !nonnull !8, !noundef !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noalias !2045, !noundef !8
  %i.dg = call fastcc i24 @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions16token_for_string(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.df)
  %.sroa.0.0.extract.trunc.i = trunc i24 %i.dg to i8
  %i.dh = icmp eq i8 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.dh, label %.noexc44, label %bb.at

.noexc44:                                         ; preds = %.noexc42
  %i.di = call noundef zeroext i1 @_RNvCsbHolxaesP1E_18fish_feature_flags12feature_test(i8 noundef 5)
  br i1 %i.di, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2045
  %i.dj = load i64, ptr %i.z, align 8, !alias.scope !2045, !noundef !8 ; 2 uses
  %i.dk = icmp ult i64 %1, %i.dj
  br i1 %i.dk, label %.noexc45, label %.invoke156

bb.ae:                                            ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2045
  store i64 0, ptr %i.n, align 8, !noalias !2045
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !2045
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !2045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2045
  store i64 4, ptr %i.l, align 8, !noalias !2045
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %1, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !2045
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 26, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.l, i64 noundef 1)
          to label %bb.am unwind label %bb.al, !noalias !2045

.noexc45:                                         ; preds = %bb.ad
  %i.dl = load ptr, ptr %i.ad, align 8, !alias.scope !2045, !nonnull !8, !align !17, !noundef !8
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %1 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !2045, !nonnull !8, !noundef !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !2045, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2045
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.dq, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.dr = load i64, ptr %i.j, align 8, !range !16, !noalias !2045, !noundef !8
  %i.ds = trunc nuw i64 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !25, !noalias !2045, !noundef !8 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.ds, label %.noexc47, label %bb.af, !prof !13

.invoke156:                                       ; preds = %bb.ad, %bb.ac
  %i.dw = phi i64 [ %i.cy, %bb.ac ], [ %i.dj, %bb.ad ]
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #33
  unreachable

.noexc47:                                         ; preds = %.noexc45
  %i.dx = load i64, ptr %i.dv, align 8, !noalias !2045
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.du, i64 %i.dx) #37
  unreachable

bb.af:                                            ; preds = %.noexc45
  %i.dy = load ptr, ptr %i.dv, align 8, !noalias !2045, !nonnull !8, !noundef !8 ; 2 uses
  %i.dz = icmp ule i64 %i.dq, %i.du
  call void @llvm.assume(i1 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2045
  %.not29.i = icmp eq i64 %i.dq, 0
  br i1 %.not29.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = shl nuw nsw i64 %i.dq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr nonnull align 4 %i.do, i64 %i.ea, i1 false), !noalias !2045
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  store i64 %i.du, ptr %i.k, align 8, !noalias !2045
  %.sroa.4.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.dy, ptr %.sroa.4.0..sroa_idx69.i, align 8, !noalias !2045
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.dq, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2045
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %1, ptr %i.eb, align 8, !noalias !2045
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.ao, ptr %i.ec, align 8, !noalias !2045
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2046
  %i.ed = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 121) 40, i64 noundef range(i64 1, 9) 8) #36, !noalias !2046 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ai, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions11JustAStringE3newBM_.exit.i, !prof !13

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37
          to label %.noexc40.i unwind label %bb.aj, !noalias !2045

.noexc40.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions11JustAStringEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k) #34
          to label %common.resume unwind label %bb.ak, !noalias !2045

bb.ak:                                            ; preds = %bb.aj
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2045
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions11JustAStringE3newBM_.exit.i: ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !2045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2045
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser13parse_primary.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.av, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit.split-lp198 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2045
  unreachable

bb.al:                                            ; preds = %bb.an, %bb.ae
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2045

bb.am:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  %i.ei = load i8, ptr %i.m, align 8, !range !18, !alias.scope !2047, !noalias !2045, !noundef !8
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.an, label %.noexc42.i.preheader, !prof !13

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2048
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !range !26, !alias.scope !2047, !noalias !2045, !noundef !8
  store i8 %i.el, ptr %i.h, align 1, !noalias !2048
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #33
          to label %.noexc38.i unwind label %bb.al, !noalias !2045

.noexc38.i:                                       ; preds = %bb.an
  unreachable

.noexc42.i.preheader:                             ; preds = %bb.am
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit43.i unwind label %bb.ao, !noalias !2045

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.al, %bb.ao
  %.pn.i41 = phi { ptr, i32 } [ %i.em, %bb.ao ], [ %i.eh, %bb.al ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2045

bb.ao:                                            ; preds = %.noexc42.i.preheader
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit43.i: ; preds = %.noexc42.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !2045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2045
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !2049, !noundef !8 ; 5 uses
  %i.ep = load i64, ptr %0, align 8, !range !21, !alias.scope !2049, !noundef !8
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ap, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit43.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.aq, !noalias !2050

bb.aq:                                            ; preds = %bb.ap
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #34
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.ap, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit43.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !2049, !nonnull !8, !noundef !8
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.ew = add nsw i64 %i.eo, 1
  store i64 %i.ew, ptr %i.en, align 8, !alias.scope !2049
  %i.ex = icmp slt i64 %i.eo, 384307168202282325
  call void @llvm.assume(i1 %i.ex)
  %i.ey = icmp eq i64 %i.eo, 0
  br i1 %i.ey, label %bb.as, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit.i

bb.as:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.ez, align 8, !alias.scope !2051
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit.i

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit.i: ; preds = %bb.as, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2045
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser13parse_primary.exit

bb.at:                                            ; preds = %.noexc42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2045
  store i64 0, ptr %i.r, align 8, !noalias !2045
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !2045
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !2045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2045
  store i64 4, ptr %i.p, align 8, !noalias !2045
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ao, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !2045
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 36, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef 1)
          to label %bb.aw unwind label %bb.av, !noalias !2045

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45.i: ; preds = %bb.av, %bb.au
  %.pn31.i = phi { ptr, i32 } [ %i.fa, %bb.au ], [ %i.fb, %bb.av ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2045

bb.au:                                            ; preds = %.noexc46.i.preheader
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45.i

bb.av:                                            ; preds = %bb.ax, %bb.at
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2045

bb.aw:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %i.fc = load i8, ptr %i.q, align 8, !range !18, !alias.scope !2052, !noalias !2045, !noundef !8
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ax, label %.noexc46.i.preheader, !prof !13

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2053
  %i.fe = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !range !26, !alias.scope !2052, !noalias !2045, !noundef !8
  store i8 %i.ff, ptr %i.i, align 1, !noalias !2053
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #33
          to label %.noexc36.i unwind label %bb.av, !noalias !2045

.noexc36.i:                                       ; preds = %bb.ax
  unreachable

.noexc46.i.preheader:                             ; preds = %bb.aw
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit47.i unwind label %bb.au, !noalias !2045

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit47.i: ; preds = %.noexc46.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !2045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2045
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !2054, !noundef !8 ; 5 uses
  %i.fi = load i64, ptr %0, align 8, !range !21, !alias.scope !2054, !noundef !8
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ay, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i48.i

bb.ay:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit47.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i48.i unwind label %bb.az, !noalias !2055

bb.az:                                            ; preds = %bb.ay
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #34
          to label %common.resume unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i48.i: ; preds = %bb.ay, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit47.i
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !2054, !nonnull !8, !noundef !8
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.fp = add nsw i64 %i.fh, 1
  store i64 %i.fp, ptr %i.fg, align 8, !alias.scope !2054
  %i.fq = icmp slt i64 %i.fh, 384307168202282325
  call void @llvm.assume(i1 %i.fq)
  %i.fr = icmp eq i64 %i.fh, 0
  br i1 %i.fr, label %bb.bb, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit49.i

bb.bb:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i48.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.fs, align 8, !alias.scope !2056
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit49.i

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit49.i: ; preds = %bb.bb, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2045
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser13parse_primary.exit

common.resume:                                    ; preds = %bb.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i71, %bb.o, %bb.az, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45.i, %bb.aq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %bb.aj, %bb.br, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.bj, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.gg, %bb.bg ], [ %i.gv, %bb.br ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.gk, %bb.bj ], [ %i.er, %bb.aq ], [ %.pn31.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45.i ], [ %.pn.i41, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %.pn.i72, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i71 ], [ %i.ef, %bb.aj ], [ %i.co, %bb.y ], [ %i.cb, %bb.o ], [ %i.fk, %bb.az ]
  resume { ptr, i32 } %common.resume.op

bb.bc:                                            ; preds = %bb.d
  %i.ft = add nuw i64 %1, 1
  %i.fu = tail call fastcc { ptr, ptr } @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_unary_expression(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %i.ft, i64 noundef %2) ; 2 uses
  %i.fv = extractvalue { ptr, ptr } %i.fu, 0      ; 4 uses
  %.not21 = icmp eq ptr %i.fv, null
  br i1 %.not21, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser13parse_primary.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fw = extractvalue { ptr, ptr } %i.fu, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fw) ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !invariant.load !8, !nonnull !8
  %i.fz = invoke { i64, i64 } %i.fy(ptr noundef nonnull %i.fv)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.ga = extractvalue { i64, i64 } %i.fz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.fv, ptr %i.u, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.fw, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %1, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %i.ga, ptr %i.gd, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2057
  %i.ge = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 121) 32, i64 noundef range(i64 1, 9) 8) #36, !noalias !2057 ; 3 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.bf, label %bb.bi, !prof !13

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #37
          to label %.noexc25 unwind label %bb.bg

.noexc25:                                         ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13UnaryOperatorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u) #34
          to label %common.resume unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.bi:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser13parse_primary.exit

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser13parse_primary.exit: ; preds = %bb.ab, %bb.f, %bb.g, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit49.i, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit.i, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions11JustAStringE3newBM_.exit.i, %bb.bi, %bb.bc, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit
  %.sroa.5.1 = phi ptr [ undef, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit ], [ @264, %bb.bi ], [ @264, %bb.bc ], [ @256, %bb.ab ], [ @246, %bb.f ], [ @252, %bb.g ], [ @238, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit49.i ], [ @238, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit.i ], [ @238, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions11JustAStringE3newBM_.exit.i ]
  %.sroa.0.1 = phi ptr [ null, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit ], [ %i.ge, %bb.bi ], [ null, %bb.bc ], [ %i.cx, %bb.ab ], [ %i.an, %bb.f ], [ %i.bz, %bb.g ], [ null, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit49.i ], [ null, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit.i ], [ %i.ed, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions11JustAStringE3newBM_.exit.i ]
  %i.gi = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.gj = insertvalue { ptr, ptr } %i.gi, ptr %.sroa.5.1, 1
  ret { ptr, ptr } %i.gj

bb.bj:                                            ; preds = %bb.bd
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_(ptr nonnull %i.fv, ptr nonnull %i.fw) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.bj
  %lpad.loopexit.split-lp204 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.bk:                                            ; preds = %bb.c
  %i.gl = add nuw i64 %1, 1
  store i64 4, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.gl, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 28, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef 1)
          to label %bb.bo unwind label %bb.bn

bb.bl:                                            ; preds = %bb.c
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #37
          to label %bb.bm unwind label %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.bn, %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp206, %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gm, %bb.bn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc27.preheader, %bb.bl
  %lpad.loopexit.split-lp206 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bp, %bb.bk
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  %i.gn = load i8, ptr %i.w, align 8, !range !18, !alias.scope !2058, !noundef !8
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.bp, label %.noexc27.preheader, !prof !13

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2059
  %i.gp = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !range !26, !alias.scope !2058, !noundef !8
  store i8 %i.gq, ptr %i.t, align 1, !noalias !2059
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #33
          to label %.noexc unwind label %bb.bn

.noexc:                                           ; preds = %bb.bp
  unreachable

.noexc27.preheader:                               ; preds = %bb.bo
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit28 unwind label %.loopexit.split-lp126.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit28: ; preds = %.noexc27.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !2060, !noundef !8 ; 5 uses
  %i.gt = load i64, ptr %0, align 8, !range !21, !alias.scope !2060, !noundef !8
  %i.gu = icmp eq i64 %i.gs, %i.gt
  br i1 %i.gu, label %bb.bq, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i

bb.bq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit28
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i unwind label %bb.br, !noalias !2061

bb.br:                                            ; preds = %bb.bq
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #34
          to label %common.resume unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.bq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit28
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !2060, !nonnull !8, !noundef !8
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.ha = add nsw i64 %i.gs, 1
  store i64 %i.ha, ptr %i.gr, align 8, !alias.scope !2060
  %i.hb = icmp slt i64 %i.gs, 384307168202282325
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp eq i64 %i.gs, 0
  br i1 %i.hc, label %bb.bt, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit

bb.bt:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.hd, align 8, !alias.scope !2062
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser5error.exit: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit.i.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser13parse_primary.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser26parse_combining_expression(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 14 uses
  %i.m = alloca [24 x i8], align 8                ; 14 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.ay

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 6 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = invoke fastcc { ptr, ptr } @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser22parse_unary_expression(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2)
          to label %bb.c unwind label %.loopexit.split-lp95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 5 uses
  %.not44.peel = icmp eq ptr %i.u, null           ; 2 uses
  br i1 %.not44.peel, label %.loopexit156.thread, label %bb.d

.loopexit156.thread:                              ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.432.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx179, align 8
  %.sroa.533.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.533.0..sroa_idx180, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.af

bb.d:                                             ; preds = %bb.c
  %i.v = extractvalue { ptr, ptr } %i.t, 1        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !8, !nonnull !8
  %i.y = invoke { i64, i64 } %i.x(ptr noundef nonnull %i.u)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.o, align 8, !alias.scope !2086, !noundef !8 ; 3 uses
  %i.aa = load i64, ptr %i.m, align 8, !range !21, !alias.scope !2086, !noundef !8
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EE8grow_oneB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.g unwind label %.loopexit.split-lp162, !noalias !2087

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = load ptr, ptr %i.n, align 8, !alias.scope !2086, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.z ; 2 uses
  store ptr %i.u, ptr %i.ad, align 8, !noalias !2087
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.v, ptr %i.ae, align 8, !noalias !2087
  %i.af = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !2086
  %i.ag = extractvalue { i64, i64 } %i.y, 1       ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %2
  br i1 %i.ah, label %.peel.next, label %.loopexit93

.loopexit93thread-pre-split:                      ; preds = %bb.w, %bb.ao, %_RNvMs1_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser9add_error.exit
  %.sroa.016.1.ph = phi i64 [ %.sroa.016.0118, %bb.w ], [ %.sroa.016.2.lcssa181, %bb.ao ], [ %.sroa.016.2.lcssa181, %_RNvMs1_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser9add_error.exit ]
  %.pr = load i64, ptr %i.o, align 8
  br label %.loopexit93

.loopexit93:                                      ; preds = %bb.ad, %.loopexit93thread-pre-split, %bb.g
  %i.ai = phi i64 [ %.pr, %.loopexit93thread-pre-split ], [ %i.af, %bb.g ], [ %i.co, %bb.ad ] ; 2 uses
  %.sroa.016.1 = phi i64 [ %.sroa.016.1.ph, %.loopexit93thread-pre-split ], [ %i.ag, %bb.g ], [ %i.cp, %bb.ad ]
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
end_hunk_5
begin_hunk_6_@_RNvNtNtCs8frGy5WneL6_4fish8builtins6source6source:bb.a
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.z:                                             ; preds = %bb.y
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0
  %i.cc = extractvalue { ptr, i64 } %i.ca, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !8, !noundef !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !8
  store i64 1, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ce, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.cg, ptr %.sroa.59.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cb, i64 noundef %i.cc, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef 1)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !4470)
  %i.ci = load i8, ptr %i.w, align 8, !range !18, !alias.scope !4470, !noundef !8
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ac, label %.noexc95.preheader, !prof !13

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4471
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !range !26, !alias.scope !4470, !noundef !8
  store i8 %i.cl, ptr %i.b, align 1, !noalias !4471
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #33
          to label %.noexc84 unwind label %bb.aa

.noexc84:                                         ; preds = %bb.ac
  unreachable

.noexc95.preheader:                               ; preds = %bb.ab
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit96 unwind label %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit96: ; preds = %.noexc95.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v)
          to label %bb.ah unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn58 = phi { ptr, i32 } [ %i.cm, %bb.ae ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #34
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit96
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.at, %bb.aj, %bb.ag, %bb.ad
  %.pn64 = phi { ptr, i32 } [ %i.cn, %bb.ag ], [ %.pn62, %bb.at ], [ %i.cs, %bb.aj ], [ %.pn58, %bb.ad ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #34
          to label %.thread172.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.av, %bb.ah
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.co = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr null, ptr %i.co, align 8, !alias.scope !4472
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr null, ptr %i.cp, align 8, !alias.scope !4472
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store ptr null, ptr %i.cq, align 8, !alias.scope !4472
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store i8 0, ptr %i.cr, align 8, !alias.scope !4472
  invoke void @_RINvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB3_5Error13append_to_msgcEB9_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.y, i32 noundef 10)
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc16builtin_strerror(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.z) #34
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !8, !noundef !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !8
  store i64 -1, ptr %i.s, align 8, !alias.scope !4473
  %.sroa.0134.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.cu, ptr %.sroa.0134.sroa.4.0..sroa_idx, align 8, !alias.scope !4473
  %.sroa.0134.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.cw, ptr %.sroa.0134.sroa.5.0..sroa_idx, align 8, !alias.scope !4473
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.ao, ptr %.sroa.4135.0..sroa_idx, align 8, !alias.scope !4473
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.aq, ptr %.sroa.6136.0..sroa_idx, align 8, !alias.scope !4473
  %.sroa.7137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr null, ptr %.sroa.7137.0..sroa_idx, align 8, !alias.scope !4473
  %.sroa.8139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr null, ptr %.sroa.8139.0..sroa_idx, align 8, !alias.scope !4473
  %.sroa.9140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i8 0, ptr %.sroa.9140.0..sroa_idx, align 8, !alias.scope !4473
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error9to_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.s)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.z) #34
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.ak
  invoke void @_RINvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB3_5Error13append_to_msgRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB9_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #34
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !4474)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.ao, ptr %i.cz, align 8, !alias.scope !4475
  %i.da = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %i.aq, ptr %i.da, align 8, !alias.scope !4475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false), !alias.scope !4476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ap unwind label %bb.an

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
          to label %bb.as unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.an, %bb.al
  %.pn60 = phi { ptr, i32 } [ %i.db, %bb.ar ], [ %i.cy, %bb.an ], [ %i.cx, %bb.al ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.s) #34
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.ap
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.as:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.s)
          to label %bb.av unwind label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.aq
  %.pn62 = phi { ptr, i32 } [ %i.dc, %bb.au ], [ %.pn60, %bb.aq ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #34
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r)
          to label %bb.aw unwind label %bb.ag

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac)
          to label %bb.ax unwind label %.thread185

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.dm, %bb.dk, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.dg

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cp, %bb.aa, %bb.dn, %bb.dh, %bb.cw, %.body108, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit105, %.body111, %bb.at, %bb.aq, %bb.an, %bb.al, %bb.aj, %bb.af, %bb.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.az:                                            ; preds = %bb.e
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val89 = load i32, ptr %i.dd, align 8, !noundef !8
  %.not.i = icmp eq i32 %.val89, -1
  br i1 %.not.i, label %bb.ba, label %bb.bb

.thread190:                                       ; preds = %_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val89191 = load i32, ptr %i.de, align 8, !noundef !8
  %.not.i192 = icmp eq i32 %.val89191, -1
  br i1 %.not.i192, label %bb.ba, label %.thread193

bb.ba:                                            ; preds = %.thread190, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.df = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358)
          to label %bb.dl unwind label %.thread185 ; 2 uses

.thread193:                                       ; preds = %.thread190, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 1, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.bf unwind label %.thread185

bb.bb:                                            ; preds = %bb.az
  %i.dg = invoke noundef i32 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams8stdin_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.bc unwind label %.thread185

bb.bc:                                            ; preds = %bb.bb
  %i.dh = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish3nix6isatty(i32 noundef %i.dg)
          to label %bb.bd unwind label %.thread185

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.dh, label %bb.be, label %.thread193

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.di = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @356, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 46, ptr %i.dj, align 8
  store i64 -1, ptr %i.ad, align 8
  %i.dk = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.di unwind label %bb.dh     ; 2 uses

bb.bf:                                            ; preds = %.thread193
  %i.dl = load i64, ptr %i.g, align 8, !range !16, !noundef !8
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !25, !noundef !8 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %bb.bf
  %i.dq = load i64, ptr %i.dp, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #37
          to label %bb.k unwind label %.thread185

bb.bh:                                            ; preds = %bb.bf
  %i.dr = load ptr, ptr %i.dp, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ds = icmp ne i64 %i.do, 0
  tail call void @llvm.assume(i1 %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 45, ptr %i.dr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.do, ptr %i.du, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.dr, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 1, ptr %.sroa.531.0..sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !4477
  %i.dv = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 121) 40, i64 noundef range(i64 1, 9) 8) #36, !noalias !4477 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.bi, label %bb.bl, !prof !13

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37
          to label %.noexc97 unwind label %bb.bj

.noexc97:                                         ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f) #34
          to label %.thread172.thread unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.bl:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.dv, ptr %i.ag, align 8
  %i.dz = invoke noundef i32 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams8stdin_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.x unwind label %bb.j

bb.bm:                                            ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @350, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @351) #37
          to label %bb.k unwind label %bb.j

bb.bn:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ea = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8
  %i.eb = atomicrmw add ptr %i.ea, i64 1 monotonic, align 8
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ed = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish6parserNtB4_5Block12source_block(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noundef nonnull %i.ed)
          to label %bb.bq unwind label %bb.j

bb.bp:                                            ; preds = %bb.bn
  tail call void @llvm.trap()
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.ee = invoke noundef i64 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser10push_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.q)
          to label %bb.br unwind label %bb.j

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ef = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8
  %i.eg = atomicrmw add ptr %i.ef, i64 1 monotonic, align 8
  %i.eh = icmp slt i64 %i.eg, 0
  br i1 %i.eh, label %bb.ca, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ej = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4478)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ej, ptr %i.a, align 8, !noalias !4478
  %i.ek = load ptr, ptr %i.ei, align 8, !alias.scope !4478, !nonnull !8, !noundef !8 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 3 uses
  %i.em = load i64, ptr %i.el, align 8, !noalias !4478, !noundef !8
  %.not.i98 = icmp eq i64 %i.em, 0
  br i1 %.not.i98, label %bb.bu, label %bb.bt, !prof !14

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #37
          to label %bb.by unwind label %bb.bw, !noalias !4478

bb.bu:                                            ; preds = %bb.bs
  store i64 -1, ptr %i.el, align 8, !noalias !4478
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 24 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !4478, !noundef !8
  store ptr %i.ej, ptr %i.en, align 8, !noalias !4478
  %i.ep = load i64, ptr %i.ek, align 8, !noalias !4478, !noundef !8 ; 2 uses
  %i.eq = icmp ne i64 %i.ep, 0
  call void @llvm.assume(i1 %i.eq)
  %i.er = add i64 %i.ep, 1                        ; 2 uses
  store i64 %i.er, ptr %i.ek, align 8, !noalias !4478
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.bv, label %bb.cb, !prof !13

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.trap()
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = atomicrmw sub ptr %i.ej, i64 1 release, align 8, !noalias !4479
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.bz, label %.thread177

bb.bx:                                            ; preds = %bb.bz
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4478
  unreachable

bb.by:                                            ; preds = %bb.bt
  unreachable

bb.bz:                                            ; preds = %bb.bw
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %.thread177 unwind label %bb.bx, !noalias !4478

bb.ca:                                            ; preds = %bb.br
  call void @llvm.trap()
  unreachable

bb.cb:                                            ; preds = %bb.bu
  store i64 0, ptr %i.el, align 8, !noalias !4478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.ek, ptr %i.p, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.eo, ptr %i.ex, align 8
  %. = zext i1 %i.ar to i64
  %i.ey = add nuw nsw i64 %i.am, %.               ; 3 uses
  %i.ez = icmp samesign ugt i64 %i.ey, %3
  br i1 %i.ez, label %bb.cd, label %bb.cc, !prof !13

.body111:                                         ; preds = %bb.cw, %bb.ce, %bb.da
  %.pn74 = phi { ptr, i32 } [ %i.gp, %bb.da ], [ %i.fc, %bb.ce ], [ %.pn70, %bb.cw ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs6_BE_INtBE_13ScopedRefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE10scoped_setNCNvB1n_14scoped_replace0B1P_E0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16) %i.p) #34
          to label %.thread177 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.cb
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3
  invoke void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0EE9from_iterB4c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fb)
          to label %bb.cf unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.ey, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #37
          to label %bb.k unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cg, %bb.ch, %bb.cj, %bb.ck, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.cd, %bb.cc, %bb.cf
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body111

bb.cf:                                            ; preds = %bb.cc
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 141
  %.val90 = load i8, ptr %i.fe, align 1, !range !18, !noundef !8
  %i.ff = trunc nuw i8 %.val90 to i1
  invoke void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack8set_argv(ptr noundef nonnull align 8 %i.fd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, i1 noundef zeroext %i.ff)
          to label %bb.cg unwind label %bb.ce

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !nonnull !8, !align !17, !noundef !8
  %i.fi = invoke { i32, i32 } @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader11reader_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %.sroa.010.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fh)
          to label %bb.ch unwind label %bb.ce     ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.fj = extractvalue { i32, i32 } %i.fi, 1
  invoke void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser9pop_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, i64 noundef %i.ee)
          to label %bb.ci unwind label %bb.ce

bb.ci:                                            ; preds = %bb.ch
  %i.fk = extractvalue { i32, i32 } %i.fi, 0
  %i.fl = trunc i32 %i.fk to i1
  br i1 %i.fl, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fm = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !nonnull !8, !noundef !8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !8
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fo, i64 noundef %i.fq)
          to label %bb.cn unwind label %bb.ce

bb.ck:                                            ; preds = %bb.ci
  %i.fr = invoke noundef i32 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser11last_status(ptr noundef nonnull align 8 %0)
          to label %bb.cl unwind label %bb.ce     ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  %i.fs = icmp ne i32 %i.fr, 0
  %..i = zext i1 %i.fs to i64
  br label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.cl
  %.sroa.101.1 = phi i32 [ %i.fj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ], [ %i.fr, %bb.cl ] ; 2 uses
  %.sroa.0.1 = phi i64 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ], [ %..i, %bb.cl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs6_BE_INtBE_13ScopedRefCellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE10scoped_setNCNvB1n_14scoped_replace0B1P_E0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16) %i.p)
          to label %bb.dc unwind label %bb.j

bb.cn:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.547.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @352, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 29, ptr %i.fu, align 8
  store i64 -1, ptr %i.i, align 8
  %i.fv = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.co unwind label %.loopexit.split-lp205.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit105: ; preds = %bb.cp, %.loopexit.split-lp205.loopexit.split-lp.loopexit.split-lp
  %.pn66 = phi { ptr, i32 } [ %lpad.loopexit.split-lp228, %.loopexit.split-lp205.loopexit.split-lp.loopexit.split-lp ], [ %i.ge, %bb.cp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #34
          to label %.body108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp205.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc106.preheader, %bb.cn, %bb.co
  %lpad.loopexit.split-lp228 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit105

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.fw, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.val86 = load i64, ptr %i.fx, align 8, !noundef !8
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.val86
  %i.fz = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull %.val, ptr noundef nonnull %i.fy, ptr noundef nonnull @347, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @347, i64 1))
          to label %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit unwind label %.loopexit.split-lp205.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.co
  %i.ga = extractvalue { ptr, i64 } %i.fv, 1
  %i.gb = extractvalue { ptr, i64 } %i.fv, 0
  %i.gc = load ptr, ptr %i.fw, align 8, !nonnull !8
  %i.gd = load i64, ptr %i.fx, align 8
  %.sroa.3.0 = select i1 %i.fz, i64 7, i64 %i.gd
  %.sroa.020.0 = select i1 %i.fz, ptr @353, ptr %i.gc
  store i64 1, ptr %i.h, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.020.0, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.518.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.gb, i64 noundef %i.ga, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef 1)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.cr, %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cq:                                            ; preds = %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4480)
  %i.gf = load i8, ptr %i.j, align 8, !range !18, !alias.scope !4480, !noundef !8
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.cr, label %.noexc106.preheader, !prof !13

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4481
  %i.gh = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !range !26, !alias.scope !4480, !noundef !8
  store i8 %i.gi, ptr %i.c, align 1, !noalias !4481
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @354) #33
          to label %.noexc unwind label %bb.cp

.noexc:                                           ; preds = %bb.cr
  unreachable

.noexc106.preheader:                              ; preds = %bb.cq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit107 unwind label %.loopexit.split-lp205.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit107: ; preds = %.noexc106.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.gj = load i64, ptr %i.i, align 8, !range !20, !alias.scope !4482, !noundef !8
  %i.gk = icmp eq i64 %i.gj, -1
  br i1 %i.gk, label %bb.cy, label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit107
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body108 unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.cs
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.cy unwind label %bb.cv

.body108:                                         ; preds = %bb.cv, %bb.ct, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit105
  %.pn68 = phi { ptr, i32 } [ %.pn66, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit105 ], [ %i.gn, %bb.cv ], [ %i.gl, %bb.ct ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #34
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body108

bb.cw:                                            ; preds = %bb.cx, %.body108
  %.pn70 = phi { ptr, i32 } [ %i.go, %bb.cx ], [ %.pn68, %.body108 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #34
          to label %.body111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cy
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit107, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ao, ptr %.sroa.4146.0..sroa_idx, align 8, !alias.scope !4483
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.aq, ptr %.sroa.6147.0..sroa_idx, align 8, !alias.scope !4483
  %.sroa.7148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %.sroa.7148.0..sroa_idx, align 8, !alias.scope !4483
  %.sroa.8150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr null, ptr %.sroa.8150.0..sroa_idx, align 8, !alias.scope !4483
  %.sroa.9151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i8 0, ptr %.sroa.9151.0..sroa_idx, align 8, !alias.scope !4483
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cz unwind label %bb.cx

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body111 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.cz
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cm

bb.dc:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !4484)
  call void @llvm.experimental.noalias.scope.decl(metadata !4485)
  %i.gr = load ptr, ptr %i.ag, align 8, !alias.scope !4486, !nonnull !8, !noundef !8
  %i.gs = atomicrmw sub ptr %i.gr, i64 1 release, align 8, !noalias !4486
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.dd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.de

.thread172:                                       ; preds = %.thread177, %bb.dn, %.thread185, %bb.de
  %.sroa.0.3 = phi i32 [ %.sroa.0.2154, %bb.de ], [ %.sroa.0.1153.ph, %.thread185 ], [ %.sroa.0.0164, %bb.dn ], [ %.sroa.0.0164, %.thread177 ]
  %.sroa.021.3 = phi i8 [ %.sroa.021.2, %bb.de ], [ %.sroa.021.1.ph, %.thread185 ], [ %.sroa.021.0165, %bb.dn ], [ %.sroa.021.0165, %.thread177 ]
  %.pn76.pn = phi { ptr, i32 } [ %i.gv, %bb.de ], [ %lpad.thr_comm, %.thread185 ], [ %.pn76166, %bb.dn ], [ %.pn76166, %.thread177 ] ; 2 uses
  %i.gu = trunc nuw i8 %.sroa.021.3 to i1
  br i1 %i.gu, label %.thread172.thread198, label %.thread172.thread

bb.de:                                            ; preds = %bb.dd
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.thread172

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.gw = trunc nuw i8 %.sroa.021.2 to i1
  br i1 %i.gw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit
  %i.gx = call noundef i32 @close(i32 noundef %.sroa.0.2154) #36 ; 0 uses
  br label %bb.dg

bb.dg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, %bb.df, %bb.c, %bb.b, %bb.f, %bb.ay
  %.sroa.101.2 = phi i32 [ %i.al, %bb.b ], [ undef, %bb.f ], [ 1, %bb.ay ], [ 2, %bb.c ], [ %.sroa.101.1, %bb.df ], [ %.sroa.101.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit ]
  %.sroa.0.2 = phi i64 [ 1, %bb.b ], [ 0, %bb.f ], [ 1, %bb.ay ], [ 1, %bb.c ], [ %.sroa.0.1, %bb.df ], [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit ]
  %.sroa.101.0.insert.ext = zext i32 %.sroa.101.2 to i64
  %.sroa.101.0.insert.shift = shl nuw i64 %.sroa.101.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or i64 %.sroa.101.0.insert.shift, %.sroa.0.2
  ret i64 %.sroa.0.0.insert.insert

bb.dh:                                            ; preds = %bb.di, %bb.be
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #34
          to label %.thread172.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %bb.be
  %i.gz = extractvalue { ptr, i64 } %i.dk, 0
  %i.ha = extractvalue { ptr, i64 } %i.dk, 1
  store i64 -1, ptr %i.ae, align 8, !alias.scope !4487
  %.sroa.0123.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.gz, ptr %.sroa.0123.sroa.4.0..sroa_idx, align 8, !alias.scope !4487
end_hunk_6
begin_hunk_7_@_RNvNtNtCs8frGy5WneL6_4fish8builtins8function8function:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !4632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !4632
  store i64 0, ptr %i.bc, align 8, !noalias !4632
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !4632
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 0, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !4632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !4632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !4632
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @422, ptr %i.dj, align 8, !noalias !4632
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 26, ptr %i.dk, align 8, !noalias !4632
  store i64 -1, ptr %i.ba, align 8, !noalias !4632
  %i.dl = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
          to label %bb.ai unwind label %.loopexit.split-lp82.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633 ; 2 uses

bb.i:                                             ; preds = %.noexc93
  %i.dm = load i64, ptr %i.dg, align 8, !noalias !4632
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dm) #37
          to label %.noexc94 unwind label %bb.aw

.noexc94:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc93
  %i.dn = load ptr, ptr %i.dg, align 8, !noalias !4632, !nonnull !8, !noundef !8 ; 4 uses
  %i.do = icmp ule i64 %i.db, %i.df
  call void @llvm.assume(i1 %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4632
  %.not.i92 = icmp eq i64 %i.db, 0
  br i1 %.not.i92, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.n, %bb.j
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.l, !noalias !4633

bb.l:                                             ; preds = %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %.body.i unwind label %bb.m, !noalias !4633

bb.m:                                             ; preds = %bb.l
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4633
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.o, !noalias !4633

bb.n:                                             ; preds = %bb.j
  %i.dr = shl nuw nsw i64 %i.db, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dn, ptr nonnull align 4 %i.cz, i64 %i.dr, i1 false), !noalias !4633
  br label %bb.k

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ds, %bb.o ], [ %i.dp, %bb.l ]
  store i64 %i.df, ptr %i.cc, align 8, !alias.scope !4630
  store ptr %i.dn, ptr %.sroa.450.0..sroa_idx, align 8, !alias.scope !4630
  store i64 %i.db, ptr %.sroa.551.0..sroa_idx, align 8, !alias.scope !4630
  br label %.body98

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  store i64 %i.df, ptr %i.cc, align 8, !alias.scope !4630
  store ptr %i.dn, ptr %.sroa.450.0..sroa_idx, align 8, !alias.scope !4630
  store i64 %i.db, ptr %.sroa.551.0..sroa_idx, align 8, !alias.scope !4630
  %i.dt = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6common15valid_func_name(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dn, i64 noundef %i.db)
          to label %.noexc95 unwind label %bb.aw

.noexc95:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  br i1 %i.dt, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !4632
  store i64 0, ptr %i.ax, align 8, !noalias !4632
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !4632
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 0, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !4632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !4632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !4632
  %i.du = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @418, ptr %i.du, align 8, !noalias !4632
  %i.dv = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 25, ptr %i.dv, align 8, !noalias !4632
  store i64 -1, ptr %i.av, align 8, !noalias !4632
  %i.dw = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %bb.r unwind label %.loopexit.split-lp94.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633 ; 2 uses

bb.q:                                             ; preds = %.noexc95
  %i.dx = load ptr, ptr %.sroa.450.0..sroa_idx, align 8, !alias.scope !4630, !nonnull !8, !noundef !8
  %i.dy = load i64, ptr %.sroa.551.0..sroa_idx, align 8, !alias.scope !4630, !noundef !8
  %i.dz = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish15parser_keywords27parser_keywords_is_reserved(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dx, i64 noundef %i.dy)
          to label %.noexc96 unwind label %bb.aw

.noexc96:                                         ; preds = %bb.q
  br i1 %i.dz, label %bb.z, label %bb.ax

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.s, %.loopexit.split-lp94.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp557, %.loopexit.split-lp94.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ee, %bb.s ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av) #34
          to label %.body55.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633

.loopexit.split-lp94.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc53.i.preheader, %bb.p
  %lpad.loopexit.split-lp557 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ea = extractvalue { ptr, i64 } %i.dw, 0
  %i.eb = extractvalue { ptr, i64 } %i.dw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !4632
  %i.ec = load ptr, ptr %.sroa.450.0..sroa_idx, align 8, !alias.scope !4630, !nonnull !8, !noundef !8
  %i.ed = load i64, ptr %.sroa.551.0..sroa_idx, align 8, !alias.scope !4630, !noundef !8
  store i64 1, ptr %i.au, align 8, !noalias !4632
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ec, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !4632
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.ed, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !4632
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ea, i64 noundef %i.eb, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef 1)
          to label %bb.t unwind label %bb.s, !noalias !4633

bb.s:                                             ; preds = %bb.u, %bb.r
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633

bb.t:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !4634)
  %i.ef = load i8, ptr %i.aw, align 8, !range !18, !alias.scope !4634, !noalias !4632, !noundef !8
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.u, label %.noexc53.i.preheader, !prof !13

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4635
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !range !26, !alias.scope !4634, !noalias !4632, !noundef !8
  store i8 %i.ei, ptr %i.al, align 1, !noalias !4635
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @419) #33
          to label %.noexc49.i unwind label %bb.s, !noalias !4633

.noexc49.i:                                       ; preds = %bb.u
  unreachable

.noexc53.i.preheader:                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit54.i unwind label %.loopexit.split-lp94.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit54.i: ; preds = %.noexc53.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !4632
  %i.ej = load i64, ptr %i.av, align 8, !range !20, !alias.scope !4636, !noalias !4632, !noundef !8
  %i.ek = icmp eq i64 %i.ej, -1
  br i1 %i.ek, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit54.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.w, !noalias !4633

bb.w:                                             ; preds = %bb.v
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %.body55.i unwind label %bb.x, !noalias !4633

bb.x:                                             ; preds = %bb.w
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4633
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i unwind label %bb.y, !noalias !4633

.body55.i:                                        ; preds = %bb.y, %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i
  %.pn35.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %i.en, %bb.y ], [ %i.el, %bb.w ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #34
          to label %.body98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !4632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !4632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !4632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !4632
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i.invoke

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.aj, %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.body55.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit59.i, %.body64.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit69.i, %.body74.i, %bb.aq
  %lpad.loopexit.split-lp555 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4637
  unreachable

bb.z:                                             ; preds = %.noexc96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !4632
  store i64 0, ptr %i.as, align 8, !noalias !4632
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !4632
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 0, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !4632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !4632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !4632
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @420, ptr %i.eo, align 8, !noalias !4632
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 48, ptr %i.ep, align 8, !noalias !4632
  store i64 -1, ptr %i.aq, align 8, !noalias !4632
  %i.eq = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq)
          to label %bb.aa unwind label %.loopexit.split-lp88.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit59.i: ; preds = %bb.ab, %.loopexit.split-lp88.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn37.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp525, %.loopexit.split-lp88.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ev, %bb.ab ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq) #34
          to label %.body64.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633

.loopexit.split-lp88.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc60.i.preheader, %bb.z
  %lpad.loopexit.split-lp525 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit59.i

bb.aa:                                            ; preds = %bb.z
  %i.er = extractvalue { ptr, i64 } %i.eq, 0
  %i.es = extractvalue { ptr, i64 } %i.eq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !4632
  %i.et = load ptr, ptr %.sroa.450.0..sroa_idx, align 8, !alias.scope !4630, !nonnull !8, !noundef !8
  %i.eu = load i64, ptr %.sroa.551.0..sroa_idx, align 8, !alias.scope !4630, !noundef !8
  store i64 1, ptr %i.ap, align 8, !noalias !4632
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.et, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !4632
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.eu, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !4632
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.er, i64 noundef %i.es, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.ap, i64 noundef 1)
          to label %bb.ac unwind label %bb.ab, !noalias !4633

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit59.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !4638)
  %i.ew = load i8, ptr %i.ar, align 8, !range !18, !alias.scope !4638, !noalias !4632, !noundef !8
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ad, label %.noexc60.i.preheader, !prof !13

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4639
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !range !26, !alias.scope !4638, !noalias !4632, !noundef !8
  store i8 %i.ez, ptr %i.am, align 1, !noalias !4639
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @421) #33
          to label %.noexc47.i unwind label %bb.ab, !noalias !4633

.noexc47.i:                                       ; preds = %bb.ad
  unreachable

.noexc60.i.preheader:                             ; preds = %bb.ac
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit61.i unwind label %.loopexit.split-lp88.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit61.i: ; preds = %.noexc60.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4632
  %i.fa = load i64, ptr %i.aq, align 8, !range !20, !alias.scope !4640, !noalias !4632, !noundef !8
  %i.fb = icmp eq i64 %i.fa, -1
  br i1 %i.fb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit61.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i63.i unwind label %bb.af, !noalias !4633

bb.af:                                            ; preds = %bb.ae
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body64.i unwind label %bb.ag, !noalias !4633

bb.ag:                                            ; preds = %bb.af
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4633
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i63.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i unwind label %bb.ah, !noalias !4633

.body64.i:                                        ; preds = %bb.ah, %bb.af, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit59.i
  %.pn39.i = phi { ptr, i32 } [ %.pn37.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit59.i ], [ %i.fe, %bb.ah ], [ %i.fc, %bb.af ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as) #34
          to label %.body98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4633

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i63.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i63.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !4632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4632
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i.invoke

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i.invoke: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i
  %.sink509.sroa.phi = phi ptr [ %.sink509.sroa.gep, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i ], [ %.sink509.sroa.gep643, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i ]
  %.sink509.sroa.phi644 = phi ptr [ %.sink509.sroa.gep645, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i ], [ %.sink509.sroa.gep646, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i ]
  %.sink509.sroa.phi647 = phi ptr [ %.sink509.sroa.gep648, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i ], [ %.sink509.sroa.gep649, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i ]
  %.sink509.sroa.phi650 = phi ptr [ %.sink509.sroa.gep651, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i ], [ %.sink509.sroa.gep652, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i ]
  %.sink509.sroa.phi653 = phi ptr [ %.sink509.sroa.gep654, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i ], [ %.sink509.sroa.gep655, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i ]
  %.sink509 = phi ptr [ %i.ay, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i ], [ %i.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit67.i ]
  store ptr null, ptr %.sink509.sroa.phi647, align 8, !noalias !4632
  store ptr null, ptr %.sink509.sroa.phi650, align 8, !noalias !4632
  store i8 0, ptr %.sink509.sroa.phi653, align 8, !noalias !4632
  store ptr %i.cu, ptr %.sink509.sroa.phi, align 8, !noalias !4632
  store i64 %i.cw, ptr %.sink509.sroa.phi644, align 8, !noalias !4632
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %.sink509, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.thread unwind label %bb.aw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit69.i: ; preds = %bb.aj, %.loopexit.split-lp82.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn41.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp521, %.loopexit.split-lp82.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fh, %bb.aj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #34
          to label %.body74.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4637

.loopexit.split-lp82.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc70.i.preheader, %bb.h
  %lpad.loopexit.split-lp521 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit69.i

bb.ai:                                            ; preds = %bb.h
  %i.ff = extractvalue { ptr, i64 } %i.dl, 0
  %i.fg = extractvalue { ptr, i64 } %i.dl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !4632
  store i64 1, ptr %i.az, align 8, !noalias !4632
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.cu, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4632
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.cw, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !4632
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ff, i64 noundef %i.fg, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.az, i64 noundef 1)
          to label %bb.ak unwind label %bb.aj, !noalias !4637

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit69.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4637

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !4641)
  %i.fi = load i8, ptr %i.bb, align 8, !range !18, !alias.scope !4641, !noalias !4632, !noundef !8
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.al, label %.noexc70.i.preheader, !prof !13

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !4642
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !range !26, !alias.scope !4641, !noalias !4632, !noundef !8
  store i8 %i.fl, ptr %i.an, align 1, !noalias !4642
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @423) #33
          to label %.noexc.i unwind label %bb.aj, !noalias !4637

.noexc.i:                                         ; preds = %bb.al
  unreachable

.noexc70.i.preheader:                             ; preds = %bb.ak
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit71.i unwind label %.loopexit.split-lp82.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4637

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit71.i: ; preds = %.noexc70.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !4632
  %i.fm = load i64, ptr %i.ba, align 8, !range !20, !alias.scope !4643, !noalias !4632, !noundef !8
  %i.fn = icmp eq i64 %i.fm, -1
  br i1 %i.fn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit77.i, label %bb.am

bb.am:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit71.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i73.i unwind label %bb.an, !noalias !4637

bb.an:                                            ; preds = %bb.am
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body74.i unwind label %bb.ao, !noalias !4637

bb.ao:                                            ; preds = %bb.an
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4637
end_hunk_7
begin_hunk_8_@_RNvNtNtCs8frGy5WneL6_4fish8builtins8function8function:bb.a
  %i.hl = load i64, ptr %i.gc, align 8, !noalias !4647 ; 2 uses
  %.not180.i = icmp eq ptr %i.hk, null
  br i1 %.not180.i, label %.invoke.i, label %bb.bq, !prof !13

bb.bd:                                            ; preds = %bb.az
  %i.hm = load ptr, ptr %i.gb, align 8, !noalias !4647, !align !12, !noundef !8 ; 2 uses
  %i.hn = load i64, ptr %i.gc, align 8, !noalias !4647 ; 6 uses
  %.not204.i = icmp eq ptr %i.hm, null
  br i1 %.not204.i, label %.invoke.i, label %bb.cb, !prof !13

bb.be:                                            ; preds = %bb.az
  %i.ho = load ptr, ptr %i.gb, align 8, !noalias !4647, !align !12, !noundef !8 ; 2 uses
  %.not197.i = icmp eq ptr %i.ho, null
  br i1 %.not197.i, label %.invoke.i, label %bb.cj, !prof !13

bb.bf:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4647
  %i.hp = load ptr, ptr %i.gb, align 8, !noalias !4647, !align !12, !noundef !8 ; 2 uses
  %i.hq = load i64, ptr %i.gc, align 8, !noalias !4647 ; 6 uses
  %.not195.i = icmp eq ptr %i.hp, null
  br i1 %.not195.i, label %.invoke.i, label %bb.cx, !prof !13

bb.bg:                                            ; preds = %bb.az
  %i.hr = load ptr, ptr %i.gb, align 8, !noalias !4647, !align !12, !noundef !8 ; 2 uses
  %i.hs = load i64, ptr %i.gc, align 8, !noalias !4647 ; 5 uses
  %.not193.i = icmp eq ptr %i.hr, null
  br i1 %.not193.i, label %.invoke.i, label %bb.di, !prof !13

bb.bh:                                            ; preds = %bb.az, %bb.az
  %i.ht = load ptr, ptr %i.gb, align 8, !noalias !4647, !align !12, !noundef !8 ; 6 uses
  %i.hu = load i64, ptr %i.gc, align 8, !noalias !4647 ; 3 uses
  %.not190.i = icmp eq ptr %i.ht, null
  br i1 %.not190.i, label %.invoke.i, label %bb.dp, !prof !13

bb.bi:                                            ; preds = %bb.az
  %i.hv = load ptr, ptr %i.gb, align 8, !noalias !4647, !align !12, !noundef !8 ; 2 uses
  %.not185.i = icmp eq ptr %i.hv, null
  br i1 %.not185.i, label %.invoke.i, label %bb.ep, !prof !13

bb.bj:                                            ; preds = %bb.az
  store i8 0, ptr %i.fx, align 1, !alias.scope !4645
  br label %.backedge

bb.bk:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4647
  %i.hw = load ptr, ptr %i.gb, align 8, !noalias !4647, !align !12, !noundef !8 ; 2 uses
  %i.hx = load i64, ptr %i.gc, align 8, !noalias !4647 ; 5 uses
  %.not188.i = icmp eq ptr %i.hw, null
  br i1 %.not188.i, label %.invoke.i, label %bb.eq, !prof !13

bb.bl:                                            ; preds = %bb.az
  %i.hy = load ptr, ptr %i.gb, align 8, !noalias !4647, !align !12, !noundef !8 ; 3 uses
  %i.hz = load i64, ptr %i.gc, align 8, !noalias !4647 ; 6 uses
  %.not186.i = icmp eq ptr %i.hy, null
  br i1 %.not186.i, label %.invoke.i, label %bb.ex, !prof !13

bb.bm:                                            ; preds = %bb.az
  store i8 1, ptr %i.fw, align 8, !alias.scope !4645
  br label %.backedge

bb.bn:                                            ; preds = %bb.az
  %i.ia = load i64, ptr %i.gj, align 8, !noalias !4647, !noundef !8 ; 3 uses
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %.invoke436.i, label %bb.ff

bb.bo:                                            ; preds = %bb.az
  %i.ic = load i64, ptr %i.gj, align 8, !noalias !4647, !noundef !8 ; 3 uses
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %.invoke436.i, label %bb.fh

bb.bp:                                            ; preds = %bb.az
  %i.ie = load i64, ptr %i.gj, align 8, !noalias !4647, !noundef !8 ; 3 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %.invoke436.i, label %bb.fj

bb.bq:                                            ; preds = %bb.bc
  br i1 %.sroa.02.0.i, label %bb.bs, label %bb.br

.invoke.i:                                        ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc
  %i.ig = phi ptr [ @406, %bb.bl ], [ @387, %bb.bc ], [ @390, %bb.bd ], [ @391, %bb.be ], [ @405, %bb.bk ], [ @396, %bb.bg ], [ @397, %bb.bh ], [ @404, %bb.bi ], [ @395, %bb.bf ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ig) #37
          to label %.cont.i unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4647
  store i64 0, ptr %i.ai, align 8, !noalias !4647
  %.sroa.4123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4123.0..sroa_idx.i, align 8, !noalias !4647
  %.sroa.5124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.5124.0..sroa_idx.i, align 8, !noalias !4647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4647
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @388, ptr %i.ih, align 8, !noalias !4647
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 34, ptr %i.ii, align 8, !noalias !4647
  store i64 -1, ptr %i.ag, align 8, !noalias !4647
  %i.ij = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %bb.bu unwind label %.loopexit.split-lp260.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bs:                                            ; preds = %bb.bq
  %i.ik = invoke fastcc i32 @_RINvNvNtNtCs8frGy5WneL6_4fish8builtins8function14parse_cmd_opts18add_named_argumentNCB2_0EB8_(ptr nonnull @374, i64 8, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.cb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hk, i64 noundef %i.hl)
          to label %._crit_edge513 unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge513:                                   ; preds = %bb.bs
  %i.il = trunc i32 %i.ik to i1
  br i1 %i.il, label %.loopexit256.i, label %.backedge

bb.bt:                                            ; preds = %bb.fy, %bb.ft, %bb.ef, %bb.cq, %bb.bb
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i111: ; preds = %bb.bv, %.loopexit.split-lp260.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn181.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp544, %.loopexit.split-lp260.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.io, %bb.bv ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #34
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp260.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc222.i.preheader, %bb.br
  %lpad.loopexit.split-lp544 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i111

bb.bu:                                            ; preds = %bb.br
  %i.im = extractvalue { ptr, i64 } %i.ij, 0
  %i.in = extractvalue { ptr, i64 } %i.ij, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4647
  store i64 1, ptr %i.af, align 8, !noalias !4647
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.hk, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4647
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.hl, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !4647
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.im, i64 noundef %i.in, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.af, i64 noundef 1)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bx, %bb.bu
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !4649)
  %i.ip = load i8, ptr %i.ah, align 8, !range !18, !alias.scope !4649, !noalias !4647, !noundef !8
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.bx, label %.noexc222.i.preheader, !prof !13

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4650
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !range !26, !alias.scope !4649, !noalias !4647, !noundef !8
  store i8 %i.is, ptr %i.c, align 1, !noalias !4650
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @389) #33
          to label %.noexc210.i unwind label %bb.bv

.noexc210.i:                                      ; preds = %bb.bx
  unreachable

.noexc222.i.preheader:                            ; preds = %bb.bw
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit223.i unwind label %.loopexit.split-lp260.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit223.i: ; preds = %.noexc222.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4647
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag)
          to label %bb.ca unwind label %bb.bz

bb.by:                                            ; preds = %bb.bz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i111
  %.pn183.i = phi { ptr, i32 } [ %i.it, %bb.bz ], [ %.pn181.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i111 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #34
          to label %.body.i106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit223.i
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ca:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit223.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4647
  br label %.invoke433.i

.invoke433.i:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i114, %bb.cw, %bb.ca
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i114 ], [ %.sink.sroa.gep656, %bb.cw ], [ %.sink.sroa.gep657, %bb.ca ]
  %.sink.sroa.phi658 = phi ptr [ %.sink.sroa.gep659, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i114 ], [ %.sink.sroa.gep660, %bb.cw ], [ %.sink.sroa.gep661, %bb.ca ]
  %.sink.sroa.phi662 = phi ptr [ %.sink.sroa.gep663, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i114 ], [ %.sink.sroa.gep664, %bb.cw ], [ %.sink.sroa.gep665, %bb.ca ]
  %.sink.sroa.phi666 = phi ptr [ %.sink.sroa.gep667, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i114 ], [ %.sink.sroa.gep668, %bb.cw ], [ %.sink.sroa.gep669, %bb.ca ]
  %.sink.sroa.phi670 = phi ptr [ %.sink.sroa.gep671, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i114 ], [ %.sink.sroa.gep672, %bb.cw ], [ %.sink.sroa.gep673, %bb.ca ]
  %.sink = phi ptr [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i114 ], [ %i.ae, %bb.cw ], [ %i.aj, %bb.ca ]
  store ptr null, ptr %.sink.sroa.phi662, align 8, !noalias !4647
  store ptr null, ptr %.sink.sroa.phi666, align 8, !noalias !4647
  store i8 0, ptr %.sink.sroa.phi670, align 8, !noalias !4647
  store ptr @374, ptr %.sink.sroa.phi, align 8, !noalias !4647
  store i64 8, ptr %.sink.sroa.phi658, align 8, !noalias !4647
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %.sink, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.loopexit256.i unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bv, %bb.fz, %bb.cr, %.body.i106, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i111, %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit225.i, %bb.cu, %bb.dh, %bb.dz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit234.i, %.body237.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.cb:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4647
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.hn, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.cc unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.cb
  %i.iu = load i64, ptr %i.j, align 8, !range !16, !noalias !4647, !noundef !8
  %i.iv = trunc nuw i64 %i.iu to i1
  %i.iw = load i64, ptr %i.hg, align 8, !range !25, !noalias !4647, !noundef !8 ; 4 uses
  br i1 %i.iv, label %bb.cd, label %bb.ce, !prof !13

bb.cd:                                            ; preds = %bb.cc
  %i.ix = load i64, ptr %i.hh, align 8, !noalias !4647
  br label %.invoke434.i

.invoke434.i:                                     ; preds = %bb.fa, %bb.es, %bb.dk, %bb.cz, %bb.cd
  %i.iy = phi i64 [ %i.iw, %bb.cd ], [ %i.jv, %bb.cz ], [ %i.kf, %bb.dk ], [ %i.mg, %bb.es ], [ %i.mp, %bb.fa ]
  %i.iz = phi i64 [ %i.ix, %bb.cd ], [ %i.jw, %bb.cz ], [ %i.kg, %bb.dk ], [ %i.mh, %bb.es ], [ %i.mq, %bb.fa ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.iy, i64 %i.iz) #37
          to label %.cont435.i unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont435.i:                                       ; preds = %.invoke434.i
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.ja = load ptr, ptr %i.hh, align 8, !noalias !4647, !nonnull !8, !noundef !8 ; 3 uses
  %i.jb = icmp ule i64 %i.hn, %i.iw
  call void @llvm.assume(i1 %i.jb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4647
  %.not205.i = icmp eq i64 %i.hn, 0
  br i1 %.not205.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.cg, %bb.ce
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.cb)
          to label %bb.ci unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.jc = shl nuw nsw i64 %i.hn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ja, ptr nonnull align 4 %i.hm, i64 %i.jc, i1 false)
  br label %bb.cf

bb.ch:                                            ; preds = %bb.cf
  %i.jd = landingpad { ptr, i32 }
          cleanup
  store i64 %i.iw, ptr %i.cb, align 8, !alias.scope !4645
  store ptr %i.ja, ptr %.sroa.414.0..sroa_idx.i102, align 8, !alias.scope !4645
  store i64 %i.hn, ptr %.sroa.515.0..sroa_idx.i103, align 8, !alias.scope !4645
  br label %.body.i106

bb.ci:                                            ; preds = %bb.cf
  store i64 %i.iw, ptr %i.cb, align 8, !alias.scope !4645
  store ptr %i.ja, ptr %.sroa.414.0..sroa_idx.i102, align 8, !alias.scope !4645
  store i64 %i.hn, ptr %.sroa.515.0..sroa_idx.i103, align 8, !alias.scope !4645
  br label %.backedge

bb.cj:                                            ; preds = %bb.be
  %i.je = load i64, ptr %i.gc, align 8, !noalias !4647
  %i.jf = invoke noundef i32 @_RNvMs0_NtCs8frGy5WneL6_4fish6signalNtB5_9RawSignal5parse(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ho, i64 noundef %i.je)
          to label %bb.ck unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %.not198.i = icmp eq i32 %i.jf, 0
  br i1 %.not198.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4647
  store i32 %i.jf, ptr %i.hf, align 4, !noalias !4647
  store i32 1, ptr %i.z, align 8, !noalias !4647
  invoke fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish5event16EventDescriptionE8push_mutBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.cn unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4647
  store i64 0, ptr %i.ad, align 8, !noalias !4647
  %.sroa.4137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4137.0..sroa_idx.i, align 8, !noalias !4647
  %.sroa.5138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.5138.0..sroa_idx.i, align 8, !noalias !4647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4647
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @392, ptr %i.jg, align 8, !noalias !4647
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 19, ptr %i.jh, align 8, !noalias !4647
  store i64 -1, ptr %i.ab, align 8, !noalias !4647
  %i.ji = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.co unwind label %.loopexit.split-lp266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4647
  br label %.backedge

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit225.i: ; preds = %bb.cr, %.loopexit.split-lp266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn200.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp548, %.loopexit.split-lp266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.jn, %bb.cr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #34
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc226.i.preheader, %bb.cm, %bb.cq
  %lpad.loopexit.split-lp548 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit225.i

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4647
  %i.jj = load ptr, ptr %i.gb, align 8, !noalias !4647, !align !12, !noundef !8 ; 2 uses
  %.not199.i = icmp eq ptr %i.jj, null
  br i1 %.not199.i, label %bb.cq, label %bb.cp, !prof !13

bb.cp:                                            ; preds = %bb.co
  %i.jk = load i64, ptr %i.gc, align 8, !noalias !4647
  %i.jl = extractvalue { ptr, i64 } %i.ji, 1
  %i.jm = extractvalue { ptr, i64 } %i.ji, 0
  store i64 1, ptr %i.aa, align 8, !noalias !4647
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.jj, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !4647
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.jk, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !4647
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jm, i64 noundef %i.jl, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.aa, i64 noundef 1)
          to label %bb.cs unwind label %bb.cr

bb.cq:                                            ; preds = %bb.co
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @393) #37
          to label %bb.bt unwind label %.loopexit.split-lp266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %bb.ct, %bb.cp
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit225.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cs:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !4651)
  %i.jo = load i8, ptr %i.ac, align 8, !range !18, !alias.scope !4651, !noalias !4647, !noundef !8
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.ct, label %.noexc226.i.preheader, !prof !13

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4652
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !range !26, !alias.scope !4651, !noalias !4647, !noundef !8
  store i8 %i.jr, ptr %i.d, align 1, !noalias !4652
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @394) #33
          to label %.noexc208.i unwind label %bb.cr

.noexc208.i:                                      ; preds = %bb.ct
  unreachable

.noexc226.i.preheader:                            ; preds = %bb.cs
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit227.i unwind label %.loopexit.split-lp266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit227.i: ; preds = %.noexc226.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4647
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab)
          to label %bb.cw unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit225.i
  %.pn202.i = phi { ptr, i32 } [ %i.js, %bb.cv ], [ %.pn200.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit225.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #34
          to label %.body.i106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit227.i
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit227.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4647
  br label %.invoke433.i

bb.cx:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4647
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.hq, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.cy unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  %i.jt = load i64, ptr %i.i, align 8, !range !16, !noalias !4647, !noundef !8
  %i.ju = trunc nuw i64 %i.jt to i1
  %i.jv = load i64, ptr %i.hc, align 8, !range !25, !noalias !4647, !noundef !8 ; 3 uses
  br i1 %i.ju, label %bb.cz, label %bb.da, !prof !13

bb.cz:                                            ; preds = %bb.cy
  %i.jw = load i64, ptr %i.hd, align 8, !noalias !4647
  br label %.invoke434.i

bb.da:                                            ; preds = %bb.cy
  %i.jx = load ptr, ptr %i.hd, align 8, !noalias !4647, !nonnull !8, !noundef !8 ; 3 uses
  %i.jy = icmp ule i64 %i.hq, %i.jv
  call void @llvm.assume(i1 %i.jy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4647
  %.not196.i = icmp eq i64 %i.hq, 0
  br i1 %.not196.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.dc, %bb.da
  store i64 %i.jv, ptr %i.y, align 8, !noalias !4647
  store ptr %i.jx, ptr %.sroa.4140.0..sroa_idx.i, align 8, !noalias !4647
  store i64 %i.hq, ptr %.sroa.6141.0..sroa_idx.i, align 8, !noalias !4647
  %i.jz = invoke fastcc i32 @_RNCNvNtNtCs8frGy5WneL6_4fish8builtins8function14parse_cmd_opts0B7_(ptr nonnull @374, i64 8, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jx, i64 noundef %i.hq, i1 noundef zeroext true)
          to label %._crit_edge517 unwind label %bb.dh

bb.dc:                                            ; preds = %bb.da
  %i.ka = shl nuw nsw i64 %i.hq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jx, ptr nonnull align 4 %i.hp, i64 %i.ka, i1 false)
  br label %bb.db

.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fv, %bb.eu, %bb.fc, %bb.cl, %bb.de, %bb.dm, %bb.ex, %bb.bs, %bb.ep, %bb.ey, %bb.eq, %bb.em, %.thread245.i, %bb.ed, %bb.dq, %bb.di, %bb.cx, %bb.cj, %bb.cb, %bb.ay, %bb.ft, %bb.fk, %bb.fi, %.invoke438.i, %bb.fg, %.invoke436.i, %bb.ef, %bb.eb, %bb.dd, %.invoke434.i, %.invoke433.i, %.invoke.i, %bb.bb
  %lpad.loopexit.split-lp606 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i106

._crit_edge517:                                   ; preds = %bb.db
  %i.kb = trunc i32 %i.jz to i1
  br i1 %i.kb, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %._crit_edge517
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.dg unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %._crit_edge517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !4647
  store i32 2, ptr %i.x, align 8, !noalias !4647
  invoke fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish5event16EventDescriptionE8push_mutBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.x)
          to label %bb.df unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4647
  br label %.backedge

bb.dg:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4647
  br label %.loopexit256.i

bb.dh:                                            ; preds = %bb.db
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #34
          to label %.body.i106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4647
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.hs, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.dj unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.di
  %i.kd = load i64, ptr %i.h, align 8, !range !16, !noalias !4647, !noundef !8
  %i.ke = trunc nuw i64 %i.kd to i1
  %i.kf = load i64, ptr %i.gz, align 8, !range !25, !noalias !4647, !noundef !8 ; 3 uses
  br i1 %i.ke, label %bb.dk, label %bb.dl, !prof !13

bb.dk:                                            ; preds = %bb.dj
  %i.kg = load i64, ptr %i.ha, align 8, !noalias !4647
  br label %.invoke434.i

bb.dl:                                            ; preds = %bb.dj
  %i.kh = load ptr, ptr %i.ha, align 8, !noalias !4647, !nonnull !8, !noundef !8 ; 2 uses
  %i.ki = icmp ule i64 %i.hs, %i.kf
  call void @llvm.assume(i1 %i.ki)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4647
  %.not194.i = icmp eq i64 %i.hs, 0
  br i1 %.not194.i, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dn, %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4647
  store i64 %i.kf, ptr %i.hb, align 8, !noalias !4647
  store ptr %i.kh, ptr %.sroa.4146.0..sroa_idx.i, align 8, !noalias !4647
  store i64 %i.hs, ptr %.sroa.5147.0..sroa_idx.i, align 8, !noalias !4647
  store i32 6, ptr %i.w, align 8, !noalias !4647
  invoke fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish5event16EventDescriptionE8push_mutBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.w)
          to label %bb.do unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dn:                                            ; preds = %bb.dl
  %i.kj = shl nuw nsw i64 %i.hs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kh, ptr nonnull align 4 %i.hr, i64 %i.kj, i1 false)
  br label %bb.dm

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4647
  br label %.backedge

bb.dp:                                            ; preds = %bb.bh
  switch i32 %i.hi, label %.thread245.i [
    i32 106, label %bb.dq
    i32 112, label %bb.ed
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hu
  %i.kl = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %i.ht, ptr noundef nonnull readonly %i.kk, ptr noundef nonnull @398, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @398, i64 6))
          to label %_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit.i unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit.i: ; preds = %bb.dq
  br i1 %i.kl, label %bb.dr, label %.thread245.i

end_hunk_8
begin_hunk_9_@_RNvNtNtCs8frGy5WneL6_4fish8builtins8function8function:bb.a
          to label %bb.ez unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ez:                                            ; preds = %bb.ey
  %i.mn = load i64, ptr %i.f, align 8, !range !16, !noalias !4647, !noundef !8
  %i.mo = trunc nuw i64 %i.mn to i1
  %i.mp = load i64, ptr %i.gq, align 8, !range !25, !noalias !4647, !noundef !8 ; 3 uses
  br i1 %i.mo, label %bb.fa, label %bb.fb, !prof !13

bb.fa:                                            ; preds = %bb.ez
  %i.mq = load i64, ptr %i.gr, align 8, !noalias !4647
  br label %.invoke434.i

bb.fb:                                            ; preds = %bb.ez
  %i.mr = load ptr, ptr %i.gr, align 8, !noalias !4647, !nonnull !8, !noundef !8 ; 2 uses
  %i.ms = icmp ule i64 %i.hz, %i.mp
  call void @llvm.assume(i1 %i.ms)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4647
  %.not187.i = icmp eq i64 %i.hz, 0
  br i1 %.not187.i, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fd, %bb.fb
  store i64 %i.mp, ptr %i.r, align 8, !noalias !4647
  store ptr %i.mr, ptr %.sroa.4154.0..sroa_idx.i, align 8, !noalias !4647
  store i64 %i.hz, ptr %.sroa.6155.0..sroa_idx.i, align 8, !noalias !4647
  invoke fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.fe unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fd:                                            ; preds = %bb.fb
  %i.mt = shl nuw nsw i64 %i.hz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mr, ptr nonnull align 4 %i.hy, i64 %i.mt, i1 false)
  br label %bb.fc

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4647
  br label %.backedge

.backedge:                                        ; preds = %bb.fe, %bb.ew, %._crit_edge511, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish5event16EventDescriptionE8push_mutBJ_.exit.i, %bb.do, %bb.df, %bb.cn, %bb.ci, %._crit_edge513, %bb.bm, %bb.bj
  %.sroa.02.0.i.be = phi i1 [ false, %bb.ci ], [ false, %bb.cn ], [ false, %bb.df ], [ false, %bb.do ], [ false, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish5event16EventDescriptionE8push_mutBJ_.exit.i ], [ false, %bb.bj ], [ false, %bb.ew ], [ false, %bb.fe ], [ false, %bb.bm ], [ true, %._crit_edge513 ], [ true, %._crit_edge511 ]
  br label %bb.ay

bb.ff:                                            ; preds = %bb.bn
  %i.mu = add i64 %i.ia, -1                       ; 2 uses
  %i.mv = icmp ult i64 %i.mu, %i.fy
  br i1 %i.mv, label %bb.fg, label %.invoke438.i

.invoke436.i:                                     ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.mw = phi ptr [ @409, %bb.bo ], [ @407, %bb.bn ], [ @411, %bb.bp ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mw) #37
          to label %.cont437.i unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont437.i:                                       ; preds = %.invoke436.i
  unreachable

bb.fg:                                            ; preds = %bb.ff
  %i.mx = getelementptr [16 x i8], ptr %i.ct, i64 %i.ia ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !4646, !nonnull !8, !align !12, !noundef !8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !4646, !noundef !8
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc24builtin_missing_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @374, i64 noundef 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.my, i64 noundef %i.na, i1 noundef zeroext false)
          to label %.loopexit256.i unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke438.i:                                     ; preds = %bb.fj, %bb.fh, %bb.ff
  %i.nb = phi i64 [ %i.nd, %bb.fh ], [ %i.mu, %bb.ff ], [ %i.nj, %bb.fj ]
  %i.nc = phi ptr [ @410, %bb.fh ], [ @408, %bb.ff ], [ @412, %bb.fj ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.nb, i64 noundef range(i64 0, 576460752303423488) %i.fy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nc) #37
          to label %.cont439.i unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont439.i:                                       ; preds = %.invoke438.i
  unreachable

bb.fh:                                            ; preds = %bb.bo
  %i.nd = add i64 %i.ic, -1                       ; 2 uses
  %i.ne = icmp ult i64 %i.nd, %i.fy
  br i1 %i.ne, label %bb.fi, label %.invoke438.i

bb.fi:                                            ; preds = %bb.fh
  %i.nf = getelementptr [16 x i8], ptr %i.ct, i64 %i.ic ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !alias.scope !4646, !nonnull !8, !align !12, !noundef !8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !4646, !noundef !8
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc27builtin_unexpected_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @374, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ng, i64 noundef %i.ni, i1 noundef zeroext false)
          to label %.loopexit256.i unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fj:                                            ; preds = %bb.bp
  %i.nj = add i64 %i.ie, -1                       ; 2 uses
  %i.nk = icmp ult i64 %i.nj, %i.fy
  br i1 %i.nk, label %bb.fk, label %.invoke438.i

bb.fk:                                            ; preds = %bb.fj
  %i.nl = getelementptr [16 x i8], ptr %i.ct, i64 %i.ie ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !alias.scope !4646, !nonnull !8, !align !12, !noundef !8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.no = load i64, ptr %i.nn, align 8, !alias.scope !4646, !noundef !8
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc22builtin_unknown_option(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @374, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.nm, i64 noundef %i.no, i1 noundef zeroext false)
          to label %.loopexit256.i unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit256.i:                                   ; preds = %._crit_edge515, %._crit_edge511, %._crit_edge513, %._crit_edge510, %bb.fk, %bb.fi, %bb.fg, %bb.ei, %bb.ec, %bb.dg, %.invoke433.i
  %.sroa.161.2.i = phi i64 [ 8589934593, %bb.fk ], [ 8589934593, %._crit_edge510 ], [ 8589934593, %bb.fg ], [ 8589934593, %.invoke433.i ], [ 8589934593, %bb.dg ], [ 8589934593, %bb.ec ], [ %i.lw, %bb.ei ], [ 8589934593, %bb.fi ], [ 8589934593, %._crit_edge513 ], [ 8589934593, %._crit_edge511 ], [ 8589934593, %._crit_edge515 ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ak)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit.i unwind label %bb.fl

bb.fl:                                            ; preds = %.loopexit256.i
  %i.np = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ak)
          to label %.thread190 unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

.loopexit250.i:                                   ; preds = %bb.fu, %bb.fs, %bb.ba
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ak)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit.i unwind label %bb.fn

bb.fn:                                            ; preds = %.loopexit250.i
  %i.nr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ak)
          to label %.thread190 unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.fp:                                            ; preds = %bb.ba
  %i.nt = load i64, ptr %.sroa.53.0..sroa_idx.i105, align 8, !alias.scope !4645, !noundef !8 ; 2 uses
  %i.nu = icmp ult i64 %i.nt, 384307168202282326
  call void @llvm.assume(i1 %i.nu)
  %i.nv = icmp eq i64 %i.nt, 0
  br i1 %i.nv, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.nw = icmp ugt i64 %i.hj, %i.fy
  br i1 %i.nw, label %bb.ft, label %bb.fs, !prof !13

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4647
  store i64 0, ptr %i.n, align 8, !noalias !4647
  %.sroa.4157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4157.0..sroa_idx.i, align 8, !noalias !4647
  %.sroa.5158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.5158.0..sroa_idx.i, align 8, !noalias !4647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4647
  %i.nx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @388, ptr %i.nx, align 8, !noalias !4647
  %i.ny = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 34, ptr %i.ny, align 8, !noalias !4647
  store i64 -1, ptr %i.l, align 8, !noalias !4647
  %i.nz = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.fw unwind label %.loopexit.split-lp247.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fs:                                            ; preds = %bb.fq
  %.idx596 = shl nuw nsw i64 %i.hj, 4             ; 2 uses
  %.idx597 = shl i64 %i.cs, 4                     ; 2 uses
  %i.oa = getelementptr i8, ptr %i.ct, i64 %.idx597
  %i.ob = add nuw nsw i64 %.idx596, 16
  %i.oc = icmp eq i64 %i.ob, %.idx597
  br i1 %i.oc, label %.loopexit250.i, label %.lr.ph595

.lr.ph595:                                        ; preds = %bb.fs
  %i.od = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx596
  br label %bb.fv

bb.ft:                                            ; preds = %bb.fq
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.hj, i64 noundef range(i64 0, 576460752303423488) %i.fy, i64 noundef range(i64 0, 576460752303423488) %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @415) #37
          to label %bb.bt unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fu:                                            ; preds = %._crit_edge510
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0102.0.i593, i64 16 ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.oa
  br i1 %i.of, label %.loopexit250.i, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph595, %bb.fu
  %.sroa.0102.0.i593 = phi ptr [ %i.od, %.lr.ph595 ], [ %i.oe, %bb.fu ] ; 3 uses
  %i.og = load ptr, ptr %.sroa.0102.0.i593, align 8, !alias.scope !4646, !nonnull !8, !align !12, !noundef !8
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0102.0.i593, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !alias.scope !4646, !noundef !8
  %i.oj = invoke fastcc i32 @_RINvNvNtNtCs8frGy5WneL6_4fish8builtins8function14parse_cmd_opts18add_named_argumentNCB2_0EB8_(ptr nonnull @374, i64 8, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.cb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.og, i64 noundef %i.oi)
          to label %._crit_edge510 unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge510:                                   ; preds = %bb.fv
  %i.ok = trunc i32 %i.oj to i1
  br i1 %i.ok, label %.loopexit256.i, label %bb.fu

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit.i: ; preds = %.loopexit250.i, %.loopexit256.i
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.161.2.i, %.loopexit256.i ], [ 0, %.loopexit250.i ] ; 2 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ak)
          to label %bb.gh unwind label %bb.gg

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit234.i: ; preds = %bb.fz, %.loopexit.split-lp247.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i112 = phi { ptr, i32 } [ %lpad.loopexit.split-lp536, %.loopexit.split-lp247.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.os, %bb.fz ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #34
          to label %.body237.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp247.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc235.i.preheader, %bb.fr, %bb.fy
  %lpad.loopexit.split-lp536 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit234.i

bb.fw:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4647
  %i.ol = icmp ult i64 %i.hj, %i.fy
  br i1 %i.ol, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.om = extractvalue { ptr, i64 } %i.nz, 1
  %i.on = extractvalue { ptr, i64 } %i.nz, 0
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.hj ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !alias.scope !4646, !nonnull !8, !align !12, !noundef !8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.or = load i64, ptr %i.oq, align 8, !alias.scope !4646, !noundef !8
  store i64 1, ptr %i.k, align 8, !noalias !4647
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.op, ptr %.sroa.4110.0..sroa_idx.i, align 8, !noalias !4647
  %.sroa.5111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.or, ptr %.sroa.5111.0..sroa_idx.i, align 8, !noalias !4647
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.on, i64 noundef %i.om, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef 1)
          to label %bb.ga unwind label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.hj, i64 noundef range(i64 0, 576460752303423488) %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @416) #37
          to label %bb.bt unwind label %.loopexit.split-lp247.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fz:                                            ; preds = %bb.gb, %bb.fx
  %i.os = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit234.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ga:                                            ; preds = %bb.fx
  call void @llvm.experimental.noalias.scope.decl(metadata !4656)
  %i.ot = load i8, ptr %i.m, align 8, !range !18, !alias.scope !4656, !noalias !4647, !noundef !8
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.gb, label %.noexc235.i.preheader, !prof !13

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4657
  %i.ov = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ow = load i8, ptr %i.ov, align 1, !range !26, !alias.scope !4656, !noalias !4647, !noundef !8
  store i8 %i.ow, ptr %i.e, align 1, !noalias !4657
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @417) #33
          to label %.noexc.i115 unwind label %bb.fz

.noexc.i115:                                      ; preds = %bb.gb
  unreachable

.noexc235.i.preheader:                            ; preds = %bb.ga
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit236.i unwind label %.loopexit.split-lp247.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit236.i: ; preds = %.noexc235.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4647
  %i.ox = load i64, ptr %i.l, align 8, !range !20, !alias.scope !4658, !noalias !4647, !noundef !8
  %i.oy = icmp eq i64 %i.ox, -1
  br i1 %i.oy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i114, label %bb.gc

bb.gc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit236.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i113 unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.oz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body237.i unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i113: ; preds = %bb.gc
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i114 unwind label %bb.gf

.body237.i:                                       ; preds = %bb.gf, %bb.gd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit234.i
  %.pn178.i = phi { ptr, i32 } [ %.pn.i112, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit234.i ], [ %i.pb, %bb.gf ], [ %i.oz, %bb.gd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #34
          to label %.body.i106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i113
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %.body237.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i114: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i113, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit236.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4647
  br label %.invoke433.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.jh, %.thread243, %bb.ji
  br i1 %.sroa.048.7211, label %.thread190, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.thread

bb.gg:                                            ; preds = %bb.gl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit.i, %bb.gm
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %.thread190

bb.gh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.pd = trunc i64 %.sroa.0.0.insert.insert.i to i1
  br i1 %i.pd, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.pe = and i64 %.sroa.0.0.insert.insert.i, -4294967295
  br label %bb.jj

bb.gj:                                            ; preds = %bb.gh
  %i.pf = load i8, ptr %i.fw, align 8, !range !18, !noundef !8
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %bb.gm, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.pi = load ptr, ptr %i.ph, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16 ; 4 uses
  %i.pk = load i64, ptr %i.pj, align 8, !noundef !8 ; 3 uses
  %i.pl = icmp ult i64 %i.pk, 9223372036854775807
  br i1 %i.pl, label %bb.gn, label %bb.gl, !prof !14

bb.gl:                                            ; preds = %bb.gk
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #33
          to label %.noexc119 unwind label %bb.gg

.noexc119:                                        ; preds = %bb.gl
  unreachable

bb.gm:                                            ; preds = %bb.gj
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !nonnull !8, !align !17, !noundef !8
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc27builtin_print_error_trailer(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pn, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cu, i64 noundef %i.cw)
          to label %bb.jj unwind label %bb.gg

bb.gn:                                            ; preds = %bb.gk
  %i.po = add nuw nsw i64 %i.pk, 1
  store i64 %i.po, ptr %i.pj, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pi, i64 24 ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !noundef !8 ; 2 uses
  %.not65 = icmp eq ptr %i.pq, null
  br i1 %.not65, label %bb.gr, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.pr = atomicrmw add ptr %i.pq, i64 1 monotonic, align 8
  %i.ps = icmp slt i64 %i.pr, 0
  br i1 %i.ps, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.pt = load ptr, ptr %i.pp, align 8, !nonnull !8, !noundef !8
  %.pre = load i64, ptr %i.pj, align 8
  %i.pu = add i64 %.pre, -1
  br label %bb.gr

bb.gq:                                            ; preds = %bb.go
  call void @llvm.trap()
  unreachable

.thread203:                                       ; preds = %bb.gt, %bb.gu, %bb.gv, %bb.gw
  %.sroa.047.2 = phi i1 [ false, %bb.gw ], [ true, %bb.gv ], [ true, %bb.gu ], [ true, %bb.gt ]
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %.thread243

bb.gr:                                            ; preds = %bb.gp, %bb.gn
  %i.pw = phi i64 [ %i.pu, %bb.gp ], [ %i.pk, %bb.gn ]
  %i.px = phi ptr [ %i.pt, %bb.gp ], [ null, %bb.gn ] ; 2 uses
  store ptr %i.px, ptr %i.ca, align 8
  store i64 %i.pw, ptr %i.pj, align 8
  %i.py = load ptr, ptr %.sroa.45.0..sroa_idx.i, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.pz = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noundef !8 ; 4 uses
  %i.qa = icmp ult i64 %i.pz, 2
  br i1 %i.qa, label %bb.gv, label %bb.gs, !prof !14

bb.gs:                                            ; preds = %bb.gr
  %i.qb = icmp ult i64 %i.pz, 21
  br i1 %i.qb, label %bb.gu, label %bb.gt, !prof !14

bb.gt:                                            ; preds = %bb.gs
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable7ipnsortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBT_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.py, i64 noundef %i.pz, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.gv unwind label %.thread203

bb.gu:                                            ; preds = %bb.gs
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.py, i64 noundef %i.pz, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.gv unwind label %.thread203

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gr
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gp)
end_hunk_9
begin_hunk_10_@_RNvNtNtCs8frGy5WneL6_4fish8builtins9set_color9set_color:bb.a
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %common.resume unwind label %bb.ao, !noalias !4728

bb.ao:                                            ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4728
  unreachable

common.resume:                                    ; preds = %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body153, %.body162, %.body172, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit177, %.body186, %.body192, %bb.bm, %bb.an, %.body64.i
  %common.resume.op = phi { ptr, i32 } [ %i.em, %bb.bm ], [ %.pn61.i, %.body64.i ], [ %i.di, %bb.an ], [ %.pn, %.body ], [ %.pn108, %.body192 ], [ %.pn128, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %.pn126, %.body153 ], [ %.pn122, %.body162 ], [ %.pn118, %.body172 ], [ %.pn114, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit177 ], [ %.pn112, %.body186 ]
  resume { ptr, i32 } %common.resume.op

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ar unwind label %bb.aq, !noalias !4728

bb.aq:                                            ; preds = %bb.ap
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body64.i unwind label %bb.as, !noalias !4728

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i unwind label %bb.at, !noalias !4728

bb.as:                                            ; preds = %bb.aq
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4728
  unreachable

.body64.i:                                        ; preds = %bb.av, %bb.at, %bb.aq, %.body.i
  %.pn61.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %.pn.i, %bb.av ], [ %i.dm, %bb.at ], [ %i.dk, %bb.aq ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #34
          to label %common.resume unwind label %bb.au, !noalias !4728

bb.at:                                            ; preds = %bb.ar
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

bb.au:                                            ; preds = %bb.av, %.body64.i, %bb.aj
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4728
  unreachable

bb.av:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
          to label %.body64.i unwind label %bb.au, !noalias !4728

_RNvNtNtCs8frGy5WneL6_4fish8builtins9set_color12print_colors.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e), !noalias !4728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4727
  br label %bb.bq

.body:                                            ; preds = %bb.bk, %bb.aw, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.ej, %bb.bi ], [ %i.do, %bb.aw ], [ %i.ek, %bb.bk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.bg, %bb.be, %bb.bc, %bb.bb, %bb.az, %bb.ax
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %bb.d
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ap, i64 15
  %.sroa.085.0.copyload = load i32, ptr %i.dp, align 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ap, i64 19
  %.sroa.097.0.copyload = load i48, ptr %i.as, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ap, i64 14
  %i.ds = load i8, ptr %i.dr, align 2, !range !18, !noundef !8
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = and i32 %.sroa.085.0.copyload, 255
  %.not106 = icmp ne i32 %i.du, 255               ; 2 uses
  %.sroa.047.0 = select i1 %.not106, i32 %.sroa.085.0.copyload, i32 0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %i.dx = load <2 x i32>, ptr %i.dq, align 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter30new_buffering_no_assume_normal(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dy = and <2 x i32> %i.dx, splat (i32 255)
  %i.dz = icmp eq <2 x i32> %i.dy, splat (i32 255)
  %i.ea = select <2 x i1> %i.dz, <2 x i32> zeroinitializer, <2 x i32> %i.dx
  store i32 %.sroa.047.0, ptr %i.dv, align 2, !alias.scope !4729
  store <2 x i32> %i.ea, ptr %i.dw, align 2, !alias.scope !4729
  store i48 %.sroa.097.0.copyload, ptr %i.n, align 8, !alias.scope !4729
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter22set_text_face_no_magic(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.n, i1 noundef zeroext %i.dt)
          to label %bb.ay unwind label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.val145 = load i64, ptr %i.eb, align 8         ; 2 uses
  %i.ec = icmp eq i64 %.val145, 0
  %or.cond = select i1 %.not106, i1 %i.ec, i1 false
  br i1 %or.cond, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.ed = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6screen7is_dumb()
          to label %bb.ba unwind label %bb.aw

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ed, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ee = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6screen14only_grayscale()
          to label %bb.bd unwind label %bb.aw

bb.bc:                                            ; preds = %bb.bd, %bb.ba
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter15reset_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %._crit_edge322 unwind label %bb.aw

._crit_edge322:                                   ; preds = %bb.bc
  %.val143.pre = load i64, ptr %i.eb, align 8
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  br i1 %i.ee, label %bb.bc, label %bb.be, !prof !14

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @426, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428) #37
          to label %bb.bf unwind label %bb.aw

bb.bf:                                            ; preds = %bb.di, %bb.ca, %bb.be
  unreachable

bb.bg:                                            ; preds = %._crit_edge322, %bb.ay
  %.val143 = phi i64 [ %.val143.pre, %._crit_edge322 ], [ %.val145, %bb.ay ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val = load ptr, ptr %i.ef, align 8, !nonnull !8, !noundef !8
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !8, !align !17, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val143)
          to label %bb.bh unwind label %bb.aw

bb.bh:                                            ; preds = %bb.bg
  %i.ei = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.bj unwind label %bb.bi     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #34
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.bj
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.aw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_.exit unwind label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %common.resume unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.a, %bb.bq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_.exit
  %.sroa.101.0 = phi i64 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_.exit ], [ %.sroa.0.1, %bb.bq ], [ 4294967297, %bb.a ]
  ret i64 %.sroa.101.0

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dj, %bb.cb, %bb.cr, %bb.cz, %bb.dn, %.body, %bb.bi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body150, %bb.ch, %.body153, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit157, %.body162, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit167, %.body172, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit177, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181, %.body186, %.body192, %bb.dw
  %lpad.loopexit.split-lp.a = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.bp:                                            ; preds = %bb.d
  %i.eo = load ptr, ptr %2, align 8, !nonnull !8, !align !12, !noundef !8
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !noundef !8
  tail call void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.eo, i64 noundef %i.eq)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ce, %bb.c, %bb.bp, %_RNvNtNtCs8frGy5WneL6_4fish8builtins9set_color12print_colors.exit
  %.sroa.0.1 = phi i64 [ 8589934592, %_RNvNtNtCs8frGy5WneL6_4fish8builtins9set_color12print_colors.exit ], [ 8589934592, %bb.bp ], [ 8589934593, %bb.c ], [ 8589934593, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.bo

bb.br:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 0, ptr %i.ao, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 0, ptr %.sroa.584.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.er = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @430)
          to label %bb.by unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bs:                                            ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 0, ptr %i.al, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 0, ptr %.sroa.581.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.es = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @433, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 31, ptr %i.et, align 8
  store i64 -1, ptr %i.aj, align 8
  %i.eu = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.cg unwind label %bb.cf     ; 2 uses

bb.bt:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 0, ptr %i.ah, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.578.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @435, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 18, ptr %i.ew, align 8
  store i64 -1, ptr %i.af, align 8
  %i.ex = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.cq unwind label %.loopexit.split-lp254.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bu:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ad, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.575.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @437, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 27, ptr %i.ez, align 8
  store i64 -1, ptr %i.ab, align 8
  %i.fa = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.cy unwind label %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bv:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %.sroa.572.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.fb = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440)
          to label %bb.dg unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @443, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 52, ptr %i.fd, align 8
  store i64 -1, ptr %i.u, align 8
  %i.fe = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.dm unwind label %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bx:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.566.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ff = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447)
          to label %bb.dv unwind label %bb.du     ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.cb, %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp
  %.pn128 = phi { ptr, i32 } [ %lpad.loopexit.split-lp338, %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp ], [ %i.fn, %bb.cb ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc148.preheader, %bb.br, %bb.ca
  %lpad.loopexit.split-lp338 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.by:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.fg = icmp ult i64 %.sroa.4.0.copyload, %3
  br i1 %i.fg, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.fh = extractvalue { ptr, i64 } %i.er, 1
  %i.fi = extractvalue { ptr, i64 } %i.er, 0
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.4.0.copyload ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !8, !align !12, !noundef !8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !8
  store i64 1, ptr %i.am, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.fk, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.fm, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fi, i64 noundef %i.fh, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.am, i64 noundef 1)
          to label %bb.cc unwind label %bb.cb

bb.ca:                                            ; preds = %bb.by
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.copyload, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #37
          to label %bb.bf unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.cd, %bb.bz
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !4730)
  %i.fo = load i8, ptr %i.an, align 8, !range !18, !alias.scope !4730, !noundef !8
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.cd, label %.noexc148.preheader, !prof !13

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4731
  %i.fq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !range !26, !alias.scope !4730, !noundef !8
  store i8 %i.fr, ptr %i.f, align 1, !noalias !4731
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @432) #33
          to label %.noexc141 unwind label %bb.cb

.noexc141:                                        ; preds = %bb.cd
  unreachable

.noexc148.preheader:                              ; preds = %bb.cc
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit149 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit149: ; preds = %.noexc148.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.ce

bb.ce:                                            ; preds = %.preheader278.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit189, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit179, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit175, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit165, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit149
  %.sroa.25.0 = phi i8 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit149 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit165 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit175 ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit179 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit189 ], [ 0, %.preheader278.1 ]
  %.sroa.20212.0 = phi ptr [ %0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit149 ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit165 ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit175 ], [ %0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit179 ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit189 ], [ null, %.preheader278.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.fs = load ptr, ptr %2, align 8, !nonnull !8, !align !12, !noundef !8
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.fs, ptr %.sroa.4234.0..sroa_idx, align 8, !alias.scope !4732
  %.sroa.6235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %i.fu, ptr %.sroa.6235.0..sroa_idx, align 8, !alias.scope !4732
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !4732
  %.sroa.10237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %.sroa.20212.0, ptr %.sroa.10237.0..sroa_idx, align 8, !alias.scope !4732
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i8 %.sroa.25.0, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !4732
  call void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bq

.body150:                                         ; preds = %.peel.begin313, %bb.ck, %bb.cf, %bb.ch
  %.pn124 = phi { ptr, i32 } [ %i.ga, %bb.ch ], [ %i.fv, %bb.cf ], [ %i.gj, %bb.ck ], [ %i.gj, %.peel.begin313 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #34
          to label %.body153 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.bs
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body150

bb.cg:                                            ; preds = %bb.bs
  %i.fw = inttoptr i64 %.sroa.4.0.copyload to ptr
  %i.fx = extractvalue { ptr, i64 } %i.eu, 0
  %i.fy = extractvalue { ptr, i64 } %i.eu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 1, ptr %i.ai, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.fw, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.517.0..sroa_idx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  store i64 1, ptr %i.fz, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %.sroa.12.0.copyload, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i64 %.sroa.13.0.copyload, ptr %.sroa.521.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fx, i64 noundef %i.fy, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.ai, i64 noundef 2)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cj, %bb.cg
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ai) #34
          to label %.body150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !4733)
  %i.gb = load i8, ptr %i.ak, align 8, !range !18, !alias.scope !4733, !noundef !8
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.cj, label %.preheader.preheader, !prof !13

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4734
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !range !26, !alias.scope !4733, !noundef !8
  store i8 %i.ge, ptr %i.g, align 1, !noalias !4734
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @434) #33
          to label %.noexc139 unwind label %bb.ch

.noexc139:                                        ; preds = %bb.cj
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.gf)
          to label %.preheader.1 unwind label %.peel.begin313

.preheader.1:                                     ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.gg = load i64, ptr %i.aj, align 8, !range !20, !alias.scope !4735, !noundef !8
  %i.gh = icmp eq i64 %i.gg, -1
  br i1 %i.gh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.cm

.preheader.preheader:                             ; preds = %bb.ci
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai)
          to label %.preheader unwind label %.peel.begin313

.peel.begin313:                                   ; preds = %.preheader, %.preheader.preheader
  %i.gi = phi i1 [ false, %.preheader.preheader ], [ true, %.preheader ]
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gi, label %.body150, label %bb.ck

bb.ck:                                            ; preds = %.peel.begin313
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fz) #34
          to label %.body150 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %lpad.loopexit.split-lp320 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.cm:                                            ; preds = %.preheader.1
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i152 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body153 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i152: ; preds = %bb.cm
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.cp

.body153:                                         ; preds = %bb.cp, %bb.cn, %.body150
  %.pn126 = phi { ptr, i32 } [ %.pn124, %.body150 ], [ %i.gm, %bb.cp ], [ %i.gk, %bb.cn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i152
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body153

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %.preheader.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit157: ; preds = %bb.cr, %.loopexit.split-lp254.loopexit.split-lp.loopexit.split-lp
  %.pn120 = phi { ptr, i32 } [ %lpad.loopexit.split-lp343, %.loopexit.split-lp254.loopexit.split-lp.loopexit.split-lp ], [ %i.gq, %bb.cr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #34
          to label %.body162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp254.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc158.preheader, %bb.bt
  %lpad.loopexit.split-lp343 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit157

bb.cq:                                            ; preds = %bb.bt
  %i.gn = inttoptr i64 %.sroa.4.0.copyload to ptr
  %i.go = extractvalue { ptr, i64 } %i.ex, 0
  %i.gp = extractvalue { ptr, i64 } %i.ex, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 1, ptr %i.ae, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.gn, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.525.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.go, i64 noundef %i.gp, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.ae, i64 noundef 1)
          to label %bb.cs unwind label %bb.cr

bb.cr:                                            ; preds = %bb.ct, %bb.cq
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !4736)
  %i.gr = load i8, ptr %i.ag, align 8, !range !18, !alias.scope !4736, !noundef !8
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.ct, label %.noexc158.preheader, !prof !13

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4737
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !range !26, !alias.scope !4736, !noundef !8
  store i8 %i.gu, ptr %i.h, align 1, !noalias !4737
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #33
          to label %.noexc137 unwind label %bb.cr

.noexc137:                                        ; preds = %bb.ct
  unreachable

.noexc158.preheader:                              ; preds = %bb.cs
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit159 unwind label %.loopexit.split-lp254.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit159: ; preds = %.noexc158.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.gv = load i64, ptr %i.af, align 8, !range !20, !alias.scope !4738, !noundef !8
  %i.gw = icmp eq i64 %i.gv, -1
  br i1 %i.gw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit165, label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit159
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i161 unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body162 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i161: ; preds = %bb.cu
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit165 unwind label %bb.cx

.body162:                                         ; preds = %bb.cx, %bb.cv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit157
  %.pn122 = phi { ptr, i32 } [ %.pn120, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit157 ], [ %i.gz, %bb.cx ], [ %i.gx, %bb.cv ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i161
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body162

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit165: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit159, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit167: ; preds = %bb.cz, %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp
  %.pn116 = phi { ptr, i32 } [ %lpad.loopexit.split-lp348, %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp ], [ %i.hd, %bb.cz ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #34
          to label %.body172 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc168.preheader, %bb.bu
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit167

bb.cy:                                            ; preds = %bb.bu
  %i.ha = inttoptr i64 %.sroa.4.0.copyload to ptr
  %i.hb = extractvalue { ptr, i64 } %i.fa, 0
  %i.hc = extractvalue { ptr, i64 } %i.fa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 1, ptr %i.aa, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ha, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.529.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hb, i64 noundef %i.hc, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.aa, i64 noundef 1)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.db, %bb.cy
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !4739)
  %i.he = load i8, ptr %i.ac, align 8, !range !18, !alias.scope !4739, !noundef !8
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.db, label %.noexc168.preheader, !prof !13

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4740
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !range !26, !alias.scope !4739, !noundef !8
  store i8 %i.hh, ptr %i.i, align 1, !noalias !4740
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #33
          to label %.noexc135 unwind label %bb.cz

.noexc135:                                        ; preds = %bb.db
  unreachable

.noexc168.preheader:                              ; preds = %bb.da
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit169 unwind label %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit169: ; preds = %.noexc168.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.hi = load i64, ptr %i.ab, align 8, !range !20, !alias.scope !4741, !noundef !8
  %i.hj = icmp eq i64 %i.hi, -1
  br i1 %i.hj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit175, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit169
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i171 unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body172 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i171: ; preds = %bb.dc
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit175 unwind label %bb.df

.body172:                                         ; preds = %bb.df, %bb.dd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit167
  %.pn118 = phi { ptr, i32 } [ %.pn116, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit167 ], [ %i.hm, %bb.df ], [ %i.hk, %bb.dd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i171
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body172

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit175: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit169, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit177: ; preds = %bb.dj, %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp
  %.pn114 = phi { ptr, i32 } [ %lpad.loopexit.split-lp353, %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp ], [ %i.hu, %bb.dj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc178.preheader, %bb.bv, %bb.di
  %lpad.loopexit.split-lp353 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit177

bb.dg:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.hn = icmp ult i64 %.sroa.4.0.copyload, %3
  br i1 %i.hn, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ho = extractvalue { ptr, i64 } %i.fb, 1
  %i.hp = extractvalue { ptr, i64 } %i.fb, 0
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.4.0.copyload ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !nonnull !8, !align !12, !noundef !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !noundef !8
  store i64 1, ptr %i.x, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.hr, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.ht, ptr %.sroa.533.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hp, i64 noundef %i.ho, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.x, i64 noundef 1)
          to label %bb.dk unwind label %bb.dj

bb.di:                                            ; preds = %bb.dg
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.copyload, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #37
          to label %bb.bf unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.dl, %bb.dh
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit177 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dk:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !4742)
  %i.hv = load i8, ptr %i.y, align 8, !range !18, !alias.scope !4742, !noundef !8
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.dl, label %.noexc178.preheader, !prof !13

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4743
  %i.hx = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !range !26, !alias.scope !4742, !noundef !8
  store i8 %i.hy, ptr %i.j, align 1, !noalias !4743
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @442) #33
          to label %.noexc133 unwind label %bb.dj

.noexc133:                                        ; preds = %bb.dl
  unreachable

.noexc178.preheader:                              ; preds = %bb.dk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit179 unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit179: ; preds = %.noexc178.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181: ; preds = %bb.dn, %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp
  %.pn110 = phi { ptr, i32 } [ %lpad.loopexit.split-lp357, %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp ], [ %i.ib, %bb.dn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #34
          to label %.body186 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc182.preheader, %bb.bw
  %lpad.loopexit.split-lp357 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181

bb.dm:                                            ; preds = %bb.bw
  %i.hz = extractvalue { ptr, i64 } %i.fe, 0
  %i.ia = extractvalue { ptr, i64 } %i.fe, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @444, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 12, ptr %.sroa.537.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hz, i64 noundef %i.ia, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef 1)
          to label %bb.do unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %bb.dm
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !4744)
  %i.ic = load i8, ptr %i.v, align 8, !range !18, !alias.scope !4744, !noundef !8
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.dp, label %.noexc182.preheader, !prof !13

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4745
  %i.ie = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !range !26, !alias.scope !4744, !noundef !8
  store i8 %i.if, ptr %i.k, align 1, !noalias !4745
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @445) #33
          to label %.noexc131 unwind label %bb.dn

.noexc131:                                        ; preds = %bb.dp
  unreachable

.noexc182.preheader:                              ; preds = %bb.do
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit183 unwind label %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit183: ; preds = %.noexc182.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ig = load i64, ptr %i.u, align 8, !range !20, !alias.scope !4746, !noundef !8
  %i.ih = icmp eq i64 %i.ig, -1
  br i1 %i.ih, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit189, label %bb.dq

bb.dq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit183
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i185 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body186 unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i185: ; preds = %bb.dq
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit189 unwind label %bb.dt

.body186:                                         ; preds = %bb.dt, %bb.dr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181
  %.pn112 = phi { ptr, i32 } [ %.pn110, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181 ], [ %i.ik, %bb.dt ], [ %i.ii, %bb.dr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i185
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body186

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit189: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit183, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ce

.body192:                                         ; preds = %.peel.begin, %bb.dz, %bb.du, %bb.dw
  %.pn108 = phi { ptr, i32 } [ %i.ip, %bb.dw ], [ %i.il, %bb.du ], [ %i.iw, %bb.dz ], [ %i.iw, %.peel.begin ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.du:                                            ; preds = %bb.bx
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body192

bb.dv:                                            ; preds = %bb.bx
  %i.im = extractvalue { ptr, i64 } %i.ff, 0
  %i.in = extractvalue { ptr, i64 } %i.ff, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @444, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 12, ptr %.sroa.541.0..sroa_idx, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store i64 0, ptr %i.io, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @448, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 14, ptr %.sroa.545.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.im, i64 noundef %i.in, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef 2)
          to label %bb.dx unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dy, %bb.dv
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.q) #34
          to label %.body192 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !4747)
  %i.iq = load i8, ptr %i.r, align 8, !range !18, !alias.scope !4747, !noundef !8
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.dy, label %.preheader278.preheader, !prof !13

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4748
  %i.is = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.it = load i8, ptr %i.is, align 1, !range !26, !alias.scope !4747, !noundef !8
  store i8 %i.it, ptr %i.l, align 1, !noalias !4748
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #33
end_hunk_10
begin_hunk_11_@_RNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions12parse_number:bb.a
  store i64 0, ptr %i.i, align 8
  call void @_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ah, ptr noundef nonnull %0, ptr noundef nonnull %i.da, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.db = load i8, ptr %i.ah, align 8, !range !18, !noundef !8
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.cb, label %bb.cc

bb.x:                                             ; preds = %_RNvXsw_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultxNtNtNtCs8frGy5WneL6_4fish5wutil6errors5ErrorENtNtB7_3cmp9PartialEq2eqBR_.exit.thread
  %i.dd = fcmp une double %i.ck, +inf
  %.sroa.0.0.i72.not = or i1 %i.dd, %i.cj
  br i1 %.sroa.0.0.i72.not, label %_RNvXsw_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultxNtNtNtCs8frGy5WneL6_4fish5wutil6errors5ErrorENtNtB7_3cmp9PartialEq2eqBR_.exit76, label %bb.z

bb.y:                                             ; preds = %_RNvXsw_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultxNtNtNtCs8frGy5WneL6_4fish5wutil6errors5ErrorENtNtB7_3cmp9PartialEq2eqBR_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.de = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @458, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 12, ptr %i.df, align 8
  store i64 -1, ptr %i.v, align 8
  %i.dg = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.bo unwind label %bb.bn     ; 2 uses

_RNvXsw_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultxNtNtNtCs8frGy5WneL6_4fish5wutil6errors5ErrorENtNtB7_3cmp9PartialEq2eqBR_.exit76: ; preds = %bb.x
  %i.dh = icmp eq i8 %.val.i75, 0
  br i1 %i.dh, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.di = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @457, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 18, ptr %i.dj, align 8
  store i64 -1, ptr %i.t, align 8
  %i.dk = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.az unwind label %bb.ay     ; 2 uses

bb.aa:                                            ; preds = %_RNvXsw_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultxNtNtNtCs8frGy5WneL6_4fish5wutil6errors5ErrorENtNtB7_3cmp9PartialEq2eqBR_.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.534.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @453, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 18, ptr %i.dm, align 8
  store i64 -1, ptr %i.k, align 8
  %i.dn = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.ac unwind label %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %_RNvXsw_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultxNtNtNtCs8frGy5WneL6_4fish5wutil6errors5ErrorENtNtB7_3cmp9PartialEq2eqBR_.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.531.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @455, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 20, ptr %i.dp, align 8
  store i64 -1, ptr %i.p, align 8
  %i.dq = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.an unwind label %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.ad, %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp200, %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp ], [ %i.dt, %bb.ad ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #34
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc78.preheader, %bb.aa
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dr = extractvalue { ptr, i64 } %i.dn, 0
  %i.ds = extractvalue { ptr, i64 } %i.dn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 1, ptr %i.j, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %0, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %1, ptr %.sroa.515.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dr, i64 noundef %i.ds, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.j, i64 noundef 1)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !4836)
  %i.du = load i8, ptr %i.l, align 8, !range !18, !alias.scope !4836, !noundef !8
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.af, label %.noexc78.preheader, !prof !13

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4837
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !range !26, !alias.scope !4836, !noundef !8
  store i8 %i.dx, ptr %i.c, align 1, !noalias !4837
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @454) #33
          to label %.noexc60 unwind label %bb.ad

.noexc60:                                         ; preds = %bb.af
  unreachable

.noexc78.preheader:                               ; preds = %bb.ae
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit79 unwind label %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit79: ; preds = %.noexc78.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dy = load i64, ptr %i.k, align 8, !range !20, !alias.scope !4838, !noundef !8
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit79
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.aj

.body:                                            ; preds = %bb.aj, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn38 = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.ec, %bb.aj ], [ %i.ea, %bb.ah ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit79, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !4839, !noundef !8 ; 3 uses
  %i.ef = load i64, ptr %3, align 8, !range !21, !alias.scope !4839, !noundef !8
  %i.eg = icmp eq i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.ak, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit unwind label %bb.al, !noalias !4840

bb.al:                                            ; preds = %bb.ak
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #34
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.db, %bb.cp, %bb.bz, %bb.bk, %bb.aw, %.body, %.body87, %.body92, %.body98, %.body109, %.body120, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.im, %bb.cp ], [ %i.eh, %bb.al ], [ %.pn38, %.body ], [ %i.fd, %bb.aw ], [ %i.gh, %bb.bk ], [ %i.hh, %bb.bz ], [ %.pn52, %.body120 ], [ %.pn48, %.body109 ], [ %eh.lpad-body99, %.body98 ], [ %eh.lpad-body93, %.body92 ], [ %.pn42, %.body87 ], [ %i.ji, %bb.db ]
  resume { ptr, i32 } %common.resume.op

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !4839, !nonnull !8, !noundef !8
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.em = add i64 %i.ee, 1
  store i64 %i.em, ptr %i.ed, align 8, !alias.scope !4839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.t

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ao, %bb.ct, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit82, %.body87, %.body92, %.body98, %.body105, %bb.cf, %.body109, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit115, %.body120
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit82: ; preds = %bb.ao, %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp
  %.pn40 = phi { ptr, i32 } [ %lpad.loopexit.split-lp.a, %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp ], [ %i.ep, %bb.ao ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #34
          to label %.body87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc83.preheader, %bb.ab
  %lpad.loopexit.split-lp.a = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit82

bb.an:                                            ; preds = %bb.ab
  %i.en = extractvalue { ptr, i64 } %i.dq, 0
  %i.eo = extractvalue { ptr, i64 } %i.dq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 1, ptr %i.o, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %1, ptr %.sroa.511.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.en, i64 noundef %i.eo, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef 1)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !4841)
  %i.eq = load i8, ptr %i.q, align 8, !range !18, !alias.scope !4841, !noundef !8
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.aq, label %.noexc83.preheader, !prof !13

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4842
  %i.es = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.et = load i8, ptr %i.es, align 1, !range !26, !alias.scope !4841, !noundef !8
  store i8 %i.et, ptr %i.d, align 1, !noalias !4842
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @456) #33
          to label %.noexc58 unwind label %bb.ao

.noexc58:                                         ; preds = %bb.aq
  unreachable

.noexc83.preheader:                               ; preds = %bb.ap
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit84 unwind label %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit84: ; preds = %.noexc83.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.eu = load i64, ptr %i.p, align 8, !range !20, !alias.scope !4843, !noundef !8
  %i.ev = icmp eq i64 %i.eu, -1
  br i1 %i.ev, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit90, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit84
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i86 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body87 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i86: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit90 unwind label %bb.au

.body87:                                          ; preds = %bb.au, %bb.as, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit82
  %.pn42 = phi { ptr, i32 } [ %.pn40, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit82 ], [ %i.ey, %bb.au ], [ %i.ew, %bb.as ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i86
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body87

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit90: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit84, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !4844, !noundef !8 ; 3 uses
  %i.fb = load i64, ptr %3, align 8, !range !21, !alias.scope !4844, !noundef !8
  %i.fc = icmp eq i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.av, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit91

bb.av:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit90
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit91 unwind label %bb.aw, !noalias !4845

bb.aw:                                            ; preds = %bb.av
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #34
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit91: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit90, %bb.av
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !4844, !nonnull !8, !noundef !8
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.fi = add i64 %i.fa, 1
  store i64 %i.fi, ptr %i.ez, align 8, !alias.scope !4844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.t

bb.ay:                                            ; preds = %bb.bb, %bb.az, %bb.z
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body92

.body92:                                          ; preds = %bb.bf, %bb.ay
  %eh.lpad-body93 = phi { ptr, i32 } [ %i.fj, %bb.ay ], [ %i.fy, %bb.bf ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.z
  %i.fk = extractvalue { ptr, i64 } %i.dk, 0
  %i.fl = extractvalue { ptr, i64 } %i.dk, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.fl, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ba unwind label %bb.ay

bb.ba:                                            ; preds = %bb.az
  %i.fm = load i64, ptr %i.g, align 8, !range !16, !noundef !8
  %i.fn = trunc nuw i64 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !range !25, !noundef !8 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.fn, label %bb.bb, label %bb.bc, !prof !13

bb.bb:                                            ; preds = %bb.ba
  %i.fr = load i64, ptr %i.fq, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.fp, i64 %i.fr) #37
          to label %bb.bm unwind label %bb.ay

bb.bc:                                            ; preds = %bb.ba
  %i.fs = load ptr, ptr %i.fq, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ft = icmp ule i64 %i.fl, %i.fp
  call void @llvm.assume(i1 %i.ft)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not44 = icmp eq i64 %i.fl, 0
  br i1 %.not44, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bh, %bb.bc
  store i64 %i.fp, ptr %i.u, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.fs, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.fl, ptr %.sroa.628.0..sroa_idx, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !4846, !noundef !8 ; 3 uses
  %i.fw = load i64, ptr %3, align 8, !range !21, !alias.scope !4846, !noundef !8
  %i.fx = icmp eq i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bi unwind label %bb.bf, !noalias !4847

bb.bf:                                            ; preds = %bb.be
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #34
          to label %.body92 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.bh:                                            ; preds = %bb.bc
  %i.ga = shl nuw nsw i64 %i.fl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 4 %i.fk, i64 %i.ga, i1 false)
  br label %bb.bd

bb.bi:                                            ; preds = %bb.be, %bb.bd
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_11
begin_hunk_12_@_RNvYNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values14GET_PIPESTATUS0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtBa_11environment13EnvScopedImplEE9call_onceBe_:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !5483, !nonnull !8, !noundef !8
  %i.o = icmp samesign ule i64 %.val1, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5483
  store i64 %i.k, ptr %i.d, align 8, !noalias !5483
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.p, align 8, !noalias !5483
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.q, align 8, !noalias !5483
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.idx.i = shl nuw nsw i64 %.val1, 2
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %.not5.i = icmp eq i64 %.val1, 0
  br i1 %.not5.i, label %_RNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values14GET_PIPESTATUS0Bb_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %.sroa.0.06.i = phi ptr [ %i.s, %bb.h ], [ %.val, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5483
  invoke void @_RNvXsl_Cskr4qsHYS30i_15fish_widestringlNtB5_9ToWString10to_wstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.0.06.i)
          to label %bb.d unwind label %.body.i, !noalias !5483

.body.i:                                          ; preds = %.lr.ph.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = load i64, ptr %i.q, align 8, !alias.scope !5484, !noalias !5483, !noundef !8 ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !range !21, !alias.scope !5484, !noalias !5483, !noundef !8
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.f, !noalias !5485

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %.body.thread.i unwind label %bb.g, !noalias !5483

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !5483
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.z = load ptr, ptr %i.p, align 8, !alias.scope !5484, !noalias !5483, !nonnull !8, !noundef !8
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !5483
  %i.ab = add i64 %i.u, 1
  store i64 %i.ab, ptr %i.q, align 8, !alias.scope !5484, !noalias !5483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5483
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %_RNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values14GET_PIPESTATUS0Bb_.exit, label %.lr.ph.i

bb.i:                                             ; preds = %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body2.i

.body.thread.i:                                   ; preds = %bb.f, %.body.i
  %eh.lpad-body2.i = phi { ptr, i32 } [ %i.t, %.body.i ], [ %i.x, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
          to label %bb.i unwind label %bb.j, !noalias !5483

bb.j:                                             ; preds = %.body.thread.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !5483
  unreachable

_RNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values14GET_PIPESTATUS0Bb_.exit: ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !5483
  call void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar17new_from_name_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @132, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5483
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values17GET_FISH_KILLRING0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtBa_11environment13EnvScopedImplEE9call_onceBe_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5488
  call void @_RNvNtCs8frGy5WneL6_4fish4kill12kill_entries(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !noalias !5488
  call void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar17new_from_name_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @133, i64 noundef 13, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5488
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values20GET_FISH_KILL_SIGNAL0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtBa_11environment13EnvScopedImplEE9call_onceBe_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.val = load i32, ptr %i.c, align 4, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5491
  store i32 %.val, ptr %i.b, align 4, !noalias !5491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5491
  call void @_RNvXsl_Cskr4qsHYS30i_15fish_widestringlNtB5_9ToWString10to_wstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b), !noalias !5491
  call void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar13new_from_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @134, i64 noundef 16, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5491
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values21GET_STATUS_GENERATION0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtBa_11environment13EnvScopedImplEE9call_onceBe_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5494
  %i.c = tail call noundef i64 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19reader_status_count(), !noalias !5494
  store i64 %i.c, ptr %i.a, align 8, !noalias !5494
  call void @_RNvXsr_Cskr4qsHYS30i_15fish_widestringyNtB5_9ToWString10to_wstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !5494
  call void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar13new_from_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @135, i64 noundef 17, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5494
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values7GET_PWD0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtBa_11environment13EnvScopedImplEE9call_onceBe_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5498
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1), !noalias !5499
  call void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i8 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5498
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values9GET_UMASK0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtBa_11environment13EnvScopedImplEE9call_onceBe_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = tail call noundef i32 @_RNvNtNtCse7JGOylGlDZ_3nix3sys4stat5umask(i32 noundef 18), !noalias !5505 ; 3 uses
  %.not.i = icmp eq i32 %i.f, 18
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5505
  store i64 0, ptr %i.d, align 8, !noalias !5505
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5505
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !5505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5505
  %i.g = zext i32 %i.f to i64
  store i64 4, ptr %i.b, align 8, !noalias !5505
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5505
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 6, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef 1)
          to label %bb.e unwind label %bb.d, !noalias !5505

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_RNvNtNtCse7JGOylGlDZ_3nix3sys4stat5umask(i32 noundef %i.f), !noalias !5505 ; 0 uses
  br label %bb.b

bb.d:                                             ; preds = %bb.f, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5505

bb.e:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !5506)
  %i.j = load i8, ptr %i.c, align 8, !range !18, !alias.scope !5506, !noalias !5505, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %.noexc7.i.preheader, !prof !13

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5507
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !26, !alias.scope !5506, !noalias !5505, !noundef !8
  store i8 %i.m, ptr %i.a, align 1, !noalias !5507
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #33
          to label %.noexc.i unwind label %bb.d, !noalias !5505

.noexc.i:                                         ; preds = %bb.f
  unreachable

.noexc7.i.preheader:                              ; preds = %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values9GET_UMASK0Bb_.exit unwind label %bb.g, !noalias !5505

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.d, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.d ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5505

bb.g:                                             ; preds = %.noexc7.i.preheader
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !5505
  unreachable

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i
  resume { ptr, i32 } %.pn.i

_RNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values9GET_UMASK0Bb_.exit: ; preds = %.noexc7.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !5505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5505
  call void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar13new_from_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @136, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5505
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars5UVARS0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBe_(ptr dead_on_unwind noalias nofree noundef writable sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal3new(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.a)
  store i32 0, ptr %0, align 8, !alias.scope !5510
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.b, align 4, !alias.scope !5510
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCse7JGOylGlDZ_3nix6unistd5writeNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned10BorrowedFdECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i32 noundef range(i32 0, -1), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs6_NtCse7JGOylGlDZ_3nix5errnoNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBB_7convert4FromNtNtB5_6consts5ErrnoE4from(i32 noundef range(i32 0, 134)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync7condvar5futexNtB2_7Condvar12wait_timeout(ptr noundef nonnull align 4, ptr noundef nonnull align 4, i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync7condvar5futexNtB2_7Condvar4wait(ptr noundef nonnull align 4, ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs8frGy5WneL6_4fish(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdzE16get_or_init_slowNvNvNvB1g_9thread_id9THREAD_ID27___rust_std_internal_init_fnEB1k_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdEB1J_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataE4lockB11_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1r_15CompletionEntryEE13new_uninit_inB1t_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs8frGy5WneL6_4fish() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtB6_4sync3ArcNtB1r_7HistoryEEE13new_uninit_inB1v_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1p_EE13new_uninit_inCs8frGy5WneL6_4fish() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1w_15CompletionEntryEE13new_uninit_inB1y_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs8frGy5WneL6_4fish() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtB6_4sync3ArcNtB1w_7HistoryEEE13new_uninit_inB1A_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1u_EE13new_uninit_inCs8frGy5WneL6_4fish() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1L_15CompletionEntryE10take_frontB1N_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1L_15CompletionEntryE10init_frontB1N_(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE10take_frontCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE10init_frontCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1L_7HistoryEE10take_frontB1P_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1L_7HistoryEE10init_frontB1P_(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10init_frontCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1J_E10take_frontCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1J_E10init_frontCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish5event16EventDescriptionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtB7_3ffi5c_str7CStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_12
