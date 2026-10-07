Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtBK_3ffi6os_str8OsStringEINtNtB2k_6cloned6ClonedINtNtNtB4_5slice4iter4IterB3F_EEEEs0_0INtNtB4_6result6ResultuINtNtB2Y_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0ECsl8pJiQOn4hA_9coreutils:bb.a
  br i1 %i.f, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook10SpawnHooksECsl8pJiQOn4hA_9coreutils.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook10SpawnHooksECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook10SpawnHooksECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21749)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21750, !nonnull !12, !noundef !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !21750, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21751)
  %i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %i.i, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook10SpawnHooksECsl8pJiQOn4hA_9coreutils.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.k, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook10SpawnHooksECsl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1   ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !21751, !noalias !21749 ; 4 uses
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !21751, !noalias !21749, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.m = load ptr, ptr %.val3.i.i.i.i, align 8, !invariant.load !12, !noalias !21752 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void %i.m(ptr noundef nonnull %.val.i.i.i.i) #51, !noalias !21752, !inline_history !21741
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !19, !invariant.load !12, !noalias !21752 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !25, !invariant.load !12, !noalias !21752
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #45, !noalias !21752
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.e
  %i.s = icmp eq i64 %i.k, %.val1.i.i
  br i1 %i.s, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook10SpawnHooksECsl8pJiQOn4hA_9coreutils.exit.i
  %.val2.i.i = load i64, ptr %i.a, align 8, !range !19, !alias.scope !21750, !noundef !12 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsl8pJiQOn4hA_9coreutils.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.u = shl nuw i64 %.val2.i.i, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !21749
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21754)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !21755, !nonnull !12, !noundef !12
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !21755
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsl8pJiQOn4hA_9coreutils.exit
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsl8pJiQOn4hA_9coreutils.exit, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1l_6cloned6ClonedINtNtNtB4_5slice4iter4IterB2G_EEEEs0_0ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21809)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21811)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !19, !alias.scope !21812, !noundef !12 ; 2 uses
  %i.c = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !21812, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21812
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21814)
  %.val.i.i1.i = load i64, ptr %i.e, align 8, !range !19, !alias.scope !21815, !noundef !12 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i1.i, 0
  br i1 %i.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i2.i = load ptr, ptr %i.g, align 8, !alias.scope !21815, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i, i64 noundef %.val.i.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21815
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val = load i64, ptr %i.h, align 8, !range !26, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1 = load ptr, ptr %i.i, align 8            ; 27 uses
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.u
    i64 2, label %bb.ak
  ]

default.unreachable:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit
  unreachable

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 520
  %i.k = atomicrmw sub ptr %i.j, i64 1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 400 ; 4 uses
  %i.n = load i64, ptr %i.m, align 16, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.p = atomicrmw or ptr %i.o, i64 %i.n seq_cst, align 8 ; 2 uses
  %i.q = load i64, ptr %i.m, align 16, !noundef !12 ; 2 uses
  %i.r = and i64 %i.q, %i.p
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.t) #51
  %.pre.i.i.i.i.i.i = load i64, ptr %i.m, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = phi i64 [ %i.q, %bb.e ], [ %.pre.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.v = load atomic i64, ptr %.val1 monotonic, align 16
  %i.w = xor i64 %i.u, -1
  %i.x = and i64 %i.p, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 392 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 408 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1, i64 416 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1, i64 384
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, %bb.g
  %i.ac = phi i64 [ %i.u, %bb.g ], [ %.pre.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ]
  %.sroa.0.08.i.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %.sroa.0.19.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ] ; 10 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.0.1.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.ad = add i64 %i.ac, -1
  %i.ae = and i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.ad ; 3 uses
  %i.af = load i64, ptr %i.y, align 8, !noundef !12
  %i.ag = sub i64 0, %i.af
  %i.ah = and i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.ag
  %i.ai = load ptr, ptr %i.z, align 8, !nonnull !12, !noundef !12
  %i.aj = load i64, ptr %i.aa, align 16, !noundef !12
  %i.ak = icmp ult i64 %i.ae, %i.aj
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [320 x i8], ptr %i.ai, i64 %i.ae ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 304
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = add i64 %.sroa.0.0.i.i.i.i.i.i.i, 1
  %i.ap = icmp eq i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq i64 %i.x, %.sroa.0.0.i.i.i.i.i.i.i
  br i1 %i.aq, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ar = add nuw i64 %i.ae, 1
  %i.as = load i64, ptr %i.ab, align 128, !noundef !12
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.au = icmp ult i32 %.sroa.0.08.i.i.i.i.i.i.i, 7
  br i1 %i.au, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.08.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.av = mul nuw i32 %.sroa.0.08.i.i.i.i.i.i.i, %.sroa.0.08.i.i.i.i.i.i.i ; 2 uses
  %xtraiter45 = and i32 %i.av, 7                  ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.08.i.i.i.i.i.i.i, 3
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter49 = and i32 %i.av, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter50 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter50.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter50.next.7 = add i32 %niter50, 8           ; 2 uses
  %niter50.ncmp.7 = icmp eq i32 %niter50.next.7, %unroll_iter49
  br i1 %niter50.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod47.not = icmp eq i32 %xtraiter45, 0
  br i1 %lcmp.mod47.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod48 = icmp ne i32 %xtraiter45, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter46 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter46.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter46.next = add i32 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i32 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !21766

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.l
  %i.ax = add i32 %.sroa.0.08.i.i.i.i.i.i.i, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.s, %bb.p, %bb.o, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.19.i.i.i.i.i.i.i = phi i32 [ %i.ax, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.o ], [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.p ], [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.0.08.i.i.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i.i.i, %bb.o ], [ %.sroa.05.0.i.i.i.i.i.i.i, %bb.p ], [ %.sroa.05.0.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.05.0.i.i.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.m, align 16
  br label %bb.h

bb.m:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.y, align 8, !noundef !12
  %i.az = add i64 %i.ay, %i.ah
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.sroa.05.0.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.m ], [ %i.an, %bb.j ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21816)
  %i.ba = load i128, ptr %i.al, align 16, !range !66, !alias.scope !21816, !noundef !12
  %.not.i6.i.i.i.i.i.i.i = icmp eq i128 %i.ba, 2
  br i1 %.not.i6.i.i.i.i.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 16, !range !19, !alias.scope !21817, !noundef !12 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !21816, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21818
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21819)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !21820, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !12, !noalias !21820 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %i.be, align 16, !alias.scope !21820, !nonnull !12, !noundef !12
  tail call void %i.bh(ptr noundef nonnull %i.bi) #51, !noalias !21820, !inline_history !21783
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !19, !invariant.load !12, !noalias !21820 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 16, !alias.scope !21820, !nonnull !12, !noundef !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !25, !invariant.load !12, !noalias !21820
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) %i.bn) #45, !noalias !21820
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1, i64 528
  %i.bp = atomicrmw xchg ptr %i.bo, i8 1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.t

