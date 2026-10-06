Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.04?download=true
inline.NumInlined: 782
inline.NumDeleted: 398
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs2NzvFoTxuAy_2rg:bb.a

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !3973
  %i.f = load i64, ptr %i.e, align 8, !dbg !3975, !range !1036, !invariant.load !777
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #26, !dbg !3976
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, !dbg !3977

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i
  ret void, !dbg !3972

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !3978
  %i.i = load i64, ptr %i.h, align 8, !dbg !3978, !range !1035, !invariant.load !777 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !3979
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit5, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, !dbg !3979

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !3978
  %i.l = load i64, ptr %i.k, align 8, !dbg !3980, !range !1036, !invariant.load !777
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #26, !dbg !3981
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit5, !dbg !3982

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit5: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g, !dbg !3972
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !377 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !3993, !nonnull !777, !noundef !777 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsc0anycpf6TS_6ignore5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a)
          to label %bb.b unwind label %bb.c, !dbg !3993

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #26, !dbg !3994
  ret void, !dbg !3993

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #26, !dbg !3995
  resume { ptr, i32 } %i.b, !dbg !3993
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !3996 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !4028, !nonnull !777, !noundef !777 ; 7 uses
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !4029, !inline_history !273

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %bb.d unwind label %bb.f, !dbg !4029, !inline_history !273

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !4029, !inline_history !273

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !4029
  %.val2.i = load ptr, ptr %i.c, align 8, !dbg !4029, !alias.scope !4027, !nonnull !777, !noundef !777
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #26, !dbg !4030, !inline_history !273
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #26, !dbg !4031
  resume { ptr, i32 } %.pn.i, !dbg !4028

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !4029, !inline_history !273
  unreachable, !dbg !4029

bb.g:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !4029
  %.val.i = load ptr, ptr %i.f, align 8, !dbg !4029, !alias.scope !4027, !nonnull !777, !noundef !777
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #26, !dbg !4032, !inline_history !273
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #26, !dbg !4033
  ret void, !dbg !4028
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4path11PathPrinterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !381 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !4056 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4051), !dbg !4056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4052), !dbg !4057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4053), !dbg !4058
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4054), !dbg !4059
  %i.b = load ptr, ptr %i.a, align 8, !dbg !4060, !alias.scope !4055, !nonnull !777, !noundef !777
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !4061, !noalias !4055
  %i.d = icmp eq i64 %i.c, 1, !dbg !4062
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg.exit, !dbg !4062

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !4063
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg.exit unwind label %bb.c, !dbg !4064

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(64) %0) #34
          to label %bb.d unwind label %bb.g, !dbg !4056

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(64) %0)
          to label %bb.f unwind label %bb.e, !dbg !4056

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4056
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #34
          to label %bb.h unwind label %bb.g, !dbg !4056

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4056
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h), !dbg !4056
  ret void, !dbg !4056

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !4056
  unreachable, !dbg !4056

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn, !dbg !4056
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #7 !dbg !165 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4086), !dbg !4087
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4088
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4089
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !4089, !alias.scope !4086 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !4089, !alias.scope !4086 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4089
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !4089, !alias.scope !4086, !noundef !777 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !4090
  br i1 %i.d, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !4091

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4089
  %.val.i = load i64, ptr %i.e, align 8, !dbg !4089, !alias.scope !4086
  %i.f = add i64 %.val3.i, 1, !dbg !4092
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !4093    ; 2 uses
  %i.h = add i64 %.val1.i, -1, !dbg !4094
  %i.i = add i64 %i.h, %i.g, !dbg !4095           ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !4095
  tail call void @llvm.assume(i1 %i.j), !dbg !4096
  %i.k = sub i64 0, %.val1.i, !dbg !4097
  %i.l = and i64 %i.i, %i.k, !dbg !4098           ; 3 uses
  %i.m = add i64 %.val3.i, 17, !dbg !4099
  %i.n = add i64 %i.m, %i.l, !dbg !4100           ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !4100
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !4101
  tail call void @llvm.assume(i1 %i.q), !dbg !4101
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !4102
  tail call void @llvm.assume(i1 %i.r), !dbg !4103
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0, !dbg !4104
  br i1 %i.s, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4104

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l, !dbg !4105
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t, !dbg !4106
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #26, !dbg !4107, !noalias !4086
  br label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, !dbg !4108

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !4087
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 !dbg !4109 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4155), !dbg !4159
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4160
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !4160, !alias.scope !4155
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4160
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !4160, !alias.scope !4155
  %.val2.i = load ptr, ptr %0, align 8, !dbg !4160, !alias.scope !4155, !nonnull !777, !align !991, !noundef !777 ; 10 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !4161 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !4161, !noalias !4155, !noundef !777 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !4162
  br i1 %.not4.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i.i, !dbg !4163

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !dbg !4164, !noalias !4155
  br label %.lr.ph.split.us.i.i, !dbg !4165

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %1 = phi ptr [ %3, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ], !dbg !4164 ; 2 uses
  %.sroa.0.03.us.i.i = phi i64 [ %2, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %2 = add nuw i64 %.sroa.0.03.us.i.i, 1, !dbg !4166
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.03.us.i.i, !dbg !4167 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !dbg !4168, !noalias !4155, !noundef !777
  %i.h = icmp eq i8 %i.g, -128, !dbg !4168
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !4165

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.i = add i64 %.sroa.0.03.us.i.i, -16, !dbg !4169
  %i.j = load i64, ptr %i.c, align 8, !dbg !4170, !noalias !4155, !noundef !777
  %i.k = and i64 %i.j, %i.i, !dbg !4171
  store i8 -1, ptr %i.f, align 1, !dbg !4172, !noalias !4155
  %i.l = load ptr, ptr %.val2.i, align 8, !dbg !4173, !noalias !4155, !nonnull !777, !noundef !777
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !4174
  %i.n = getelementptr i8, ptr %i.m, i64 16, !dbg !4174
  store i8 -1, ptr %i.n, align 1, !dbg !4175, !noalias !4155
  %i.o = load i64, ptr %i.e, align 8, !dbg !4176, !noalias !4155, !noundef !777
  %i.p = add i64 %i.o, -1, !dbg !4176
  store i64 %i.p, ptr %i.e, align 8, !dbg !4176, !noalias !4155
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !dbg !4164, !noalias !4155
  br label %bb.c, !dbg !4177

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %3 = phi ptr [ %.pre.i.i, %bb.b ], [ %1, %.lr.ph.split.us.i.i ]
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d, !dbg !4162
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %.lr.ph.split.us.i.i, !dbg !4163

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.q, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.q = add nuw i64 %.sroa.0.03.i.i, 1, !dbg !4166
  %i.r = load ptr, ptr %.val2.i, align 8, !dbg !4164, !noalias !4155, !nonnull !777, !noundef !777
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.03.i.i, !dbg !4167 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !dbg !4168, !noalias !4155, !noundef !777
  %i.u = icmp eq i8 %i.t, -128, !dbg !4168
  br i1 %i.u, label %bb.e, label %bb.d, !dbg !4165

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d, !dbg !4162
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %.lr.ph.split.i.i, !dbg !4163

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1, !dbg !4166
  %i.v = add i64 %.sroa.0.03.i.i, -16, !dbg !4169
  %i.w = load i64, ptr %i.c, align 8, !dbg !4170, !noalias !4155, !noundef !777
  %i.x = and i64 %i.w, %i.v, !dbg !4171
  store i8 -1, ptr %i.s, align 1, !dbg !4172, !noalias !4155
  %i.y = load ptr, ptr %.val2.i, align 8, !dbg !4173, !noalias !4155, !nonnull !777, !noundef !777
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x, !dbg !4174
  %i.aa = getelementptr i8, ptr %i.z, i64 16, !dbg !4174
  store i8 -1, ptr %i.aa, align 1, !dbg !4175, !noalias !4155
  %i.ab = load ptr, ptr %.val2.i, align 8, !dbg !4178, !noalias !4155, !nonnull !777, !noundef !777
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !4179
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.neg7.i.i, !dbg !4180
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ac), !dbg !4181, !noalias !4155, !inline_history !4152
  %i.ad = load i64, ptr %i.e, align 8, !dbg !4176, !noalias !4155, !noundef !777
  %i.ae = add i64 %i.ad, -1, !dbg !4176
  store i64 %i.ae, ptr %i.e, align 8, !dbg !4176, !noalias !4155
  br label %bb.d, !dbg !4177

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.af = load i64, ptr %i.c, align 8, !dbg !4182, !noalias !4155, !noundef !777 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 8, !dbg !4183
  %i.ah = add i64 %i.af, 1, !dbg !4183
  %i.ai = lshr i64 %i.ah, 3, !dbg !4183
  %i.aj = mul nuw i64 %i.ai, 7, !dbg !4183
  %.sroa.04.0.i.i = select i1 %i.ag, i64 %i.af, i64 %i.aj, !dbg !4183
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !4184
  %i.al = load i64, ptr %i.ak, align 8, !dbg !4184, !noalias !4155, !noundef !777
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !4185
  %i.an = sub i64 %.sroa.04.0.i.i, %i.al, !dbg !4185
  store i64 %i.an, ptr %i.am, align 8, !dbg !4185, !noalias !4155
  ret void, !dbg !4159
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1S_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEENCNvMse_B1y_B1v_15clone_from_impl0EECs2NzvFoTxuAy_2rg(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 !dbg !4186 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0, !dbg !4231
  br i1 %.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i.i, !dbg !4232

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b, !dbg !4232

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1, !dbg !4233 ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !dbg !4234, !nonnull !777, !noundef !777 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i, !dbg !4235
  %i.d = load i8, ptr %i.c, align 1, !dbg !4236, !noundef !777
  %i.e = icmp sgt i8 %i.d, -1, !dbg !4237
  br i1 %i.e, label %bb.c, label %bb.d, !dbg !4238

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i, !dbg !4239
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f, !dbg !4240
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48, !dbg !4241
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h), !dbg !4242
  br label %bb.d, !dbg !4243

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val, !dbg !4231
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4232

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.a
  ret void, !dbg !4244
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1S_jEEEENCNvMse_B1y_B1v_15clone_from_impl0EECs2NzvFoTxuAy_2rg(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 !dbg !4245 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0, !dbg !4290
  br i1 %.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_jEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i.i, !dbg !4291

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b, !dbg !4291

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1, !dbg !4292 ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !dbg !4293, !nonnull !777, !noundef !777 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i, !dbg !4294
  %i.d = load i8, ptr %i.c, align 1, !dbg !4295, !noundef !777
  %i.e = icmp sgt i8 %i.d, -1, !dbg !4296
  br i1 %i.e, label %bb.c, label %bb.d, !dbg !4297

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i, !dbg !4298
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f, !dbg !4299
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48, !dbg !4300
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h), !dbg !4301
  br label %bb.d, !dbg !4302

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val, !dbg !4290
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_jEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4291

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_jEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.a
  ret void, !dbg !4303
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1j_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 !dbg !4304 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4361), !dbg !4368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4362), !dbg !4369
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4370
  %i.b = load i64, ptr %i.a, align 8, !dbg !4370, !alias.scope !4363, !noundef !777 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !4370
  br i1 %i.c, label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4371

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4364), !dbg !4372
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4373
  %i.e = load i64, ptr %i.d, align 8, !dbg !4373, !alias.scope !4365, !noundef !777 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !4373
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg.exit.i.i, label %bb.c, !dbg !4373

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !dbg !4374, !alias.scope !4365, !nonnull !777, !noundef !777 ; 3 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !dbg !4375, !noalias !4366
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1), !dbg !4376
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4377
  %i.j = bitcast <16 x i1> %i.h to i16, !dbg !4378
  br label %bb.d, !dbg !4379

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.c
  %.sroa.05.016.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i ]
  %.not11.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i, 0, !dbg !4380
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !4381

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ], !dbg !4382 ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !dbg !4383, !noalias !4367
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i.i, splat (i8 -1), !dbg !4384
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768, !dbg !4385 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !4386 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.m to i16, !dbg !4387 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0, !dbg !4380
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !4381

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i ], !dbg !4388
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i ], !dbg !4388 ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ], !dbg !4387 ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i, -1, !dbg !4389
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true), !dbg !4390
  %i.r = zext nneg i16 %i.q to i64, !dbg !4391
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i, !dbg !4392
  %i.t = sub nsw i64 0, %i.r, !dbg !4393
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.t, !dbg !4394
  %i.v = add i64 %.sroa.107.013.i.i.i, -1, !dbg !4395 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48, !dbg !4396
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w), !dbg !4397, !noalias !4365
  %i.x = icmp eq i64 %i.v, 0, !dbg !4379
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg.exit.i.i, label %bb.d, !dbg !4379

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.b
  %i.y = mul i64 %i.b, 48, !dbg !4398             ; 2 uses
  %i.z = add i64 %i.y, 48, !dbg !4398             ; 2 uses
  %i.aa = add i64 %i.b, 17, !dbg !4399
  %i.ab = add i64 %i.aa, %i.z, !dbg !4400         ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z, !dbg !4400
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac), !dbg !4401
  tail call void @llvm.assume(i1 %i.ad), !dbg !4401
  %i.ae = icmp eq i64 %i.ab, 0, !dbg !4402
  br i1 %i.ae, label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !4402

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg.exit.i.i
  %i.af = load ptr, ptr %0, align 8, !dbg !4403, !alias.scope !4363, !nonnull !777, !noundef !777
  %i.ag = sub i64 -48, %i.y, !dbg !4404
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag, !dbg !4405
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !dbg !4406, !noalias !4363
  br label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, !dbg !4407

