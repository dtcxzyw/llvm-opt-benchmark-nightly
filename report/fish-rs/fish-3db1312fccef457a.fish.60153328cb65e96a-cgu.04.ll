Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.04?download=true
inline.NumInlined: 2047
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecyEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecyEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecyEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEB1i_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !452, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !452, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1  ; 2 uses
  %.val8.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !453, !noalias !452, !nonnull !8, !noundef !8 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !453, !noalias !452 ; 2 uses
  store i8 0, ptr %.val8.i.i.i.i, align 1, !noalias !454
  %i.g = icmp eq i64 %.val9.i.i.i.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i, i64 noundef range(i64 1, 0) %.val9.i.i.i.i, i64 noundef 1) #36, !noalias !454
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.h = icmp eq i64 %i.e, %.val1.i
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.i = shl nuw nsw i64 %.val1.i, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.i, i64 noundef 8) #36, !noalias !452
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3.i = load i64, ptr %i.j, align 8, !alias.scope !452, !noundef !8 ; 2 uses
  %i.k = icmp eq i64 %.val3.i, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEBF_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load ptr, ptr %i.l, align 8, !alias.scope !452, !nonnull !8, !noundef !8
  %i.m = shl nuw nsw i64 %.val3.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #36, !noalias !452
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEBF_.exit

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
  %i.f = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !481
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
  %i.k = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !484
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
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !510
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
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !513
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
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !516
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
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !519
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
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !522
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
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !545
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
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !548
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader20AutosuggestionResultEEEEB25_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1C_6reader6reader20AutosuggestionResultEEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader20AutosuggestionResultEEEEB25_.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !551, !nonnull !8, !noundef !8
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !551
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader20AutosuggestionResultEEEEB25_.exit4

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1C_6reader6reader20AutosuggestionResultEEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader20AutosuggestionResultEEEEB25_.exit4 unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader20AutosuggestionResultEEEEB25_.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !554, !nonnull !8, !noundef !8
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !554
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader20AutosuggestionResultEEEEB25_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader20AutosuggestionResultEEEEB25_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader20AutosuggestionResultEEEEB25_.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !557, !nonnull !8, !noundef !8
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !557
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs6_Cs5UXtnEuoeIl_11fish_commonINtBK_13ScopedRefCellINtNtB4_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB1X_3ast11JobPipelineEEE10scoped_setNCNvBG_14scoped_replace0B1w_E0EB1X_:bb.a
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB12_3ast11JobPipelineEEEB12_.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB12_3ast11JobPipelineEEEB12_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB12_3ast11JobPipelineEEEB12_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB1S_3ast11JobPipelineEEEEEB1S_.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB12_3ast11JobPipelineEEEB12_.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs6_Cs5UXtnEuoeIl_11fish_commonINtBK_13ScopedRefCellINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10scoped_setNCNvBG_14scoped_replace0B1w_E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !640, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !640, !noundef !8
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !noalias !640
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEEECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtBI_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEEECs8frGy5WneL6_4fish.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #34
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b
  %i.g = load i64, ptr %0, align 8, !range !20, !alias.scope !641, !noundef !8
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEEECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEEECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  ret void

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !642, !noundef !8
  switch i64 %i.a, label %bb.b [
    i64 2, label %bb.c
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.g

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

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish10fd_monitor13FdMonitorItemEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i32, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.b = icmp eq i32 %.val, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @close(i32 noundef %.val) #36 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.a
  %.val1 = load ptr, ptr %0, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !8, !align !17, !noundef !8 ; 5 uses
  %i.e = load ptr, ptr %.val2, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  invoke void %i.e(ptr noundef nonnull %.val1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !22, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !22, !invariant.load !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #36
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish10fd_monitor19BackgroundFdMonitorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !657, !nonnull !8, !noundef !8
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !657
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !660, !nonnull !8, !noundef !8
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !660
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor10SharedDataEEB1d_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor10SharedDataE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor10SharedDataEEB1d_.exit unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !663, !nonnull !8, !noundef !8
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !663
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor10SharedDataEEB1d_.exit2

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor10SharedDataE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor10SharedDataEEB1d_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor10SharedDataEEB1d_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor10SharedDataEEB1d_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15fd_readable_set13FdReadableSetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event16EventDescriptionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !24, !noundef !8
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.sink.split unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
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

end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11PerprocDataEBJ_:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #34
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10TestParserEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions11JustAStringEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions12UnaryPrimaryEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13BinaryPrimaryEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit3: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions13UnaryOperatorEBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !align !17, !noundef !8 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !22, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !22, !invariant.load !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #36
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions19CombiningExpressionEBJ_(ptr noalias nofree noundef align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEEB1z_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
          to label %common.resume unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEEB1z_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerEEB1g_.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEEB1z_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerEEB1g_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEEB1z_.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions23ParentheticalExpressionEBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !align !17, !noundef !8 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !22, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !22, !invariant.load !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #36
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEB1j_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !alias.scope !776, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtBE_15CompletionEntryEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #34
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtNtCs1xwejQucwHj_5alloc11collections5btree7set_val9SetValZSTEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.c

end_hunk_2
begin_hunk_3_@_RINvNvNtNtCs8frGy5WneL6_4fish8builtins8function14parse_cmd_opts18add_named_argumentNCB2_0EB8_:bb.a

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !885, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.w = add i64 %i.o, 1
  store i64 %i.w, ptr %i.n, align 8, !alias.scope !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.x = shl nuw nsw i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 4 %2, i64 %i.x, i1 false)
  br label %bb.e

bb.k:                                             ; preds = %bb.a, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit
  %.sroa.0.0 = phi i32 [ 0, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit ], [ 1, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtBa_6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEE5force0E0B2c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [216 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !17, !noundef !8 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !18, !noundef !8
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEE5force0B1r_.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #33
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEE5force0B1r_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.a), !inline_history !887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtNtBc_11collections4hash3map7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEE5force0E0B3e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !17, !noundef !8 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !18, !noundef !8
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtNtB8_11collections4hash3map7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEE5force0B2t_.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #33
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtNtB8_11collections4hash3map7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEE5force0B2t_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a), !inline_history !888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0E0B1N_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !17, !noundef !8 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !18, !noundef !8
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0B12_.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #33
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0B12_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.f = tail call noundef nonnull ptr %i.e(), !inline_history !889
  store ptr %i.f, ptr %i.b, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtCs8frGy5WneL6_4fish12env_dispatch25update_fish_color_supports1_0B5_(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 32
  %.val1 = load i64, ptr %i.e, align 8, !noundef !8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.val1
  %i.g = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull %.val, ptr noundef nonnull %i.f, ptr noundef nonnull @84, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @84, i64 14))
          to label %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #37
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.i = load ptr, ptr %0, align 8, !alias.scope !905, !nonnull !8, !noundef !8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !905
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
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !909
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
end_hunk_3
begin_hunk_4_@_RNvMs2_NtCs8frGy5WneL6_4fish10fd_monitorNtB5_9FdMonitor11remove_item:bb.a

.noexc15:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_.exit
  %i.bp = load i32, ptr %i.c, align 8, !range !10, !noalias !1103, !noundef !8
  %i.bq = trunc nuw i32 %i.bp to i1
  br i1 %i.bq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc15
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc16, %.lr.ph.i
  %i.bs = load i32, ptr %i.br, align 4, !range !11, !noalias !1103, !noundef !8 ; 3 uses
  %i.bt = icmp eq i32 %i.bs, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1103
  br i1 %i.bt, label %bb.ab, label %bb.ac

._crit_edge.i:                                    ; preds = %.noexc16, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1103
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1103
  store i64 1, ptr %i.d, align 8, !noalias !1103
  invoke void @_RINvNtCse7JGOylGlDZ_3nix6unistd5writeNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned10BorrowedFdECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, i32 noundef %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %bb.ab
  %i.bu = load i32, ptr %i.c, align 8, !range !10, !noalias !1103, !noundef !8
  %i.bv = trunc nuw i32 %i.bu to i1
  br i1 %i.bv, label %bb.aa, label %._crit_edge.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1103
  store i32 %i.bs, ptr %i.b, align 4, !noalias !1103
  %i.bw = invoke noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtNtCse7JGOylGlDZ_3nix5errno6consts5ErrnoNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @147, i64 noundef 2)
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.ac
  br i1 %i.bw, label %.noexc18, label %bb.ad

bb.ad:                                            ; preds = %.noexc17
  invoke void @_RNvNtCs8frGy5WneL6_4fish5wutil10perror_nix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 5, i32 noundef %i.bs)
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.ad, %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1103
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc18, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexjE4lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.o)
          to label %bb.af unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %i.bx = load i64, ptr %i.g, align 8, !range !16, !alias.scope !1104, !noundef !8
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.ag, label %bb.ak, !prof !13

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1105
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !1104, !nonnull !8, !align !17, !noundef !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cc = load i8, ptr %i.cb, align 8, !range !18, !alias.scope !1104, !noundef !8
  store ptr %i.ca, ptr %i.a, align 8, !noalias !1105
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cc, ptr %i.cd, align 8, !noalias !1105
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @144, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #37
          to label %bb.ai unwind label %bb.ah, !noalias !1104

bb.ah:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardjEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %.body unwind label %bb.aj, !noalias !1104

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1104
  unreachable

bb.ak:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !1104, !nonnull !8, !align !17, !noundef !8 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !range !18, !alias.scope !1104, !noundef !8 ; 2 uses
  %i.ck = trunc nuw i8 %i.cj to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 3 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ap, %bb.ak
  %.val7.i = load i64, ptr %i.cl, align 8, !noalias !1106, !noundef !8
  %i.cn = icmp eq i64 %.val7.i, %i.ax
  br i1 %i.cn, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync7condvar5futexNtB2_7Condvar4wait(ptr noundef nonnull align 4 %i.p, ptr noundef nonnull align 8 %i.ch)
          to label %bb.ap unwind label %bb.an, !noalias !1107

bb.an:                                            ; preds = %bb.am
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEECs8frGy5WneL6_4fish(ptr nonnull align 8 %i.ch, i8 %i.cj) #34
          to label %.body unwind label %bb.ao, !noalias !1107

bb.ao:                                            ; preds = %bb.an
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1107
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.cq = load atomic i8, ptr %i.cm monotonic, align 4, !noalias !1107
  %.not.i.not.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.not.i, label %bb.al, label %bb.au

bb.aq:                                            ; preds = %bb.al
  br i1 %i.ck, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cr = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1108
  %i.cs = and i64 %i.cr, 9223372036854775807
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.as, !prof !14

bb.as:                                            ; preds = %bb.ar
  %i.cu = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.as
  br i1 %i.cu, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %.noexc26
  store atomic i8 1, ptr %i.cm monotonic, align 4, !noalias !1108
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.at, %.noexc26, %bb.ar, %bb.aq
  %i.cv = atomicrmw xchg ptr %i.ch, i32 0 release, align 4, !noalias !1108
  %i.cw = icmp eq i32 %i.cv, 2
  br i1 %i.cw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEECs8frGy5WneL6_4fish.exit.sink.split.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtB12_11PoisonErrorBX_EEECs8frGy5WneL6_4fish.exit, !prof !13

bb.au:                                            ; preds = %bb.ap
  br i1 %i.ck, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cx = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1109
  %i.cy = and i64 %i.cx, 9223372036854775807
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.aw, !prof !14

bb.aw:                                            ; preds = %bb.av
  %i.da = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc27 unwind label %.loopexit.split-lp

.noexc27:                                         ; preds = %bb.aw
  br i1 %i.da, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.noexc27
  store atomic i8 1, ptr %i.cm monotonic, align 4, !noalias !1109
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.ax, %.noexc27, %bb.av, %bb.au
  %i.db = atomicrmw xchg ptr %i.ch, i32 0 release, align 4, !noalias !1109
  %i.dc = icmp eq i32 %i.db, 2
  br i1 %i.dc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEECs8frGy5WneL6_4fish.exit.sink.split.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtB12_11PoisonErrorBX_EEECs8frGy5WneL6_4fish.exit, !prof !13

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEECs8frGy5WneL6_4fish.exit.sink.split.i: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ch)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtB12_11PoisonErrorBX_EEECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtB12_11PoisonErrorBX_EEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEECs8frGy5WneL6_4fish.exit.sink.split.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !noundef !8
  %.val7 = load ptr, ptr %i.j, align 8            ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val8 = load ptr, ptr %i.df, align 8, !nonnull !8, !align !17, !noundef !8 ; 5 uses
  %i.dg = load ptr, ptr %.val8, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.dg, null
  br i1 %.not.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtB12_11PoisonErrorBX_EEECs8frGy5WneL6_4fish.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  invoke void %i.dg(ptr noundef nonnull %.val7)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardjEINtB12_11PoisonErrorBX_EEECs8frGy5WneL6_4fish.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dk = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !range !22, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef range(i64 1, 0) %i.di, i64 noundef range(i64 1, 536870913) %i.dl) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish.exit

bb.bb:                                            ; preds = %bb.ay
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !21, !invariant.load !8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dq = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !range !22, !invariant.load !8
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef range(i64 1, 0) %i.do, i64 noundef range(i64 1, 536870913) %i.dr) #36
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish.exit: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret i32 %i.de

bb.bd:                                            ; preds = %bb.be, %.body
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.be:                                            ; preds = %.body29.thread, %bb.h
  %.pn43 = phi { ptr, i32 } [ %i.ag, %.body29.thread ], [ %eh.lpad-body, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_(ptr nonnull %i.ab, i8 %i.ad) #34
          to label %common.resume unwind label %bb.bd
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs2_NtCs8frGy5WneL6_4fish10fd_monitorNtB5_9FdMonitor3add(ptr nofree noundef nonnull align 8 captures(none) %0, i32 noundef range(i32 0, -1) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 17 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = add nuw i64 %i.q, 1                      ; 2 uses
  store i64 %i.s, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 %1, ptr %i.t, align 8
  store ptr %2, ptr %i.n, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %3, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataE4lockB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.x)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #37
          to label %bb.d unwind label %.thread

.thread:                                          ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish(ptr nonnull %2, ptr nonnull %3) #34
          to label %bb.au unwind label %bb.p

bb.d:                                             ; preds = %bb.ah, %bb.n, %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread47

bb.f:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.z = load i64, ptr %i.m, align 8, !range !16, !alias.scope !1121, !noundef !8
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.k, !prof !13

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1122
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1121, !nonnull !8, !align !17, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !18, !alias.scope !1121, !noundef !8
  store ptr %i.ac, ptr %i.d, align 8, !noalias !1122
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.ae, ptr %i.af, align 8, !noalias !1122
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @140, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #37
          to label %bb.i unwind label %bb.h, !noalias !1121

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #34
          to label %.thread47 unwind label %bb.j, !noalias !1121

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1121
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1121, !nonnull !8, !align !17, !noundef !8 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !18, !alias.scope !1121, !noundef !8 ; 2 uses
  %i.am = trunc nuw i8 %i.al to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  invoke void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBP_13FdMonitorItemNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertBR_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an, i64 noundef %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.m unwind label %bb.l

.body21:                                          ; preds = %bb.l, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.ao, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_(ptr nonnull %i.aj, i8 %i.al) #34
          to label %.critedge unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ap = load ptr, ptr %i.l, align 8, !noundef !8
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.q, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.o, ptr %i.j, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @202, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #37
          to label %bb.d unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish10fd_monitor13FdMonitorItemEEB11_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #34
          to label %.body21 unwind label %bb.p

bb.p:                                             ; preds = %.thread, %.body21, %.thread47, %bb.z, %bb.o
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.q:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !range !18, !noundef !8
  %i.au = trunc nuw i8 %i.at to i1
  store i8 1, ptr %i.as, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  br i1 %i.am, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ax = and i64 %i.aw, 9223372036854775807
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc, !prof !14

.noexc:                                           ; preds = %bb.r
  %i.az = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.az, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.av monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.s, %.noexc, %bb.r, %bb.q
  %i.ba = atomicrmw xchg ptr %i.aj, i32 0 release, align 4
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_.exit, !prof !13
end_hunk_4
begin_hunk_5_@_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1l_15CompletionEntryE12insert_entryB1n_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %.sroa.6.0.copyload
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.ay, i64 %i.aw, i1 false), !alias.scope !1327, !noalias !1326
  br label %.thread.i

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.6.0.copyload, label %bb.p [
    i64 5, label %bb.r
    i64 6, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ba = add i64 %.sroa.6.0.copyload, -7
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.k
  %.sroa.09.0.i.i = phi i1 [ true, %bb.q ], [ true, %bb.p ], [ false, %bb.k ], [ false, %bb.o ] ; 2 uses
  %.sroa.510.0.i.i = phi i64 [ 0, %bb.q ], [ %i.ba, %bb.p ], [ %.sroa.6.0.copyload, %bb.k ], [ %.sroa.6.0.copyload, %bb.o ] ; 9 uses
  %.sroa.013.0.i.i = phi i64 [ 5, %bb.q ], [ 6, %bb.p ], [ 4, %bb.k ], [ %.sroa.6.0.copyload, %bb.o ] ; 5 uses
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1r_15CompletionEntryEE13new_uninit_inB1t_()
          to label %.noexc.i.i unwind label %bb.x, !noalias !1323 ; 8 uses

.noexc.i.i:                                       ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 704
  store ptr null, ptr %i.bc, align 8, !noalias !1328
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 714 ; 2 uses
  store i16 0, ptr %i.bd, align 2, !noalias !1328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.be = load i16, ptr %i.an, align 2, !noalias !1330, !noundef !8
  %i.bf = zext i16 %i.be to i64
  %i.bg = xor i64 %.sroa.013.0.i.i, -1
  %i.bh = add nsw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = trunc i64 %i.bh to i16
  store i16 %i.bi, ptr %i.bd, align 2, !alias.scope !1329, !noalias !1328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1330
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.013.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !noalias !1330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1330
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 352 ; 2 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %.sroa.013.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !noalias !1330
  %i.bm = icmp ult i64 %i.bh, 12
  br i1 %i.bm, label %bb.y, label %bb.s, !prof !28

bb.s:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #37
          to label %bb.u unwind label %bb.t, !noalias !1330

bb.t:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #34
          to label %bb.w unwind label %bb.v, !noalias !1330

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1330
  unreachable

bb.w:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #34
          to label %.thread.i.i.i unwind label %bb.v, !noalias !1330

.thread.i.i.i:                                    ; preds = %bb.w
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef 720, i64 noundef 8) #36, !noalias !1328
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %.noexc.i.i
  %i.bq = add nuw nsw i64 %.sroa.013.0.i.i, 1     ; 2 uses
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.bq
  %i.bs = shl nuw nsw i64 %i.bh, 5                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(720) %i.bb, ptr nonnull readonly align 8 %i.br, i64 %i.bs, i1 false), !alias.scope !1331, !noalias !1332
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull readonly align 8 %i.bt, i64 %i.bs, i1 false), !alias.scope !1333, !noalias !1332
  %i.bv = trunc nuw nsw i64 %.sroa.013.0.i.i to i16
  store i16 %i.bv, ptr %i.an, align 2, !noalias !1330
  %.sroa.025.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !1323 ; 3 uses
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.426.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.426.0..sroa_idx.i, i64 24, i1 false), !noalias !1323
  %.sroa.426.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.426.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.426.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !1323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1330
  %spec.select.i.i = select i1 %.sroa.09.0.i.i, i64 0, i64 %.sroa.416.0.copyload ; 3 uses
  %spec.select32.i.i = select i1 %.sroa.09.0.i.i, ptr %i.bb, ptr %i.r ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %spec.select32.i.i, i64 714 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !1334, !noundef !8 ; 2 uses
  %i.by = zext i16 %i.bx to i64                   ; 2 uses
  %.not.i16.not.i.i = icmp ult i64 %.sroa.510.0.i.i, %i.by
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i.i, i64 %.sroa.510.0.i.i ; 3 uses
  br i1 %.not.i16.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.ca = add nuw nsw i64 %.sroa.510.0.i.i, 1     ; 2 uses
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i.i, i64 %i.ca
  %i.cc = sub nuw nsw i64 %i.by, %.sroa.510.0.i.i
  %i.cd = shl nuw nsw i64 %i.cc, 5                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %i.bz, i64 %i.cd, i1 false), !alias.scope !1336, !noalias !1334
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select32.i.i, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %.sroa.510.0.i.i
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr nonnull align 8 %i.cf, i64 %i.cd, i1 false), !alias.scope !1337, !noalias !1334
  br label %bb.ae