bb.t:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21822)
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 16, !alias.scope !21823, !noundef !12 ; 2 uses
  %i.bq = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !21823, !nonnull !12, !noundef !12
  %i.br = mul nuw nsw i64 %.val1.i.i.i.i.i.i.i, 320
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.br, i64 noundef 16) #45, !noalias !21823
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1, i64 264
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.bs) #45
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1, i64 328
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.bt) #45
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 640, i64 noundef 128) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.u:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1, i64 392
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 acq_rel, align 8
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.v, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1, i64 128 ; 3 uses
  %i.by = atomicrmw or ptr %i.bx, i64 1 seq_cst, align 8
  %i.bz = and i64 %i.by, 1
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.cb = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cc = and i64 %i.cb, 62
  %i.cd = icmp eq i64 %i.cc, 62
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.w, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i
  %.sroa.0.05153.i.i.i.i.i.i.i = phi i32 [ %i.ch, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i ], [ 0, %bb.w ] ; 6 uses
  %i.ce = icmp ult i32 %.sroa.0.05153.i.i.i.i.i.i.i, 7
  br i1 %i.ce, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i14.i.i.i = icmp eq i32 %.sroa.0.05153.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i14.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, label %.lr.ph.i.i.i.i.i17.i.i.i.preheader

.lr.ph.i.i.i.i.i17.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i
  %i.cf = mul nuw i32 %.sroa.0.05153.i.i.i.i.i.i.i, %.sroa.0.05153.i.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.cf, 7                    ; 3 uses
  %i.cg = icmp ult i32 %.sroa.0.05153.i.i.i.i.i.i.i, 3
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i17.i.i.i.preheader.new

.lr.ph.i.i.i.i.i17.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i17.i.i.i.preheader
  %unroll_iter = and i32 %i.cf, 56
  br label %.lr.ph.i.i.i.i.i17.i.i.i

.lr.ph.i.i.i.i.i17.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i17.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i17.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i17.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i17.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i17.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, label %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i17.i.i.i.preheader
  %lcmp.mod26 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i.i.i.i.i17.i.i.i.epil