_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg.exit.i.i, %bb.e
  ret void, !dbg !4368
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1j_jEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 !dbg !4408 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4465), !dbg !4472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4466), !dbg !4473
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4474
  %i.b = load i64, ptr %i.a, align 8, !dbg !4474, !alias.scope !4467, !noundef !777 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !4474
  br i1 %i.c, label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_jEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4475

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4468), !dbg !4476
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4477
  %i.e = load i64, ptr %i.d, align 8, !dbg !4477, !alias.scope !4469, !noundef !777 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !4477
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECs2NzvFoTxuAy_2rg.exit.i.i, label %bb.c, !dbg !4477

end_hunk_0
begin_hunk_1_@llvm.umin.i64
!3925 = distinct !DILocation(line: 848, column: 1, scope: !364, inlinedAt: !3920)
!3926 = distinct !DILocation(line: 848, column: 1, scope: !368, inlinedAt: !3925)
!3927 = distinct !DILocation(line: 2927, column: 32, scope: !367, inlinedAt: !3926)
!3928 = distinct !DILocation(line: 3258, column: 26, scope: !366, inlinedAt: !3927)
!3929 = distinct !DILocation(line: 69, column: 9, scope: !367, inlinedAt: !3926)
!3930 = distinct !DISubprogram(name: "drop_glue<core::cell::UnsafeCell<core::option::Option<core::result::Result<core::result::Result<(), core::io::error::Error>, alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB1n_uNtNtNtB4_2io5error5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs2NzvFoTxuAy_2rg", scope: !780, file: !880, line: 848, type: !778, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!3931 = distinct !DILocation(line: 848, column: 1, scope: !3904, inlinedAt: !3905)
!3932 = distinct !DILocation(line: 848, column: 1, scope: !3904, inlinedAt: !3905)
!3933 = !{!3903}
!3934 = !{!3907}
!3935 = !{!3907, !3903}
!3936 = !{!3912, !3910, !3907, !3903}
!3937 = !{!3919}
!3938 = !{!3919, !3903}
!3939 = !{!3924, !3922, !3919, !3903}
!3940 = !DILocation(line: 848, column: 1, scope: !3901)
!3941 = !DILocation(line: 848, column: 1, scope: !3904, inlinedAt: !3905)
!3942 = !DILocation(line: 848, column: 1, scope: !364, inlinedAt: !3908)
!3943 = !DILocation(line: 4056, column: 24, scope: !365, inlinedAt: !3916)
!3944 = !DILocation(line: 2927, column: 12, scope: !367, inlinedAt: !3914)
!3945 = !DILocation(line: 4500, column: 24, scope: !100, inlinedAt: !3917)
!3946 = !DILocation(line: 2970, column: 18, scope: !367, inlinedAt: !3914)
!3947 = !DILocation(line: 848, column: 1, scope: !364, inlinedAt: !3920)
!3948 = !DILocation(line: 4056, column: 24, scope: !365, inlinedAt: !3928)
!3949 = !DILocation(line: 2927, column: 12, scope: !367, inlinedAt: !3926)
!3950 = !DILocation(line: 4500, column: 24, scope: !100, inlinedAt: !3929)
!3951 = !DILocation(line: 2970, column: 18, scope: !367, inlinedAt: !3926)
!3952 = !DILocation(line: 848, column: 1, scope: !3930, inlinedAt: !3931)
!3953 = !DILocation(line: 848, column: 1, scope: !3930, inlinedAt: !3932)
!3954 = distinct !DILocation(line: 848, column: 1, scope: !369)
!3955 = distinct !DILocation(line: 1990, column: 26, scope: !373, inlinedAt: !3954)
!3956 = distinct !DILocation(line: 261, column: 43, scope: !371, inlinedAt: !3955)
!3957 = distinct !DILocation(line: 261, column: 70, scope: !371, inlinedAt: !3955)
!3958 = distinct !DILocation(line: 159, column: 30, scope: !376, inlinedAt: !3957)
!3959 = distinct !DILocation(line: 1992, column: 24, scope: !374, inlinedAt: !3954)
!3960 = distinct !DILocation(line: 554, column: 23, scope: !183, inlinedAt: !3959)
!3961 = distinct !DILocation(line: 436, column: 9, scope: !182, inlinedAt: !3960)
!3962 = distinct !DILocation(line: 321, column: 22, scope: !181, inlinedAt: !3961)
!3963 = distinct !DILocation(line: 848, column: 1, scope: !369)
!3964 = distinct !DILocation(line: 1990, column: 26, scope: !373, inlinedAt: !3963)
!3965 = distinct !DILocation(line: 261, column: 43, scope: !371, inlinedAt: !3964)
!3966 = distinct !DILocation(line: 261, column: 70, scope: !371, inlinedAt: !3964)
!3967 = distinct !DILocation(line: 159, column: 30, scope: !376, inlinedAt: !3966)
!3968 = distinct !DILocation(line: 1992, column: 24, scope: !374, inlinedAt: !3963)
!3969 = distinct !DILocation(line: 554, column: 23, scope: !183, inlinedAt: !3968)
!3970 = distinct !DILocation(line: 436, column: 9, scope: !182, inlinedAt: !3969)
!3971 = distinct !DILocation(line: 321, column: 22, scope: !181, inlinedAt: !3970)
!3972 = !DILocation(line: 848, column: 1, scope: !369)
!3973 = !DILocation(line: 468, column: 14, scope: !370, inlinedAt: !3956)
!3974 = !DILocation(line: 1991, column: 16, scope: !374, inlinedAt: !3954)
!3975 = !DILocation(line: 642, column: 14, scope: !375, inlinedAt: !3958)
!3976 = !DILocation(line: 175, column: 14, scope: !187, inlinedAt: !3962)
!3977 = !DILocation(line: 1991, column: 13, scope: !374, inlinedAt: !3954)
!3978 = !DILocation(line: 468, column: 14, scope: !370, inlinedAt: !3965)
!3979 = !DILocation(line: 1991, column: 16, scope: !374, inlinedAt: !3963)
!3980 = !DILocation(line: 642, column: 14, scope: !375, inlinedAt: !3967)
!3981 = !DILocation(line: 175, column: 14, scope: !187, inlinedAt: !3971)
!3982 = !DILocation(line: 1991, column: 13, scope: !374, inlinedAt: !3963)
!3983 = distinct !DILocation(line: 848, column: 1, scope: !377)
!3984 = distinct !DILocation(line: 1992, column: 24, scope: !380, inlinedAt: !3983)
!3985 = distinct !DILocation(line: 554, column: 23, scope: !183, inlinedAt: !3984)
!3986 = distinct !DILocation(line: 436, column: 9, scope: !182, inlinedAt: !3985)
!3987 = distinct !DILocation(line: 321, column: 22, scope: !181, inlinedAt: !3986)
!3988 = distinct !DILocation(line: 848, column: 1, scope: !377)
!3989 = distinct !DILocation(line: 1992, column: 24, scope: !380, inlinedAt: !3988)
!3990 = distinct !DILocation(line: 554, column: 23, scope: !183, inlinedAt: !3989)
!3991 = distinct !DILocation(line: 436, column: 9, scope: !182, inlinedAt: !3990)
!3992 = distinct !DILocation(line: 321, column: 22, scope: !181, inlinedAt: !3991)
!3993 = !DILocation(line: 848, column: 1, scope: !377)
!3994 = !DILocation(line: 175, column: 14, scope: !187, inlinedAt: !3987)
!3995 = !DILocation(line: 175, column: 14, scope: !187, inlinedAt: !3992)
!3996 = distinct !DISubprogram(name: "drop_glue<alloc::boxed::Box<regex_syntax::hir::Hir, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECs2NzvFoTxuAy_2rg", scope: !780, file: !880, line: 848, type: !778, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!3997 = distinct !DILocation(line: 848, column: 1, scope: !3996)
!3998 = distinct !{!3998, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECs2NzvFoTxuAy_2rg"}
!3999 = distinct !{!3999, !3998, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECs2NzvFoTxuAy_2rg: argument 0"}
!4000 = distinct !DILocation(line: 848, column: 1, scope: !274, inlinedAt: !3997)
!4001 = distinct !DILocation(line: 848, column: 1, scope: !276, inlinedAt: !4000)
!4002 = distinct !DILocation(line: 848, column: 1, scope: !277, inlinedAt: !4001)
!4003 = distinct !DILocation(line: 1992, column: 24, scope: !280, inlinedAt: !4002)
!4004 = distinct !DILocation(line: 554, column: 23, scope: !183, inlinedAt: !4003)
!4005 = distinct !DILocation(line: 436, column: 9, scope: !182, inlinedAt: !4004)
!4006 = distinct !DILocation(line: 321, column: 22, scope: !181, inlinedAt: !4005)
!4007 = distinct !DISubprogram(name: "drop<regex_syntax::hir::Hir, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg", scope: !1016, file: !1014, line: 1984, type: !828, scopeLine: 1984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4008 = distinct !DILexicalBlock(scope: !4007, file: !1014, line: 1987, column: 9)
!4009 = distinct !DILexicalBlock(scope: !4008, file: !1014, line: 1990, column: 13)
!4010 = distinct !DILocation(line: 848, column: 1, scope: !3996)
!4011 = distinct !DILocation(line: 1992, column: 24, scope: !4009, inlinedAt: !4010)
!4012 = distinct !DILocation(line: 554, column: 23, scope: !183, inlinedAt: !4011)
!4013 = distinct !DILocation(line: 436, column: 9, scope: !182, inlinedAt: !4012)
!4014 = distinct !DILocation(line: 321, column: 22, scope: !181, inlinedAt: !4013)
!4015 = distinct !DILocation(line: 848, column: 1, scope: !274, inlinedAt: !3997)
!4016 = distinct !DILocation(line: 848, column: 1, scope: !276, inlinedAt: !4015)
!4017 = distinct !DILocation(line: 848, column: 1, scope: !277, inlinedAt: !4016)
!4018 = distinct !DILocation(line: 1992, column: 24, scope: !280, inlinedAt: !4017)
!4019 = distinct !DILocation(line: 554, column: 23, scope: !183, inlinedAt: !4018)
!4020 = distinct !DILocation(line: 436, column: 9, scope: !182, inlinedAt: !4019)
!4021 = distinct !DILocation(line: 321, column: 22, scope: !181, inlinedAt: !4020)
!4022 = distinct !DILocation(line: 848, column: 1, scope: !3996)
!4023 = distinct !DILocation(line: 1992, column: 24, scope: !4009, inlinedAt: !4022)
!4024 = distinct !DILocation(line: 554, column: 23, scope: !183, inlinedAt: !4023)
!4025 = distinct !DILocation(line: 436, column: 9, scope: !182, inlinedAt: !4024)
!4026 = distinct !DILocation(line: 321, column: 22, scope: !181, inlinedAt: !4025)
!4027 = !{!3999}
!4028 = !DILocation(line: 848, column: 1, scope: !3996)
!4029 = !DILocation(line: 848, column: 1, scope: !274, inlinedAt: !3997)
!4030 = !DILocation(line: 175, column: 14, scope: !187, inlinedAt: !4006)
!4031 = !DILocation(line: 175, column: 14, scope: !187, inlinedAt: !4014)
!4032 = !DILocation(line: 175, column: 14, scope: !187, inlinedAt: !4021)
!4033 = !DILocation(line: 175, column: 14, scope: !187, inlinedAt: !4026)
!4034 = distinct !{!4034, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg"}
!4035 = distinct !{!4035, !4034, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg: argument 0"}
!4036 = distinct !{!4036, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg"}
!4037 = distinct !{!4037, !4036, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg: argument 0"}
!4038 = distinct !DILocation(line: 848, column: 1, scope: !381)
!4039 = distinct !{!4039, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerEECs2NzvFoTxuAy_2rg"}
!4040 = distinct !{!4040, !4039, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerEECs2NzvFoTxuAy_2rg: argument 0"}
!4041 = distinct !DILocation(line: 848, column: 1, scope: !382, inlinedAt: !4038)
!4042 = distinct !{!4042, i1 false, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg"}
!4043 = distinct !{!4043, !4042, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg: argument 0"}
!4044 = distinct !DILocation(line: 848, column: 1, scope: !383, inlinedAt: !4041)
!4045 = distinct !DILocation(line: 848, column: 1, scope: !384, inlinedAt: !4044)
!4046 = distinct !DILocation(line: 2927, column: 17, scope: !387, inlinedAt: !4045)
!4047 = distinct !DILocation(line: 2192, column: 27, scope: !386, inlinedAt: !4046)
!4048 = distinct !DILocation(line: 2927, column: 32, scope: !387, inlinedAt: !4045)
!4049 = distinct !DILocation(line: 3258, column: 26, scope: !389, inlinedAt: !4048)
!4050 = distinct !DILocation(line: 69, column: 9, scope: !387, inlinedAt: !4045)
!4051 = !{!4035}
!4052 = !{!4037}
!4053 = !{!4040}
!4054 = !{!4043}
!4055 = !{!4043, !4040, !4037, !4035}
!4056 = !DILocation(line: 848, column: 1, scope: !381)
!4057 = !DILocation(line: 848, column: 1, scope: !382, inlinedAt: !4038)
!4058 = !DILocation(line: 848, column: 1, scope: !383, inlinedAt: !4041)
!4059 = !DILocation(line: 848, column: 1, scope: !384, inlinedAt: !4044)
!4060 = !DILocation(line: 454, column: 20, scope: !385, inlinedAt: !4047)
!4061 = !DILocation(line: 4056, column: 24, scope: !388, inlinedAt: !4049)
!4062 = !DILocation(line: 2927, column: 12, scope: !387, inlinedAt: !4045)
!4063 = !DILocation(line: 4500, column: 24, scope: !100, inlinedAt: !4050)
!4064 = !DILocation(line: 2970, column: 18, scope: !387, inlinedAt: !4045)
!4065 = distinct !{!4065, i1 false, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg"}
!4066 = distinct !{!4066, !4065, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg: argument 0"}
!4067 = distinct !DILocation(line: 848, column: 1, scope: !165)
!4068 = distinct !DILocation(line: 70, column: 9, scope: !166, inlinedAt: !4067)
!4069 = distinct !DILocation(line: 2705, column: 23, scope: !168, inlinedAt: !4068)
!4070 = distinct !DILocation(line: 2710, column: 32, scope: !168, inlinedAt: !4068)
!4071 = distinct !DILocation(line: 3113, column: 38, scope: !171, inlinedAt: !4070)
!4072 = distinct !DILocation(line: 3145, column: 65, scope: !170, inlinedAt: !4071)
!4073 = distinct !DILocation(line: 3145, column: 39, scope: !170, inlinedAt: !4071)
!4074 = distinct !DILocation(line: 222, column: 18, scope: !175, inlinedAt: !4073)
!4075 = distinct !DILocation(line: 1360, column: 31, scope: !173, inlinedAt: !4074)
!4076 = distinct !DILocation(line: 222, column: 40, scope: !175, inlinedAt: !4073)
!4077 = distinct !DILocation(line: 968, column: 16, scope: !176, inlinedAt: !4076)
!4078 = distinct !DILocation(line: 223, column: 31, scope: !178, inlinedAt: !4073)
!4079 = distinct !DILocation(line: 968, column: 16, scope: !980, inlinedAt: !4078)
!4080 = distinct !DILocation(line: 3146, column: 29, scope: !180, inlinedAt: !4071)
!4081 = distinct !DILocation(line: 3114, column: 19, scope: !184, inlinedAt: !4070)
!4082 = distinct !DILocation(line: 554, column: 23, scope: !183, inlinedAt: !4081)
!4083 = distinct !DILocation(line: 436, column: 9, scope: !182, inlinedAt: !4082)
!4084 = distinct !DILocation(line: 3150, column: 64, scope: !186, inlinedAt: !4071)
!4085 = distinct !DILocation(line: 321, column: 22, scope: !181, inlinedAt: !4083)
!4086 = !{!4066}
!4087 = !DILocation(line: 848, column: 1, scope: !165)
!4088 = !DILocation(line: 70, column: 23, scope: !166, inlinedAt: !4067)
!4089 = !DILocation(line: 70, column: 9, scope: !166, inlinedAt: !4067)
!4090 = !DILocation(line: 2656, column: 9, scope: !167, inlinedAt: !4069)
!4091 = !DILocation(line: 2705, column: 17, scope: !168, inlinedAt: !4068)
!4092 = !DILocation(line: 2635, column: 9, scope: !169, inlinedAt: !4072)
!4093 = !DILocation(line: 3242, column: 26, scope: !172, inlinedAt: !4075)
!4094 = !DILocation(line: 222, column: 52, scope: !175, inlinedAt: !4073)
!4095 = !DILocation(line: 968, column: 37, scope: !176, inlinedAt: !4076)
!4096 = !DILocation(line: 483, column: 8, scope: !177, inlinedAt: !4077)
!4097 = !DILocation(line: 222, column: 71, scope: !175, inlinedAt: !4073)
!4098 = !DILocation(line: 222, column: 13, scope: !175, inlinedAt: !4073)
!4099 = !DILocation(line: 223, column: 43, scope: !178, inlinedAt: !4073)
!4100 = !DILocation(line: 968, column: 37, scope: !176, inlinedAt: !4078)
!4101 = !DILocation(line: 483, column: 8, scope: !177, inlinedAt: !4079)
!4102 = !DILocation(line: 1129, column: 15, scope: !179, inlinedAt: !4080)
!4103 = !DILocation(line: 1129, column: 9, scope: !179, inlinedAt: !4080)
!4104 = !DILocation(line: 312, column: 12, scope: !181, inlinedAt: !4083)
!4105 = !DILocation(line: 1055, column: 47, scope: !185, inlinedAt: !4084)
!4106 = !DILocation(line: 1055, column: 22, scope: !185, inlinedAt: !4084)
!4107 = !DILocation(line: 175, column: 14, scope: !187, inlinedAt: !4085)
!4108 = !DILocation(line: 312, column: 9, scope: !181, inlinedAt: !4083)
!4109 = distinct !DISubprogram(name: "drop_glue<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs2NzvFoTxuAy_2rg", scope: !780, file: !880, line: 848, type: !778, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4110 = distinct !{!4110, i1 false, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg"}
!4111 = distinct !{!4111, !4110, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg: argument 0"}
!4112 = distinct !DISubprogram(name: "drop<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>", linkageName: "_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg", scope: !976, file: !974, line: 69, type: !778, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4113 = distinct !DILocation(line: 848, column: 1, scope: !4109)
!4114 = distinct !DISubprogram(name: "num_buckets", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner11num_buckets", scope: !950, file: !946, line: 2634, type: !778, scopeLine: 2634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4115 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0Cs2NzvFoTxuAy_2rg", scope: !4156, file: !946, line: 2998, type: !828, scopeLine: 2998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4116 = distinct !DILocation(line: 70, column: 9, scope: !4112, inlinedAt: !4113)
!4117 = distinct !DILocation(line: 2999, column: 31, scope: !4115, inlinedAt: !4116)
!4118 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !931, file: !927, line: 2192, type: !778, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4119 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs2NzvFoTxuAy_2rg", scope: !935, file: !932, line: 1099, type: !778, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4120 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !936, file: !932, line: 1184, type: !778, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4121 = distinct !DILexicalBlock(scope: !4115, file: !946, line: 2999, column: 13)
!4122 = distinct !DILocation(line: 2999, column: 22, scope: !4157, inlinedAt: !4116)
!4123 = distinct !DILocation(line: 1185, column: 14, scope: !4120, inlinedAt: !4122)
!4124 = distinct !DILocation(line: 1100, column: 12, scope: !4119, inlinedAt: !4123)
!4125 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !950, file: !946, line: 2621, type: !778, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4126 = distinct !DILexicalBlock(scope: !4121, file: !946, line: 2999, column: 13)
!4127 = distinct !DILocation(line: 3004, column: 31, scope: !4126, inlinedAt: !4116)
!4128 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !939, file: !937, line: 1031, type: !778, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4129 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !940, file: !932, line: 263, type: !778, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4130 = distinct !DILexicalBlock(scope: !4119, file: !932, line: 1101, column: 13)
!4131 = distinct !DILocation(line: 1103, column: 35, scope: !4130, inlinedAt: !4123)
!4132 = distinct !DILocation(line: 265, column: 28, scope: !4129, inlinedAt: !4131)
!4133 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCs2NzvFoTxuAy_2rg", scope: !782, file: !779, line: 937, type: !778, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4134 = distinct !DILocation(line: 2624, column: 37, scope: !4125, inlinedAt: !4127)
!4135 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs5_NtNtCsjqcU1oJFKXj_9hashbrown7control3tagNtB5_3TagNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq", scope: !1057, file: !996, line: 4, type: !778, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4136 = distinct !DILocation(line: 3004, column: 24, scope: !4126, inlinedAt: !4116)
!4137 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj12wrapping_sub", scope: !939, file: !937, line: 2718, type: !778, scopeLine: 2718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4138 = distinct !DISubprogram(name: "set_ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner8set_ctrl", scope: !950, file: !946, line: 2564, type: !778, scopeLine: 2564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4139 = distinct !DILocation(line: 3005, column: 31, scope: !4126, inlinedAt: !4116)
!4140 = distinct !DILocation(line: 2589, column: 30, scope: !4138, inlinedAt: !4139)
!4141 = distinct !DILexicalBlock(scope: !4138, file: !946, line: 2589, column: 9)
!4142 = distinct !DILocation(line: 2594, column: 19, scope: !4141, inlinedAt: !4139)
!4143 = distinct !DILocation(line: 2624, column: 37, scope: !4158, inlinedAt: !4142)
!4144 = distinct !DISubprogram(name: "data_end<u8>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner8data_endhECs2NzvFoTxuAy_2rg", scope: !950, file: !946, line: 2438, type: !778, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4145 = distinct !DISubprogram(name: "bucket_ptr", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10bucket_ptr", scope: !950, file: !946, line: 2393, type: !778, scopeLine: 2393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4146 = distinct !DILexicalBlock(scope: !4126, file: !946, line: 3006, column: 50)
!4147 = distinct !DILocation(line: 3007, column: 40, scope: !4146, inlinedAt: !4116)
!4148 = distinct !DILocation(line: 2397, column: 38, scope: !4145, inlinedAt: !4147)
!4149 = distinct !DILexicalBlock(scope: !4145, file: !946, line: 2397, column: 13)
!4150 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3subCs2NzvFoTxuAy_2rg", scope: !782, file: !779, line: 1016, type: !778, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4151 = distinct !DILocation(line: 2398, column: 18, scope: !4149, inlinedAt: !4147)
!4152 = distinct !{null, null}
!4153 = distinct !DISubprogram(name: "bucket_mask_to_capacity", linkageName: "_RNvNtCsjqcU1oJFKXj_9hashbrown3raw23bucket_mask_to_capacity", scope: !948, file: !946, line: 182, type: !778, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4154 = distinct !DILocation(line: 3013, column: 33, scope: !4115, inlinedAt: !4116)
!4155 = !{!4111}
!4156 = !DINamespace(name: "rehash_in_place", scope: !977)
!4157 = !DILexicalBlockFile(scope: !4121, file: !946, discriminator: 2)
!4158 = !DILexicalBlockFile(scope: !4125, file: !946, discriminator: 4)
!4159 = !DILocation(line: 848, column: 1, scope: !4109)
!4160 = !DILocation(line: 70, column: 9, scope: !4112, inlinedAt: !4113)
!4161 = !DILocation(line: 2635, column: 9, scope: !4114, inlinedAt: !4117)
!4162 = !DILocation(line: 2192, column: 50, scope: !4118, inlinedAt: !4124)
!4163 = !DILocation(line: 1100, column: 12, scope: !4119, inlinedAt: !4123)
!4164 = !DILocation(line: 2624, column: 18, scope: !4125, inlinedAt: !4127)
!4165 = !DILocation(line: 3004, column: 24, scope: !4126, inlinedAt: !4116)
!4166 = !DILocation(line: 1043, column: 17, scope: !4128, inlinedAt: !4132)
!4167 = !DILocation(line: 971, column: 18, scope: !4133, inlinedAt: !4134)
!4168 = !DILocation(line: 4, column: 23, scope: !4135, inlinedAt: !4136)
!4169 = !DILocation(line: 2719, column: 13, scope: !4137, inlinedAt: !4140)
!4170 = !DILocation(line: 2589, column: 60, scope: !4138, inlinedAt: !4139)
!4171 = !DILocation(line: 2589, column: 22, scope: !4138, inlinedAt: !4139)
!4172 = !DILocation(line: 2593, column: 13, scope: !4141, inlinedAt: !4139)
!4173 = !DILocation(line: 2624, column: 18, scope: !4125, inlinedAt: !4142)
!4174 = !DILocation(line: 971, column: 18, scope: !4133, inlinedAt: !4143)
!4175 = !DILocation(line: 2594, column: 13, scope: !4141, inlinedAt: !4139)
!4176 = !DILocation(line: 3009, column: 25, scope: !4126, inlinedAt: !4116)
!4177 = !DILocation(line: 3004, column: 21, scope: !4126, inlinedAt: !4116)
!4178 = !DILocation(line: 2439, column: 9, scope: !4144, inlinedAt: !4148)
!4179 = !DILocation(line: 2398, column: 22, scope: !4149, inlinedAt: !4147)
!4180 = !DILocation(line: 1055, column: 22, scope: !4150, inlinedAt: !4151)
!4181 = !DILocation(line: 3007, column: 29, scope: !4146, inlinedAt: !4116)
!4182 = !DILocation(line: 3013, column: 57, scope: !4115, inlinedAt: !4116)
!4183 = !DILocation(line: 183, column: 8, scope: !4153, inlinedAt: !4154)
!4184 = !DILocation(line: 3013, column: 78, scope: !4115, inlinedAt: !4116)
!4185 = !DILocation(line: 3013, column: 13, scope: !4115, inlinedAt: !4116)
!4186 = distinct !DISubprogram(name: "drop_glue<hashbrown::scopeguard::ScopeGuard<(usize, &mut hashbrown::raw::RawTable<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>), alloc::alloc::Global>), hashbrown::raw::{impl#16}::clone_from_impl::{closure_env#0}<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>), alloc::alloc::Global>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1S_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEENCNvMse_B1y_B1v_15clone_from_impl0EECs2NzvFoTxuAy_2rg", scope: !780, file: !880, line: 848, type: !828, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4187 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !931, file: !927, line: 2192, type: !778, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4188 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs2NzvFoTxuAy_2rg", scope: !935, file: !932, line: 1099, type: !778, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4189 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !936, file: !932, line: 1184, type: !778, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4190 = distinct !DISubprogram(name: "{closure#0}<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>), alloc::alloc::Global>", linkageName: "_RNCNvMse_NtCsjqcU1oJFKXj_9hashbrown3rawINtB7_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBS_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE15clone_from_impl0Cs2NzvFoTxuAy_2rg", scope: !1059, file: !946, line: 3445, type: !828, scopeLine: 3445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4191 = distinct !DILexicalBlock(scope: !4190, file: !946, line: 3445, column: 65)
!4192 = distinct !DILexicalBlock(scope: !4191, file: !946, line: 3447, column: 17)
!4193 = distinct !DISubprogram(name: "drop<(usize, &mut hashbrown::raw::RawTable<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>), alloc::alloc::Global>), hashbrown::raw::{impl#16}::clone_from_impl::{closure_env#0}<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>), alloc::alloc::Global>>", linkageName: "_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg", scope: !976, file: !974, line: 69, type: !828, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4194 = distinct !DILocation(line: 848, column: 1, scope: !4186)
!4195 = distinct !DILocation(line: 70, column: 9, scope: !4193, inlinedAt: !4194)
!4196 = distinct !DILocation(line: 3447, column: 26, scope: !4230, inlinedAt: !4195)
!4197 = distinct !DILocation(line: 1185, column: 14, scope: !4189, inlinedAt: !4196)
!4198 = distinct !DILocation(line: 1100, column: 12, scope: !4188, inlinedAt: !4197)
!4199 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !939, file: !937, line: 1031, type: !778, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4200 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !940, file: !932, line: 263, type: !778, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4201 = distinct !DILexicalBlock(scope: !4188, file: !932, line: 1101, column: 13)
!4202 = distinct !DILocation(line: 1103, column: 35, scope: !4201, inlinedAt: !4197)
!4203 = distinct !DILocation(line: 265, column: 28, scope: !4200, inlinedAt: !4202)
!4204 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !950, file: !946, line: 2621, type: !778, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4205 = distinct !DISubprogram(name: "is_bucket_full", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner14is_bucket_full", scope: !950, file: !946, line: 2644, type: !778, scopeLine: 2644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4206 = distinct !DISubprogram(name: "is_bucket_full<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE14is_bucket_fullCs2NzvFoTxuAy_2rg", scope: !949, file: !946, line: 1352, type: !778, scopeLine: 1352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4207 = distinct !DILexicalBlock(scope: !4192, file: !946, line: 3447, column: 17)
!4208 = distinct !DILocation(line: 3449, column: 34, scope: !4207, inlinedAt: !4195)
!4209 = distinct !DILocation(line: 1353, column: 29, scope: !4206, inlinedAt: !4208)
!4210 = distinct !DILocation(line: 2646, column: 25, scope: !4205, inlinedAt: !4209)
!4211 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCs2NzvFoTxuAy_2rg", scope: !782, file: !779, line: 937, type: !778, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4212 = distinct !DILocation(line: 2624, column: 37, scope: !4204, inlinedAt: !4210)
!4213 = distinct !DISubprogram(name: "is_full", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control3tagNtB2_3Tag7is_full", scope: !998, file: !996, line: 16, type: !778, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4214 = distinct !DILocation(line: 2646, column: 38, scope: !4205, inlinedAt: !4209)
!4215 = distinct !DISubprogram(name: "sub<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>)>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBE_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEE3subCs2NzvFoTxuAy_2rg", scope: !782, file: !779, line: 1016, type: !778, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4216 = distinct !DISubprogram(name: "from_base_index<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>)>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBO_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE15from_base_indexCs2NzvFoTxuAy_2rg", scope: !990, file: !946, line: 302, type: !778, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4217 = distinct !DISubprogram(name: "bucket<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE6bucketCs2NzvFoTxuAy_2rg", scope: !949, file: !946, line: 738, type: !778, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4218 = distinct !DILocation(line: 3450, column: 35, scope: !4207, inlinedAt: !4195)
!4219 = distinct !DILocation(line: 765, column: 18, scope: !4217, inlinedAt: !4218)
!4220 = distinct !DILocation(line: 329, column: 36, scope: !4216, inlinedAt: !4219)
!4221 = distinct !DISubprogram(name: "as_ptr<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>)>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBO_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE6as_ptrCs2NzvFoTxuAy_2rg", scope: !990, file: !946, line: 412, type: !778, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4222 = distinct !DISubprogram(name: "drop<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>)>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBO_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE4dropCs2NzvFoTxuAy_2rg", scope: !990, file: !946, line: 485, type: !778, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4223 = distinct !DILocation(line: 3450, column: 45, scope: !4207, inlinedAt: !4195)
!4224 = distinct !DILocation(line: 487, column: 18, scope: !4222, inlinedAt: !4223)
!4225 = distinct !DILocation(line: 418, column: 40, scope: !4221, inlinedAt: !4224)
!4226 = distinct !DISubprogram(name: "drop_in_place<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>)>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr13drop_in_placeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBI_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg", scope: !780, file: !880, line: 831, type: !778, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4227 = distinct !DISubprogram(name: "drop_in_place<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>)>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBE_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEE13drop_in_placeCs2NzvFoTxuAy_2rg", scope: !782, file: !779, line: 1381, type: !778, scopeLine: 1381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4228 = distinct !DILocation(line: 487, column: 27, scope: !4222, inlinedAt: !4223)
!4229 = distinct !DILocation(line: 1386, column: 18, scope: !4227, inlinedAt: !4228)
!4230 = !DILexicalBlockFile(scope: !4192, file: !946, discriminator: 2)
!4231 = !DILocation(line: 2192, column: 50, scope: !4187, inlinedAt: !4198)
!4232 = !DILocation(line: 1100, column: 12, scope: !4188, inlinedAt: !4197)
!4233 = !DILocation(line: 1043, column: 17, scope: !4199, inlinedAt: !4203)
!4234 = !DILocation(line: 2624, column: 18, scope: !4204, inlinedAt: !4210)
!4235 = !DILocation(line: 971, column: 18, scope: !4211, inlinedAt: !4212)
!4236 = !DILocation(line: 2646, column: 18, scope: !4205, inlinedAt: !4209)
!4237 = !DILocation(line: 17, column: 9, scope: !4213, inlinedAt: !4214)
!4238 = !DILocation(line: 3449, column: 28, scope: !4207, inlinedAt: !4195)
!4239 = !DILocation(line: 1055, column: 47, scope: !4215, inlinedAt: !4220)
!4240 = !DILocation(line: 1055, column: 22, scope: !4215, inlinedAt: !4220)
!4241 = !DILocation(line: 1055, column: 22, scope: !4215, inlinedAt: !4225)
!4242 = !DILocation(line: 843, column: 14, scope: !4226, inlinedAt: !4229)
!4243 = !DILocation(line: 3449, column: 25, scope: !4207, inlinedAt: !4195)
!4244 = !DILocation(line: 848, column: 1, scope: !4186)
!4245 = distinct !DISubprogram(name: "drop_glue<hashbrown::scopeguard::ScopeGuard<(usize, &mut hashbrown::raw::RawTable<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>), alloc::alloc::Global>), hashbrown::raw::{impl#16}::clone_from_impl::{closure_env#0}<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>), alloc::alloc::Global>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1S_jEEEENCNvMse_B1y_B1v_15clone_from_impl0EECs2NzvFoTxuAy_2rg", scope: !780, file: !880, line: 848, type: !828, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4246 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !931, file: !927, line: 2192, type: !778, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4247 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs2NzvFoTxuAy_2rg", scope: !935, file: !932, line: 1099, type: !778, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4248 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !936, file: !932, line: 1184, type: !778, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4249 = distinct !DISubprogram(name: "{closure#0}<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>), alloc::alloc::Global>", linkageName: "_RNCNvMse_NtCsjqcU1oJFKXj_9hashbrown3rawINtB7_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBS_jEEE15clone_from_impl0Cs2NzvFoTxuAy_2rg", scope: !1059, file: !946, line: 3445, type: !828, scopeLine: 3445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4250 = distinct !DILexicalBlock(scope: !4249, file: !946, line: 3445, column: 65)
!4251 = distinct !DILexicalBlock(scope: !4250, file: !946, line: 3447, column: 17)
!4252 = distinct !DISubprogram(name: "drop<(usize, &mut hashbrown::raw::RawTable<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>), alloc::alloc::Global>), hashbrown::raw::{impl#16}::clone_from_impl::{closure_env#0}<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>), alloc::alloc::Global>>", linkageName: "_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_jEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg", scope: !976, file: !974, line: 69, type: !828, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4253 = distinct !DILocation(line: 848, column: 1, scope: !4245)
!4254 = distinct !DILocation(line: 70, column: 9, scope: !4252, inlinedAt: !4253)
!4255 = distinct !DILocation(line: 3447, column: 26, scope: !4289, inlinedAt: !4254)
!4256 = distinct !DILocation(line: 1185, column: 14, scope: !4248, inlinedAt: !4255)
!4257 = distinct !DILocation(line: 1100, column: 12, scope: !4247, inlinedAt: !4256)
!4258 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !939, file: !937, line: 1031, type: !778, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4259 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !940, file: !932, line: 263, type: !778, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4260 = distinct !DILexicalBlock(scope: !4247, file: !932, line: 1101, column: 13)
!4261 = distinct !DILocation(line: 1103, column: 35, scope: !4260, inlinedAt: !4256)
!4262 = distinct !DILocation(line: 265, column: 28, scope: !4259, inlinedAt: !4261)
!4263 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !950, file: !946, line: 2621, type: !778, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4264 = distinct !DISubprogram(name: "is_bucket_full", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner14is_bucket_full", scope: !950, file: !946, line: 2644, type: !778, scopeLine: 2644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4265 = distinct !DISubprogram(name: "is_bucket_full<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_jEEE14is_bucket_fullCs2NzvFoTxuAy_2rg", scope: !949, file: !946, line: 1352, type: !778, scopeLine: 1352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4266 = distinct !DILexicalBlock(scope: !4251, file: !946, line: 3447, column: 17)
!4267 = distinct !DILocation(line: 3449, column: 34, scope: !4266, inlinedAt: !4254)
!4268 = distinct !DILocation(line: 1353, column: 29, scope: !4265, inlinedAt: !4267)
!4269 = distinct !DILocation(line: 2646, column: 25, scope: !4264, inlinedAt: !4268)
!4270 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCs2NzvFoTxuAy_2rg", scope: !782, file: !779, line: 937, type: !778, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4271 = distinct !DILocation(line: 2624, column: 37, scope: !4263, inlinedAt: !4269)
!4272 = distinct !DISubprogram(name: "is_full", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control3tagNtB2_3Tag7is_full", scope: !998, file: !996, line: 16, type: !778, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4273 = distinct !DILocation(line: 2646, column: 38, scope: !4264, inlinedAt: !4268)
!4274 = distinct !DISubprogram(name: "sub<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>)>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBE_jEE3subCs2NzvFoTxuAy_2rg", scope: !782, file: !779, line: 1016, type: !778, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4275 = distinct !DISubprogram(name: "from_base_index<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>)>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBO_jEEE15from_base_indexCs2NzvFoTxuAy_2rg", scope: !990, file: !946, line: 302, type: !778, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4276 = distinct !DISubprogram(name: "bucket<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_jEEE6bucketCs2NzvFoTxuAy_2rg", scope: !949, file: !946, line: 738, type: !778, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4277 = distinct !DILocation(line: 3450, column: 35, scope: !4266, inlinedAt: !4254)
!4278 = distinct !DILocation(line: 765, column: 18, scope: !4276, inlinedAt: !4277)
!4279 = distinct !DILocation(line: 329, column: 36, scope: !4275, inlinedAt: !4278)
!4280 = distinct !DISubprogram(name: "as_ptr<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>)>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBO_jEEE6as_ptrCs2NzvFoTxuAy_2rg", scope: !990, file: !946, line: 412, type: !778, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4281 = distinct !DISubprogram(name: "drop<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>)>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBO_jEEE4dropCs2NzvFoTxuAy_2rg", scope: !990, file: !946, line: 485, type: !778, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4282 = distinct !DILocation(line: 3450, column: 45, scope: !4266, inlinedAt: !4254)
!4283 = distinct !DILocation(line: 487, column: 18, scope: !4281, inlinedAt: !4282)
!4284 = distinct !DILocation(line: 418, column: 40, scope: !4280, inlinedAt: !4283)
!4285 = distinct !DISubprogram(name: "drop_in_place<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>)>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr13drop_in_placeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBI_jEEECs2NzvFoTxuAy_2rg", scope: !780, file: !880, line: 831, type: !778, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4286 = distinct !DISubprogram(name: "drop_in_place<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<usize, alloc::alloc::Global>)>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBE_jEE13drop_in_placeCs2NzvFoTxuAy_2rg", scope: !782, file: !779, line: 1381, type: !778, scopeLine: 1381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4287 = distinct !DILocation(line: 487, column: 27, scope: !4281, inlinedAt: !4282)
!4288 = distinct !DILocation(line: 1386, column: 18, scope: !4286, inlinedAt: !4287)
!4289 = !DILexicalBlockFile(scope: !4251, file: !946, discriminator: 2)
!4290 = !DILocation(line: 2192, column: 50, scope: !4246, inlinedAt: !4257)
!4291 = !DILocation(line: 1100, column: 12, scope: !4247, inlinedAt: !4256)
!4292 = !DILocation(line: 1043, column: 17, scope: !4258, inlinedAt: !4262)
!4293 = !DILocation(line: 2624, column: 18, scope: !4263, inlinedAt: !4269)
!4294 = !DILocation(line: 971, column: 18, scope: !4270, inlinedAt: !4271)
!4295 = !DILocation(line: 2646, column: 18, scope: !4264, inlinedAt: !4268)
!4296 = !DILocation(line: 17, column: 9, scope: !4272, inlinedAt: !4273)
!4297 = !DILocation(line: 3449, column: 28, scope: !4266, inlinedAt: !4254)
!4298 = !DILocation(line: 1055, column: 47, scope: !4274, inlinedAt: !4279)
!4299 = !DILocation(line: 1055, column: 22, scope: !4274, inlinedAt: !4279)
!4300 = !DILocation(line: 1055, column: 22, scope: !4274, inlinedAt: !4284)
!4301 = !DILocation(line: 843, column: 14, scope: !4285, inlinedAt: !4288)
!4302 = !DILocation(line: 3449, column: 25, scope: !4266, inlinedAt: !4254)
!4303 = !DILocation(line: 848, column: 1, scope: !4245)
!4304 = distinct !DISubprogram(name: "drop_glue<hashbrown::raw::RawTable<(alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>), alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1j_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEECs2NzvFoTxuAy_2rg", scope: !780, file: !880, line: 848, type: !778, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !777)
!4305 = distinct !{!4305, i1 false, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg"}
!4306 = distinct !{!4306, !4305, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg: argument 0"}
!4307 = distinct !{!4307, i1 false, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1e_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEENtNtB1i_5alloc6GlobalECs2NzvFoTxuAy_2rg"}
!4308 = distinct !{!4308, !4307, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1e_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEENtNtB1i_5alloc6GlobalECs2NzvFoTxuAy_2rg: argument 0"}
!4309 = distinct !DILocation(line: 848, column: 1, scope: !4304)
!4310 = distinct !DILocation(line: 3496, column: 18, scope: !390, inlinedAt: !4309)
!4311 = distinct !DILocation(line: 2271, column: 18, scope: !392, inlinedAt: !4310)
!4312 = distinct !{!4312, i1 false, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg"}
!4313 = distinct !{!4313, !4312, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg: argument 0"}
!4314 = distinct !DILocation(line: 2274, column: 22, scope: !392, inlinedAt: !4310)
!4315 = distinct !DILocation(line: 2217, column: 34, scope: !393, inlinedAt: !4314)
!4316 = distinct !DILocation(line: 2167, column: 53, scope: !395, inlinedAt: !4315)
!4317 = distinct !{!4317, i1 false, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBV_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE3newCs2NzvFoTxuAy_2rg"}
!4318 = distinct !{!4318, !4317, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBV_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE3newCs2NzvFoTxuAy_2rg: argument 0"}
!4319 = distinct !DILocation(line: 2170, column: 23, scope: !399, inlinedAt: !4315)
!4320 = distinct !DILocation(line: 3586, column: 17, scope: !398, inlinedAt: !4319)
!4321 = distinct !DILocation(line: 3586, column: 50, scope: !398, inlinedAt: !4319)
!4322 = distinct !DILocation(line: 115, column: 23, scope: !402, inlinedAt: !4321)
!4323 = distinct !DILocation(line: 108, column: 21, scope: !401, inlinedAt: !4322)
!4324 = distinct !DILocation(line: 3587, column: 22, scope: !398, inlinedAt: !4319)
!4325 = distinct !DILocation(line: 2217, column: 29, scope: !1063, inlinedAt: !4314)
!4326 = distinct !DILocation(line: 3859, column: 23, scope: !405, inlinedAt: !4325)
!4327 = distinct !DILocation(line: 3649, column: 53, scope: !411, inlinedAt: !4326)
!4328 = distinct !DILocation(line: 103, column: 26, scope: !409, inlinedAt: !4327)
!4329 = distinct !{!4329, i1 false, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg"}
!4330 = distinct !{!4330, !4329, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg: argument 0"}
!4331 = distinct !DILocation(line: 3663, column: 38, scope: !410, inlinedAt: !4326)
!4332 = distinct !DILocation(line: 3664, column: 22, scope: !410, inlinedAt: !4326)
!4333 = distinct !DILocation(line: 115, column: 23, scope: !415, inlinedAt: !4332)
!4334 = distinct !DILocation(line: 108, column: 21, scope: !414, inlinedAt: !4333)
!4335 = distinct !DILocation(line: 3666, column: 39, scope: !410, inlinedAt: !4326)
!4336 = distinct !DILocation(line: 466, column: 40, scope: !1064, inlinedAt: !4335)
!4337 = distinct !DILocation(line: 3667, column: 49, scope: !410, inlinedAt: !4326)
!4338 = distinct !DILocation(line: 41, column: 18, scope: !408, inlinedAt: !4328)
!4339 = distinct !DILocation(line: 70, column: 21, scope: !421, inlinedAt: !4338)
!4340 = distinct !DILocation(line: 628, column: 51, scope: !420, inlinedAt: !4339)
!4341 = distinct !DILocation(line: 104, column: 25, scope: !423, inlinedAt: !4327)
!4342 = distinct !DILocation(line: 3650, column: 48, scope: !411, inlinedAt: !4326)
!4343 = distinct !DILocation(line: 466, column: 40, scope: !417, inlinedAt: !4342)
!4344 = distinct !DILocation(line: 2220, column: 26, scope: !428, inlinedAt: !4314)
!4345 = distinct !DILocation(line: 487, column: 18, scope: !427, inlinedAt: !4344)
!4346 = distinct !DILocation(line: 418, column: 40, scope: !426, inlinedAt: !4345)
!4347 = distinct !DILocation(line: 487, column: 27, scope: !427, inlinedAt: !4344)
!4348 = distinct !DILocation(line: 1386, column: 18, scope: !430, inlinedAt: !4347)
!4349 = distinct !DILocation(line: 2280, column: 22, scope: !392, inlinedAt: !4310)
!4350 = distinct !DILocation(line: 3113, column: 38, scope: !432, inlinedAt: !4349)
!4351 = distinct !DILocation(line: 3145, column: 39, scope: !431, inlinedAt: !4350)
!4352 = distinct !DILocation(line: 222, column: 18, scope: !175, inlinedAt: !4351)
!4353 = distinct !DILocation(line: 1360, column: 31, scope: !173, inlinedAt: !4352)
!4354 = distinct !DILocation(line: 223, column: 31, scope: !178, inlinedAt: !4351)
!4355 = distinct !DILocation(line: 968, column: 16, scope: !980, inlinedAt: !4354)
!4356 = distinct !DILocation(line: 3114, column: 19, scope: !433, inlinedAt: !4349)
!4357 = distinct !DILocation(line: 554, column: 23, scope: !183, inlinedAt: !4356)
!4358 = distinct !DILocation(line: 436, column: 9, scope: !182, inlinedAt: !4357)
!4359 = distinct !DILocation(line: 3150, column: 64, scope: !434, inlinedAt: !4350)
!4360 = distinct !DILocation(line: 321, column: 22, scope: !181, inlinedAt: !4358)
!4361 = !{!4306}
!4362 = !{!4308}
!4363 = !{!4308, !4306}
!4364 = !{!4313}
!4365 = !{!4313, !4308, !4306}
!4366 = !{!4318, !4313, !4308, !4306}
!4367 = !{!4330, !4313, !4308, !4306}
!4368 = !DILocation(line: 848, column: 1, scope: !4304)
!4369 = !DILocation(line: 3496, column: 18, scope: !390, inlinedAt: !4309)
!4370 = !DILocation(line: 2656, column: 9, scope: !391, inlinedAt: !4311)
!4371 = !DILocation(line: 2271, column: 13, scope: !392, inlinedAt: !4310)
!4372 = !DILocation(line: 2274, column: 22, scope: !392, inlinedAt: !4310)
!4373 = !DILocation(line: 2212, column: 29, scope: !393, inlinedAt: !4314)
!4374 = !DILocation(line: 2439, column: 9, scope: !394, inlinedAt: !4316)
!4375 = !DILocation(line: 57, column: 24, scope: !396, inlinedAt: !4320)
!4376 = !DILocation(line: 1570, column: 9, scope: !139, inlinedAt: !4323)
!4377 = !DILocation(line: 872, column: 18, scope: !403, inlinedAt: !4324)
end_hunk_1