bb.ab:                                            ; preds = %bb.ad, %bb.ac
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1338
  unreachable

.thread.i:                                        ; preds = %bb.n, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 352
  %i.cj = add nuw nsw i16 %i.ao, 1
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %.sroa.6.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !1339, !noalias !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %i.cj, ptr %i.an, align 2, !noalias !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1322
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x, %.thread.i.i.i
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.bn, %.thread.i.i.i ], [ %i.bp, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #34
          to label %bb.ad unwind label %bb.ab, !noalias !1340

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n) #34
          to label %.critedge9 unwind label %bb.ab, !noalias !1338

bb.ae:                                            ; preds = %bb.aa, %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %spec.select32.i.i, i64 352
  %i.cm = add i16 %i.bx, 1
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %.sroa.510.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !1341, !noalias !1334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %i.cm, ptr %i.bw, align 2, !noalias !1334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.426.i, i64 56, i1 false), !noalias !1342
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1322
  %.not.i = icmp eq i64 %.sroa.025.0.copyload.i, -1
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7244.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, i64 56, i1 false), !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 704
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1343, !noundef !8 ; 2 uses
  %.not.i145.i = icmp eq ptr %i.cp, null
  br i1 %.not.i145.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cr = icmp eq i64 %.sroa.416.0.copyload, 0
  %.sroa.7244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7244.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7244.i, i64 24 ; 5 uses
  br label %bb.aw

bb.ag:                                            ; preds = %bb.ae, %.thread.i
  %.sink.i36.i = phi i64 [ %.sroa.6.0.copyload, %.thread.i ], [ %.sroa.510.0.i.i, %bb.ae ]
  %.sink50.i35.i = phi i64 [ %.sroa.416.0.copyload, %.thread.i ], [ %spec.select.i.i, %bb.ae ]
  %.sink51.i34.i = phi ptr [ %i.r, %.thread.i ], [ %spec.select32.i.i, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1F_15CompletionEntryNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB40_11VacantEntryB1D_B2v_E12insert_entry0EB1H_.exit

._crit_edge.i:                                    ; preds = %bb.ce, %bb.af
  %.sroa.0.0.i = phi i64 [ %.sroa.025.0.copyload.i, %bb.af ], [ %.sroa.0.i.sroa.0.0.copyload.i, %bb.ce ]
  %.lcssa137.i = phi i64 [ 0, %bb.af ], [ %i.dv, %bb.ce ] ; 2 uses
  %.lcssa129.i = phi ptr [ %i.bb, %bb.af ], [ %i.gj, %bb.ce ] ; 4 uses
  %.lcssa121.i = phi i64 [ %.sroa.416.0.copyload, %bb.af ], [ %i.dv, %bb.ce ]
  %.lcssa.i = phi ptr [ %i.r, %bb.af ], [ %i.dq, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1322
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7244.i, i64 56, i1 false), !noalias !1322
  store i64 %.sroa.0.0.i, ptr %i.j, align 8, !noalias !1322
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %.lcssa.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1322
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 %.lcssa121.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !1322
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store ptr %.lcssa129.i, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !1322
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 %.lcssa137.i, ptr %.sroa.76.0..sroa_idx.i, align 8, !noalias !1322
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.cs = load ptr, ptr %.val11, align 8, !noalias !1344, !noundef !8 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val11, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.cs, null
  br i1 %.not.i23.i, label %bb.ah, label %bb.aj, !prof !13

bb.ah:                                            ; preds = %._crit_edge.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
          to label %bb.ai unwind label %bb.at, !noalias !1344

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !1345, !noalias !1344, !noundef !8 ; 2 uses
  %i.cv = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1w_15CompletionEntryEE13new_uninit_inB1y_()
          to label %.noexc.i.i.i unwind label %bb.an, !noalias !1346 ; 9 uses

.noexc.i.i.i:                                     ; preds = %bb.aj
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr null, ptr %i.cw, align 8, !noalias !1346
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 714 ; 3 uses
  store i16 0, ptr %i.cx, align 2, !noalias !1346
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 720 ; 2 uses
  store ptr %i.cs, ptr %i.cy, align 8, !noalias !1346
  %i.cz = add i64 %i.cu, 1                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.ao, !prof !13

bb.ak:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #37
          to label %bb.al unwind label %bb.am, !noalias !1346

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef 816, i64 noundef 8) #36, !noalias !1346
  br label %.body.i.i.i

bb.an:                                            ; preds = %bb.aj
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.an, %bb.am
  tail call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %.noexc.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 704
  store ptr %i.cv, ptr %i.dc, align 8, !noalias !1347
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 712
  store i16 0, ptr %i.dd, align 8, !noalias !1348
  store ptr %i.cv, ptr %.val11, align 8, !alias.scope !1345, !noalias !1344
  store i64 %i.cz, ptr %i.ct, align 8, !alias.scope !1345, !noalias !1344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 32, i1 false), !noalias !1322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1344
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.7244.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 32, i1 false), !noalias !1322
  %i.df = icmp eq i64 %.lcssa137.i, %i.cu
  br i1 %i.df, label %bb.ap, label %.invoke.i.i.i, !prof !14

.invoke.i.i.i:                                    ; preds = %bb.ap, %bb.ao
  %i.dg = phi ptr [ @308, %bb.ao ], [ @306, %bb.ap ]
  %i.dh = phi i64 [ 48, %bb.ao ], [ 32, %bb.ap ]
  %i.di = phi ptr [ @309, %bb.ao ], [ @310, %bb.ap ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dg, i64 noundef %i.dh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di) #37
          to label %.cont.i.i.i unwind label %bb.aq, !noalias !1349

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.dj = load i16, ptr %i.cx, align 2, !noalias !1349, !noundef !8 ; 3 uses
  %i.dk = icmp ult i16 %i.dj, 11
  br i1 %i.dk, label %bb.cf, label %.invoke.i.i.i, !prof !14

bb.aq:                                            ; preds = %.invoke.i.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #34
          to label %bb.as unwind label %bb.ar, !noalias !1350

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1344
  unreachable

bb.as:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #34
          to label %.critedge9 unwind label %bb.ar, !noalias !1344

bb.at:                                            ; preds = %bb.ah
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.j) #34
          to label %bb.av unwind label %bb.au, !noalias !1322

bb.au:                                            ; preds = %bb.av, %bb.at
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1322
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dp) #34
          to label %.critedge9 unwind label %bb.au, !noalias !1322

bb.aw:                                            ; preds = %bb.ce, %.lr.ph.i
  %.sroa.0.1.i = phi i64 [ %.sroa.025.0.copyload.i, %.lr.ph.i ], [ %.sroa.0.i.sroa.0.0.copyload.i, %bb.ce ]
  %i.dq = phi ptr [ %i.cp, %.lr.ph.i ], [ %i.lf, %bb.ce ] ; 20 uses
  %i.dr = phi ptr [ %i.r, %.lr.ph.i ], [ %i.dq, %bb.ce ]
  %i.ds = phi i64 [ %.sroa.416.0.copyload, %.lr.ph.i ], [ %i.dv, %bb.ce ]
  %i.dt = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.gj, %bb.ce ] ; 2 uses
  %i.du = phi i1 [ %i.cr, %.lr.ph.i ], [ true, %bb.ce ]
  %i.dv = add i64 %i.ds, 1                        ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 712
  %i.dx = load i16, ptr %i.dw, align 8, !noalias !1343 ; 4 uses
  %i.dy = zext i16 %i.dx to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1322
  store i64 %.sroa.0.1.i, ptr %i.l, align 8, !noalias !1322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.i, i64 24, i1 false), !noalias !1322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.32..sroa_idx.i, i64 32, i1 false), !noalias !1322
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  br i1 %i.du, label %bb.ay, label %bb.ax, !prof !14

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #37
          to label %bb.az unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1351

bb.ay:                                            ; preds = %bb.aw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 714 ; 4 uses
  %i.ea = load i16, ptr %i.dz, align 2, !noalias !1351, !noundef !8 ; 5 uses
  %i.eb = icmp ult i16 %i.ea, 11
  br i1 %i.eb, label %bb.bb, label %bb.ba

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %bb.ax
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.ec = icmp ult i16 %i.dx, 5
  br i1 %i.ec, label %bb.bi, label %bb.bf

bb.bb:                                            ; preds = %bb.ay
  %i.ed = zext nneg i16 %i.ea to i64              ; 4 uses
  %i.ee = add nuw nsw i16 %i.ea, 1
  %i.ef = add nuw nsw i64 %i.dy, 1                ; 7 uses
  %.not.i.i32.not.i = icmp ult i16 %i.dx, %i.ea
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.dy ; 3 uses
  br i1 %.not.i.i32.not.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !1352
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 352
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.32..sroa_idx.i, i64 32, i1 false), !noalias !1322
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.ef
  %i.ek = sub nuw nsw i64 %i.ed, %i.dy            ; 2 uses
  %i.el = shl nuw nsw i64 %i.ek, 5                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 8 %i.eg, i64 %i.el, i1 false), !alias.scope !1353, !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !1352
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 352 ; 2 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.dy ; 2 uses
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.ef
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eo, ptr nonnull align 8 %i.en, i64 %i.el, i1 false), !alias.scope !1355, !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.32..sroa_idx.i, i64 32, i1 false), !noalias !1322
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dq, i64 720 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ef
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.dy
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.es, ptr nonnull align 8 %i.eq, i64 %i.et, i1 false), !alias.scope !1356, !noalias !1354
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dq, i64 720 ; 6 uses
  %i.ev = add nuw nsw i64 %i.ed, 2                ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ef
  store ptr %i.dt, ptr %i.ew, align 8, !alias.scope !1356, !noalias !1354
  store i16 %i.ee, ptr %i.dz, align 2, !noalias !1354
  %i.ex = icmp samesign ult i64 %i.ef, %i.ev
  br i1 %i.ex, label %.lr.ph.i.i.i.i.preheader, label %.thread41.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.be
end_hunk_5
begin_hunk_6_@_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl4getf:bb.a
          cleanup
  br label %bb.br

bb.bu:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  %i.ez = load ptr, ptr %i.f, align 8, !alias.scope !1714, !noalias !1679, !noundef !8 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fb = atomicrmw add ptr %i.ez, i64 -1 release, align 8, !noalias !1715
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i

bb.bw:                                            ; preds = %bb.bv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i unwind label %bb.bx, !noalias !1682

bb.bx:                                            ; preds = %bb.bw
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1679
  br label %bb.br

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i: ; preds = %bb.bw, %bb.bv, %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1679
  %i.fe = load ptr, ptr %i.f, align 8, !noalias !1679, !noundef !8
  %.not8.i = icmp eq ptr %i.fe, null
  br i1 %.not8.i, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %i.ff = load ptr, ptr %i.c, align 8, !alias.scope !1719, !noalias !1679, !nonnull !8, !noundef !8
  %i.fg = atomicrmw add ptr %i.ff, i64 -1 release, align 8, !noalias !1720
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.bz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit32.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit32.i unwind label %.loopexit.split-lp.loopexit.split-lp.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1682

bb.ca:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.fi = load ptr, ptr %i.c, align 8, !alias.scope !1724, !noalias !1679, !nonnull !8, !noundef !8
  %i.fj = atomicrmw add ptr %i.fi, i64 -1 release, align 8, !noalias !1725
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.cb, label %.noexc33.i

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1682

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit32.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1679
  %.pr.i60 = load ptr, ptr %i.d, align 8, !alias.scope !1697, !noalias !1679 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1727
  store ptr %.pr.i60, ptr %i.a, align 8, !noalias !1727
  store ptr null, ptr %i.d, align 8, !alias.scope !1726, !noalias !1679
  %.not.i22.i = icmp eq ptr %.pr.i60, null
  br i1 %.not.i22.i, label %.thread5.i, label %bb.be

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit27.i: ; preds = %bb.bq, %bb.bp, %.noexc33.i, %.thread5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1728
  call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  %i.fl = load ptr, ptr %i.e, align 8, !alias.scope !1732, !noalias !1679, !nonnull !8, !noundef !8
  %i.fm = atomicrmw add ptr %i.fl, i64 -1 release, align 8, !noalias !1733
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit27.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %bb.ch unwind label %bb.j

bb.cd:                                            ; preds = %bb.cg, %bb.bs, %bb.bn, %bb.au
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1682
  unreachable

bb.ce:                                            ; preds = %bb.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.i50
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %i.fp = load ptr, ptr %i.f, align 8, !alias.scope !1734, !noalias !1679, !noundef !8 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %thread-pre-split, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fr = atomicrmw add ptr %i.fp, i64 -1 release, align 8, !noalias !1735
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.cg, label %thread-pre-split

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %thread-pre-split unwind label %bb.cd, !noalias !1682

bb.ch:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit27.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1679
  call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  %i.ft = load ptr, ptr %i.o, align 8, !alias.scope !1736, !noundef !8 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit65, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fv = atomicrmw add ptr %i.ft, i64 -1 release, align 8, !noalias !1737
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.cj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit65

bb.cj:                                            ; preds = %bb.ci
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit65 unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %thread-pre-split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit65: ; preds = %bb.ci, %bb.ch, %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.pre159 = load ptr, ptr %i.o, align 8
  br label %bb.ap

bb.cl:                                            ; preds = %bb.ap, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit68
  %i.fy = phi ptr [ %i.ck, %bb.ap ], [ %.pre160, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit68 ] ; 2 uses
  %.not28 = icmp eq ptr %i.fy, null
  %or.cond9 = and i1 %.sroa.05.0.i.i, %.not28
  br i1 %or.cond9, label %bb.cr, label %bb.cq

bb.cm:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val41 = load ptr, ptr %i.fz, align 8, !nonnull !8, !noundef !8
  invoke fastcc void @_RNvMs5_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRef10find_entry(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %.val41, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3)
          to label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl14try_get_global.exit unwind label %bb.j

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl14try_get_global.exit: ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  %i.ga = load ptr, ptr %i.o, align 8, !alias.scope !1738, !noundef !8 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit68, label %bb.cn

bb.cn:                                            ; preds = %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl14try_get_global.exit
  %i.gc = atomicrmw add ptr %i.ga, i64 -1 release, align 8, !noalias !1739
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %bb.co, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit68

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit68 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %thread-pre-split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit68: ; preds = %bb.cn, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl14try_get_global.exit, %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.pre160 = load ptr, ptr %i.o, align 8
  br label %bb.cl

bb.cq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit75, %bb.cl
  %i.gf = phi ptr [ %.pre161, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit75 ], [ %i.fy, %bb.cl ] ; 4 uses
  %.not29 = icmp ne ptr %i.gf, null
  %or.cond36 = and i1 %i.z, %.not29
  br i1 %or.cond36, label %bb.dd, label %bb.dc

bb.cr:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.gg = invoke { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars()
          to label %.noexc69 unwind label %bb.j   ; 2 uses

.noexc69:                                         ; preds = %bb.cr
  %i.gh = extractvalue { ptr, i1 } %i.gg, 0       ; 7 uses
  %i.gi = extractvalue { ptr, i1 } %i.gg, 1       ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  invoke void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal3get(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.gj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.ct unwind label %bb.cs

bb.cs:                                            ; preds = %.noexc69
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %5 = zext i1 %i.gi to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gh) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_(ptr nonnull %i.gh, i8 %5) #34
          to label %thread-pre-split unwind label %bb.cy, !noalias !1740

bb.ct:                                            ; preds = %.noexc69
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gh) ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  br i1 %i.gi, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gm = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1741
  %i.gn = and i64 %i.gm, 9223372036854775807
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.cv, !prof !14

bb.cv:                                            ; preds = %bb.cu
  %i.gp = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc70 unwind label %bb.j

.noexc70:                                         ; preds = %bb.cv
  br i1 %i.gp, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %.noexc70
  store atomic i8 1, ptr %i.gl monotonic, align 1, !noalias !1740
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.cw, %.noexc70, %bb.cu, %bb.ct
  %i.gq = atomicrmw xchg ptr %i.gh, i32 0 release, align 4, !noalias !1740
  %i.gr = icmp eq i32 %i.gq, 2
  br i1 %i.gr, label %bb.cx, label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl17try_get_universal.exit, !prof !13

bb.cx:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.gh)
          to label %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl17try_get_universal.exit unwind label %bb.j

bb.cy:                                            ; preds = %bb.cs
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1740
  unreachable

_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl17try_get_universal.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  %i.gt = load ptr, ptr %i.o, align 8, !alias.scope !1742, !noundef !8 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit75, label %bb.cz

bb.cz:                                            ; preds = %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl17try_get_universal.exit
  %i.gv = atomicrmw add ptr %i.gt, i64 -1 release, align 8, !noalias !1743
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.da, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit75

bb.da:                                            ; preds = %bb.cz
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit75 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %thread-pre-split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit75: ; preds = %bb.cz, %_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl17try_get_universal.exit, %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pre161 = load ptr, ptr %i.o, align 8
  br label %bb.cq

bb.dc:                                            ; preds = %bb.dd, %bb.cq
  %.not31 = icmp ne ptr %i.gf, null
  %or.cond39 = and i1 %i.ab, %.not31
  br i1 %or.cond39, label %bb.dg, label %bb.df

bb.dd:                                            ; preds = %bb.cq
  %i.gy = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.gz = load i8, ptr %i.gy, align 8, !noundef !8
  %i.ha = and i8 %i.gz, 1
  %.sroa.012.0.v.v = xor i8 %i.ha, 5
  %.sroa.012.0.v = lshr i8 %i.q, %.sroa.012.0.v.v
  %i.hb = trunc i8 %.sroa.012.0.v to i1
  br i1 %i.hb, label %bb.dc, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hc = atomicrmw add ptr %i.gf, i64 -1 release, align 8, !noalias !1744
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %.sink.split.sink.split, label %.sink.split

.sink.split.sink.split:                           ; preds = %bb.de, %bb.dh
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #38
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.de, %bb.dh
  store ptr null, ptr %i.o, align 8
  br label %bb.df

bb.df:                                            ; preds = %.sink.split, %bb.dg, %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.dg:                                            ; preds = %bb.dc
  %i.he = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.hf = load i8, ptr %i.he, align 8, !noundef !8
  %i.hg = and i8 %i.hf, 4
  %.not32 = icmp eq i8 %i.hg, 0
  %i.hh = and i8 %i.q, 64
  %i.hi = icmp ne i8 %i.hh, 0
  %i.hj = select i1 %.not32, i1 %i.ad, i1 %i.hi
  br i1 %i.hj, label %bb.df, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.hk = atomicrmw add ptr %i.gf, i64 -1 release, align 8, !noalias !1745
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %.sink.split.sink.split, label %.sink.split

bb.di:                                            ; preds = %bb.i
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit: ; preds = %bb.h, %bb.g, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl8snapshot(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.013 = alloca [48 x i8], align 8          ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = tail call fastcc noundef nonnull ptr @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15copy_node_chain(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) ; 2 uses
  store ptr %i.f, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1762
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load <2 x i32>, ptr %i.l, align 8, !alias.scope !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1762
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.h unwind label %bb.c, !noalias !1763

bb.c:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #34
          to label %.body unwind label %bb.d, !noalias !1763

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1763
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.n, %bb.c ]
  %i.q = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !1764
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit

bb.g:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit unwind label %bb.i

bb.h:                                             ; preds = %.noexc
  %.sroa.013.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.013, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_6