.lr.ph.i.i.i.i.i17.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i17.i.i.i.epil, %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i17.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, label %.lr.ph.i.i.i.i.i17.i.i.i.epil, !llvm.loop !21788

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i17.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i, %bb.x
  %i.ch = add i32 %.sroa.0.05153.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ci = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cj = and i64 %i.ci, 62
  %i.ck = icmp eq i64 %i.cj, 62
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, %bb.w
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.w ], [ %i.ci, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i ]
  %.sroa.0.051.lcssa.i.i.i.i.i.i.i = phi i32 [ 0, %bb.w ], [ %i.ch, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i ]
  %i.cl = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cm = load atomic i64, ptr %.val1 acquire, align 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 2 uses
  %i.co = atomicrmw xchg ptr %i.cn, ptr null acq_rel, align 8 ; 2 uses
  %i.cp = lshr i64 %i.cm, 1                       ; 2 uses
  %i.cq = icmp ne i64 %i.cp, %i.cl                ; 2 uses
  %i.cr = icmp eq ptr %i.co, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i.i = phi ptr [ %i.co, %._crit_edge.i.i.i.i.i.i.i ], [ %i.cw, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.cq, label %.lr.ph59.i.i.i.i.i.i.i, label %._crit_edge60.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i10.i.i.i = phi i32 [ %i.cv, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i ], [ %.sroa.0.051.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 6 uses
  %i.cs = icmp ult i32 %.sroa.0.1.i.i.i.i10.i.i.i, 7
  br i1 %i.cs, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i10.i.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i
  %i.ct = mul nuw i32 %.sroa.0.1.i.i.i.i10.i.i.i, %.sroa.0.1.i.i.i.i10.i.i.i ; 2 uses
  %xtraiter27 = and i32 %i.ct, 7                  ; 3 uses
  %i.cu = icmp ult i32 %.sroa.0.1.i.i.i.i10.i.i.i, 3
  br i1 %i.cu, label %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i26.i.i.i.i.i.i.i.preheader
  %unroll_iter31 = and i32 %i.ct, 56
  br label %.lr.ph.i26.i.i.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i26.i.i.i.i.i.i.i, %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new
  %niter32 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new ], [ %niter32.next.7, %.lr.ph.i26.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter32.next.7 = add i32 %niter32, 8           ; 2 uses
  %niter32.ncmp.7 = icmp eq i32 %niter32.next.7, %unroll_iter31
  br i1 %niter32.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i.i.i
  %lcmp.mod29.not = icmp eq i32 %xtraiter27, 0
  br i1 %lcmp.mod29.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter27, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i26.i.i.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i26.i.i.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader
  %epil.iter28 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter28.next, %.lr.ph.i26.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter28.next = add i32 %epil.iter28, 1     ; 2 uses
  %epil.iter28.cmp.not = icmp eq i32 %epil.iter28.next, %xtraiter27
  br i1 %epil.iter28.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.epil, !llvm.loop !21789

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i, %bb.y
  %i.cv = add i32 %.sroa.0.1.i.i.i.i10.i.i.i, 1
  %i.cw = atomicrmw xchg ptr %i.cn, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.old2.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

._crit_edge60.i.i.i.i.i.i.i:                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.cm, %.loopexit.i.i.i.i.i.i.i ], [ %i.ek, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ]
  %i.cx = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i.i, null
  br i1 %i.cx, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.z

.lr.ph59.i.i.i.i.i.i.i:                           ; preds = %.loopexit.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i
  %i.cy = phi i64 [ %i.el, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ], [ %i.cp, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.05.057.i.i.i.i.i.i.i = phi i64 [ %i.ek, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ], [ %i.cm, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.011.156.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ], [ %.sroa.011.0.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 8 uses
  %i.cz = and i64 %i.cy, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.cz, 31
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.aa, label %bb.ac

bb.z:                                             ; preds = %._crit_edge60.i.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i.i, i64 noundef 9936, i64 noundef 16) #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph59.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.011.156.i.i.i.i.i.i.i, i64 9920 ; 3 uses
  %i.db = load atomic ptr, ptr %i.da acquire, align 8
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %.lr.ph.i31.i.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i.i:                         ; preds = %bb.aa, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i = phi i32 [ %i.dg, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.aa ] ; 6 uses
  %i.dd = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 7
  br i1 %i.dd, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i31.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i9.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i9.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i
  %i.de = mul nuw i32 %.sroa.0.02.i.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter39 = and i32 %i.de, 7                  ; 3 uses
  %i.df = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 3
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter43 = and i32 %i.de, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new
  %niter44 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter44.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter44.next.7 = add i32 %niter44, 8           ; 2 uses
  %niter44.ncmp.7 = icmp eq i32 %niter44.next.7, %unroll_iter43
  br i1 %niter44.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lcmp.mod41.not = icmp eq i32 %xtraiter39, 0
  br i1 %lcmp.mod41.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod42 = icmp ne i32 %xtraiter39, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter40 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter40.next, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter40.next = add i32 %epil.iter40, 1     ; 2 uses
  %epil.iter40.cmp.not = icmp eq i32 %epil.iter40.next, %xtraiter39
  br i1 %epil.iter40.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !21790

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i, %bb.ab
  %i.dg = add i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 1
  %i.dh = load atomic ptr, ptr %i.da acquire, align 8
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.lr.ph.i31.i.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, %bb.aa
  %i.dj = load atomic ptr, ptr %i.da acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.156.i.i.i.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.156.i.i.i.i.i.i.i, i64 noundef 9936, i64 noundef 16) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i

bb.ac:                                            ; preds = %.lr.ph59.i.i.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw [320 x i8], ptr %.sroa.011.156.i.i.i.i.i.i.i, i64 %i.cz ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 304 ; 2 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8
  %i.dn = and i64 %i.dm, 1
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i32.i.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i.i:                         ; preds = %bb.ac, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i.i = phi i32 [ %i.ds, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i ], [ 0, %bb.ac ] ; 6 uses
  %i.dp = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 7
  br i1 %i.dp, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i32.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.i.preheader:             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i
  %i.dq = mul nuw i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i.i ; 2 uses
  %xtraiter33 = and i32 %i.dq, 7                  ; 3 uses
  %i.dr = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 3
  br i1 %i.dr, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader
  %unroll_iter37 = and i32 %i.dq, 56
  br label %.lr.ph.i.i40.i.i.i.i.i.i.i

.lr.ph.i.i40.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new
  %niter38 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new ], [ %niter38.next.7, %.lr.ph.i.i40.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter38.next.7 = add i32 %niter38, 8           ; 2 uses
  %niter38.ncmp.7 = icmp eq i32 %niter38.next.7, %unroll_iter37
  br i1 %niter38.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i
  %lcmp.mod35.not = icmp eq i32 %xtraiter33, 0
  br i1 %lcmp.mod35.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader
  %lcmp.mod36 = icmp ne i32 %xtraiter33, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil

.lr.ph.i.i40.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader
  %epil.iter34 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter34.next, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter34.next = add i32 %epil.iter34, 1     ; 2 uses
  %epil.iter34.cmp.not = icmp eq i32 %epil.iter34.next, %xtraiter33
  br i1 %epil.iter34.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, !llvm.loop !21791

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i, %bb.ad
  %i.ds = add i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 1
  %i.dt = load atomic i64, ptr %i.dl acquire, align 8
  %i.du = and i64 %i.dt, 1
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i32.i.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21824)
  %i.dw = load i128, ptr %i.dk, align 16, !range !66, !alias.scope !21824, !noundef !12
  %.not.i44.i.i.i.i.i.i.i = icmp eq i128 %i.dw, 2
  br i1 %.not.i44.i.i.i.i.i.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 240
  %.val.i.i.i.i.i4.i.i.i = load i64, ptr %i.dx, align 16, !range !19, !alias.scope !21825, !noundef !12 ; 2 uses
  %i.dy = icmp eq i64 %.val.i.i.i.i.i4.i.i.i, 0
  br i1 %i.dy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 248
  %.val1.i.i.i.i.i5.i.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !21824, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i5.i.i.i, i64 noundef %.val.i.i.i.i.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21826
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21827)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !21828, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !invariant.load !12, !noalias !21828 ; 2 uses
  %.not.i.i45.i.i.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i45.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ee = load ptr, ptr %i.ea, align 16, !alias.scope !21828, !nonnull !12, !noundef !12
  tail call void %i.ed(ptr noundef nonnull %i.ee) #51, !noalias !21828, !inline_history !21808
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !19, !invariant.load !12, !noalias !21828 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i: ; preds = %bb.ai
  %.val.i.i.i.i.i.i8.i.i.i = load ptr, ptr %i.ea, align 16, !alias.scope !21828, !nonnull !12, !noundef !12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !range !25, !invariant.load !12, !noalias !21828
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i8.i.i.i, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) %i.ej) #45, !noalias !21828
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i, %bb.ai, %bb.af, %bb.ae, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i.i = phi ptr [ %i.dj, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ], [ %.sroa.011.156.i.i.i.i.i.i.i, %bb.ae ], [ %.sroa.011.156.i.i.i.i.i.i.i, %bb.af ], [ %.sroa.011.156.i.i.i.i.i.i.i, %bb.ai ], [ %.sroa.011.156.i.i.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i ] ; 2 uses
  %i.ek = add i64 %.sroa.05.057.i.i.i.i.i.i.i, 2  ; 3 uses
  %i.el = lshr i64 %i.ek, 1                       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.el, %i.cl
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge60.i.i.i.i.i.i.i, label %.lr.ph59.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.z, %._crit_edge60.i.i.i.i.i.i.i
  %i.em = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i, -2
  store atomic i64 %i.em, ptr %.val1 release, align 8
  br label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %.val1, i64 400
  %i.eo = atomicrmw xchg ptr %i.en, i8 1 acq_rel, align 1
  %.not.i3.i.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not.i3.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.aj

bb.aj:                                            ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  store ptr %.val1, ptr %i.a, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.ak:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1, i64 120
  %i.eq = atomicrmw sub ptr %i.ep, i64 1 acq_rel, align 8
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.al, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10disconnectCsl8pJiQOn4hA_9coreutils(ptr noundef nonnull align 8 %.val1) #45
  %i.es = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.et = atomicrmw xchg ptr %i.es, i8 1 acq_rel, align 1
  %.not.i21.i.i.i = icmp eq i8 %i.et, 0
  br i1 %.not.i21.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eu = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.eu) #45
  %i.ev = getelementptr inbounds nuw i8, ptr %.val1, i64 56
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.ev) #45
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 136, i64 noundef 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.d, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.u, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.aj, %bb.ak, %bb.al, %bb.am
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2AkyTgTLZ1a_8uu_tsort10TsortErrorECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !53, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.b, label %default.unreachable7 [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.i
    i64 3, label %bb.b
  ]

default.unreachable7:                             ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21845)
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !21845, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21845
  %i.d = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable7 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit
    i64 1, label %bb.d
  ], !prof !22

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !21846, !noalias !21845
  store i8 3, ptr %i.a, align 8, !alias.scope !21846, !noalias !21845
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #45, !noalias !21845
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21845
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21848)
  %.val.i.i = load i64, ptr %i.c, align 8, !range !19, !alias.scope !21849, !noundef !12 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i, 0
  br i1 %i.k, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0Csl8pJiQOn4hA_9coreutils:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28
  %i.cc = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !33945
  %i.cd = and i64 %i.cc, 9223372036854775807
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit, label %bb.v, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.cf = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53, !noalias !33945
  %i.cg = xor i1 %i.cf, true
  %i.ch = zext i1 %i.cg to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.ch, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 4, !noalias !33945
  %.not.i.i.not = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26, label %bb.w, !prof !11

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33946
  store ptr %i.bz, ptr %i.b, align 8, !noalias !33946
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ck, align 8, !noalias !33946
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @888, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @778) #50, !noalias !33947
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit
  %i.cl = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !33948)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !33948, !noalias !33949, !nonnull !12, !noundef !12 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !33948, !noalias !33949, !noundef !12 ; 7 uses
  %.idx76 = mul nuw nsw i64 %i.cp, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx76
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %._crit_edge75, label %.lr.ph74