begin_hunk_7_@_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl9get_names:_RNvXNtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB2_5QueryINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB6_3var7EnvModeE4from.exit
  %i.cg = icmp ult i64 %i.cf, 9223372036854775807
  br i1 %i.cg, label %bb.r, label %bb.q, !prof !14

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #33
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ch = add nuw nsw i64 %i.cf, 1
  store i64 %i.ch, ptr %i.ce, align 8, !noalias !1832
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1833
  invoke void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE4iterB1K_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ci)
          to label %.noexc40 unwind label %.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.r
  %i.cj = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc41 unwind label %.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %.noexc40
  %i.ck = extractvalue { ptr, ptr } %i.cj, 0      ; 3 uses
  %.not1.i = icmp eq ptr %i.ck, null
  br i1 %.not1.i, label %.loopexit103, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.noexc41
  br i1 %.not96, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %.noexc44.us
  %i.cl = phi ptr [ %i.co, %.noexc44.us ], [ %i.ck, %.lr.ph.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1833
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl)
          to label %.noexc42.us unwind label %.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42.us:                                      ; preds = %.lr.ph.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1833
  %i.cm = invoke noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc43.us unwind label %.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc43.us:                                      ; preds = %.noexc42.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1833
  %i.cn = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc44.us unwind label %.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44.us:                                      ; preds = %.noexc43.us
  %i.co = extractvalue { ptr, ptr } %i.cn, 0      ; 2 uses
  %.not.i39.us = icmp eq ptr %i.co, null
  br i1 %.not.i39.us, label %.loopexit103, label %.lr.ph.i.us

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc44
  %.pn.i = phi { ptr, ptr } [ %i.cw, %.noexc44 ], [ %i.cj, %.lr.ph.i.preheader ]
  %i.cp = phi ptr [ %i.cx, %.noexc44 ], [ %i.ck, %.lr.ph.i.preheader ]
  %i.cq = extractvalue { ptr, ptr } %.pn.i, 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i8, ptr %i.cr, align 8, !noundef !8
  %i.ct = and i8 %i.cs, 1
  %.not4.i = icmp eq i8 %i.ct, 0
  %.sroa.03.0.i.sroa.speculated = select i1 %.not4.i, i8 %i.z, i8 %i.y
  %i.cu = trunc i8 %.sroa.03.0.i.sroa.speculated to i1
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1833
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp)
          to label %.noexc42 unwind label %.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1833
  %i.cv = invoke noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc43 unwind label %.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc43:                                         ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1833
  br label %bb.t

bb.t:                                             ; preds = %.noexc43, %.lr.ph.i
  %i.cw = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc44 unwind label %.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc44:                                         ; preds = %bb.t
  %i.cx = extractvalue { ptr, ptr } %i.cw, 0      ; 2 uses
  %.not.i39 = icmp eq ptr %i.cx, null
  br i1 %.not.i39, label %.loopexit103, label %.lr.ph.i

.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc43.us, %.noexc42.us, %.lr.ph.i.us, %bb.t, %.noexc42, %bb.s, %.noexc40, %bb.r
  %lpad.loopexit.split-lp276 = landingpad { ptr, i32 }
          cleanup
  %i.cy = load i64, ptr %i.ce, align 8, !noundef !8
  %i.cz = add i64 %i.cy, -1
  store i64 %i.cz, ptr %i.ce, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.thread

.loopexit103:                                     ; preds = %.noexc44, %.noexc44.us, %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1833
  %i.da = load i64, ptr %i.ce, align 8, !noundef !8
  %i.db = add i64 %i.da, -1
  store i64 %i.db, ptr %i.ce, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.u

bb.u:                                             ; preds = %.loopexit103, %bb.v
  %.sroa.05.0.idx138 = phi i64 [ 0, %.loopexit103 ], [ %.sroa.05.0.add, %bb.v ] ; 2 uses
  %.sroa.05.0.ptr139 = getelementptr inbounds nuw i8, ptr @173, i64 %.sroa.05.0.idx138 ; 3 uses
  %.sroa.05.0.add = add nuw nsw i64 %.sroa.05.0.idx138, 32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ptr139, i64 25
  %i.df = load i8, ptr %i.de, align 1, !range !18, !noundef !8
  %i.dg = trunc nuw i8 %i.df to i1
  %.sroa.07.0 = select i1 %i.dg, i8 %.sroa.06.0.i.i, i8 %.sroa.07.0.i.i
  %i.dh = trunc i8 %.sroa.07.0 to i1
  br i1 %i.dh, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.ac, %bb.u
  %i.di = icmp eq i64 %.sroa.05.0.add, 736
  br i1 %i.di, label %.loopexit, label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dj = load ptr, ptr %.sroa.05.0.ptr139, align 8, !nonnull !8, !align !12, !noundef !8
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ptr139, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.dl, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.dm = load i64, ptr %i.i, align 8, !range !16, !noundef !8
  %i.dn = trunc nuw i64 %i.dm to i1
  %i.do = load i64, ptr %i.dc, align 8, !range !25, !noundef !8 ; 3 uses
  br i1 %i.dn, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.dp = load i64, ptr %i.dd, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dp) #37
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  %i.dq = load ptr, ptr %i.dd, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.dr = icmp ule i64 %i.dl, %i.do
  call void @llvm.assume(i1 %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not18 = icmp eq i64 %i.dl, 0
  br i1 %.not18, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  store i64 %i.do, ptr %i.m, align 8
  store ptr %i.dq, ptr %.sroa.415.0..sroa_idx, align 8
  store i64 %i.dl, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ds = invoke noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ab:                                            ; preds = %bb.z
  %i.dt = shl nuw nsw i64 %i.dl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dq, ptr nonnull align 4 %i.dj, i64 %i.dt, i1 false)
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.v

bb.ad:                                            ; preds = %bb.y
  unreachable

bb.ae:                                            ; preds = %bb.an, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  call void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterB11_EE9from_iterCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.af:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.du = invoke { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars()
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.dv = extractvalue { ptr, i1 } %i.du, 0       ; 7 uses
  %i.dw = extractvalue { ptr, i1 } %i.du, 1       ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = trunc i8 %.sroa.06.0.i.i to i1
  %i.dz = trunc i8 %.sroa.07.0.i.i to i1
  invoke void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal9get_names(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.dx, i1 noundef zeroext %i.dy, i1 noundef zeroext %i.dz)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %3 = zext i1 %i.dw to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_(ptr nonnull %i.dv, i8 %3) #34
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.thread unwind label %bb.ap

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  br i1 %i.dw, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ed = and i64 %i.ec, 9223372036854775807
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ak, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.ef = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc45 unwind label %bb.ao

.noexc45:                                         ; preds = %bb.ak
  br i1 %i.ef, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc45
  store atomic i8 1, ptr %i.eb monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.al, %.noexc45, %bb.aj, %bb.ai
  %i.eg = atomicrmw xchg ptr %i.dv, i32 0 release, align 4
  %i.eh = icmp eq i32 %i.eg, 2
  br i1 %i.eh, label %bb.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit, !prof !13

bb.am:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit unwind label %bb.ao

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.aa, %bb.q, %bb.y, %bb.af, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  invoke void @_RINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB6_7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBO_E6extendINtNtCs1xwejQucwHj_5alloc3vec3VecBO_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ae

bb.ao:                                            ; preds = %bb.am, %bb.ak
  %lpad.thr_comm90 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #34
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.thread unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.thread, %bb.ar, %bb.n, %bb.ah, %bb.ao
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.aq:                                            ; preds = %.loopexit104, %bb.as
  %.pn = phi { ptr, i32 } [ %i.em, %bb.as ], [ %lpad.phi108, %.loopexit104 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  %i.ej = load ptr, ptr %i.n, align 8, !alias.scope !1837, !nonnull !8, !noundef !8
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 release, align 8, !noalias !1837
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.ar, label %.body

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #38
          to label %.body unwind label %bb.ap

bb.as:                                            ; preds = %.split127.us
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.at:                                            ; preds = %.thread194, %bb.o
  %i.en = phi i64 [ %i.bo, %.thread194 ], [ %.pre.i.i, %bb.o ]
  store i64 %i.en, ptr %i.bi, align 8, !noalias !1820
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1821
  invoke void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE4iterB1K_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eo)
          to label %.noexc56 unwind label %.loopexit.split-lp105.split.loopexit.split-lp

.noexc56:                                         ; preds = %bb.at
  %i.ep = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc57 unwind label %.loopexit.split-lp105.split.loopexit.split-lp ; 2 uses

.noexc57:                                         ; preds = %.noexc56
  %i.eq = extractvalue { ptr, ptr } %i.ep, 0      ; 2 uses
  %.not1.i48 = icmp eq ptr %i.eq, null
  br i1 %.not1.i48, label %.loopexit109.split, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.noexc57, %.noexc60
  %.pn.i50 = phi { ptr, ptr } [ %i.ey, %.noexc60 ], [ %i.ep, %.noexc57 ]
  %i.er = phi ptr [ %i.ez, %.noexc60 ], [ %i.eq, %.noexc57 ]
  %i.es = extractvalue { ptr, ptr } %.pn.i50, 1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i8, ptr %i.et, align 8, !noundef !8
  %i.ev = and i8 %i.eu, 1
  %.not4.i52 = icmp eq i8 %i.ev, 0
  %.sroa.03.0.i55.sroa.speculated = select i1 %.not4.i52, i8 %i.z, i8 %i.y
  %i.ew = trunc i8 %.sroa.03.0.i55.sroa.speculated to i1
  br i1 %i.ew, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1821
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er)
          to label %.noexc58 unwind label %.loopexit.split-lp105.split.loopexit.split-lp

.noexc58:                                         ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1821
  %i.ex = invoke noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc59 unwind label %.loopexit.split-lp105.split.loopexit.split-lp ; 0 uses

.noexc59:                                         ; preds = %.noexc58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1821
  br label %bb.av

bb.av:                                            ; preds = %.noexc59, %.lr.ph.i49
  %i.ey = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc60 unwind label %.loopexit.split-lp105.split.loopexit.split-lp ; 2 uses

.noexc60:                                         ; preds = %bb.av
  %i.ez = extractvalue { ptr, ptr } %i.ey, 0      ; 2 uses
  %.not.i51 = icmp eq ptr %i.ez, null
  br i1 %.not.i51, label %.loopexit109.split, label %.lr.ph.i49

.loopexit.split-lp105.split.loopexit.split-lp:    ; preds = %bb.av, %.noexc58, %bb.au, %.noexc56, %bb.at
  %lpad.loopexit.split-lp300 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit104

.loopexit104:                                     ; preds = %.loopexit.split-lp105.split.loopexit.split-lp, %.loopexit104.split.us.split.us.loopexit.split-lp
  %i.fa = phi ptr [ %i.ai, %.loopexit104.split.us.split.us.loopexit.split-lp ], [ %i.bi, %.loopexit.split-lp105.split.loopexit.split-lp ] ; 2 uses
  %lpad.phi108 = phi { ptr, i32 } [ %lpad.loopexit.split-lp280, %.loopexit104.split.us.split.us.loopexit.split-lp ], [ %lpad.loopexit.split-lp300, %.loopexit.split-lp105.split.loopexit.split-lp ]
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !8
  %i.fc = add i64 %i.fb, -1
  store i64 %i.fc, ptr %i.fa, align 8
  br label %bb.aq

.loopexit109.split:                               ; preds = %.noexc60, %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1821
  %i.fd = load i64, ptr %i.bi, align 8, !noundef !8
  %i.fe = add i64 %i.fd, -1
  store i64 %i.fe, ptr %i.bi, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.ff = load ptr, ptr %i.n, align 8, !alias.scope !1825, !nonnull !8, !noundef !8
  %i.fg = atomicrmw add ptr %i.ff, i64 -1 release, align 8, !noalias !1825
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit63