bb.x:                                             ; preds = %.lr.ph74
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.ct = add nuw nsw i64 %i.cw, 1
  %i.cu = icmp eq ptr %i.cs, %i.cq
  br i1 %i.cu, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26, %bb.x
  %i.cv = phi ptr [ %i.cs, %bb.x ], [ %i.cn, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26 ] ; 2 uses
  %i.cw = phi i64 [ %i.ct, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26 ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !33950, !noalias !33951, !noundef !12
  %.not.i.i35 = icmp eq i64 %i.cy, %i.i
  br i1 %.not.i.i35, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph74
  call void @llvm.experimental.noalias.scope.decl(metadata !33952)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !33953)
  %i.cz = icmp ult i64 %i.cp, 384307168202282326
  call void @llvm.assume(i1 %i.cz)
  %.not.i.i.i = icmp samesign ult i64 %i.cw, %i.cp
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.y
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cw ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.da, align 8, !noalias !33954 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !33954
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = xor i64 %i.cw, -1
  %i.dd = add nsw i64 %i.cp, %i.dc
  %i.de = mul nuw nsw i64 %i.dd, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr nonnull align 8 %i.db, i64 %i.de, i1 false), !noalias !33955
  %i.df = add nsw i64 %i.cp, -1                   ; 2 uses
  store i64 %i.df, ptr %i.co, align 8, !alias.scope !33956, !noalias !33957
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i, label %bb.ah, !prof !46

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.y
  %i.dg = phi i64 [ %i.cp, %bb.y ], [ %i.df, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, 384307168202282326
  call void @llvm.assume(i1 %i.dh)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cw, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @908) #50, !noalias !33958
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.dj = load ptr, ptr %i.di, align 16, !nonnull !12, !align !23, !noundef !12 ; 8 uses
  %i.dk = cmpxchg ptr %i.dj, i32 0, i32 1 acquire monotonic, align 4, !noalias !33959
  %i.dl = extractvalue { i32, i1 } %i.dk, 1
  br i1 %i.dl, label %bb.ab, label %bb.aa, !prof !11

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dj) #45, !noalias !33959
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dm = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !33959
  %i.dn = and i64 %i.dm, 9223372036854775807
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53, !noalias !33959
  %i.dq = xor i1 %i.dp, true
  %i.dr = zext i1 %i.dq to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i36 = phi i8 [ %i.dr, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dt = load atomic i8, ptr %i.ds monotonic, align 4, !noalias !33959
  %.not.i.i37.not = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i37.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit, label %bb.ad, !prof !11

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33960
  store ptr %i.dj, ptr %i.c, align 8, !noalias !33960
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i36, ptr %i.du, align 8, !noalias !33960
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @888, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @781) #50, !noalias !33961
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39
  %i.dv = trunc nuw i8 %.sroa.01.0.i.i36 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !33962)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !33962, !noalias !33963, !nonnull !12, !noundef !12 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !33962, !noalias !33963, !noundef !12 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dz, 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx
  %i.eb = icmp eq i64 %i.dz, 0
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %i.ed = add nuw nsw i64 %i.eg, 1
  %i.ee = icmp eq ptr %i.ec, %i.ea
  br i1 %i.ee, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit, %bb.ae
  %i.ef = phi ptr [ %i.ec, %bb.ae ], [ %i.dx, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit ] ; 2 uses
  %i.eg = phi i64 [ %i.ed, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !33964, !noalias !33965, !noundef !12
  %.not.i.i41 = icmp eq i64 %i.ei, %i.i
  br i1 %.not.i.i41, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !33966)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i40)
  call void @llvm.experimental.noalias.scope.decl(metadata !33967)
  %i.ej = icmp ult i64 %i.dz, 384307168202282326
  call void @llvm.assume(i1 %i.ej)
  %.not.i.i.i42 = icmp samesign ult i64 %i.eg, %i.dz
  br i1 %.not.i.i.i42, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i43

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44: ; preds = %bb.af
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.eg ; 4 uses
  %.sroa.0.0.copyload1.i.i45 = load ptr, ptr %i.ek, align 8, !noalias !33968 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i46 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i46, i64 16, i1 false), !noalias !33968
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = xor i64 %i.eg, -1
  %i.en = add nsw i64 %i.dz, %i.em
  %i.eo = mul nuw nsw i64 %i.en, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %i.el, i64 %i.eo, i1 false), !noalias !33969
  %i.ep = add nsw i64 %i.dz, -1                   ; 2 uses
  store i64 %i.ep, ptr %i.dy, align 8, !alias.scope !33970, !noalias !33971
  %.not.i4.i47 = icmp eq ptr %.sroa.0.0.copyload1.i.i45, null
  br i1 %.not.i4.i47, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i43, label %bb.au, !prof !46

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i43: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44, %bb.af
  %i.eq = phi i64 [ %i.dz, %bb.af ], [ %i.ep, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44 ] ; 2 uses
  %i.er = icmp samesign ult i64 %i.eq, 384307168202282326
  call void @llvm.assume(i1 %i.er)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.eg, i64 noundef %i.eq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @908) #50, !noalias !33972
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.es = load atomic i8, ptr %i.k acquire, align 16
  %.not2.i = icmp eq i8 %i.es, 0
  br i1 %.not2.i, label %.lr.ph.i52, label %.loopexit

.lr.ph.i52:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ew, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.et = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.et, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i52
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i52
  %.not.i.i54 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i54, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.eu = mul nuw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.eu, 7                    ; 3 uses
  %i.ev = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.ev, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.eu, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod87 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !33893

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.ew = add i32 %.sroa.0.03.i, 1
  %i.ex = load atomic i8, ptr %i.k acquire, align 16
  %.not.i53 = icmp eq i8 %i.ex, 0
  br i1 %.not.i53, label %.lr.ph.i52, label %.loopexit

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ey = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !33973
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cl, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit
  %i.fa = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fb = and i64 %i.fa, 9223372036854775807
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.ak, !prof !11

bb.ak:                                            ; preds = %bb.aj
  %i.fd = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53
  br i1 %i.fd, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.ci monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit
  %i.fe = atomicrmw xchg ptr %i.bz, i32 0 release, align 4
  %i.ff = icmp eq i32 %i.fe, 2
  br i1 %i.ff, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56, !prof !18

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bz) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i128, ptr %i.f, align 16 ; 2 uses
  store i128 -1, ptr %i.f, align 16
  %.not25 = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not25, label %bb.an, label %.thread, !prof !18

._crit_edge75:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @779) #50
  unreachable

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @780) #50
  unreachable

.thread:                                          ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59
  %.sink = phi i128 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56 ]
  %.sroa.09.0.copyload.sink = phi i128 [ %.sroa.09.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59 ], [ %.sroa.0.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56 ]
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.511.0..sroa_idx, i64 288, i1 false)
  store i128 %.sink, ptr %0, align 16
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.09.0.copyload.sink, ptr %.sroa.418.0..sroa_idx, align 16
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

.loopexit:                                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  store i128 2, ptr %0, align 16
  %.pre = load i128, ptr %i.f, align 16, !range !67, !alias.scope !33974 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33975)
  call void @llvm.experimental.noalias.scope.decl(metadata !33976)
  call void @llvm.experimental.noalias.scope.decl(metadata !33977)
  %i.fg = icmp eq i128 %.pre, -1
  br i1 %i.fg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !33978)
  %.not.i.i.i.i = icmp eq i128 %.pre, 2
  br i1 %.not.i.i.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %.val.i.i.i.i = load i64, ptr %i.fh, align 16, !range !19, !alias.scope !33979, !noundef !12 ; 2 uses
  %i.fi = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %.val1.i.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !33980, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !33981
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.ar:                                            ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33982)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !33983, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !invariant.load !12, !noalias !33983 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fo = load ptr, ptr %i.fk, align 16, !alias.scope !33983, !nonnull !12, !noundef !12
  call void %i.fn(ptr noundef nonnull %i.fo) #51, !noalias !33983, !inline_history !33924
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !19, !invariant.load !12, !noalias !33983 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.at
  %.val.i.i.i.i.i = load ptr, ptr %i.fk, align 16, !alias.scope !33983, !nonnull !12, !noundef !12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !range !25, !invariant.load !12, !noalias !33983
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) %i.ft) #45, !noalias !33983
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %.thread, %.loopexit, %bb.ap, %bb.aq, %bb.at, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.au:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i40, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i40)
  store ptr %.sroa.0.0.copyload1.i.i45, ptr %i.d, align 8
  %i.fu = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i45, i64 1 release, align 8, !noalias !33984
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57: ; preds = %bb.au, %bb.av
  br i1 %i.dv, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57
  %i.fw = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fx = and i64 %i.fw, 9223372036854775807
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.ax, !prof !11

bb.ax:                                            ; preds = %bb.aw
  %i.fz = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53
  br i1 %i.fz, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store atomic i8 1, ptr %i.ds monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58: ; preds = %bb.ay, %bb.ax, %bb.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57
  %i.ga = atomicrmw xchg ptr %i.dj, i32 0 release, align 4
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10disconnectCsl8pJiQOn4hA_9coreutils:bb.a
  %i.cb = load ptr, ptr %i.a, align 8, !noalias !34614, !nonnull !12, !noundef !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !34614, !nonnull !12, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 2 uses
  %i.cf = atomicrmw xchg ptr %i.ce, i32 1 release, align 4, !noalias !34614
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !34615)
  call void @llvm.experimental.noalias.scope.decl(metadata !34616)
  call void @llvm.experimental.noalias.scope.decl(metadata !34617)
  call void @llvm.experimental.noalias.scope.decl(metadata !34618)
  %i.ch = load ptr, ptr %i.a, align 8, !alias.scope !34619, !noalias !34614, !nonnull !12, !noundef !12
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !34620
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #53, !noalias !34614
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34614
  %i.ck = icmp eq ptr %i.bx, %i.bu
  br i1 %i.ck, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14, label %bb.o

bb.s:                                             ; preds = %bb.p
  %i.cl = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ce) #45, !noalias !34614 ; 0 uses
  br label %bb.q

bb.t:                                             ; preds = %.lr.ph.i3
  %i.cm = load ptr, ptr %.sroa.0.02.i4, align 8, !noalias !34610, !nonnull !12, !noundef !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !34610, !nonnull !12, !noundef !12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40 ; 2 uses
  %i.cq = atomicrmw xchg ptr %i.cp, i32 1 release, align 4, !noalias !34610
  %i.cr = icmp eq i32 %i.cq, -1
  br i1 %i.cr, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t, %.lr.ph.i3
  %i.cs = icmp eq ptr %i.bm, %i.bk
  br i1 %i.cs, label %._crit_edge.i7, label %.lr.ph.i3