bb.aw:                                            ; preds = %.loopexit109.split
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit63 unwind label %.split133.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit63: ; preds = %.loopexit109.split, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.pr = load ptr, ptr %i.o, align 8, !alias.scope !1818 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1826
  store ptr %.pr, ptr %i.g, align 8, !noalias !1826
  store ptr null, ptr %i.o, align 8, !alias.scope !1826
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit36, label %.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.thread
  resume { ptr, i32 } %.pn20.pn85

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.thread: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %.body, %bb.n, %bb.ah, %bb.ao, %.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn20.pn85 = phi { ptr, i32 } [ %lpad.loopexit.split-lp276, %.loopexit98.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn20, %bb.m ], [ %.pn20, %.body ], [ %.pn20, %bb.n ], [ %i.ea, %bb.ah ], [ %lpad.thr_comm90, %bb.ao ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser10parse_args(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
end_hunk_7
begin_hunk_8_@_RNvMs8_NtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressionsNtB5_10TestParser26parse_combining_expression:bb.a
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ax:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ax, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEEB1z_.exit
  %.sroa.0.0.ph = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEEB1z_.exit ], [ %i.ds, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret ptr %.sroa.0.0

bb.az:                                            ; preds = %bb.av
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerEEB1g_.exit: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEEB1z_.exit unwind label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerEEB1g_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.bc, %bb.ar, %bb.ba
  %common.resume.op = phi { ptr, i32 } [ %i.dz, %bb.ba ], [ %.pn47.pn.ph, %bb.bc ], [ %i.du, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEEB1z_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerEEB1g_.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %.sink.split

.thread75:                                        ; preds = %.loopexit.split-lp95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit62, %bb.ae, %bb.al, %bb.t
  %.pn4773 = phi { ptr, i32 } [ %i.db, %bb.al ], [ %i.bv, %bb.t ], [ %lpad.phi165, %bb.ab ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %.pn45, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit62 ], [ %lpad.phi160, %bb.ae ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions8CombinerEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #34
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %.thread75, %bb.au, %bb.az
  %.pn47.pn.ph = phi { ptr, i32 } [ %.pn4773, %.thread75 ], [ %i.dy, %bb.az ], [ %i.dw, %bb.au ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions10ExpressionEL_EEEB1z_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl12export_array(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 7 uses
  %i.v = alloca [64 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [40 x i8], align 8               ; 4 uses
  %i.ae = alloca [48 x i8], align 8               ; 12 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 17 uses
  %i.ah = alloca [8 x i8], align 8                ; 8 uses
  %i.ai = alloca [8 x i8], align 8                ; 8 uses
  %i.aj = alloca [8 x i8], align 8                ; 9 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 13 uses
  %i.am = tail call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads15is_forked_child()
  br i1 %i.am, label %bb.af, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !2250, !noundef !8
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl31export_array_needs_regeneration.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !2250, !nonnull !8, !noundef !8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !2250, !noundef !8 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.as, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.au, align 8, !alias.scope !2250 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val3.i = load ptr, ptr %i.av, align 8, !alias.scope !2250 ; 3 uses
  %i.aw = tail call { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars(), !noalias !2251 ; 2 uses
  %i.ax = extractvalue { ptr, i1 } %i.aw, 0       ; 5 uses
  %i.ay = extractvalue { ptr, i1 } %i.aw, 1
  %i.az = icmp eq i64 %i.as, 0
  br i1 %i.az, label %_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !2251, !noundef !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bd = load i64, ptr %i.aq, align 8, !noalias !2251, !noundef !8
  %.not2.i.i.i = icmp ne i64 %i.bd, %i.bb
  br label %_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit.i.i

_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.06.1.i = phi i1 [ %.not2.i.i.i, %bb.d ], [ true, %bb.c ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %i.bc, %bb.d ], [ %i.aq, %bb.c ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  br i1 %i.ay, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit.i.i
  %i.bf = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2251
  %i.bg = and i64 %i.bf, 9223372036854775807
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.bi = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38, !noalias !2251
  br i1 %i.bi, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.be monotonic, align 1, !noalias !2251
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit.i.i
  %i.bj = atomicrmw xchg ptr %i.ax, i32 0 release, align 4, !noalias !2251
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i.i, !prof !13

bb.h:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ax), !noalias !2251
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i.i: ; preds = %bb.h, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !2252, !noundef !8 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 9223372036854775807
  br i1 %i.bn, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i, label %bb.i, !prof !14

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #33, !noalias !2251
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i.i
  %i.bo = add nuw nsw i64 %i.bm, 1
  store i64 %i.bo, ptr %i.bl, align 8, !noalias !2252
  %i.bp = getelementptr inbounds nuw i8, ptr %.val3.i, i64 72
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !2251, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit29.i.i, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit26.i.i

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit26.i.i: ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i
  %i.br = icmp eq ptr %.sroa.0.1.i, %i.at
  br i1 %i.br, label %_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit29.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit26.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 8
  %i.bt = load i64, ptr %.sroa.0.1.i, align 8, !noalias !2251, !noundef !8
  %.not2.i28.i.i = icmp ne i64 %i.bt, %i.bq
  %spec.select8.i = or i1 %.sroa.06.1.i, %.not2.i28.i.i
  br label %_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit29.i.i

_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit29.i.i: ; preds = %bb.j, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit26.i.i, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i
  %.sroa.06.2.i = phi i1 [ %.sroa.06.1.i, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i ], [ %spec.select8.i, %bb.j ], [ true, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit26.i.i ]
  %.sroa.0.3.i = phi ptr [ %.sroa.0.1.i, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i ], [ %i.bs, %bb.j ], [ %i.at, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit26.i.i ] ; 2 uses
  store i64 %i.bm, ptr %i.bl, align 8, !noalias !2251
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.bu = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !2251
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit29.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2254
  store ptr %.val.i, ptr %i.ah, align 8, !noalias !2254
  store ptr null, ptr %i.aj, align 8, !alias.scope !2253, !noalias !2251
  br label %bb.m

bb.l:                                             ; preds = %_RNCNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB7_13EnvScopedImpl31export_array_needs_regeneration0Bd_.exit29.i.i
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit38.i.i, %bb.k
  %.sroa.06.3.i = phi i1 [ %.sroa.06.2.i, %bb.k ], [ %.sroa.06.4.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit38.i.i ] ; 2 uses
  %.sroa.0.4.i = phi ptr [ %.sroa.0.3.i, %bb.k ], [ %.sroa.0.6.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit38.i.i ] ; 2 uses
  %i.bw = phi ptr [ %.val.i, %bb.k ], [ %.pr.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit38.i.i ] ; 7 uses
  %i.bx = phi ptr [ %.sroa.0.3.i, %bb.k ], [ %i.cz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit38.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 7 uses
  %i.bz = load i64, ptr %i.by, align 8, !noalias !2256, !noundef !8 ; 4 uses
  %i.ca = icmp ult i64 %i.bz, 9223372036854775807
  br i1 %i.ca, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i.i.i, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #33
          to label %.noexc.i.i.i unwind label %bb.q, !noalias !2257

.noexc.i.i.i:                                     ; preds = %bb.n
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i.i.i: ; preds = %bb.m
  %i.cb = add nuw nsw i64 %i.bz, 1                ; 2 uses
  store i64 %i.cb, ptr %i.by, align 8, !noalias !2256
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 80 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !2257, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %bb.o

.thread.i.i:                                      ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i.i.i
  store i64 %i.bz, ptr %i.by, align 8, !noalias !2257
  store ptr null, ptr %i.aj, align 8, !alias.scope !2255, !noalias !2251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2251
  store ptr %i.bw, ptr %i.ai, align 8, !noalias !2251
  br label %._crit_edge.i

bb.o:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i.i.i
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !2257
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !2258
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.r, label %.body.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #38
          to label %.body.i.i unwind label %bb.s, !noalias !2257

bb.s:                                             ; preds = %bb.r
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2257
  unreachable

.body.i.i:                                        ; preds = %bb.z, %bb.y, %bb.v, %bb.r, %bb.q
  %.pn6.i.i = phi { ptr, i32 } [ %i.cg, %bb.q ], [ %i.co, %bb.v ], [ %i.cg, %bb.r ], [ %i.cs, %bb.y ], [ %i.cs, %bb.z ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  %i.ck = load ptr, ptr %i.aj, align 8, !alias.scope !2261, !noalias !2251, !noundef !8 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %common.resume, label %bb.t

bb.t:                                             ; preds = %.body.i.i
  %i.cm = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !2262
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #38
          to label %common.resume unwind label %bb.ae, !noalias !2251

bb.v:                                             ; preds = %bb.ab
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.w:                                             ; preds = %bb.o
  %i.cp = load ptr, ptr %i.cc, align 8, !noalias !2257, !nonnull !8, !noundef !8
  %.pre.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !2257 ; 3 uses
  %i.cq = add i64 %.pre.i.i.i.i, -1               ; 2 uses
  store i64 %i.cq, ptr %i.by, align 8, !noalias !2257
  store ptr %i.cp, ptr %i.aj, align 8, !alias.scope !2255, !noalias !2251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2251
  store ptr %i.bw, ptr %i.ai, align 8, !noalias !2251
  %i.cr = icmp sgt i64 %.pre.i.i.i.i, 0
  br i1 %i.cr, label %._crit_edge.i, label %bb.x, !prof !32

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #33
          to label %.noexc32.i.i unwind label %bb.z, !noalias !2251

.noexc32.i.i:                                     ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #38
          to label %.body.i.i unwind label %bb.ae, !noalias !2251

bb.z:                                             ; preds = %bb.x
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  call void @llvm.experimental.noalias.scope.decl(metadata !2265)
  %i.ct = load ptr, ptr %i.ai, align 8, !alias.scope !2266, !noalias !2251, !nonnull !8, !noundef !8
  %i.cu = atomicrmw add ptr %i.ct, i64 -1 release, align 8, !noalias !2267
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.y, label %.body.i.i

._crit_edge.i:                                    ; preds = %bb.w, %.thread.i.i
  %.pre-phi.i = phi i64 [ %i.cb, %.thread.i.i ], [ %.pre.i.i.i.i, %bb.w ]
  %i.cw = phi i64 [ %i.bz, %.thread.i.i ], [ %i.cq, %bb.w ]
  store i64 %.pre-phi.i, ptr %i.by, align 8, !noalias !2268
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !2251, !noundef !8 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not4.i.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i
  %.sroa.06.4.i = phi i1 [ %.sroa.06.3.i, %._crit_edge.i ], [ %spec.select9.i, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %.sroa.0.6.i = phi ptr [ %.sroa.0.4.i, %._crit_edge.i ], [ %i.dd, %bb.ad ], [ %.sroa.0.4.i, %bb.ac ] ; 2 uses
  %i.cz = phi ptr [ %i.bx, %._crit_edge.i ], [ %i.dd, %bb.ad ], [ %i.at, %bb.ac ]
  store i64 %i.cw, ptr %i.by, align 8, !noalias !2251
  %i.da = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !2269
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit38.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit38.i.i unwind label %bb.v, !noalias !2251

bb.ac:                                            ; preds = %._crit_edge.i
  %i.dc = icmp eq ptr %i.bx, %i.at
  br i1 %i.dc, label %bb.aa, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.bx, align 8, !noalias !2251, !noundef !8
  %.not2.i42.i.i = icmp ne i64 %i.de, %i.cy
  %spec.select9.i = select i1 %.not2.i42.i.i, i1 true, i1 %.sroa.06.3.i
  br label %bb.aa

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit38.i.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2251
  %.pr.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !2255, !noalias !2251 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2271
  store ptr %.pr.i.i, ptr %i.ah, align 8, !noalias !2271
  store ptr null, ptr %i.aj, align 8, !alias.scope !2270, !noalias !2251
  %.not.i30.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i30.i.i, label %_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl31export_array_needs_regeneration.exit, label %bb.m

bb.ae:                                            ; preds = %bb.y, %bb.u
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2251
  unreachable

common.resume:                                    ; preds = %bb.dm, %.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecyEECs8frGy5WneL6_4fish.exit.i, %bb.ai, %bb.aw, %bb.ce, %.thread89.i, %bb.di, %.body.i.i, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %.pn25.ph.i, %bb.di ], [ %.pn6.i.i, %.body.i.i ], [ %.pn6.i.i, %bb.u ], [ %.pn6.i.i, %bb.t ], [ %i.fg, %bb.aw ], [ %i.dp, %bb.ai ], [ %i.hs, %bb.ce ], [ %.pn20.pn92.i, %.thread89.i ], [ %eh.lpad-body, %.thread ], [ %eh.lpad-body21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecyEECs8frGy5WneL6_4fish.exit.i ], [ %i.jw, %bb.dm ]
  resume { ptr, i32 } %common.resume.op

_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl31export_array_needs_regeneration.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit38.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2251
  %i.dg = icmp ne ptr %.sroa.0.6.i, %i.at
  %i.dh = select i1 %i.dg, i1 true, i1 %.sroa.06.4.i
  br i1 %i.dh, label %_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl31export_array_needs_regeneration.exit.thread, label %bb.dl

bb.af:                                            ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #33
  unreachable

end_hunk_8
begin_hunk_9_@_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl12export_array:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 6 uses
  store i64 0, ptr %i.do, align 8, !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2272
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories10env_export, i64 24))
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.au, %bb.at, %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.al, %bb.aj, %bb.ah
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #34
          to label %common.resume unwind label %bb.cx

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2272
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !2272, !nonnull !8, !noundef !8 ; 3 uses
  %i.ds = load i64, ptr %i.af, align 8, !range !21, !noalias !2272, !noundef !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !noalias !2272, !noundef !8 ; 2 uses
  %i.dv = icmp sgt i64 %i.du, -1
  call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.du
  store ptr %i.dr, ptr %i.p, align 8, !noalias !2272
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ds, ptr %i.dx, align 8, !noalias !2272
  %i.dy = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.dr, ptr %i.dy, align 8, !noalias !2272
  %i.dz = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.dw, ptr %i.dz, align 8, !noalias !2272
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.ak unwind label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2272
  %i.ea = load i64, ptr %i.do, align 8, !alias.scope !2273, !noalias !2272, !noundef !8 ; 4 uses
  %i.eb = load i64, ptr %i.ag, align 8, !range !21, !alias.scope !2273, !noalias !2272, !noundef !8
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #38
          to label %bb.am unwind label %bb.ai

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ed = load ptr, ptr %i.dn, align 8, !alias.scope !2273, !noalias !2272, !nonnull !8, !noundef !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ea
  store i8 58, ptr %i.ee, align 1
  %i.ef = add i64 %i.ea, 1                        ; 3 uses
  store i64 %i.ef, ptr %i.do, align 8, !alias.scope !2273, !noalias !2272
  %i.eg = load i64, ptr %i.ag, align 8, !range !21, !alias.scope !2274, !noalias !2272, !noundef !8
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #38
          to label %bb.ao unwind label %bb.ai

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ei = load ptr, ptr %i.dn, align 8, !alias.scope !2274, !noalias !2272, !nonnull !8, !noundef !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ef
  store i8 32, ptr %i.ej, align 1
  %i.ek = add i64 %i.ea, 2
  store i64 %i.ek, ptr %i.do, align 8, !alias.scope !2274, !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2272
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ap unwind label %bb.ai

bb.ap:                                            ; preds = %bb.ao
  %i.el = load i64, ptr %i.o, align 8, !range !16, !noalias !2272, !noundef !8
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.em, label %bb.aq, label %bb.ar, !prof !13

bb.aq:                                            ; preds = %bb.ap
  %i.eo = load i64, ptr %i.en, align 8, !range !25, !noalias !2272, !noundef !8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !2272
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.eo, i64 %i.eq) #37
          to label %bb.cy unwind label %bb.ai

bb.ar:                                            ; preds = %bb.ap
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !noalias !2272, !nonnull !8, !noundef !8 ; 4 uses
  %i.et = load i64, ptr %i.en, align 8, !range !21, !noalias !2272, !noundef !8 ; 2 uses
  %i.eu = icmp samesign ugt i64 %i.et, 27
  call void @llvm.assume(i1 %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.es, ptr noundef nonnull align 1 dereferenceable(28) @275, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2272
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  store ptr %i.es, ptr %i.n, align 8, !noalias !2272
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.et, ptr %i.ew, align 8, !noalias !2272
  %i.ex = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.es, ptr %i.ex, align 8, !noalias !2272
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.ev, ptr %i.ey, align 8, !noalias !2272
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.as unwind label %bb.ai

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2272
  %i.ez = load i64, ptr %i.do, align 8, !alias.scope !2275, !noalias !2272, !noundef !8 ; 3 uses
  %i.fa = load i64, ptr %i.ag, align 8, !range !21, !alias.scope !2275, !noalias !2272, !noundef !8
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #38
          to label %bb.au unwind label %bb.ai

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fc = load ptr, ptr %i.dn, align 8, !alias.scope !2275, !noalias !2272, !nonnull !8, !noundef !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ez
  store i8 10, ptr %i.fd, align 1
  %i.fe = add i64 %i.ez, 1                        ; 2 uses
  store i64 %i.fe, ptr %i.do, align 8, !alias.scope !2275, !noalias !2272
  %i.ff = load ptr, ptr %i.dn, align 8, !noalias !2272, !nonnull !8, !noundef !8
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ff, i64 noundef %i.fe)
          to label %bb.av unwind label %bb.ai

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.av
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2272
  br label %bb.ag

bb.ay:                                            ; preds = %bb.ag
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  invoke fastcc void @_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl12get_exported(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fi, ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae)
          to label %bb.az unwind label %bb.bn

bb.az:                                            ; preds = %bb.ay
  %i.fj = invoke { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars()
          to label %bb.ba unwind label %bb.bn     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.fk = extractvalue { ptr, i1 } %i.fj, 0       ; 7 uses
  %i.fl = extractvalue { ptr, i1 } %i.fj, 1       ; 2 uses
  %i.fm = zext i1 %i.fl to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2272
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  invoke void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE4iterB1K_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fn)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dg, %bb.de, %bb.db, %bb.da, %bb.bc, %bb.ba
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fk) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_(ptr nonnull %i.fk, i8 %i.fm) #34
          to label %bb.di unwind label %bb.cx

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2272
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.780.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %.backedge, %bb.bb
  %i.fr = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.fs = extractvalue { ptr, ptr } %i.fr, 0      ; 2 uses
  %i.ft = extractvalue { ptr, ptr } %i.fr, 1      ; 5 uses
  %.not15.i = icmp eq ptr %i.fs, null
  br i1 %.not15.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 8, !noundef !8
  %i.fw = and i8 %i.fv, 1
  %.not23.i = icmp eq i8 %i.fw, 0
  br i1 %.not23.i, label %.backedge, label %bb.da

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2272
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fk) ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  br i1 %i.fl, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fy = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2272
  %i.fz = and i64 %i.fy, 9223372036854775807
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bh, !prof !14

bb.bh:                                            ; preds = %bb.bg
  %i.gb = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc38.i unwind label %bb.bn

.noexc38.i:                                       ; preds = %bb.bh
  br i1 %i.gb, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %.noexc38.i
  store atomic i8 1, ptr %i.fx monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bi, %.noexc38.i, %bb.bg, %bb.bf
  %i.gc = atomicrmw xchg ptr %i.fk, i32 0 release, align 4
  %i.gd = icmp eq i32 %i.gc, 2
  br i1 %i.gd, label %bb.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i, !prof !13

bb.bj:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.fk)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i unwind label %bb.bn

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i: ; preds = %bb.bj, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2272
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i
  %i.ge = load i64, ptr %i.j, align 8, !range !16, !noalias !2272, !noundef !8
  %i.gf = trunc nuw i64 %i.ge to i1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !range !25, !noalias !2272, !noundef !8 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.gf, label %bb.bl, label %bb.bm, !prof !13

bb.bl:                                            ; preds = %bb.bk
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !2272
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.bu, %bb.bl
  %i.gk = phi i64 [ %i.gh, %bb.bl ], [ %i.gx, %bb.bu ]
  %i.gl = phi i64 [ %i.gj, %bb.bl ], [ %i.gz, %bb.bu ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.gk, i64 %i.gl) #37
          to label %.cont.i unwind label %bb.bn

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.gm = load ptr, ptr %i.gi, align 8, !noalias !2272, !nonnull !8, !noundef !8 ; 2 uses
  %i.gn = icmp samesign ugt i64 %i.gh, 2
  call void @llvm.assume(i1 %i.gn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gm, ptr noundef nonnull align 4 dereferenceable(12) @158, i64 12, i1 false)
  store i64 %i.gh, ptr %i.z, align 8, !noalias !2272
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.gm, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !2272
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 3, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2272
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0)
          to label %bb.bo unwind label %bb.cz

bb.bn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i, %bb.bs, %bb.bp, %.invoke.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i, %bb.bj, %bb.bh, %bb.az, %bb.ay, %bb.ag
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2272
  invoke void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar13new_from_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @158, i64 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
          to label %bb.bp unwind label %bb.cz

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2272
  invoke void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1K_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.bq unwind label %bb.bn

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2272
  call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  %i.go = load ptr, ptr %i.aa, align 8, !alias.scope !2276, !noalias !2272, !noundef !8 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gq = atomicrmw add ptr %i.go, i64 -1 release, align 8, !noalias !2277
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i unwind label %bb.bn

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i: ; preds = %bb.bs, %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2272
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !noalias !2272, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2272
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.gt, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.bt unwind label %bb.bn

bb.bt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i
  %i.gu = load i64, ptr %i.h, align 8, !range !16, !noalias !2272, !noundef !8
  %i.gv = trunc nuw i64 %i.gu to i1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !range !25, !noalias !2272, !noundef !8 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.gv, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %bb.bt
  %i.gz = load i64, ptr %i.gy, align 8, !noalias !2272
  br label %.invoke.i

bb.bv:                                            ; preds = %bb.bt
  %i.ha = load ptr, ptr %i.gy, align 8, !noalias !2272, !nonnull !8, !noundef !8
  %i.hb = icmp ule i64 %i.gt, %i.gx
  call void @llvm.assume(i1 %i.hb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2272
  store i64 %i.gx, ptr %i.w, align 8, !noalias !2272
  %i.hc = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.ha, ptr %i.hc, align 8, !noalias !2272
  %i.hd = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store i64 0, ptr %i.hd, align 8, !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2272
  invoke void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterB1K_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.bw unwind label %.thread100.i

.thread100.i:                                     ; preds = %bb.cc, %bb.bv
  %lpad.thr_comm98.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread89.i

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2272
  %i.he = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.hf = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit60.i, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2272
  invoke void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1Q_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %bb.bz unwind label %bb.by

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i: ; preds = %bb.cu, %.body54.i, %bb.by
  %.pn20.i = phi { ptr, i32 } [ %i.hj, %bb.by ], [ %.pn18.i, %bb.cu ], [ %.pn18.i, %.body54.i ]
  invoke void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %.thread89.i unwind label %bb.cx

bb.by:                                            ; preds = %bb.cw, %bb.bx
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.hk = load i64, ptr %i.u, align 8, !range !20, !noalias !2272, !noundef !8
  %.not16.i = icmp eq i64 %i.hk, -1
  br i1 %.not16.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false), !noalias !2272
  %i.hl = load i64, ptr %i.hf, align 8, !alias.scope !2278, !noalias !2272, !noundef !8 ; 3 uses
  %i.hm = load i64, ptr %i.s, align 8, !range !21, !alias.scope !2278, !noalias !2272, !noundef !8
  %i.hn = icmp eq i64 %i.hl, %i.hm
  br i1 %i.hn, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #38
          to label %bb.cg unwind label %bb.cf

bb.cc:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2272
  invoke void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2u_.exit44.i unwind label %.thread100.i
end_hunk_9
begin_hunk_10_@_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl12export_array:bb.a
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.cu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i

bb.cu:                                            ; preds = %.body54.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i unwind label %bb.cx

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i53.i
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body54.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit57.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2272
  call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  %i.jb = load ptr, ptr %i.t, align 8, !alias.scope !2290, !noalias !2272, !nonnull !8, !noundef !8
  %i.jc = atomicrmw add ptr %i.jb, i64 -1 release, align 8, !noalias !2290
  %i.jd = icmp eq i64 %i.jc, 1
  br i1 %i.jd, label %bb.cw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit60.i

bb.cw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit57.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit60.i unwind label %bb.by

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit60.i: ; preds = %bb.cw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2272
  br label %bb.bx

bb.cx:                                            ; preds = %bb.di, %bb.cz, %.thread89.i, %bb.cu, %bb.cj, %.body47.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread89.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i, %.thread100.i
  %.pn20.pn92.i = phi { ptr, i32 } [ %lpad.thr_comm98.i, %.thread100.i ], [ %.pn20.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtBG_3ffi5c_str7CStringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #34
          to label %common.resume unwind label %bb.cx

bb.cy:                                            ; preds = %bb.aq
  unreachable

bb.cz:                                            ; preds = %bb.bo, %bb.bm
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #34
          to label %bb.di unwind label %bb.cx

bb.da:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2272
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fs)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2272
  invoke void @_RNvMNtCskt5MLIAl8nl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entryB1W_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.db
  %i.jf = load i64, ptr %i.k, align 8, !range !20, !noalias !2272, !noundef !8 ; 2 uses
  %i.jg = load <2 x ptr>, ptr %.sroa.477.0..sroa_idx.i, align 8, !noalias !2272
  %.sroa.679.0.copyload.i = load ptr, ptr %.sroa.679.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.780.0.copyload.i = load i64, ptr %.sroa.780.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2272
  %i.jh = load ptr, ptr %i.ft, align 8, !nonnull !8, !noundef !8
  %i.ji = atomicrmw add ptr %i.jh, i64 1 monotonic, align 8
  %i.jj = icmp slt i64 %i.ji, 0
  br i1 %i.jj, label %bb.dh, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not24.i = icmp eq i64 %i.jf, -1
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.jl = load ptr, ptr %i.ft, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.jm = load i64, ptr %i.jk, align 8, !noundef !8
  %i.jn = load i8, ptr %i.fu, align 8, !noundef !8
  store ptr %i.jl, ptr %i.ab, align 8, !noalias !2272
  store i64 %i.jm, ptr %i.fo, align 8, !noalias !2272
  store i8 %i.jn, ptr %i.fp, align 8, !noalias !2272
  br i1 %.not24.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.679.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !2292
  store i64 %i.jf, ptr %i.d, align 8, !noalias !2293
  store <2 x ptr> %i.jg, ptr %.sroa.6.0..sroa_idx67.i, align 8, !noalias !2293
  %i.jo = invoke noundef nonnull ptr @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE14insert_no_growB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.679.0.copyload.i, i64 noundef %.sroa.780.0.copyload.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc61.i:                                       ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2291
  br label %_RNvMs18_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_5EntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE9or_insertB1Z_.exit.i

bb.df:                                            ; preds = %bb.dd
  %i.jp = atomicrmw add ptr %i.jl, i64 -1 release, align 8, !noalias !2294
  %i.jq = icmp eq i64 %i.jp, 1
  br i1 %i.jq, label %bb.dg, label %_RNvMs18_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_5EntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE9or_insertB1Z_.exit.i

bb.dg:                                            ; preds = %bb.df
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #38
          to label %_RNvMs18_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_5EntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE9or_insertB1Z_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dc
  call void @llvm.trap()
  unreachable

_RNvMs18_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_5EntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE9or_insertB1Z_.exit.i: ; preds = %bb.dg, %bb.df, %.noexc61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2272
  br label %.backedge

.backedge:                                        ; preds = %_RNvMs18_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_5EntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE9or_insertB1Z_.exit.i, %bb.be
  br label %bb.bc

bb.di:                                            ; preds = %bb.cz, %bb.bn, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn25.ph.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.bn ], [ %lpad.thr_comm.i, %bb.cz ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %common.resume unwind label %bb.cx

_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl19create_export_array.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2u_.exit44.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hq, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2272
  call void @llvm.experimental.noalias.scope.decl(metadata !2295)
  %i.jr = load ptr, ptr %i.an, align 8, !alias.scope !2295, !noundef !8 ; 2 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEEB1z_.exit, label %bb.dj

bb.dj:                                            ; preds = %_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl19create_export_array.exit
  %i.jt = atomicrmw add ptr %i.jr, i64 -1 release, align 8, !noalias !2296
  %i.ju = icmp eq i64 %i.jt, 1
  br i1 %i.ju, label %bb.dk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEEB1z_.exit

bb.dk:                                            ; preds = %bb.dj
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEEB1z_.exit unwind label %bb.dm

bb.dl:                                            ; preds = %_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl31export_array_needs_regeneration.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecyEECs8frGy5WneL6_4fish.exit
  %i.jv = load ptr, ptr %i.an, align 8, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.jv, null
  br i1 %.not, label %bb.fe, label %bb.fd, !prof !13

bb.dm:                                            ; preds = %bb.dk
  %i.jw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hq, ptr %i.an, align 8
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEEB1z_.exit: ; preds = %bb.dj, %_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl19create_export_array.exit, %bb.dk
  store ptr %i.hq, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.jx, i64 24, i1 false)
  store i64 0, ptr %i.jx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.val = load ptr, ptr %i.fi, align 8            ; 4 uses
  %.val6 = load ptr, ptr %i.dm, align 8           ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  %i.jy = invoke { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars()
          to label %.noexc15 unwind label %bb.ex  ; 2 uses

.noexc15:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEEB1z_.exit
  %i.jz = extractvalue { ptr, i1 } %i.jy, 0       ; 7 uses
  %i.ka = extractvalue { ptr, i1 } %i.jy, 1       ; 2 uses
  %i.kb = zext i1 %i.ka to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 144
  %i.kd = load i64, ptr %i.kc, align 8, !noalias !2297, !noundef !8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 6 uses
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !2298, !noundef !8 ; 3 uses
  %i.kg = load i64, ptr %i.al, align 8, !range !21, !alias.scope !2298, !noundef !8
  %i.kh = icmp eq i64 %i.kf, %i.kg
  br i1 %i.kh, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %.noexc15
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #38
          to label %bb.dp unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jz) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_(ptr nonnull %i.jz, i8 %i.kb) #34
          to label %.thread unwind label %bb.ew

bb.dp:                                            ; preds = %bb.dn, %.noexc15
  %i.kj = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !alias.scope !2298, !nonnull !8, !noundef !8
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kf
  store i64 %i.kd, ptr %i.kl, align 8
  %i.km = add i64 %i.kf, 1
  store i64 %i.km, ptr %i.ke, align 8, !alias.scope !2298
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jz) ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  br i1 %i.ka, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i8, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ko = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2297
  %i.kp = and i64 %i.ko, 9223372036854775807
  %i.kq = icmp eq i64 %i.kp, 0
  br i1 %i.kq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i8, label %bb.dr, !prof !14

bb.dr:                                            ; preds = %bb.dq
  %i.kr = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc16 unwind label %bb.ex

.noexc16:                                         ; preds = %bb.dr
  br i1 %i.kr, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i8, label %bb.ds

bb.ds:                                            ; preds = %.noexc16
  store atomic i8 1, ptr %i.kn monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i8

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i8: ; preds = %bb.ds, %.noexc16, %bb.dq, %bb.dp
  %i.ks = atomicrmw xchg ptr %i.jz, i32 0 release, align 4
  %i.kt = icmp eq i32 %i.ks, 2
  br i1 %i.kt, label %bb.dt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i9, !prof !13

bb.dt:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i8
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.jz)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i9 unwind label %bb.ex

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i9: ; preds = %bb.dt, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.ku = getelementptr inbounds nuw i8, ptr %.val6, i64 16 ; 6 uses
  %i.kv = load i64, ptr %i.ku, align 8, !noalias !2299, !noundef !8 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 9223372036854775807
  br i1 %i.kw, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i, label %bb.du, !prof !14