bb.v:                                             ; preds = %bb.t
  %i.ct = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.cp) #45, !noalias !34610 ; 0 uses
  br label %bb.u

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13, %._crit_edge.i7, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit
  br i1 %i.o, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14
  %i.cu = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cv = and i64 %i.cu, 9223372036854775807
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.cx = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53
  br i1 %i.cx, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store atomic i8 1, ptr %i.l monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14
  %i.cy = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.cz = icmp eq i32 %i.cy, 2
  br i1 %i.cz, label %bb.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.z:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.z
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(304) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(304) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [352 x i8], align 16              ; 15 uses
  %i.c = alloca [352 x i8], align 16              ; 15 uses
  %i.d = alloca [320 x i8], align 16              ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [352 x i8], align 16              ; 18 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [288 x i8], align 16        ; 10 uses
  %.sroa.6.i = alloca [288 x i8], align 16        ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [320 x i8], align 16              ; 18 uses
  %.sroa.6 = alloca [288 x i8], align 16          ; 6 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.v
    i64 2, label %bb.an
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.0.0.copyload = load i128, ptr %1, align 16 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i32 -1, ptr %i.s, align 8, !noalias !34758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !34758
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false), !noalias !34758
  %i.w = load atomic i64, ptr %i.u monotonic, align 8, !noalias !34759 ; 2 uses
  %i.x = load i64, ptr %i.v, align 16, !noalias !34759, !noundef !12 ; 2 uses
  %i.y = and i64 %i.x, %i.w
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i, %.lr.ph.i.lr.ph.i
  %i.ag = phi i64 [ %i.x, %.lr.ph.i.lr.ph.i ], [ %i.cs, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i ]
  %i.ah = phi i64 [ %i.w, %.lr.ph.i.lr.ph.i ], [ %i.cr, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !34760)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %i.ai = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.bn, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ]
  %.sroa.02.043.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %i.bm, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 8 uses
  %.sroa.0.03842.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.aj = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.ak = add i64 %i.ai, -1
  %i.al = and i64 %i.ak, %.sroa.02.043.i.i        ; 3 uses
  %i.am = load i64, ptr %i.aa, align 8, !noalias !34761, !noundef !12
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.02.043.i.i, %i.an
  %i.ap = load ptr, ptr %i.ab, align 8, !noalias !34761, !nonnull !12, !noundef !12
  %i.aq = load i64, ptr %i.ac, align 16, !noalias !34761, !noundef !12
  %i.ar = icmp ult i64 %i.al, %i.aq
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [320 x i8], ptr %i.ap, i64 %i.al ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !34761 ; 2 uses
  %i.av = icmp eq i64 %.sroa.02.043.i.i, %i.au
  br i1 %i.av, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %i.aa, align 8, !noalias !34761, !noundef !12
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %.sroa.02.043.i.i, 1
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ba = add nuw i64 %i.al, 1
  %i.bb = load i64, ptr %i.ad, align 128, !noalias !34761, !noundef !12
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bd = icmp ult i32 %.sroa.0.03842.i.i, 7
  br i1 %i.bd, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45, !noalias !34761
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i
  %i.be = mul nuw i32 %.sroa.0.03842.i.i, %.sroa.0.03842.i.i ; 2 uses
  %xtraiter155 = and i32 %i.be, 7                 ; 3 uses
  %i.bf = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bf, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter159 = and i32 %i.be, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter160 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter160.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  %niter160.next.7 = add i32 %niter160, 8         ; 2 uses
  %niter160.ncmp.7 = icmp eq i32 %niter160.next.7, %unroll_iter159
  br i1 %niter160.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bg = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !34761
  %i.bh = load i64, ptr %i.aa, align 8, !noalias !34761, !noundef !12
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = icmp eq i64 %i.bi, %.sroa.02.043.i.i
  br i1 %i.bj, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %..i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.bk = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i  ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter161 = and i32 %i.bk, 5                 ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bl, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter165 = and i32 %i.bk, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter166 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter166.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  %niter166.next.7 = add i32 %niter166, 8         ; 2 uses
  %niter166.ncmp.7 = icmp eq i32 %niter166.next.7, %unroll_iter165
  br i1 %niter166.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod169.not = icmp eq i32 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod170 = icmp ne i32 %xtraiter167, 0
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter168 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter168.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34761
  %epil.iter168.next = add i32 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i32 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !34627

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod163.not = icmp eq i32 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod164 = icmp ne i32 %xtraiter161, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter162 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter162.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34761
  %epil.iter162.next = add i32 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i32 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !34628

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod157.not = icmp eq i32 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod158 = icmp ne i32 %xtraiter155, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter156 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter156.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34761
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !34629

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bm = load atomic i64, ptr %i.u monotonic, align 16, !noalias !34761 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03842.i.i, 1
  %i.bn = load i64, ptr %i.v, align 16, !noalias !34761, !noundef !12 ; 2 uses
  %i.bo = and i64 %i.bn, %i.bm
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.c, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bq = load i64, ptr %i.aa, align 8, !noalias !34761, !noundef !12
  %i.br = add i64 %i.bq, %i.ao
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bs = add i64 %.sroa.02.043.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bs, %bb.j ], [ %i.br, %bb.i ]
  %i.bt = cmpxchg weak ptr %i.u, i64 %.sroa.02.043.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !34761
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bt, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter167 = and i32 %i.aj, 7                 ; 3 uses
  %i.bu = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bu, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter171 = and i32 %i.aj, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter172 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter172.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  call void @llvm.x86.sse2.pause(), !noalias !34761
  %niter172.next.7 = add i32 %niter172, 8         ; 2 uses
  %niter172.ncmp.7 = icmp eq i32 %niter172.next.7, %unroll_iter171
  br i1 %niter172.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.h
  %i.bv = load i32, ptr %i.s, align 8, !range !94, !noalias !34758, !noundef !12 ; 2 uses
  %.not.i = icmp eq i32 %i.bv, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  store ptr %i.as, ptr %i.p, align 8, !alias.scope !34760, !noalias !34758
  %i.bx = add i64 %.sroa.02.043.i.i, 1            ; 2 uses
  store i64 %i.bx, ptr %i.t, align 8, !alias.scope !34760, !noalias !34758
  store i128 %.sroa.0.0.copyload, ptr %i.as, align 16, !noalias !34762
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false), !noalias !34763
  store atomic i64 %i.bx, ptr %i.bw release, align 16, !noalias !34764
  %i.by = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.by) #51, !noalias !34764
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b
  %.not7.i = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not7.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit, label %bb.u

bb.l:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i
  %i.bz = load i64, ptr %i.q, align 8, !noalias !34758, !noundef !12 ; 2 uses
  %i.ca = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #45, !noalias !34758 ; 2 uses
  %i.cb = extractvalue { i64, i32 } %i.ca, 0      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.bz
  br i1 %i.cc, label %.split.i, label %bb.s

bb.m:                                             ; preds = %bb.s, %.split.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !34765
  store ptr %i.p, ptr %i.o, align 8, !noalias !34758
  store ptr %.8.val, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !34758
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !34758
  %i.cd = load i8, ptr %i.af, align 8, !range !37, !noalias !34766, !noundef !12
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !11

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.m
  %i.cf = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsl8pJiQOn4hA_9coreutils(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #45, !noalias !34765 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uECsl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.cf, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.ae, %bb.m ] ; 4 uses
  %i.ch = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34765, !noundef !12 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34765
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.p, !prof !18

bb.n:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !34765
  %i.ci = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #45, !noalias !34765 ; 3 uses
  store ptr %i.ci, ptr %i.n, align 8, !noalias !34765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !34765
  store ptr %i.p, ptr %i.m, align 8, !noalias !34765
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !34758
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !noalias !34758
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.ci) #51, !noalias !34765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !34765
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !34767
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #53, !noalias !34765
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !34765
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store atomic i64 0, ptr %i.cl release, align 8, !noalias !34765
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store atomic ptr null, ptr %i.cm release, align 8, !noalias !34765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !34765
  store ptr %i.p, ptr %i.l, align 8, !noalias !34765
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !34758
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !34758
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.ch) #51, !noalias !34765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !34765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !34765
  %i.cn = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34765, !noundef !12 ; 3 uses
  store ptr %i.cn, ptr %i.k, align 8, !noalias !34765
  store ptr %i.ch, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34765
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !34768
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #53, !noalias !34765
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !34765
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs0_0Csl8pJiQOn4hA_9coreutils(ptr nonnull %i.o) #51, !noalias !34765
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uECsl8pJiQOn4hA_9coreutils.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !34765
  %i.cr = load atomic i64, ptr %i.u monotonic, align 16, !noalias !34769 ; 2 uses
  %i.cs = load i64, ptr %i.v, align 16, !noalias !34769, !noundef !12 ; 2 uses
  %i.ct = and i64 %i.cs, %i.cr
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