bb.du:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i9
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #33
          to label %.noexc18 unwind label %bb.ex

.noexc18:                                         ; preds = %bb.du
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit.i9
  %i.kx = add nuw nsw i64 %i.kv, 1
  store i64 %i.kx, ptr %i.ku, align 8, !noalias !2299
  %i.ky = getelementptr inbounds nuw i8, ptr %.val6, i64 72
  %i.kz = load i64, ptr %i.ky, align 8, !noalias !2297, !noundef !8 ; 2 uses
  %.not.i10 = icmp eq i64 %i.kz, 0
  br i1 %.not.i10, label %bb.dw, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit23.i

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit23.i: ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i
  %i.la = load i64, ptr %i.ke, align 8, !alias.scope !2300, !noundef !8 ; 3 uses
  %i.lb = load i64, ptr %i.al, align 8, !range !21, !alias.scope !2300, !noundef !8
  %i.lc = icmp eq i64 %i.la, %i.lb
  br i1 %i.lc, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit23.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #38
          to label %bb.dy unwind label %bb.dx

bb.dw:                                            ; preds = %bb.dy, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i
  %storemerge.i = phi i64 [ %i.lm, %bb.dy ], [ %i.kv, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i ]
  store i64 %storemerge.i, ptr %i.ku, align 8, !noalias !2297
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ld = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !2297
  %i.le = icmp slt i64 %i.ld, 0
  br i1 %i.le, label %bb.ea, label %bb.dz

bb.dx:                                            ; preds = %bb.dv
  %i.lf = landingpad { ptr, i32 }
          cleanup
  %i.lg = load i64, ptr %i.ku, align 8, !noalias !2297, !noundef !8
  %i.lh = add i64 %i.lg, -1
  store i64 %i.lh, ptr %i.ku, align 8, !noalias !2297
  br label %.thread

bb.dy:                                            ; preds = %bb.dv, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit23.i
  %i.li = load ptr, ptr %i.kj, align 8, !alias.scope !2300, !nonnull !8, !noundef !8
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.la
  store i64 %i.kz, ptr %i.lj, align 8
  %i.lk = add i64 %i.la, 1
  store i64 %i.lk, ptr %i.ke, align 8, !alias.scope !2300
  %i.ll = load i64, ptr %i.ku, align 8, !noalias !2297, !noundef !8
  %i.lm = add i64 %i.ll, -1
  br label %bb.dw

bb.dz:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2297
  call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2302
  store ptr %.val, ptr %i.a, align 8, !noalias !2302
  store ptr null, ptr %i.c, align 8, !alias.scope !2301, !noalias !2297
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dw
  call void @llvm.trap()
  unreachable

bb.eb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit34.i, %bb.dz
  %i.ln = phi ptr [ %.val, %bb.dz ], [ %.pr.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit34.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 10 uses
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !2304, !noundef !8 ; 4 uses
  %i.lq = icmp ult i64 %i.lp, 9223372036854775807
  br i1 %i.lq, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i.i, label %bb.ec, !prof !14

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #33
          to label %.noexc.i.i unwind label %bb.ef, !noalias !2303

.noexc.i.i:                                       ; preds = %bb.ec
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i.i: ; preds = %bb.eb
  %i.lr = add nuw nsw i64 %i.lp, 1                ; 2 uses
  store i64 %i.lr, ptr %i.lo, align 8, !noalias !2304
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 80 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !2303, !noundef !8 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i11, label %.thread.i, label %bb.ed

.thread.i:                                        ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i.i
  store i64 %i.lp, ptr %i.lo, align 8, !noalias !2303
  store ptr null, ptr %i.c, align 8, !alias.scope !2303, !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2297
  store ptr %i.ln, ptr %i.b, align 8, !noalias !2297
  br label %._crit_edge

bb.ed:                                            ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i.i
  %i.lu = atomicrmw add ptr %i.lt, i64 1 monotonic, align 8, !noalias !2303
  %i.lv = icmp slt i64 %i.lu, 0
  br i1 %i.lv, label %bb.ee, label %bb.el

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.trap()
  unreachable

bb.ef:                                            ; preds = %bb.ec
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lx = atomicrmw add ptr %i.ln, i64 -1 release, align 8, !noalias !2306
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %bb.eg, label %.body.i

bb.eg:                                            ; preds = %bb.ef
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %.body.i unwind label %bb.eh, !noalias !2303

bb.eh:                                            ; preds = %bb.eg
  %i.lz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2303
  unreachable

.body.i:                                          ; preds = %bb.eo, %bb.en, %bb.ek, %bb.eg, %bb.ef
  %.pn6.i = phi { ptr, i32 } [ %i.lw, %bb.ef ], [ %i.me, %bb.ek ], [ %i.lw, %bb.eg ], [ %.pn.i13, %bb.eo ], [ %.pn.i13, %bb.en ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  %i.ma = load ptr, ptr %i.c, align 8, !alias.scope !2309, !noalias !2297, !noundef !8 ; 2 uses
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %.thread, label %bb.ei

bb.ei:                                            ; preds = %.body.i
  %i.mc = atomicrmw add ptr %i.ma, i64 -1 release, align 8, !noalias !2310
  %i.md = icmp eq i64 %i.mc, 1
  br i1 %i.md, label %bb.ej, label %.thread

bb.ej:                                            ; preds = %bb.ei
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %.thread unwind label %bb.ew

bb.ek:                                            ; preds = %bb.er
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.el:                                            ; preds = %bb.ed
  %i.mf = load ptr, ptr %i.ls, align 8, !noalias !2303, !nonnull !8, !noundef !8
  %.pre.i.i.i12 = load i64, ptr %i.lo, align 8, !noalias !2303 ; 3 uses
  %i.mg = add i64 %.pre.i.i.i12, -1               ; 2 uses
  store i64 %i.mg, ptr %i.lo, align 8, !noalias !2303
  store ptr %i.mf, ptr %i.c, align 8, !alias.scope !2303, !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2297
  store ptr %i.ln, ptr %i.b, align 8, !noalias !2297
  %i.mh = icmp sgt i64 %.pre.i.i.i12, 0
  br i1 %i.mh, label %._crit_edge, label %bb.em, !prof !32

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #33
          to label %.noexc28.i unwind label %bb.ep

.noexc28.i:                                       ; preds = %bb.em
  unreachable

bb.en:                                            ; preds = %bb.eu, %bb.ep
  %.pn.i13 = phi { ptr, i32 } [ %i.ml, %bb.ep ], [ %i.mv, %bb.eu ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  %i.mi = load ptr, ptr %i.b, align 8, !alias.scope !2314, !noalias !2297, !nonnull !8, !noundef !8
  %i.mj = atomicrmw add ptr %i.mi, i64 -1 release, align 8, !noalias !2314
  %i.mk = icmp eq i64 %i.mj, 1
  br i1 %i.mk, label %bb.eo, label %.body.i

bb.eo:                                            ; preds = %bb.en
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #38
          to label %.body.i unwind label %bb.ew

bb.ep:                                            ; preds = %bb.em
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

._crit_edge:                                      ; preds = %bb.el, %.thread.i
  %.pre-phi = phi i64 [ %i.lr, %.thread.i ], [ %.pre.i.i.i12, %bb.el ]
  %i.mm = phi i64 [ %i.lp, %.thread.i ], [ %i.mg, %bb.el ]
  store i64 %.pre-phi, ptr %i.lo, align 8, !noalias !2315
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ln, i64 72
  %i.mo = load i64, ptr %i.mn, align 8, !noundef !8 ; 2 uses
  %.not4.i = icmp eq i64 %i.mo, 0
  br i1 %.not4.i, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ev, %._crit_edge
  %i.mp = phi ptr [ %.pre.i, %bb.ev ], [ %i.ln, %._crit_edge ]
  %storemerge9.i = phi i64 [ %i.nc, %bb.ev ], [ %i.mm, %._crit_edge ]
  store i64 %storemerge9.i, ptr %i.lo, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  %i.mq = atomicrmw add ptr %i.mp, i64 -1 release, align 8, !noalias !2319
  %i.mr = icmp eq i64 %i.mq, 1
  br i1 %i.mr, label %bb.er, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit34.i

bb.er:                                            ; preds = %bb.eq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit34.i unwind label %bb.ek

bb.es:                                            ; preds = %._crit_edge
  %i.ms = load i64, ptr %i.ke, align 8, !alias.scope !2320, !noundef !8 ; 3 uses
  %i.mt = load i64, ptr %i.al, align 8, !range !21, !alias.scope !2320, !noundef !8
  %i.mu = icmp eq i64 %i.ms, %i.mt
  br i1 %i.mu, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #38
          to label %bb.ev unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.mv = landingpad { ptr, i32 }
          cleanup
  %i.mw = load i64, ptr %i.lo, align 8, !noundef !8
  %i.mx = add i64 %i.mw, -1
  store i64 %i.mx, ptr %i.lo, align 8
  br label %bb.en

bb.ev:                                            ; preds = %bb.et, %bb.es
  %i.my = load ptr, ptr %i.kj, align 8, !alias.scope !2320, !nonnull !8, !noundef !8
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.ms
end_hunk_10
begin_hunk_11_@_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish5event16EventDescriptionE8push_mutBJ_:bb.a
bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !21, !noundef !8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #34
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1G_15CompletionEntryNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1I_(ptr %.0.val, i64 %.16.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.16.val ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 352
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.16.val ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.d, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEEB2X_(ptr %i.c) #34
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEEB2X_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEEB2X_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  ret void

bb.g:                                             ; preds = %.body
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs8frGy5WneL6_4fish(ptr %.0.val, i64 %.16.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.16.val ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.16.val ; 5 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs8frGy5WneL6_4fish.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish(ptr nonnull %i.d) #34
          to label %common.resume unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs8frGy5WneL6_4fish.exit.i
  %i.h = load i64, ptr %i.d, align 8, !range !20, !alias.scope !2348, !noundef !8
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i.i.i
  ret void

bb.h:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl11set_in_node(ptr %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, i24 range(i24 0, 132096) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.04.1.extract.shift = lshr i24 %3, 8      ; 2 uses
  %.sroa.04.1.extract.trunc = trunc i24 %.sroa.04.1.extract.shift to i8
  %.sroa.04.2.extract.shift = lshr i24 %3, 16     ; 2 uses
  %.sroa.04.2.extract.trunc = trunc nuw nsw i24 %.sroa.04.2.extract.shift to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 10 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !8
  %.not53 = icmp eq i64 %i.n, 0
  br i1 %.not53, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %1, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.d unwind label %.thread50

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #37
          to label %bb.ar unwind label %.thread37

bb.d:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.g, align 8, !range !16, !noundef !8
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !25, !noundef !8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.t, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #37
          to label %bb.ar unwind label %.thread50

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.w = icmp ule i64 %1, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.s, ptr %i.l, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.v, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %1, ptr %.sroa.612.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCskt5MLIAl8nl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entryB1W_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.i unwind label %.thread50

bb.h:                                             ; preds = %bb.f
  %i.x = shl nuw nsw i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr nonnull align 4 %0, i64 %i.x, i1 false)
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.f, align 8, !range !20, !noundef !8 ; 3 uses
  %.not15 = icmp eq i64 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  br i1 %.not15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8 ; 2 uses
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.10.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.628.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.y, ptr %i.e, align 8
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.aa, ptr %.sroa.7.0..sroa_idx4, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.527.0.copyload, ptr %.sroa.9.0..sroa_idx8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2390
  invoke void @_RNvXs3_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d)
          to label %bb.l unwind label %bb.m, !noalias !2390

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !2390, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2390
  store i64 %i.y, ptr %i.c, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aa, ptr %.sroa.7.0..sroa_idx6, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.527.0.copyload, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ad = load ptr, ptr %.sroa.10.0..sroa_idx12, align 8, !noalias !2390, !nonnull !8, !align !17, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2390
  %i.af = invoke noundef nonnull ptr @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE14insert_no_growB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad, i64 noundef %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
          to label %.noexc unwind label %.thread50

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2390
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map11VacantEntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2y_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #34
          to label %.thread42 unwind label %bb.n, !noalias !2390

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2390
  unreachable

bb.o:                                             ; preds = %.noexc, %bb.k
  %.pn.i = phi ptr [ %i.af, %.noexc ], [ %i.aa, %bb.k ] ; 6 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 5 uses
  %.not16 = icmp eq i24 %.sroa.04.2.extract.shift, 2
  br i1 %.not16, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.aj = load i8, ptr %i.ai, align 8, !noundef !8
  %i.ak = and i8 %i.aj, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sroa.05.0 = phi i8 [ %i.ak, %bb.p ], [ %.sroa.04.2.extract.trunc, %bb.o ] ; 2 uses
  %.not17 = icmp eq i8 %.sroa.04.1.extract.trunc, 2
  br i1 %.not17, label %bb.r, label %.split

.split:                                           ; preds = %bb.q
  %i.al = trunc i24 %.sroa.04.1.extract.shift to i1
  br i1 %i.al, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit.thread, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.am = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @451, i64 noundef 4)
          to label %.noexc26 unwind label %.thread50

.noexc26:                                         ; preds = %bb.r
  br i1 %i.am, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit.thread, label %bb.s

bb.s:                                             ; preds = %.noexc26
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.ao = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.an, ptr noundef nonnull @341, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @341, i64 8))
          to label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit unwind label %.thread50

_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit: ; preds = %bb.s
  br i1 %i.ao, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit.thread, label %bb.t

bb.t:                                             ; preds = %.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit
  %.sroa.07.035 = phi i8 [ 4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit ], [ 0, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit ], [ 0, %.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar12setting_vals(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ac unwind label %bb.as

_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit.thread: ; preds = %.noexc26, %.split, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2392
  store i64 0, ptr %i.b, align 8, !noalias !2392
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8, !noalias !2392
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.au, align 8, !noalias !2392
  %.idx.i = mul nuw nsw i64 %i.as, 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit.thread
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #34
          to label %.thread42 unwind label %bb.x, !noalias !2392

bb.v:                                             ; preds = %bb.w, %.lr.ph.i
  %.sroa.03.09.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.ba, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2392
  %i.ay = getelementptr i8, ptr %.sroa.03.09.i, i64 8
  %.sroa.03.0.val.i = load ptr, ptr %i.ay, align 8, !alias.scope !2391, !nonnull !8, !noundef !8
  %i.az = getelementptr i8, ptr %.sroa.03.09.i, i64 16
  %.sroa.03.0.val8.i = load i64, ptr %i.az, align 8, !alias.scope !2391, !noundef !8
  store ptr %.sroa.03.0.val.i, ptr %i.a, align 8, !noalias !2392
  store i64 %.sroa.03.0.val8.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2392
  store i32 58, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2392
end_hunk_11
begin_hunk_12_@_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl13set_universal:bb.a
  %.not.not.not = icmp eq ptr %i.m, null          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.o = load i8, ptr %i.n, align 1, !range !18, !noundef !8
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.not.not, label %.thread13, label %.thread

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.r = load i8, ptr %i.q, align 1, !range !18, !noundef !8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i8, ptr %i.s, align 1, !range !18, !noundef !8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.i, label %bb.h

.thread13:                                        ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i8, ptr %i.v, align 1, !range !18, !noundef !8
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.i, label %.thread15

.thread:                                          ; preds = %bb.f
  %i.y = load i8, ptr %.sroa.0.0.sroa.gep, align 8, !noundef !8 ; 2 uses
  %i.z = and i8 %i.y, 1                           ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !range !18, !noundef !8
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %.thread10

bb.h:                                             ; preds = %bb.g
  br i1 %.not.not.not, label %.thread15, label %..thread10_crit_edge

..thread10_crit_edge:                             ; preds = %bb.h
  %.pre = load i8, ptr %.sroa.0.0.sroa.gep, align 8
  br label %.thread10

bb.i:                                             ; preds = %.thread13, %.thread, %bb.g
  %.sroa.04.09 = phi i8 [ %i.z, %.thread ], [ %i.r, %bb.g ], [ 0, %.thread13 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.ae = load i8, ptr %i.ad, align 1, !range !18, !noundef !8
  br label %bb.k

.thread10:                                        ; preds = %..thread10_crit_edge, %.thread
  %i.af = phi i8 [ %.pre, %..thread10_crit_edge ], [ %i.y, %.thread ]
  %.sroa.04.0812 = phi i8 [ %i.r, %..thread10_crit_edge ], [ %i.z, %.thread ]
  %i.ag = lshr i8 %i.af, 2
  %.lobit = and i8 %i.ag, 1
  br label %bb.k

.thread15:                                        ; preds = %.thread13, %bb.h
  %.sroa.04.0817 = phi i8 [ %i.r, %bb.h ], [ 0, %.thread13 ]
  %i.ah = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @451, i64 noundef 4)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.thread15
  br i1 %i.ah, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.aj = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull @341, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @341, i64 8))
          to label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit unwind label %bb.n

bb.k:                                             ; preds = %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit, %.thread10, %bb.i
  %.sroa.04.07 = phi i8 [ %.sroa.04.09, %bb.i ], [ %.sroa.04.0812, %.thread10 ], [ %.sroa.04.0817, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit ]
  %.sroa.05.0 = phi i8 [ %i.ae, %bb.i ], [ %.lobit, %.thread10 ], [ %i.aq, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit ] ; 2 uses
  %i.ak = trunc nuw i8 %.sroa.05.0 to i1
  br i1 %i.ak, label %bb.p, label %bb.o

.body:                                            ; preds = %bb.q, %bb.n, %.body27
  %.pn = phi { ptr, i32 } [ %eh.lpad-body28, %.body27 ], [ %i.ap, %bb.n ], [ %i.ba, %bb.q ] ; 3 uses
  %.sroa.012.4 = phi i1 [ true, %.body27 ], [ %.sroa.012.5, %bb.n ], [ true, %bb.q ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  %i.al = load ptr, ptr %i.f, align 8, !alias.scope !2517, !noundef !8 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit, label %bb.l

bb.l:                                             ; preds = %.body
  %i.an = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !2518
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit unwind label %bb.af

bb.n:                                             ; preds = %bb.j, %.thread15, %bb.y, %bb.o
  %.sroa.012.5 = phi i1 [ false, %bb.y ], [ false, %bb.o ], [ true, %.thread15 ], [ true, %bb.j ]
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment28variable_should_auto_pathvar.exit: ; preds = %.noexc, %bb.j
  %.sroa.0.0.i = phi i1 [ true, %.noexc ], [ %i.aj, %bb.j ]
  %i.aq = zext i1 %.sroa.0.0.i to i8
  br label %bb.k

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, %bb.k
  %i.ar = shl nuw nsw i8 %.sroa.05.0, 2
  %.sroa.07.1 = add nuw nsw i8 %i.ar, %.sroa.04.07
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar7new_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i8 noundef %.sroa.07.1)
          to label %bb.y unwind label %bb.n

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2520
  store i64 0, ptr %i.b, align 8, !noalias !2520
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aw, align 8, !noalias !2520
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ax, align 8, !noalias !2520
  %.idx.i = mul nuw nsw i64 %i.av, 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i
  %i.az = icmp eq i64 %i.av, 0
  br i1 %i.az, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #34
          to label %.body unwind label %bb.t, !noalias !2520

bb.r:                                             ; preds = %bb.s, %.lr.ph.i
  %.sroa.03.09.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.bd, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2520
  %i.bb = getelementptr i8, ptr %.sroa.03.09.i, i64 8
  %.sroa.03.0.val.i = load ptr, ptr %i.bb, align 8, !alias.scope !2519, !nonnull !8, !noundef !8
  %i.bc = getelementptr i8, ptr %.sroa.03.09.i, i64 16
  %.sroa.03.0.val8.i = load i64, ptr %i.bc, align 8, !alias.scope !2519, !noundef !8
  store ptr %.sroa.03.0.val.i, ptr %i.a, align 8, !noalias !2520
  store i64 %.sroa.03.0.val8.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2520
  store i32 58, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2520
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNCINvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11colon_splitBR_E0EE11spec_extendB3T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.s unwind label %bb.q, !noalias !2520

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2520
  %i.be = icmp eq ptr %i.bd, %i.ay
  br i1 %i.be, label %.loopexit, label %bb.r

bb.t:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2520
  unreachable

.loopexit:                                        ; preds = %bb.s, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2520
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %.body27 unwind label %bb.w

bb.v:                                             ; preds = %.loopexit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.body27:                                          ; preds = %bb.u, %bb.x
  %eh.lpad-body28 = phi { ptr, i32 } [ %i.bi, %bb.x ], [ %i.bg, %bb.u ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.y:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  invoke void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal3set(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.z unwind label %bb.n

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  %i.bj = load ptr, ptr %i.f, align 8, !alias.scope !2521, !noundef !8 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit30, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !noalias !2522
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit30

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit30 unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit30: ; preds = %bb.aa, %bb.z, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br i1 %i.i, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit30
  %i.bo = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bp = and i64 %i.bo, 9223372036854775807
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc31, !prof !14

.noexc31:                                         ; preds = %bb.ac
  %i.br = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.br, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc31
  store atomic i8 1, ptr %i.bn monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ad, %.noexc31, %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit30
  %i.bs = atomicrmw xchg ptr %i.h, i32 0 release, align 4
  %i.bt = icmp eq i32 %i.bs, 2
  br i1 %i.bt, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit, !prof !13

bb.ae:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit: ; preds = %bb.ae, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void

bb.af:                                            ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit, %bb.ah
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ag:                                            ; preds = %bb.ah, %bb.b
  %.pn192 = phi { ptr, i32 } [ %.pn17, %bb.b ], [ %.pn193, %bb.ah ]
  resume { ptr, i32 } %.pn192

bb.ah:                                            ; preds = %.split, %bb.b
  %.pn193 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.split ], [ %.pn17, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #34
          to label %bb.ag unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl14push_shadowing(ptr noalias nofree noundef align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 9 uses
  %i.j = alloca [8 x i8], align 8                 ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = tail call fastcc noundef nonnull ptr @_RNvMs5_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRef3new(i1 noundef zeroext true, ptr noundef null)
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2585
  store ptr %i.n, ptr %i.b, align 8, !noalias !2585
  store ptr null, ptr %i.j, align 8, !alias.scope !2585
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit25
  %i.s = phi ptr [ %i.n, %bb.b ], [ %.pr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit25 ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 10 uses
  %i.u = load i64, ptr %i.t, align 8, !noalias !2587, !noundef !8 ; 4 uses
  %i.v = icmp ult i64 %i.u, 9223372036854775807
  br i1 %i.v, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #33
          to label %.noexc.i unwind label %bb.h, !noalias !2586

.noexc.i:                                         ; preds = %bb.e
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i: ; preds = %bb.d
  %i.w = add nuw nsw i64 %i.u, 1
  store i64 %i.w, ptr %i.t, align 8, !noalias !2587
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2586, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %.thread, label %bb.f

.thread:                                          ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i
  store i64 %i.u, ptr %i.t, align 8, !noalias !2586
  store ptr null, ptr %i.j, align 8, !alias.scope !2586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.s, ptr %i.i, align 8
  %i.z = add nuw nsw i64 %i.u, 1
  br label %bb.x

bb.f:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i
  %i.aa = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !2586
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !2588
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #38
          to label %.body unwind label %bb.j, !noalias !2586

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2586
  unreachable

.body:                                            ; preds = %bb.u, %bb.v, %bb.m, %bb.i, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.ak, %bb.m ], [ %i.ac, %bb.i ], [ %.pn.pn, %bb.v ], [ %.pn.pn, %bb.u ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2589)
  call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !2591, !noundef !8 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.thread, label %bb.k

bb.k:                                             ; preds = %.body
  %i.ai = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !2592
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.thread

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit.thread unwind label %bb.at

bb.m:                                             ; preds = %bb.ad
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.x, align 8, !noalias !2586, !nonnull !8, !noundef !8
  %.pre.i.i = load i64, ptr %i.t, align 8, !noalias !2586 ; 3 uses
  %i.am = add i64 %.pre.i.i, -1
  store i64 %i.am, ptr %i.t, align 8, !noalias !2586
  store ptr %i.al, ptr %i.j, align 8, !alias.scope !2586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.s, ptr %i.i, align 8
  %i.an = icmp sgt i64 %.pre.i.i, 0
  br i1 %i.an, label %bb.x, label %bb.o, !prof !30

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #33
end_hunk_12
begin_hunk_13_@_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl17remove_from_chain:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %.body unwind label %bb.ah

bb.ac:                                            ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ad:                                            ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = load i64, ptr %i.i, align 8, !noundef !8
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  call void @llvm.experimental.noalias.scope.decl(metadata !2705)
  call void @llvm.experimental.noalias.scope.decl(metadata !2706)
  %i.ba = load ptr, ptr %i.d, align 8, !alias.scope !2707, !nonnull !8, !noundef !8
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !2707
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit19

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit19 unwind label %.loopexit.split-lp5.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit19: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !2708)
  call void @llvm.experimental.noalias.scope.decl(metadata !2709)
  %i.bd = load ptr, ptr %i.e, align 8, !alias.scope !2710, !noundef !8 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit21, label %bb.af

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit19
  %i.bf = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !2711
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit21

bb.ag:                                            ; preds = %bb.af
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit21

bb.ah:                                            ; preds = %bb.ab, %bb.y, %bb.m
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ai:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bi = load i64, ptr %i.i, align 8, !noundef !8
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  %i.bk = load ptr, ptr %i.d, align 8, !alias.scope !2715, !nonnull !8, !noundef !8
  %i.bl = atomicrmw add ptr %i.bk, i64 -1 release, align 8, !noalias !2715
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit23

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit23 unwind label %.loopexit.split-lp5.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit23: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pr = load ptr, ptr %i.e, align 8, !alias.scope !2685 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2716
  store ptr %.pr, ptr %i.a, align 8, !noalias !2716
  store ptr null, ptr %i.e, align 8, !alias.scope !2716
  %.not.i.not = icmp eq ptr %.pr, null
  br i1 %.not.i.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit13, label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit: ; preds = %bb.l, %.body, %bb.m
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl25resolve_unspecified_scope(ptr %.80.val, ptr nofree captures(ret: address, provenance) %.88.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.80.val) ]
  %i.d = atomicrmw add ptr %.80.val, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2767
  store ptr %.80.val, ptr %i.a, align 8, !noalias !2767
  store ptr null, ptr %i.c, align 8, !alias.scope !2767
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit12
  %i.f = phi ptr [ %.80.val, %bb.b ], [ %.pr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit12 ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2768)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 9 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !2769, !noundef !8 ; 5 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775807
  br i1 %i.i, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #33
          to label %.noexc.i unwind label %bb.h, !noalias !2768

.noexc.i:                                         ; preds = %bb.e
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i: ; preds = %bb.d
  %i.j = add nuw nsw i64 %i.h, 1
  store i64 %i.j, ptr %i.g, align 8, !noalias !2769
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !2768, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.thread29, label %bb.f

bb.f:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !noalias !2768
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !2770
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %.body unwind label %bb.j, !noalias !2768

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2768
  unreachable

.body:                                            ; preds = %bb.r, %bb.s, %bb.m, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.w, %bb.m ], [ %i.o, %bb.i ], [ %i.ac, %bb.s ], [ %i.ac, %bb.r ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  %i.s = load ptr, ptr %i.c, align 8, !alias.scope !2773, !noundef !8 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.u = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !2774
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit unwind label %bb.y

bb.m:                                             ; preds = %bb.v
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.k, align 8, !noalias !2768, !nonnull !8, !noundef !8 ; 2 uses
  %.pre.i.i = load i64, ptr %i.g, align 8, !noalias !2768 ; 3 uses
  %i.y = add i64 %.pre.i.i, -1                    ; 3 uses
  store i64 %i.y, ptr %i.g, align 8, !noalias !2768
  store ptr %i.x, ptr %i.c, align 8, !alias.scope !2768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %i.z = icmp sgt i64 %.pre.i.i, 0
  br i1 %i.z, label %bb.t, label %bb.o, !prof !32

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #33
          to label %.noexc7 unwind label %bb.r

.noexc7:                                          ; preds = %bb.o
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit9: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.aa = atomicrmw add ptr %.88.val, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit9
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit9, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit14
  %.sroa.0.0 = phi ptr [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit14 ], [ %.88.val, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit9 ]
  ret ptr %.sroa.0.0

bb.r:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  %i.ad = load ptr, ptr %i.b, align 8, !alias.scope !2778, !nonnull !8, !noundef !8
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !2778
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.s, label %.body

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #38
          to label %.body unwind label %bb.y

bb.t:                                             ; preds = %bb.n
  store i64 %.pre.i.i, ptr %i.g, align 8, !noalias !2779
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ah = load i8, ptr %i.ag, align 8, !range !18, !noundef !8
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.w, label %bb.u

.thread29:                                        ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.i
  store ptr null, ptr %i.c, align 8, !alias.scope !2768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %i.aj = add nuw nsw i64 %i.h, 1
  store i64 %i.aj, ptr %i.g, align 8, !noalias !2779
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.al = load i8, ptr %i.ak, align 8, !range !18, !noundef !8
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.thread30, label %bb.u

.thread30:                                        ; preds = %.thread29
  store i64 %i.h, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit14

bb.u:                                             ; preds = %.thread29, %bb.t
  %i.an = phi i64 [ %i.h, %.thread29 ], [ %i.y, %bb.t ]
  store i64 %i.an, ptr %i.g, align 8
  %i.ao = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !2780
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit12

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit12 unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit12: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pr = load ptr, ptr %i.c, align 8, !alias.scope !2768 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2781
  store ptr %.pr, ptr %i.a, align 8, !noalias !2781
  store ptr null, ptr %i.c, align 8, !alias.scope !2781
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit9, label %bb.d

bb.w:                                             ; preds = %bb.t
  store i64 %i.y, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !2782
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit14

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit14

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit14: ; preds = %.thread30, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.y:                                             ; preds = %bb.s, %bb.l
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11EnvNodeIterEBJ_.exit: ; preds = %bb.k, %.body, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11GLOBAL_NODE, i64 8) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0EB1L_.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11GLOBAL_NODE, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11GLOBAL_NODE, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0EB1L_.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0EB1L_.exit: ; preds = %bb.a, %bb.b
  %i.k = load ptr, ptr @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11GLOBAL_NODE, align 8, !nonnull !8, !noundef !8
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0EB1L_.exit
  %i.n = load ptr, ptr @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11GLOBAL_NODE, align 8, !nonnull !8, !noundef !8 ; 5 uses
  store ptr %i.n, ptr %i.h, align 8
  %i.o = invoke fastcc noundef nonnull ptr @_RNvMs5_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRef3new(i1 noundef zeroext false, ptr noundef null)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.d:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefE5force0EB1L_.exit
  call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2805
  store ptr %i.o, ptr %i.e, align 8, !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2805
  store ptr %i.n, ptr %i.d, align 8, !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2806
  store i64 0, ptr %i.b, align 8, !noalias !2806
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2806
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2806
  invoke void @_RNvXs2_NtNtCs8frGy5WneL6_4fish3env3varNtB5_8StatusesNtNtCs3oUPovFnLWP_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.f, !noalias !2806

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #34
          to label %.body.i unwind label %bb.g, !noalias !2806

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2806
  unreachable

.body.i:                                          ; preds = %bb.f
  %i.r = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !2807
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit.i

bb.h:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit.i unwind label %bb.i, !noalias !2805

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2805
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit.i: ; preds = %bb.h, %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  %i.u = load ptr, ptr %i.e, align 8, !alias.scope !2811, !noalias !2805, !nonnull !8, !noundef !8
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !2812
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %.body

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.body unwind label %bb.i, !noalias !2805

bb.k:                                             ; preds = %bb.e
end_hunk_13
begin_hunk_14_@_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl3set:bb.a
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !3015
  br label %bb.dj

bb.dm:                                            ; preds = %.lr.ph
  %i.jf = load ptr, ptr %i.ix, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %.pre.i114 = load i64, ptr %i.iy, align 8
  %i.jg = add i64 %.pre.i114, -1
  store i64 %i.jg, ptr %i.iy, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  %i.jh = load ptr, ptr %i.t, align 8, !alias.scope !3019, !nonnull !8, !noundef !8
  %i.ji = atomicrmw add ptr %i.jh, i64 -1 release, align 8, !noalias !3019
  %i.jj = icmp eq i64 %i.ji, 1
  br i1 %i.jj, label %bb.dn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit120

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit120 unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.jk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jf, ptr %i.t, align 8
  br label %bb.dj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit120: ; preds = %bb.dm, %bb.dn
  store ptr %i.jf, ptr %i.t, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 6 uses
  %i.jm = load i64, ptr %i.jl, align 8, !noalias !3020, !noundef !8 ; 5 uses
  %i.jn = icmp ult i64 %i.jm, 9223372036854775807
  br i1 %i.jn, label %bb.dp, label %.invoke277, !prof !14

.invoke277:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit120, %bb.dg
  %i.jo = phi ptr [ @214, %bb.dg ], [ @300, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit120 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jo) #33
          to label %.cont278 unwind label %bb.dl

.cont278:                                         ; preds = %.invoke277
  unreachable

bb.dp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit120
  %i.jp = add nuw nsw i64 %i.jm, 1
  store i64 %i.jp, ptr %i.jl, align 8, !noalias !3020
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 88
  %i.jr = load i8, ptr %i.jq, align 8, !range !18, !noundef !8
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.dq, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i: ; preds = %bb.dp
  %i.jt = add nuw nsw i64 %i.jm, 1
  store i64 %i.jt, ptr %i.jl, align 8, !noalias !3011
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jf, i64 80 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !noundef !8 ; 2 uses
  %.not.i113 = icmp eq ptr %i.jv, null
  br i1 %.not.i113, label %.thread184, label %.lr.ph

bb.dq:                                            ; preds = %bb.dp
  store i64 %i.jm, ptr %i.jl, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %.thread184, %bb.dq
  %.val72 = phi ptr [ %.val64208.lcssa, %.thread184 ], [ %i.jf, %bb.dq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.049.0.insert.ext = zext nneg i8 %.sroa.06.0 to i24
  %.sroa.049.1.insert.ext = zext nneg i8 %.sroa.8.1 to i24
  %.sroa.049.1.insert.shift = shl nuw nsw i24 %.sroa.049.1.insert.ext, 8
  %.sroa.049.1.insert.insert = or disjoint i24 %.sroa.049.1.insert.shift, %.sroa.049.0.insert.ext
  %.sroa.049.2.insert.ext = zext nneg i8 %.sroa.11.0 to i24
  %.sroa.049.2.insert.shift = shl nuw nsw i24 %.sroa.049.2.insert.ext, 16
  %.sroa.049.2.insert.insert = or disjoint i24 %.sroa.049.1.insert.insert, %.sroa.049.2.insert.shift
  invoke fastcc void @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl11set_in_node(ptr nonnull %.val72, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s, i24 %.sroa.049.2.insert.insert)
          to label %bb.ds unwind label %bb.dl

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  %i.jw = load ptr, ptr %i.t, align 8, !alias.scope !3024, !nonnull !8, !noundef !8
  %i.jx = atomicrmw add ptr %i.jw, i64 -1 release, align 8, !noalias !3024
  %i.jy = icmp eq i64 %i.jx, 1
  br i1 %i.jy, label %bb.dt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit123

bb.dt:                                            ; preds = %bb.ds
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit123

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit123: ; preds = %bb.dt, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bi

bb.du:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.051.0.insert.ext = zext nneg i8 %.sroa.06.0 to i24
  %.sroa.051.1.insert.ext = zext nneg i8 %.sroa.8.1 to i24
  %.sroa.051.1.insert.shift = shl nuw nsw i24 %.sroa.051.1.insert.ext, 8
  %.sroa.051.1.insert.insert = or disjoint i24 %.sroa.051.1.insert.shift, %.sroa.051.0.insert.ext
  %.sroa.051.2.insert.ext = zext nneg i8 %.sroa.11.0 to i24
  %.sroa.051.2.insert.shift = shl nuw nsw i24 %.sroa.051.2.insert.ext, 16
  %.sroa.051.2.insert.insert = or disjoint i24 %.sroa.051.1.insert.insert, %.sroa.051.2.insert.shift
  call fastcc void @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl11set_in_node(ptr nonnull %i.ik, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u, i24 %.sroa.051.2.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bi

.invoke:                                          ; preds = %bb.de, %bb.dd
  %i.jz = phi ptr [ @298, %bb.dd ], [ @301, %bb.de ]
  %i.ka = phi ptr [ inttoptr (i64 27 to ptr), %bb.dd ], [ inttoptr (i64 57 to ptr), %bb.de ]
  %i.kb = phi ptr [ @299, %bb.dd ], [ @302, %bb.de ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.jz, ptr noundef nonnull %i.ka, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kb) #37
          to label %.cont unwind label %.body.thread175

.cont:                                            ; preds = %.invoke
  unreachable

.thread168:                                       ; preds = %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i, %bb.ar, %bb.bg, %bb.bh, %.body.i, %bb.ae, %bb.ci, %.body.thread175, %.noexc117
  %.pn61171 = phi { ptr, i32 } [ %i.hq, %bb.ci ], [ %.pn, %.noexc117 ], [ %lpad.thr_comm, %.body.thread175 ], [ %eh.lpad-body.i, %.body.i ], [ %i.dk, %bb.ae ], [ %.pn10.i, %bb.ak ], [ %.pn.i92, %bb.ar ], [ %.pn.i92, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i ], [ %.pn10.i, %bb.bh ], [ %.pn10.i, %bb.bg ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %4) #34
          to label %common.resume unwind label %bb.bw
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl4getf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i16 noundef %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl4getf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i16 noundef %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i24 0, 262402) i24 @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl6remove(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 11 uses
  %i.b = and i32 %3, 15
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %_RNvXs_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB4_5QueryINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_3var10EnvSetModeE4from.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i32 %3 to i8                       ; 3 uses
  %i.d = and i8 %i.c, 8
  %i.e = icmp ne i8 %i.d, 0
  %i.f = and i8 %i.c, 4
  %i.g = icmp ne i8 %i.f, 0
  %i.h = trunc i32 %3 to i1
  %i.i = and i8 %i.c, 2
  %i.j = icmp ne i8 %i.i, 0
  br label %_RNvXs_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB4_5QueryINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_3var10EnvSetModeE4from.exit

_RNvXs_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB4_5QueryINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_3var10EnvSetModeE4from.exit: ; preds = %bb.a, %bb.b
  %.sroa.05.0.i.i = phi i1 [ %i.e, %bb.b ], [ true, %bb.a ]
  %.sroa.04.0.i.i = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  %.sroa.03.0.i.i = phi i1 [ %i.j, %bb.b ], [ true, %bb.a ]
  %.sroa.02.0.i.i = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  %i.k = and i32 %3, 65536
  %.not51 = icmp eq i32 %i.k, 0
  br i1 %.not51, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread, label %bb.c

_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread: ; preds = %bb.c, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit, %_RNvXs_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB4_5QueryINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_3var10EnvSetModeE4from.exit
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB4_5QueryINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_3var10EnvSetModeE4from.exit
  %i.l = tail call fastcc noundef align 8 ptr @_RNvMNtNtNtCs8frGy5WneL6_4fish3env4impl3varNtB2_11ElectricVar8for_name(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit

_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i8, ptr %i.m, align 8, !range !18, !noalias !3049, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.aq, label %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread

bb.d:                                             ; preds = %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val24 = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  %i.q = tail call fastcc noundef zeroext i1 @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl17remove_from_chain(ptr nonnull %.val24, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.q, label %bb.aq, label %bb.f

bb.e:                                             ; preds = %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit.thread
  br i1 %.sroa.05.0.i.i, label %bb.p, label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val23 = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8
  %i.s = tail call fastcc noundef zeroext i1 @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl17remove_from_chain(ptr nonnull %.val23, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.s, label %bb.aq, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars() ; 2 uses
  %i.u = extractvalue { ptr, i1 } %i.t, 0         ; 7 uses
  %i.v = extractvalue { ptr, i1 } %i.t, 1         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = invoke noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal6remove(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  %4 = zext i1 %i.v to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_(ptr nonnull %i.u, i8 %4) #34
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit unwind label %bb.n

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  br i1 %i.v, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i8 1, ptr %i.z monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ae = atomicrmw xchg ptr %i.u, i32 0 release, align 4
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit, !prof !13

bb.m:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.u)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.m
  %. = select i1 %i.x, i8 0, i8 4
  %.11 = zext i1 %i.x to i8
  br label %bb.aq

bb.n:                                             ; preds = %bb.aa, %bb.h, %bb.ak
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit: ; preds = %bb.z, %bb.aa, %bb.h, %bb.ak
  %.pn9 = phi { ptr, i32 } [ %i.ce, %bb.ak ], [ %i.y, %bb.h ], [ %.pn, %bb.aa ], [ %.pn, %bb.z ]
  resume { ptr, i32 } %.pn9

bb.o:                                             ; preds = %bb.e
  br i1 %.sroa.04.0.i.i, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.e
  %i.ah = tail call { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars() ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 0       ; 7 uses
  %i.aj = extractvalue { ptr, i1 } %i.ah, 1       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = invoke noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal6remove(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.al unwind label %bb.ak

bb.q:                                             ; preds = %bb.o
  br i1 %.sroa.02.0.i.i, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val27 = load ptr, ptr %i.am, align 8, !nonnull !8, !noundef !8
  %i.an = tail call fastcc noundef zeroext i1 @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl17remove_from_chain(ptr nonnull %.val27, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  %..i = select i1 %i.an, i8 0, i8 4
  br label %bb.aq

bb.s:                                             ; preds = %bb.q
  br i1 %.sroa.03.0.i.i, label %bb.v, label %bb.u, !prof !14

bb.t:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val26 = load ptr, ptr %i.ao, align 8, !nonnull !8, !noundef !8
  %i.ap = tail call fastcc noundef zeroext i1 @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl17remove_from_chain(ptr nonnull %.val26, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  %..i28 = select i1 %i.ap, i8 0, i8 4
  br label %bb.aq

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @298, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #33
  unreachable

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.ar, ptr %i.a, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 4 uses
  %i.av = load i64, ptr %i.au, align 8, !noalias !3050, !noundef !8 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 9223372036854775807
  br i1 %i.aw, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.preheader, label %.invoke, !prof !29

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.preheader: ; preds = %bb.w
  %i.ax = add nuw nsw i64 %i.av, 1
  store i64 %i.ax, ptr %i.au, align 8, !noalias !3050
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 80 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noundef !8 ; 2 uses
  %.not.i29137 = icmp eq ptr %i.az, null
  br i1 %.not.i29137, label %.thread, label %.lr.ph

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.preheader
  %.lcssa125 = phi i64 [ %i.av, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.preheader ], [ %i.bq, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i ]
  %.lcssa = phi ptr [ %i.au, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.preheader ], [ %i.bp, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i ]
  %.val1471.lcssa = phi ptr [ %i.ar, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.preheader ], [ %i.bj, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i ]
  store i64 %.lcssa125, ptr %.lcssa, align 8
  br label %bb.ah

.lr.ph:                                           ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.preheader, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i
  %i.ba = phi ptr [ %i.bz, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i ], [ %i.az, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.preheader ]
  %i.bb = phi ptr [ %i.by, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i ], [ %i.ay, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.preheader ]
  %i.bc = phi ptr [ %i.bp, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i ], [ %i.au, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i.preheader ] ; 2 uses
  %i.bd = atomicrmw add ptr %i.ba, i64 1 monotonic, align 8
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.lr.ph
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.ae, %bb.ab
  %i.bf = phi ptr [ %.pre, %bb.ab ], [ %i.bj, %bb.ae ]
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.ab ], [ %i.bo, %bb.ae ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3051)
  call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !3054
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit unwind label %bb.n

bb.ab:                                            ; preds = %.invoke, %bb.ah
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !3054
  br label %bb.z

bb.ac:                                            ; preds = %.lr.ph
  %i.bj = load ptr, ptr %i.bb, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %.pre.i = load i64, ptr %i.bc, align 8
  %i.bk = add i64 %.pre.i, -1
  store i64 %i.bk, ptr %i.bc, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  call void @llvm.experimental.noalias.scope.decl(metadata !3057)
  %i.bl = load ptr, ptr %i.a, align 8, !alias.scope !3058, !nonnull !8, !noundef !8
  %i.bm = atomicrmw add ptr %i.bl, i64 -1 release, align 8, !noalias !3058
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit33

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit33 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bj, ptr %i.a, align 8
  br label %bb.z

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit33: ; preds = %bb.ac, %bb.ad
  store ptr %i.bj, ptr %i.a, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 6 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !3059, !noundef !8 ; 5 uses
  %i.br = icmp ult i64 %i.bq, 9223372036854775807
  br i1 %i.br, label %bb.af, label %.invoke, !prof !14

.invoke:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit33, %bb.w
  %i.bs = phi ptr [ @214, %bb.w ], [ @304, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit33 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs) #33
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit33
  %i.bt = add nuw nsw i64 %i.bq, 1
  store i64 %i.bt, ptr %i.bp, align 8, !noalias !3059
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bv = load i8, ptr %i.bu, align 8, !range !18, !noundef !8
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.ag, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i: ; preds = %bb.af
  %i.bx = add nuw nsw i64 %i.bq, 1
  store i64 %i.bx, ptr %i.bp, align 8, !noalias !3050
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 80 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !noundef !8 ; 2 uses
  %.not.i29 = icmp eq ptr %i.bz, null
  br i1 %.not.i29, label %.thread, label %.lr.ph

bb.ag:                                            ; preds = %bb.af
  store i64 %i.bq, ptr %i.bp, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.thread, %bb.ag
  %.val25 = phi ptr [ %.val1471.lcssa, %.thread ], [ %i.bj, %bb.ag ]
  %i.ca = invoke fastcc noundef zeroext i1 @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl17remove_from_chain(ptr nonnull %.val25, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ai unwind label %bb.ab

bb.ai:                                            ; preds = %bb.ah
  %..i35 = select i1 %i.ca, i8 0, i8 4
  call void @llvm.experimental.noalias.scope.decl(metadata !3060)
  call void @llvm.experimental.noalias.scope.decl(metadata !3061)
  call void @llvm.experimental.noalias.scope.decl(metadata !3062)
  %i.cb = load ptr, ptr %i.a, align 8, !alias.scope !3063, !nonnull !8, !noundef !8
  %i.cc = atomicrmw add ptr %i.cb, i64 -1 release, align 8, !noalias !3063
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit37

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit37

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit37: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aq

bb.ak:                                            ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %5 = zext i1 %i.aj to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_(ptr nonnull %i.ai, i8 %5) #34
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit unwind label %bb.n

bb.al:                                            ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i38, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cg = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ch = and i64 %i.cg, 9223372036854775807
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i38, label %bb.an, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.cj = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.cj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i38, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store atomic i8 1, ptr %i.cf monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i38

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i38: ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %i.ck = atomicrmw xchg ptr %i.ai, i32 0 release, align 4
  %i.cl = icmp eq i32 %i.ck, 2
  br i1 %i.cl, label %bb.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit39, !prof !13

bb.ap:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i38
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ai)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit39

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit39: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i38, %bb.ap
  %.12 = select i1 %i.al, i8 0, i8 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.d, %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit37, %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit39, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit
  %.sroa.9.2 = phi i8 [ 2, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit ], [ %.12, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit39 ], [ %..i, %bb.r ], [ %..i28, %bb.t ], [ %..i35, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit37 ], [ 0, %bb.d ], [ %., %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit ], [ 0, %bb.f ]
  %.sroa.5.1 = phi i8 [ 0, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit39 ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit37 ], [ 0, %bb.d ], [ %.11, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit ], [ 0, %bb.f ]
  %.sroa.03.1 = phi i8 [ 0, %_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl3var12is_read_only.exit ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit39 ], [ 1, %bb.r ], [ 0, %bb.t ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit37 ], [ 0, %bb.d ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit ], [ 1, %bb.f ]
  %.sroa.9.0.insert.ext = zext nneg i8 %.sroa.9.2 to i24
  %.sroa.9.0.insert.shift = shl nuw nsw i24 %.sroa.9.0.insert.ext, 16
  %.sroa.5.0.insert.ext = zext nneg i8 %.sroa.5.1 to i24
  %.sroa.5.0.insert.shift = shl nuw nsw i24 %.sroa.5.0.insert.ext, 8
  %.sroa.5.0.insert.insert = or disjoint i24 %.sroa.5.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.03.0.insert.ext = zext nneg i8 %.sroa.03.1 to i24
  %.sroa.03.0.insert.insert = or disjoint i24 %.sroa.5.0.insert.insert, %.sroa.03.0.insert.ext
  ret i24 %.sroa.03.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl9get_names(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %1, i16 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl9get_names(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, i16 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMse_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentINtB5_8EnvMutexNtB5_12EnvStackImplE4lockBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexuE4lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 4 @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment8ENV_LOCK)
  call void @llvm.experimental.noalias.scope.decl(metadata !3067)
  %i.c = load i64, ptr %i.b, align 8, !range !16, !alias.scope !3067, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuarduEINtBM_11PoisonErrorBH_EE6unwrapCs8frGy5WneL6_4fish.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3068
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3067, !nonnull !8, !align !12, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !18, !alias.scope !3067, !noundef !8
  store ptr %i.f, ptr %i.a, align 8, !noalias !3068
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !3068
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @145, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #37
          to label %bb.d unwind label %bb.c, !noalias !3067

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuarduEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %bb.f unwind label %bb.e, !noalias !3067

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3067
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuarduEINtBM_11PoisonErrorBH_EE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3067, !nonnull !8, !align !12, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !18, !alias.scope !3067, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.o, ptr %i.q, align 8
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMse_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentINtB5_8EnvMutexNtB5_13EnvScopedImplE4lockBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexuE4lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 4 @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment8ENV_LOCK)
  call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  %i.c = load i64, ptr %i.b, align 8, !range !16, !alias.scope !3072, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuarduEINtBM_11PoisonErrorBH_EE6unwrapCs8frGy5WneL6_4fish.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3073
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3072, !nonnull !8, !align !12, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !18, !alias.scope !3072, !noundef !8
  store ptr %i.f, ptr %i.a, align 8, !noalias !3073
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !3073
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @145, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #37
          to label %bb.d unwind label %bb.c, !noalias !3072

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuarduEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %bb.f unwind label %bb.e, !noalias !3072

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3072
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuarduEINtBM_11PoisonErrorBH_EE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3072, !nonnull !8, !align !12, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !18, !alias.scope !3072, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.o, ptr %i.q, align 8
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB19_15CompletionEntryE5entryB1b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !8   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3085)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3086, !nonnull !8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3086 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !18, !alias.scope !3086
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.ak, %bb.g ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.aj, %bb.g ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3087)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 714
  %i.k = load i16, ptr %i.j, align 2, !noalias !3088, !noundef !8 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx
  %i.n = icmp eq i16 %i.k, 0
  br i1 %i.n, label %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i.i

bb.d:                                             ; preds = %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
end_hunk_14
begin_hunk_15_@_RNvNtNtCs8frGy5WneL6_4fish8builtins8function8function:bb.a

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
          to label %bb.gw unwind label %.thread203

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.qc = load ptr, ptr %.sroa.45.0..sroa_idx.i, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.qd = load i64, ptr %i.gp, align 8, !range !21, !noundef !8
  %i.qe = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noundef !8 ; 2 uses
  %i.qf = icmp ult i64 %i.qe, 384307168202282326
  call void @llvm.assume(i1 %i.qf)
  %i.qg = getelementptr inbounds nuw [24 x i8], ptr %i.qc, i64 %i.qe
  store ptr %i.qc, ptr %i.by, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.qc, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.qd, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.qg, ptr %.sroa.619.0..sroa_idx, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store ptr %0, ptr %i.qh, align 8
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringIBS_B12_EEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterB12_ENCNvNtNtCs8frGy5WneL6_4fish8builtins8function8function0EE9from_iterB4e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.by)
          to label %bb.gy unwind label %.thread203

bb.gx:                                            ; preds = %bb.gz
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bv) #34
          to label %bb.jf unwind label %bb.hr

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.qi = load ptr, ptr %i.ce, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.qj = load ptr, ptr %i.cf, align 8, !noundef !8 ; 2 uses
  store ptr %i.qi, ptr %i.bw, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.qj, ptr %i.qk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.ql = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.ql, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false)
  %i.qm = invoke { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringIBv_BF_EEE16into_boxed_sliceCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bt)
          to label %bb.ha unwind label %bb.gz     ; 2 uses

bb.gz:                                            ; preds = %bb.gy
  %i.qn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bu) #34
          to label %bb.gx unwind label %bb.hr

bb.ha:                                            ; preds = %bb.gy
  %i.qo = extractvalue { ptr, i64 } %i.qm, 0      ; 2 uses
  %i.qp = extractvalue { ptr, i64 } %i.qm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %i.qq = load i8, ptr %i.fx, align 1, !range !18, !noundef !8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store ptr %i.qi, ptr %i.qr, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  store ptr %i.qj, ptr %i.qs, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  %i.qt = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qt, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qo) ]
  %i.qu = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store ptr %i.qo, ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  store i64 %i.qp, ptr %i.qv, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.bx, i64 100
  store i8 %i.qq, ptr %i.qw, align 4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.bx, i64 102
  store i8 0, ptr %i.qx, align 2
  %i.qy = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  store ptr %i.px, ptr %i.qy, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.bx, i64 101
  store i8 0, ptr %i.qz, align 1
  %i.ra = getelementptr inbounds nuw i8, ptr %i.bx, i64 88
  store ptr null, ptr %i.ra, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  store i32 0, ptr %i.rb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc)
          to label %bb.hb unwind label %bb.je