.split.i:                                         ; preds = %bb.l
  %i.cv = extractvalue { i64, i32 } %i.ca, 1      ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 1000000000
  call void @llvm.assume(i1 %i.cw)
  %.not30.i = icmp samesign ult i32 %i.cv, %i.bv
  br i1 %.not30.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not29.i = icmp slt i64 %i.cb, %i.bz
  br i1 %.not29.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 16
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i, %bb.u, %bb.t
  %i.cx = phi i128 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !34758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ck

bb.v:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i128, ptr %1, align 16 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8, !noalias !34770 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.db = load atomic ptr, ptr %i.da acquire, align 8, !noalias !34770
  %i.dc = and i64 %i.cz, 1
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.cz, %.lr.ph.i.i3 ], [ %i.dn, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.db, %.lr.ph.i.i3 ], [ %i.do, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.df = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.dg = and i64 %i.df, 31                       ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 31
  br i1 %i.dh, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.di, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45, !noalias !34770
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8: ; preds = %bb.x
  %.not.i.i.i9 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i9, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8
  %i.dj = mul nuw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter149 = and i32 %i.dj, 7                 ; 3 uses
  %i.dk = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dk, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.i.i.i12.preheader.new

.lr.ph.i.i.i12.preheader.new:                     ; preds = %.lr.ph.i.i.i12.preheader
  %unroll_iter153 = and i32 %i.dj, 56
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.i.i.i12.preheader.new
  %niter154 = phi i32 [ 0, %.lr.ph.i.i.i12.preheader.new ], [ %niter154.next.7, %.lr.ph.i.i.i12 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  %niter154.next.7 = add i32 %niter154, 8         ; 2 uses
  %niter154.ncmp.7 = icmp eq i32 %niter154.next.7, %unroll_iter153
  br i1 %niter154.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i12

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i12
  %lcmp.mod151.not = icmp eq i32 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.preheader
  %lcmp.mod152 = icmp ne i32 %xtraiter149, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i.i.i12.epil

.lr.ph.i.i.i12.epil:                              ; preds = %.lr.ph.i.i.i12.epil, %.lr.ph.i.i.i12.epil.preheader
  %epil.iter150 = phi i32 [ 0, %.lr.ph.i.i.i12.epil.preheader ], [ %epil.iter150.next, %.lr.ph.i.i.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  %epil.iter150.next = add i32 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i32 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil, !llvm.loop !34661

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, %bb.y
  %i.dl = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.dm = icmp eq i64 %i.dg, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dm, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.du, %bb.ag ], [ %i.du, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ed, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.dn = load atomic i64, ptr %i.cy acquire, align 8, !noalias !34770 ; 2 uses
  %i.do = load atomic ptr, ptr %i.da acquire, align 8, !noalias !34770
  %i.dp = and i64 %i.dn, 1
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.ds, %bb.aa ] ; 7 uses
  %i.dr = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dr, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34770
  %i.ds = tail call noalias noundef align 16 dereferenceable_or_null(9936) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 9936, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !34770 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i, !prof !18

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 9936) #52, !noalias !34770
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34770
  %i.du = tail call noalias noundef align 16 dereferenceable_or_null(9936) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 9936, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !34770 ; 6 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inCsl8pJiQOn4hA_9coreutils.exit16.i.i, !prof !18

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 9936) #52, !noalias !34770
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inCsl8pJiQOn4hA_9coreutils.exit16.i.i: ; preds = %bb.ac
  %i.dw = cmpxchg ptr %i.da, ptr null, ptr %i.du release monotonic, align 8, !noalias !34770
  %i.dx = extractvalue { ptr, i1 } %i.dw, 1
  br i1 %i.dx, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.du, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %i.dy = add i64 %.sroa.03.049.i.i, 2
  %i.dz = cmpxchg weak ptr %i.cy, i64 %.sroa.03.049.i.i, i64 %i.dy seq_cst acquire, align 8, !noalias !34770
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.dz, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inCsl8pJiQOn4hA_9coreutils.exit16.i.i
  store atomic ptr %i.du, ptr %i.de release, align 8, !noalias !34770
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inCsl8pJiQOn4hA_9coreutils.exit16.i.i
  %i.ea = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.ea, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 9936, i64 noundef 16) #45, !noalias !34770
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %..i.i.i.i5 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %i.eb = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5 ; 2 uses
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %xtraiter = and i32 %i.eb, 5                    ; 3 uses
  %i.ec = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.ec, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %i.eb, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod148 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !34770
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !34662

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ed = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.dm, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread20.i, !prof !18

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread20.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.da release, align 8, !noalias !34770
  %i.ee = atomicrmw add ptr %i.cy, i64 2 release, align 8, !noalias !34770 ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 9920
  store atomic ptr %.sroa.035.2.i.i, ptr %i.ef release, align 8, !noalias !34770
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @934) #50, !noalias !34770
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.dg, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.eg = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.eg, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 9936, i64 noundef 16) #45, !noalias !34770
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34772)
  %i.eh = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.eh, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread20.i
  %.sroa.43.126.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread20.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i ]
  %.sroa.9.125.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread20.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i ]
  %i.ei = getelementptr inbounds nuw [320 x i8], ptr %.sroa.43.126.i, i64 %.sroa.9.125.i ; 3 uses
end_hunk_2