.thread219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.if, %bb.ie, %bb.ic, %bb.hz, %bb.io, %bb.ih, %bb.ho, %.invoke, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread
  %lpad.loopexit.split-lp600 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.thread

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.rc = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.rc, ptr noundef nonnull align 8 dereferenceable(104) %i.bx, i64 104, i1 false)
  store i64 1, ptr %i.bh, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 1, ptr %i.rd, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !4659
  %i.re = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 121) 120, i64 noundef range(i64 1, 9) 8) #36, !noalias !4659 ; 3 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.hc, label %bb.hf, !prof !13

bb.hc:                                            ; preds = %bb.hb
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #37
          to label %.noexc120 unwind label %bb.hd

.noexc120:                                        ; preds = %bb.hc
  unreachable

bb.hd:                                            ; preds = %bb.hc
  %i.rg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.rc)
          to label %bb.jd unwind label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.rh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

.body:                                            ; preds = %bb.hf
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.thread

bb.hf:                                            ; preds = %bb.hb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.re, ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  invoke void @_RNvNtCs8frGy5WneL6_4fish8function3add(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bs, ptr noundef nonnull %i.re)
          to label %bb.hg unwind label %.body

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.rj = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.rk = load i64, ptr %i.gs, align 8, !range !21, !noundef !8
  %i.rl = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noundef !8 ; 3 uses
  %i.rm = icmp ult i64 %i.rl, 384307168202282326
  call void @llvm.assume(i1 %i.rm)
  %.idx = mul nuw nsw i64 %i.rl, 24
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store ptr %i.rj, ptr %i.br, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  store ptr %i.rj, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %i.rk, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  store ptr %i.rn, ptr %.sroa.625.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.ro = icmp eq i64 %i.rl, 0
  br i1 %i.ro, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph: ; preds = %bb.hg
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

.body145:                                         ; preds = %bb.ja, %bb.hh, %bb.iv
  %.pn75 = phi { ptr, i32 } [ %.pn73, %bb.iv ], [ %i.rp, %bb.hh ], [ %i.uf, %bb.ja ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.thread unwind label %bb.hr

bb.hh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i144
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %.body145

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit148
  %i.rq = phi ptr [ %i.rj, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph ], [ %i.ui, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit148 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4660)
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  store ptr %i.rr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !4660
  %.sroa.0180.0.copyload181 = load i64, ptr %i.rq, align 8, !noalias !4660 ; 2 uses
  %.sroa.7.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx182, i64 16, i1 false), !noalias !4660
  %.not68 = icmp eq i64 %.sroa.0180.0.copyload181, -1
  br i1 %.not68, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.hi

bb.hi:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store i64 %.sroa.0180.0.copyload181, ptr %i.bq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc)
          to label %bb.iw unwind label %bb.ix

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit148, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit125 unwind label %.thread219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit125: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.rs = load ptr, ptr %.sroa.4.0..sroa_idx.i104, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.rt = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !8 ; 2 uses
  %.idx332 = shl nuw nsw i64 %i.rt, 5
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.idx332
  %i.rv = icmp eq i64 %i.rt, 0
  br i1 %i.rv, label %._crit_edge331, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit125
  %i.rw = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 3 uses
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ry = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.55.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.sa = getelementptr inbounds nuw i8, ptr %i.bn, i64 57
  br label %bb.hj

bb.hj:                                            ; preds = %.lr.ph, %bb.hp
  %.sroa.026.0327 = phi ptr [ %i.rs, %.lr.ph ], [ %i.sb, %bb.hp ] ; 8 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.026.0327, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.experimental.noalias.scope.decl(metadata !4661)
  call void @llvm.experimental.noalias.scope.decl(metadata !4662)
  %i.sc = load i32, ptr %.sroa.026.0327, align 8, !range !24, !alias.scope !4662, !noundef !8 ; 2 uses
  switch i32 %i.sc, label %default.unreachable [
    i32 0, label %_RNvXs4_NtCs8frGy5WneL6_4fish5eventNtB5_16EventDescriptionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
    i32 1, label %bb.hk
    i32 2, label %.invoke
    i32 3, label %bb.hl
    i32 4, label %bb.hm
    i32 5, label %bb.hn
    i32 6, label %.invoke
  ]

default.unreachable:                              ; preds = %bb.hj
  unreachable

bb.hk:                                            ; preds = %bb.hj
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.026.0327, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !range !4663, !alias.scope !4662, !noundef !8
  store i32 %i.se, ptr %i.rx, align 4, !alias.scope !4661
  br label %_RNvXs4_NtCs8frGy5WneL6_4fish5eventNtB5_16EventDescriptionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

.invoke:                                          ; preds = %bb.hj, %bb.hj
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.026.0327, i64 8
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.rw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sf)
          to label %_RNvXs4_NtCs8frGy5WneL6_4fish5eventNtB5_16EventDescriptionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit unwind label %.thread219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.hl:                                            ; preds = %bb.hj
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.026.0327, i64 4
  %i.sh = load i32, ptr %i.sg, align 4, !alias.scope !4662, !noundef !8
  store i32 %i.sh, ptr %i.rx, align 4, !alias.scope !4661
  br label %_RNvXs4_NtCs8frGy5WneL6_4fish5eventNtB5_16EventDescriptionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.hm:                                            ; preds = %bb.hj
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.026.0327, i64 4
  %i.sj = load i32, ptr %i.si, align 4, !alias.scope !4662, !noundef !8
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.026.0327, i64 8
  %i.sl = load i64, ptr %i.sk, align 8, !alias.scope !4662, !noundef !8
  store i32 %i.sj, ptr %i.rx, align 4, !alias.scope !4661
  store i64 %i.sl, ptr %i.rw, align 8, !alias.scope !4661
  br label %_RNvXs4_NtCs8frGy5WneL6_4fish5eventNtB5_16EventDescriptionNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
end_hunk_15
begin_hunk_16_@_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator3nthCs8frGy5WneL6_4fish:bb.a
  ret { i64, ptr } %i.o

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.l, -1
  br i1 %i.p, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @480) #33
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.j, align 8
  br label %bb.c

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #33
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXs_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB4_5QueryINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_3var10EnvSetModeE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 1 captures(none) dereferenceable(12) initializes((0, 12)) %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %.sroa.02.0.extract.trunc = trunc i32 %1 to i16 ; 4 uses
  %i.a = and i16 %.sroa.02.0.extract.trunc, 15
  %i.b = icmp ne i16 %i.a, 0                      ; 2 uses
  %i.c = trunc i32 %1 to i8                       ; 7 uses
  br i1 %i.b, label %bb.b, label %_RNvMs0_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_5Query3new.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.c, 1
  %i.e = lshr i8 %i.c, 1
  %i.f = and i8 %i.e, 1
  %i.g = lshr i8 %i.c, 2
  %i.h = and i8 %i.g, 1
  %i.i = lshr i8 %i.c, 3
  %i.j = and i8 %i.i, 1
  br label %_RNvMs0_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_5Query3new.exit

_RNvMs0_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_5Query3new.exit: ; preds = %bb.a, %bb.b
  %.sroa.05.0.i = phi i8 [ %i.j, %bb.b ], [ 1, %bb.a ]
  %.sroa.04.0.i = phi i8 [ %i.h, %bb.b ], [ 1, %bb.a ]
  %.sroa.03.0.i = phi i8 [ %i.f, %bb.b ], [ 1, %bb.a ]
  %.sroa.02.0.i = phi i8 [ %i.d, %bb.b ], [ 1, %bb.a ]
  %i.k = and i16 %.sroa.02.0.extract.trunc, 48
  %i.l = icmp ne i16 %i.k, 0                      ; 3 uses
  %i.m = lshr i8 %i.c, 4
  %i.n = and i8 %i.m, 1
  %i.o = lshr i8 %i.c, 5
  %i.p = and i8 %i.o, 1
  %.sroa.06.0.i = select i1 %i.l, i8 %i.n, i8 1
  %.sroa.07.0.i = select i1 %i.l, i8 %i.p, i8 1
  %i.q = and i16 %.sroa.02.0.extract.trunc, 192
  %i.r = icmp ne i16 %i.q, 0
  %i.s = and i16 %.sroa.02.0.extract.trunc, 128
  %i.t = icmp ne i16 %i.s, 0
  %i.u = zext i1 %i.b to i8
  store i8 %i.u, ptr %0, align 1, !alias.scope !5017
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.02.0.i, ptr %i.v, align 1, !alias.scope !5017
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.03.0.i, ptr %i.w, align 1, !alias.scope !5017
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.04.0.i, ptr %i.x, align 1, !alias.scope !5017
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.05.0.i, ptr %i.y, align 1, !alias.scope !5017
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.aa = zext i1 %i.l to i8
  store i8 %i.aa, ptr %i.z, align 1, !alias.scope !5017
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %.sroa.06.0.i, ptr %i.ab, align 1, !alias.scope !5017
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sroa.07.0.i, ptr %i.ac, align 1, !alias.scope !5017
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = zext i1 %i.r to i8
  store i8 %i.ae, ptr %i.ad, align 1, !alias.scope !5017
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ag = lshr i8 %i.c, 6
  %i.ah = and i8 %i.ag, 1
  store i8 %i.ah, ptr %i.af, align 1, !alias.scope !5017
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aj = zext i1 %i.t to i8
  store i8 %i.aj, ptr %i.ai, align 1, !alias.scope !5017
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.al = lshr i32 %1, 16
  %i.am = trunc i32 %i.al to i8
  %i.an = and i8 %i.am, 1
  store i8 %i.an, ptr %i.ak, align 1, !alias.scope !5017
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQIBx_QNtNtCs8frGy5WneL6_4fish8complete13CustomArgDataNCNvMs8_BW_NtBW_9Completer15walk_wrap_chain0ENCB1H_s_0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !17, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %.val3 = load ptr, ptr %i.a, align 8, !align !17, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %.val3, null
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !8 ; 2 uses
  %i.h = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.h)
  %.not1.i = icmp ult i64 %i.g, %.val
  br i1 %.not1.i, label %bb.e, label %_RNCNvMs8_NtCs8frGy5WneL6_4fish8completeNtB7_9Completer15walk_wrap_chains_0B9_.exit, !prof !13

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #33
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #33
  unreachable

_RNCNvMs8_NtCs8frGy5WneL6_4fish8completeNtB7_9Completer15walk_wrap_chains_0B9_.exit: ; preds = %bb.c
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8truncateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.val)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNCNvMs8_NtCs8frGy5WneL6_4fish8completeNtB7_9Completer15walk_wrap_chains_0B9_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextNCNvMNtBT_15parse_executionNtB1S_16ExecutionContext20populate_job_process0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !17, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext20populate_job_process0B6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.val = load i64, ptr %i.c, align 8, !range !16, !noundef !8
  %i.d = trunc nuw i64 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext20populate_job_process0B6_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3 = load i64, ptr %i.e, align 8
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
  tail call void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser9pop_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.f, i64 noundef %.val3)
  br label %_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext20populate_job_process0B6_.exit

_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext20populate_job_process0B6_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextNCNvMNtBT_15parse_executionNtB1S_16ExecutionContext9run_1_jobs0_0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !17, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext9run_1_jobs0_0B6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.val = load i64, ptr %i.c, align 8, !range !16, !noundef !8
  %i.d = trunc nuw i64 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext9run_1_jobs0_0B6_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3 = load i64, ptr %i.e, align 8
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
  tail call void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser9pop_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.f, i64 noundef %.val3)
  br label %_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext9run_1_jobs0_0B6_.exit

_RNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB4_16ExecutionContext9run_1_jobs0_0B6_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvMNtBT_8autoloadNtB1v_8Autoload16perform_autoload0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store i64 -1, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.5.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8, !noalias !5022
  call void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser17set_last_statuses(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.0.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !5023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5021
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtBT_4exec19exec_process_in_job0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !17, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RNCNvNtCs8frGy5WneL6_4fish4exec19exec_process_in_job0B5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.val = load i64, ptr %i.c, align 8, !range !16, !noundef !8
  %i.d = trunc nuw i64 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvNtCs8frGy5WneL6_4fish4exec19exec_process_in_job0B5_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3 = load i64, ptr %i.e, align 8
  tail call void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser9pop_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %i.a, i64 noundef %.val3)
  br label %_RNCNvNtCs8frGy5WneL6_4fish4exec19exec_process_in_job0B5_.exit

_RNCNvNtCs8frGy5WneL6_4fish4exec19exec_process_in_job0B5_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtBT_4exec22exec_subshell_internals_0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store i64 -1, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.5.0.copyload, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.5.0.copyload, ptr %i.b, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5027)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !5027, !nonnull !8, !noundef !8
  %i.e = load i8, ptr %i.d, align 1, !range !18, !noalias !5028, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 32, i1 false), !noalias !5029
  call void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser17set_last_statuses(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.0.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !5027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5028
  br label %_RNCNvNtCs8frGy5WneL6_4fish4exec22exec_subshell_internals_0B5_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit.i unwind label %bb.e, !noalias !5029

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVeclEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.f, !noalias !5029

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !5029
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVeclEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit.i: ; preds = %bb.d
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !5029
  br label %_RNCNvNtCs8frGy5WneL6_4fish4exec22exec_subshell_internals_0B5_.exit

_RNCNvNtCs8frGy5WneL6_4fish4exec22exec_subshell_internals_0B5_.exit: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNCNvNtCs8frGy5WneL6_4fish4exec22exec_subshell_internals_0B5_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtBT_5event13fire_internals1_0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store i64 -1, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.5.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8, !noalias !5034
  call void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser17set_last_statuses(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.0.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !5035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5033
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish8complete13CustomArgDataNCNvMs8_BR_NtBR_9Completer15walk_wrap_chain0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !17, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.val = load i64, ptr %i.c, align 8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %.val, ptr %i.d, align 8, !alias.scope !5038
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuarduNCINvMs4_B5_INtB5_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNCNvNtNtB1n_8builtins4read16read_interactive00E0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 2
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 1
  %.not = icmp eq i8 %.sroa.5.0.copyload, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.a, ptr noundef nonnull align 8 dereferenceable(37) %0, i64 37, i1 false)
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx1, align 1
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i16 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx3, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5047)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5047, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.e = load i64, ptr %i.b, align 8, !noalias !5048, !noundef !8
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.b, align 8, !noalias !5048
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNCNvNtNtBV_8builtins4read16read_interactive00E0BV_.exit

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #38
  br label %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNCNvNtNtBV_8builtins4read16read_interactive00E0BV_.exit

_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNCNvNtNtBV_8builtins4read16read_interactive00E0BV_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNCNvNtNtBV_8builtins4read16read_interactive00E0BV_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuarduNCINvMs4_B5_INtB5_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtB1n_15parse_executionNtB2h_16ExecutionContext9run_1_job0E0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 2
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 1
  %.not = icmp eq i8 %.sroa.5.0.copyload, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.a, ptr noundef nonnull align 8 dereferenceable(37) %0, i64 37, i1 false)
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx1, align 1
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i16 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx3, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5057)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5057, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.e = load i64, ptr %i.b, align 8, !noalias !5058, !noundef !8
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.b, align 8, !noalias !5058
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBV_15parse_executionNtB1P_16ExecutionContext9run_1_job0E0BV_.exit

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #38
  br label %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBV_15parse_executionNtB1P_16ExecutionContext9run_1_job0E0BV_.exit

_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBV_15parse_executionNtB1P_16ExecutionContext9run_1_job0E0BV_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBV_15parse_executionNtB1P_16ExecutionContext9run_1_job0E0BV_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuarduNCINvMs4_B5_INtB5_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtB1n_15parse_executionNtB2h_16ExecutionContext9run_1_jobs1_0E0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 2
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 1
  %.not = icmp eq i8 %.sroa.5.0.copyload, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.a, ptr noundef nonnull align 8 dereferenceable(37) %0, i64 37, i1 false)
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx1, align 1
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i16 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx3, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5067)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5067, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.e = load i64, ptr %i.b, align 8, !noalias !5068, !noundef !8
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.b, align 8, !noalias !5068
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBV_15parse_executionNtB1P_16ExecutionContext9run_1_jobs1_0E0BV_.exit

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #38
  br label %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBV_15parse_executionNtB1P_16ExecutionContext9run_1_jobs1_0E0BV_.exit

_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBV_15parse_executionNtB1P_16ExecutionContext9run_1_jobs1_0E0BV_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBV_15parse_executionNtB1P_16ExecutionContext9run_1_jobs1_0E0BV_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuarduNCINvMs4_B5_INtB5_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs5_B1l_NtB1l_6Parser14eval_file_wstr0E0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 2
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 1
  %.not = icmp eq i8 %.sroa.5.0.copyload, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.a, ptr noundef nonnull align 8 dereferenceable(37) %0, i64 37, i1 false)
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx1, align 1
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i16 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx3, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5077)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5077, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.e = load i64, ptr %i.b, align 8, !noalias !5078, !noundef !8
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.b, align 8, !noalias !5078
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs5_BT_NtBT_6Parser14eval_file_wstr0E0BV_.exit

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #38
  br label %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs5_BT_NtBT_6Parser14eval_file_wstr0E0BV_.exit

_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs5_BT_NtBT_6Parser14eval_file_wstr0E0BV_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB8_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs5_BT_NtBT_6Parser14eval_file_wstr0E0BV_.exit
  ret void
}
end_hunk_16
begin_hunk_17_@_RNvYNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values10GET_STATUS0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtBa_11environment13EnvScopedImplEE9call_onceBe_:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values11GET_HISTORY0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtBa_11environment13EnvScopedImplEE9call_onceBe_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = tail call noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE4withNCNvBW_9thread_id0BU_EB10_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @130), !noalias !5465, !inline_history !5451
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14MAIN_THREAD_ID, i64 8) acquire, align 8, !noalias !5465
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id15init_not_called() #37, !noalias !5465, !inline_history !5451
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14MAIN_THREAD_ID, align 8, !noalias !5465, !noundef !8
  %i.k = icmp eq i64 %i.g, %i.j
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5465
  store i64 0, ptr %i.f, align 8, !noalias !5465
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !noalias !5465
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.m, align 8, !noalias !5465
  call void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar17new_from_name_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @131, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f), !noalias !5466, !inline_history !5451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5465
  br label %_RNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values11GET_HISTORY0Bb_.exit

bb.d:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5465
  call void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader21commandline_get_state(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.d, i1 noundef zeroext true), !noalias !5465, !inline_history !5451
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !noalias !5465, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5467
  invoke void @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl4getf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @39, i64 noundef 12, i16 noundef 0)
          to label %.noexc.i unwind label %bb.f, !noalias !5468, !inline_history !5454

.noexc.i:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5467
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish7history7history19history_id_from_var(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %.noexc5.i unwind label %bb.f, !noalias !5468, !inline_history !5454

.noexc5.i:                                        ; preds = %.noexc.i
  %i.p = invoke noundef nonnull ptr @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values11GET_HISTORY00Bd_.exit.i unwind label %bb.f, !noalias !5468, !inline_history !5454

_RNCNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values11GET_HISTORY00Bd_.exit.i: ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5467
  br label %bb.g

bb.f:                                             ; preds = %.noexc5.i, %.noexc.i, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #34
          to label %bb.k unwind label %bb.j, !noalias !5468, !inline_history !5451

bb.g:                                             ; preds = %_RNCNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values11GET_HISTORY00Bd_.exit.i, %bb.d
  %storemerge.i = phi ptr [ %i.o, %bb.d ], [ %i.p, %_RNCNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values11GET_HISTORY00Bd_.exit.i ]
  store ptr %storemerge.i, ptr %i.e, align 8, !noalias !5465
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.h, !noalias !5468, !inline_history !5451

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i unwind label %bb.i, !noalias !5468, !inline_history !5451

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !5468, !inline_history !5451
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.l, !noalias !5468, !inline_history !5451

bb.j:                                             ; preds = %bb.p, %.body.i, %bb.k, %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !5468, !inline_history !5451
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #34
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i unwind label %bb.j, !noalias !5468, !inline_history !5451

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i: ; preds = %bb.p, %.body8.i, %bb.k
  %.pn.pn.i = phi { ptr, i32 } [ %i.q, %bb.k ], [ %.pn.i, %bb.p ], [ %.pn.i, %.body8.i ]
  resume { ptr, i32 } %.pn.pn.i

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.t, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y) #34
          to label %.body8.i unwind label %bb.j, !noalias !5468, !inline_history !5451

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !20, !alias.scope !5469, !noalias !5465, !noundef !8
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEEECs8frGy5WneL6_4fish.exit.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.n, !noalias !5468, !inline_history !5451

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body8.i unwind label %bb.o, !noalias !5468, !inline_history !5451

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !5468, !inline_history !5451
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEEECs8frGy5WneL6_4fish.exit.i unwind label %bb.q, !noalias !5468, !inline_history !5451

.body8.i:                                         ; preds = %bb.q, %bb.n, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ah, %bb.q ], [ %i.ac, %bb.n ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5470)
  call void @llvm.experimental.noalias.scope.decl(metadata !5471)
  %i.ae = load ptr, ptr %i.e, align 8, !alias.scope !5472, !noalias !5465, !nonnull !8, !noundef !8
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !5473
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i

bb.p:                                             ; preds = %.body8.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i unwind label %bb.j, !noalias !5468, !inline_history !5451

bb.q:                                             ; preds = %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEEECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEECs8frGy5WneL6_4fish.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5465
  %i.ai = load ptr, ptr %i.e, align 8, !noalias !5465, !nonnull !8, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  invoke void @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History11get_history(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.aj)
          to label %bb.r unwind label %bb.q, !noalias !5468, !inline_history !5451

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringjEEECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar17new_from_name_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @131, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.s unwind label %bb.q, !inline_history !5451

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5465
  call void @llvm.experimental.noalias.scope.decl(metadata !5474)
  call void @llvm.experimental.noalias.scope.decl(metadata !5475)
  %i.ak = load ptr, ptr %i.e, align 8, !alias.scope !5476, !noalias !5465, !nonnull !8, !noundef !8
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !5477
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit12.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38, !noalias !5468, !inline_history !5451
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit12.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit12.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5465
  br label %_RNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values11GET_HISTORY0Bb_.exit

_RNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values11GET_HISTORY0Bb_.exit: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit12.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values14GET_PIPESTATUS0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtBa_11environment13EnvScopedImplEE9call_onceBe_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1 = load i64, ptr %i.f, align 8, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5483
  %i.g = icmp ult i64 %.val1, 2305843009213693952
  tail call void @llvm.assume(i1 %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5483
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !5483
  %i.h = load i64, ptr %i.a, align 8, !range !16, !noalias !5483, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = load i64, ptr %2, align 8, !range !25, !noalias !5483, !noundef !8 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %4, align 8, !noalias !5483
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %3, i64 %i.j) #37, !noalias !5483
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %4, align 8, !noalias !5483, !nonnull !8, !noundef !8
  %i.l = icmp samesign ule i64 %.val1, %3
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5483
  store i64 %3, ptr %i.d, align 8, !noalias !5483
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !noalias !5483
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.n, align 8, !noalias !5483
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.idx.i = shl nuw nsw i64 %.val1, 2
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %.not5.i = icmp eq i64 %.val1, 0
  br i1 %.not5.i, label %_RNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values14GET_PIPESTATUS0Bb_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %.sroa.0.06.i = phi ptr [ %i.p, %bb.h ], [ %.val, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5483
  invoke void @_RNvXsl_Cskr4qsHYS30i_15fish_widestringlNtB5_9ToWString10to_wstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.0.06.i)
          to label %bb.d unwind label %.body.i, !noalias !5483

.body.i:                                          ; preds = %.lr.ph.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = load i64, ptr %i.n, align 8, !alias.scope !5484, !noalias !5483, !noundef !8 ; 3 uses
  %i.s = load i64, ptr %i.d, align 8, !range !21, !alias.scope !5484, !noalias !5483, !noundef !8
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.f, !noalias !5485

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %.body.thread.i unwind label %bb.g, !noalias !5483

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !5483
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.w = load ptr, ptr %i.m, align 8, !alias.scope !5484, !noalias !5483, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !5483
  %i.y = add i64 %i.r, 1
  store i64 %i.y, ptr %i.n, align 8, !alias.scope !5484, !noalias !5483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5483
  %.not.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i, label %_RNCNvNtNtNtNtCs8frGy5WneL6_4fish3env4impl3var15electric_values14GET_PIPESTATUS0Bb_.exit, label %.lr.ph.i

bb.i:                                             ; preds = %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body2.i

.body.thread.i:                                   ; preds = %bb.f, %.body.i
  %eh.lpad-body2.i = phi { ptr, i32 } [ %i.q, %.body.i ], [ %i.u, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
          to label %bb.i unwind label %bb.j, !noalias !5483

bb.j:                                             ; preds = %.body.thread.i
  %i.z = landingpad { ptr, i32 }
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
end_hunk_17
