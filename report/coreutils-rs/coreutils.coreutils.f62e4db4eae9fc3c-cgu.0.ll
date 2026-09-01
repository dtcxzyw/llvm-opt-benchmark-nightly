Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RNSNvYNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtBd_3ffi6os_str8OsStringEINtNtB1N_6cloned6ClonedINtNtNtB1R_5slice4iter4IterB3o_EEEEs0_0INtNtB1R_6result6ResultuINtNtB2H_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0INtNtNtB1R_3ops8function6FnOnceuE9call_once6vtableCsl8pJiQOn4hA_9coreutils:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !63, !invariant.load !12, !noalias !34094 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !267, !invariant.load !12, !noalias !34094
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #45, !noalias !34094
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.f, %bb.c, %bb.a
  store i64 0, ptr %i.l, align 8, !noalias !34075
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !34075
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !34075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34075
  store ptr %i.k, ptr %i.c, align 8, !noalias !34075
  %i.ae = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !34096
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.j, label %_RNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtB8_3ffi6os_str8OsStringEINtNtB1I_6cloned6ClonedINtNtNtB1M_5slice4iter4IterB3j_EEEEs0_0INtNtB1M_6result6ResultuINtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0Csl8pJiQOn4hA_9coreutils.exit

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #53, !noalias !34075
  br label %_RNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtB8_3ffi6os_str8OsStringEINtNtB1I_6cloned6ClonedINtNtNtB1M_5slice4iter4IterB3j_EEEEs0_0INtNtB1M_6result6ResultuINtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0Csl8pJiQOn4hA_9coreutils.exit

_RNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtB8_3ffi6os_str8OsStringEINtNtB1I_6cloned6ClonedINtNtNtB1M_5slice4iter4IterB3j_EEEEs0_0INtNtB1M_6result6ResultuINtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0Csl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEIB1p_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34075
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNSNvYNCINvNvCsgN7rS7e43TA_7uu_more6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBQ_6cloned6ClonedINtNtNtBU_5slice4iter4IterB2r_EEEE0INtNtNtBU_3ops8function6FnOnceTRNtNtB2x_5panic13PanicHookInfoEE9call_once6vtableCsl8pJiQOn4hA_9coreutils(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34101
  store ptr %1, ptr %i.b, align 8, !noalias !34104
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6__print(ptr noundef nonnull @203, ptr noundef nonnull inttoptr (i64 3 to ptr)) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34104
  store ptr %i.b, ptr %i.a, align 8, !noalias !34104
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs2vKOLqTMYjT_3std5panic13PanicHookInfoNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !34104
  call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34101
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs2S1mliNQtKX_8uu_b2sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @381, i64 noundef 11) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @382, i64 noundef 11) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common35standalone_checksum_app_with_length(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @383, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 5, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs2zc8TnwZULP_10uu_sha1sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @393, i64 noundef 13) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 13) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @395, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 7, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs4ymIm62sNTP_12uu_sha256sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @426, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @427, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @428, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCs9lcmpQqrDDI_9uu_md5sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @482, i64 noundef 12) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @483, i64 noundef 12) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @484, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 6, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCsPCkMm39seU_12uu_sha384sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @486, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @487, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCsg8hoetmhRmG_12uu_sha224sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @568, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @569, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @570, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvCskAyBsUMQctw_12uu_sha512sum6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @685, i64 noundef 15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @686, i64 noundef 15) #45
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common23standalone_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @687, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 9, ptr %i.d, align 8
  ret void
}

; Function Attrs: noreturn nounwind nonlazybind uwtable
define hidden void @_RNvCsl8pJiQOn4hA_9coreutils4main() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [2 x i8], align 2                 ; 6 uses
  %.sroa.4172 = alloca i64, align 8               ; 7 uses
  %.sroa.9173 = alloca i64, align 8               ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = tail call { ptr, ptr } @_RNvCsh036I4OHgIr_6uucore7args_os() #45 ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 8 uses
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1      ; 5 uses
  %i.ae = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, i64 16) monotonic, align 8, !noalias !34107 ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.ae to i64     ; 2 uses
  switch i64 %magicptr.i.i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i
  ], !prof !34111

bb.b:                                             ; preds = %bb.a
  %i.af = load ptr, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, align 8, !noalias !34107, !nonnull !12, !noundef !12
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, i64 8), align 8, !noalias !34107, !noundef !12
  %i.ah = tail call noundef ptr @_RNvNtCscC7ZI6NG8RX_6rustix4weak5fetch(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag) #45, !noalias !34107 ; 2 uses
  store atomic ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv9getauxval, i64 16) release, align 8, !noalias !34107
  br label %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.c:                                             ; preds = %bb.a
  fence acquire
  br label %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.ae, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ai = tail call noundef ptr %.sroa.0.0.i.i.i(i64 noundef 31) #45, !noalias !34107, !inline_history !34112 ; 2 uses
  %i.aj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #45, !noalias !34107
  br label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i: ; preds = %bb.d, %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.a
  %.sroa.3.0.i.i = phi i64 [ %i.aj, %bb.d ], [ 0, %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %magicptr.i.i.i, %bb.a ] ; 16 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ai, %bb.d ], [ @510, %_RNvMNtCscC7ZI6NG8RX_6rustix4weakINtB2_4WeakFUKCyEONtNtCs6JMX4GRUq9U_4core3ffi6c_voidE3getCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ @510, %bb.a ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ak = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ak, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 8
  %.val.i.i = load ptr, ptr %i.am, align 8, !noalias !34113, !nonnull !12, !noundef !12
  %i.an = getelementptr i8, ptr %i.ac, i64 16
  %.val2.i.i = load i64, ptr %i.an, align 8, !noalias !34113, !noundef !12 ; 14 uses
  %i.ao = icmp eq i64 %.val2.i.i, 0               ; 2 uses
  br i1 %i.ao, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34117
  %i.ap = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !34117 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.g, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i) #52, !noalias !34127
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i, i1 false), !noalias !34128
  %.not.i = icmp eq i64 %.val2.i.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i, !prof !4546

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, %bb.e
  %.sroa.6.072.i = phi ptr [ %i.ap, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i ], [ inttoptr (i64 1 to ptr), %bb.e ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !34107
  store i16 0, ptr %i.i, align 2, !noalias !34107
  %i.ar = icmp samesign eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ar, label %.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.sroa.3.0.i.i
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.at = icmp eq ptr %.sroa.0.0.i.i, %i.av
  br i1 %i.at, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.03.0.i.i.i315 = phi i64 [ %.sroa.3.0.i.i, %.lr.ph ], [ %i.aw, %bb.h ] ; 3 uses
  %i.au = phi ptr [ %i.as, %.lr.ph ], [ %i.av, %bb.h ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -1 ; 3 uses
  %i.aw = add i64 %.sroa.03.0.i.i.i315, -1        ; 2 uses
  %.val.i.i.i = load i8, ptr %i.av, align 1, !noalias !34129, !noundef !12
  %i.ax = icmp eq i8 %.val.i.i.i, 47
  br i1 %i.ax, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ay = icmp ult i64 %i.aw, %.sroa.3.0.i.i
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = sub nuw i64 %.sroa.3.0.i.i, %.sroa.03.0.i.i.i315
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.sroa.03.0.i.i.i315
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.h, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i, %bb.j
  %.sroa.5.1.i.i = phi i64 [ %i.az, %bb.j ], [ %.sroa.3.0.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i ], [ %.sroa.3.0.i.i, %bb.h ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %i.ba, %bb.j ], [ %.sroa.0.0.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread66.i ], [ %.sroa.0.0.i.i, %bb.h ]
  %i.bb = icmp samesign eq i64 %.val2.i.i, 0
  br i1 %i.bb, label %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph317

.lr.ph317:                                        ; preds = %.loopexit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.6.072.i, i64 %.val2.i.i
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.bd = icmp eq ptr %.sroa.6.072.i, %i.bf
  br i1 %i.bd, label %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph317, %bb.k
  %.sroa.03.0.i.i29.i316 = phi i64 [ %.val2.i.i, %.lr.ph317 ], [ %i.bg, %bb.k ] ; 3 uses
  %i.be = phi ptr [ %i.bc, %.lr.ph317 ], [ %i.bf, %bb.k ]
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -1 ; 3 uses
  %i.bg = add i64 %.sroa.03.0.i.i29.i316, -1      ; 2 uses
  %.val.i.i30.i = load i8, ptr %i.bf, align 1, !noalias !34134, !noundef !12
  %i.bh = icmp eq i8 %.val.i.i30.i, 47
  br i1 %i.bh, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp ult i64 %i.bg, %.val2.i.i
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = sub nuw i64 %.val2.i.i, %.sroa.03.0.i.i29.i316
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.6.072.i, i64 %.sroa.03.0.i.i29.i316
  br label %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend5param4auxv12linux_execfn.exit.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #50, !noalias !34107
  unreachable

_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.k, %.loopexit.i, %bb.m
  %.sroa.5.1.i31.i = phi i64 [ %i.bj, %bb.m ], [ %.val2.i.i, %.loopexit.i ], [ %.val2.i.i, %bb.k ]
  %.sroa.0.1.i32.i = phi ptr [ %i.bk, %bb.m ], [ %.sroa.6.072.i, %.loopexit.i ], [ %.sroa.6.072.i, %bb.k ]
  %i.bl = icmp eq i64 %.sroa.5.1.i.i, %.sroa.5.1.i31.i
  br i1 %i.bl, label %.split.i, label %bb.n

.split.i:                                         ; preds = %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.1.i.i, ptr nonnull %.sroa.0.1.i32.i, i64 %.sroa.5.1.i.i), !noalias !34107
  %i.bm = icmp eq i32 %bcmp.i, 0
  br i1 %i.bm, label %bb.v, label %bb.n

bb.n:                                             ; preds = %.split.i, %_RNvXsg_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_5SplithNCINvNtNtCsdSs45UTkAAB_9coreutils6common10validation11binary_pathINtNtNtNtB9_4iter8adapters6cloned6ClonedINtB5_4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEs_0ENtNtNtB20_6traits12double_ended19DoubleEndedIterator9next_backCsl8pJiQOn4hA_9coreutils.exit.i
  %.not.i33.i = icmp samesign ult i64 %.sroa.3.0.i.i, 6
  br i1 %.not.i33.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.0.0.i.i, align 1
  %i.bo = xor i32 1869770799, %i.bn
  %i.bp = getelementptr i8, ptr %.sroa.0.0.i.i, i64 4
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = zext i16 %i.bq to i32
  %i.bs = xor i32 12131, %i.br
  %i.bt = or i32 %i.bo, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.v, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34139
  store i128 18446745954905227264, ptr %i.f, align 16, !noalias !34139
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i) #45, !noalias !34107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34139
  %i.bx = load i32, ptr %i.h, align 8, !range !575, !noalias !34107, !noundef !12
  %i.by = trunc nuw i32 %i.bx to i1
  br i1 %i.by, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !34107, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !34107
  br label %bb.p

bb.o:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !range !639, !noalias !34107, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34107
  store i32 %i.cc, ptr %i.g, align 4, !noalias !34107
  %i.cd = call fastcc noundef ptr @_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull %i.i, i64 noundef 2) #45, !noalias !34107 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34143)
  %.val.i35.i = load i32, ptr %i.g, align 4, !range !639, !alias.scope !34143, !noalias !34107, !noundef !12
  %i.ce = call noundef i32 @close(i32 noundef %.val.i35.i) #45, !noalias !34146 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !34107
end_hunk_0
begin_hunk_1_@_RNvCsl8pJiQOn4hA_9coreutils4main:bb.a
  %i.hn = or disjoint i64 %.sroa.03.0.i10.i.i.i.i.i.i, 1
  %i.ho = icmp samesign ult i64 %i.hn, %i.hi
  br i1 %i.ho, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hp = getelementptr i8, ptr %i.fo, i64 %i.hj
  %i.hq = getelementptr i8, ptr %i.hp, i64 %.sroa.03.0.i10.i.i.i.i.i.i
  %.sroa.015.0.copyload.i15.i.i.i.i.i.i = load i16, ptr %i.hq, align 1, !alias.scope !34251, !noalias !34264
  %i.hr = zext i16 %.sroa.015.0.copyload.i15.i.i.i.i.i.i to i64
  %i.hs = shl nuw nsw i64 %.sroa.03.0.i10.i.i.i.i.i.i, 3
  %i.ht = shl nuw nsw i64 %i.hr, %i.hs
  %i.hu = or i64 %i.ht, %.sroa.0.0.i11.i.i.i.i.i.i
  %i.hv = or disjoint i64 %.sroa.03.0.i10.i.i.i.i.i.i, 2
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.03.1.i12.i.i.i.i.i.i = phi i64 [ %i.hv, %bb.ay ], [ %.sroa.03.0.i10.i.i.i.i.i.i, %bb.ax ] ; 3 uses
  %.sroa.0.1.i13.i.i.i.i.i.i = phi i64 [ %i.hu, %bb.ay ], [ %.sroa.0.0.i11.i.i.i.i.i.i, %bb.ax ] ; 2 uses
  %i.hw = icmp samesign ult i64 %.sroa.03.1.i12.i.i.i.i.i.i, %i.hi
  br i1 %i.hw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hx = add nuw i64 %.sroa.03.1.i12.i.i.i.i.i.i, %i.hj ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.fq
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.hx
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !34251, !noalias !34264, !noundef !12
  %i.ib = zext i8 %i.ia to i64
  %i.ic = shl nuw nsw i64 %.sroa.03.1.i12.i.i.i.i.i.i, 3
  %i.id = shl nuw nsw i64 %i.ib, %i.ic
  %i.ie = or i64 %i.id, %.sroa.0.1.i13.i.i.i.i.i.i
  br label %bb.bb

.lr.ph.i.i.i.i.i.i107:                            ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i107
  %i.if = phi i64 [ %i.iy, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hg, %bb.av ]
  %i.ig = phi i64 [ %i.ix, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hf, %bb.av ] ; 3 uses
  %i.ih = phi i64 [ %i.iu, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hd, %bb.av ]
  %.sroa.0.118.i.i.i.i.i.i = phi i64 [ %i.ja, %.lr.ph.i.i.i.i.i.i107 ], [ 0, %bb.av ] ; 2 uses
  %i.ii = phi i64 [ %i.iz, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hh, %bb.av ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.0.118.i.i.i.i.i.i
  %.sroa.07.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ij, align 1, !alias.scope !34271, !noalias !34264 ; 2 uses
  %i.ik = xor i64 %.sroa.07.0.copyload.i.i.i.i.i.i, %i.ih ; 3 uses
  %i.il = add i64 %i.ii, %i.ig                    ; 3 uses
  %i.im = call noundef i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.ig, i64 13)
  %i.in = xor i64 %i.il, %i.im                    ; 3 uses
  %i.io = call noundef i64 @llvm.fshl.i64(i64 %i.il, i64 %i.il, i64 32)
  %i.ip = add i64 %i.ik, %i.if                    ; 2 uses
  %i.iq = call noundef i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 16)
  %i.ir = xor i64 %i.ip, %i.iq                    ; 3 uses
  %i.is = add i64 %i.ir, %i.io                    ; 2 uses
  %i.it = call noundef i64 @llvm.fshl.i64(i64 %i.ir, i64 %i.ir, i64 21)
  %i.iu = xor i64 %i.it, %i.is                    ; 2 uses
  %i.iv = add i64 %i.ip, %i.in                    ; 3 uses
  %i.iw = call noundef i64 @llvm.fshl.i64(i64 %i.in, i64 %i.in, i64 17)
  %i.ix = xor i64 %i.iv, %i.iw                    ; 2 uses
  %i.iy = call noundef i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 32) ; 2 uses
  %i.iz = xor i64 %i.is, %.sroa.07.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.ja = add nuw i64 %.sroa.0.118.i.i.i.i.i.i, 8 ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.hj
  br i1 %i.jb, label %.lr.ph.i.i.i.i.i.i107, label %._crit_edge.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.sroa.0.2.i14.i.i.i.i.i.i = phi i64 [ %i.ie, %bb.ba ], [ %.sroa.0.1.i13.i.i.i.i.i.i, %bb.az ]
  %i.jc = shl i64 %i.fq, 56
  %i.jd = add i64 %i.jc, 576460752303423488
  %i.je = or i64 %.sroa.0.2.i14.i.i.i.i.i.i, %i.jd ; 2 uses
  %i.jf = xor i64 %i.je, %.sroa.26.2.i.i          ; 3 uses
  %i.jg = call noundef i64 @llvm.fshl.i64(i64 %i.jf, i64 %i.jf, i64 16)
  %i.jh = add i64 %i.jf, %.sroa.10.2.i.i          ; 2 uses
  %i.ji = xor i64 %i.jg, %i.jh                    ; 3 uses
  %i.jj = add i64 %.sroa.0.2.i.i, %.sroa.18.2.i.i ; 3 uses
  %i.jk = call noundef i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 32)
  %i.jl = add i64 %i.ji, %i.jk                    ; 2 uses
  %i.jm = xor i64 %i.jl, %i.je
  %i.jn = call noundef i64 @llvm.fshl.i64(i64 %.sroa.18.2.i.i, i64 %.sroa.18.2.i.i, i64 13)
  %i.jo = xor i64 %i.jj, %i.jn                    ; 3 uses
  %i.jp = add i64 %i.jh, %i.jo                    ; 3 uses
  %i.jq = call noundef i64 @llvm.fshl.i64(i64 %i.jo, i64 %i.jo, i64 17)
  %i.jr = xor i64 %i.jp, %i.jq                    ; 3 uses
  %i.js = add i64 %i.jm, %i.jr                    ; 3 uses
  %i.jt = call noundef i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 13)
  %i.ju = xor i64 %i.js, %i.jt                    ; 3 uses
  %i.jv = call noundef i64 @llvm.fshl.i64(i64 %i.ji, i64 %i.ji, i64 21)
  %i.jw = xor i64 %i.jv, %i.jl                    ; 3 uses
  %i.jx = call noundef i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 32)
  %i.jy = xor i64 %i.jx, 238
  %i.jz = add i64 %i.jw, %i.jy                    ; 2 uses
  %i.ka = add i64 %i.ju, %i.jz                    ; 3 uses
  %i.kb = call noundef i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 17)
  %i.kc = xor i64 %i.ka, %i.kb                    ; 3 uses
  %i.kd = call noundef i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 13)
  %i.ke = call noundef i64 @llvm.fshl.i64(i64 %i.jw, i64 %i.jw, i64 16)
  %i.kf = xor i64 %i.ke, %i.jz                    ; 3 uses
  %i.kg = call noundef i64 @llvm.fshl.i64(i64 %i.js, i64 %i.js, i64 32)
  %i.kh = add i64 %i.kf, %i.kg                    ; 2 uses
  %i.ki = add i64 %i.kc, %i.kh                    ; 3 uses
  %i.kj = xor i64 %i.kd, %i.ki                    ; 3 uses
  %i.kk = call noundef i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 17)
  %i.kl = call noundef i64 @llvm.fshl.i64(i64 %i.kf, i64 %i.kf, i64 21)
  %i.km = xor i64 %i.kl, %i.kh                    ; 3 uses
  %i.kn = call noundef i64 @llvm.fshl.i64(i64 %i.ka, i64 %i.ka, i64 32)
  %i.ko = add i64 %i.km, %i.kn                    ; 2 uses
  %i.kp = add i64 %i.kj, %i.ko                    ; 3 uses
  %i.kq = xor i64 %i.kk, %i.kp                    ; 3 uses
  %i.kr = call noundef i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 13)
  %i.ks = call noundef i64 @llvm.fshl.i64(i64 %i.km, i64 %i.km, i64 16)
  %i.kt = xor i64 %i.ks, %i.ko                    ; 3 uses
  %i.ku = call noundef i64 @llvm.fshl.i64(i64 %i.ki, i64 %i.ki, i64 32)
  %i.kv = add i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = add i64 %i.kq, %i.kv                    ; 3 uses
  %i.kx = xor i64 %i.kr, %i.kw                    ; 3 uses
  %i.ky = call noundef i64 @llvm.fshl.i64(i64 %i.kt, i64 %i.kt, i64 21)
  %i.kz = xor i64 %i.ky, %i.kv                    ; 3 uses
  %i.la = call noundef i64 @llvm.fshl.i64(i64 %i.kp, i64 %i.kp, i64 32)
  %i.lb = add i64 %i.kz, %i.la                    ; 2 uses
  %i.lc = add i64 %i.kx, %i.lb                    ; 3 uses
  %i.ld = call noundef i64 @llvm.fshl.i64(i64 %i.lc, i64 %i.lc, i64 32) ; 2 uses
  %i.le = call noundef i64 @llvm.fshl.i64(i64 %i.kz, i64 %i.kz, i64 16)
  %i.lf = xor i64 %i.le, %i.lb                    ; 3 uses
  %i.lg = call noundef i64 @llvm.fshl.i64(i64 %i.lf, i64 %i.lf, i64 21) ; 2 uses
  %i.lh = xor i64 %i.ld, %i.lg
  %i.li = call noundef i64 @llvm.fshl.i64(i64 %i.kx, i64 %i.kx, i64 17)
  %i.lj = xor i64 %i.li, %i.lc                    ; 2 uses
  %i.lk = xor i64 %i.lh, %i.lj                    ; 2 uses
  %i.ll = lshr i64 %i.lk, 32
  %i.lm = trunc nuw i64 %i.ll to i32
  %i.ln = urem i32 %i.lm, 27
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr @814, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !alias.scope !34272, !noalias !34275, !noundef !12
  %i.ls = xor i64 %i.lj, 221                      ; 3 uses
  %i.lt = call noundef i64 @llvm.fshl.i64(i64 %i.kw, i64 %i.kw, i64 32)
  %i.lu = add i64 %i.lf, %i.lt                    ; 2 uses
  %i.lv = add i64 %i.ls, %i.lu                    ; 3 uses
  %i.lw = call noundef i64 @llvm.fshl.i64(i64 %i.lv, i64 %i.lv, i64 32)
  %i.lx = xor i64 %i.lg, %i.lu                    ; 3 uses
  %i.ly = call noundef i64 @llvm.fshl.i64(i64 %i.lx, i64 %i.lx, i64 16)
  %i.lz = add i64 %i.lx, %i.ld                    ; 2 uses
  %i.ma = xor i64 %i.ly, %i.lz                    ; 3 uses
  %i.mb = add i64 %i.lw, %i.ma                    ; 2 uses
  %i.mc = call noundef i64 @llvm.fshl.i64(i64 %i.ma, i64 %i.ma, i64 21)
  %i.md = xor i64 %i.mb, %i.mc                    ; 3 uses
  %i.me = call noundef i64 @llvm.fshl.i64(i64 %i.md, i64 %i.md, i64 16)
  %i.mf = call noundef i64 @llvm.fshl.i64(i64 %i.ls, i64 %i.ls, i64 13)
  %i.mg = xor i64 %i.mf, %i.lv                    ; 3 uses
  %i.mh = add i64 %i.mg, %i.lz                    ; 3 uses
  %i.mi = call noundef i64 @llvm.fshl.i64(i64 %i.mh, i64 %i.mh, i64 32)
  %i.mj = add i64 %i.md, %i.mi                    ; 2 uses
  %i.mk = xor i64 %i.me, %i.mj                    ; 3 uses
  %i.ml = call noundef i64 @llvm.fshl.i64(i64 %i.mk, i64 %i.mk, i64 21)
  %i.mm = call noundef i64 @llvm.fshl.i64(i64 %i.mg, i64 %i.mg, i64 17)
  %i.mn = xor i64 %i.mh, %i.mm                    ; 3 uses
  %i.mo = add i64 %i.mn, %i.mb                    ; 3 uses
  %i.mp = call noundef i64 @llvm.fshl.i64(i64 %i.mo, i64 %i.mo, i64 32)
  %i.mq = add i64 %i.mk, %i.mp                    ; 2 uses
  %i.mr = xor i64 %i.ml, %i.mq                    ; 3 uses
  %i.ms = call noundef i64 @llvm.fshl.i64(i64 %i.mr, i64 %i.mr, i64 16)
  %i.mt = call noundef i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 13)
  %i.mu = xor i64 %i.mt, %i.mo                    ; 3 uses
  %i.mv = add i64 %i.mu, %i.mj                    ; 3 uses
  %i.mw = call noundef i64 @llvm.fshl.i64(i64 %i.mv, i64 %i.mv, i64 32)
  %i.mx = add i64 %i.mr, %i.mw                    ; 2 uses
  %i.my = xor i64 %i.ms, %i.mx                    ; 2 uses
  %i.mz = call noundef i64 @llvm.fshl.i64(i64 %i.my, i64 %i.my, i64 21)
  %i.na = call noundef i64 @llvm.fshl.i64(i64 %i.mu, i64 %i.mu, i64 17)
  %i.nb = xor i64 %i.na, %i.mv                    ; 3 uses
  %i.nc = call noundef i64 @llvm.fshl.i64(i64 %i.nb, i64 %i.nb, i64 13)
  %i.nd = add i64 %i.nb, %i.mq
  %i.ne = xor i64 %i.nc, %i.nd                    ; 3 uses
  %i.nf = call noundef i64 @llvm.fshl.i64(i64 %i.ne, i64 %i.ne, i64 17)
  %i.ng = xor i64 %i.mz, %i.nf
  %i.nh = add i64 %i.ne, %i.mx                    ; 2 uses
  %i.ni = lshr i64 %i.nh, 32
  %i.nj = xor i64 %i.ng, %i.ni
  %i.nk = xor i64 %i.nj, %i.nh
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = load i32, ptr %i.lp, align 4, !alias.scope !34272, !noalias !34275, !noundef !12
  %i.nn = trunc i64 %i.lk to i32
  %i.no = mul i32 %i.nm, %i.nn
  %i.np = add i32 %i.no, %i.lr
  %i.nq = add i32 %i.np, %i.nl
  %i.nr = urem i32 %i.nq, 79
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr @815, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !noalias !34277, !noundef !12
  %i.nv = getelementptr inbounds nuw [32 x i8], ptr @880, i64 %i.nu ; 4 uses
  %i.nw = getelementptr i8, ptr %i.nv, i64 8
  %.val6.i = load i64, ptr %i.nw, align 8, !noalias !34277, !noundef !12
  %i.nx = icmp eq i64 %.val6.i, %i.fq
  br i1 %i.nx, label %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i, label %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit

_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.bb
  %.val5.i = load ptr, ptr %i.nv, align 8, !noalias !34277, !nonnull !12, !noundef !12
  %bcmp.i.i.i109 = call i32 @bcmp(ptr nonnull readonly %.val5.i, ptr nonnull readonly %i.fo, i64 %i.fq), !alias.scope !34278, !noalias !34282
  %i.ny = icmp eq i32 %bcmp.i.i.i109, 0
  br i1 %i.ny, label %bb.bc, label %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit

bb.bc:                                            ; preds = %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %0 = ptrtoint ptr %i.nv to i64
  store i64 %0, ptr %.sroa.4172, align 8, !alias.scope !34246, !noalias !34283
  br label %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit

_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.bb, %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i, %bb.bc
  %.sink29.i.sroa.phi = phi ptr [ %.sroa.4172, %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.9173, %bb.bc ], [ %.sroa.4172, %bb.bb ]
  %.sink.i108 = phi ptr [ null, %_RNvXCsbV8h3pAeO5B_10phf_sharedReINtB2_5PhfEqeE6phf_eqCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.nz, %bb.bc ], [ null, %bb.bb ]
  store ptr %.sink.i108, ptr %.sink29.i.sroa.phi, align 8, !alias.scope !34246, !noalias !34283
  %.sroa.4172.0..sroa.4172.0..sroa.4172.0..sroa.4172.8. = load i64, ptr %.sroa.4172, align 8, !noundef !12
  %.not64 = icmp eq i64 %.sroa.4172.0..sroa.4172.0..sroa.4172.0..sroa.4172.8., 0
  br i1 %.not64, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit
  %.sroa.9173.0..sroa.9173.0..sroa.9173.0..sroa.9173.16. = load i64, ptr %.sroa.9173, align 8, !range !19053, !noundef !12
  %1 = inttoptr i64 %.sroa.9173.0..sroa.9173.0..sroa.9173.0..sroa.9173.16. to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4172)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9173)
  %i.oa = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  call void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation26setup_localization_or_exit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fo, i64 noundef %i.fq) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ob = call fastcc noundef ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #51 ; 6 uses
  store i64 %.sroa.9145.0, ptr %i.ob, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store ptr %.sroa.6144.0, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.411.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  store i64 %.sroa.9145.0, ptr %.sroa.411.0..sroa_idx12, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !34284)
  store ptr %i.ob, ptr %i.l, align 8, !alias.scope !34287
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ob, ptr %.sroa.4156.0..sroa_idx, align 8, !alias.scope !34287
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.5157.0..sroa_idx, align 8, !alias.scope !34287
  %.sroa.6158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.oc, ptr %.sroa.6158.0..sroa_idx, align 8, !alias.scope !34287
  %i.od = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %.sroa.0130.0, ptr %i.od, align 8, !alias.scope !34289, !noalias !34284
  %i.oe = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.ad, ptr %i.oe, align 8, !alias.scope !34289, !noalias !34284
  %i.of = call noundef i32 %i.oa(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.l) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef %i.of) #52
  unreachable

bb.be:                                            ; preds = %_RINvMs2_NtCs5Jw8sa4iA4K_3phf11ordered_mapINtB6_10OrderedMapReTFINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB14_6cloned6ClonedINtNtNtB18_5slice4iter4IterB2F_EEEElFENtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandEE12get_internaleECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4172)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9173)
  switch i64 %i.fq, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit [
    i64 6, label %bb.bf
    i64 2, label %bb.bh
    i64 0, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread
  ]

bb.bf:                                            ; preds = %bb.be
  %i.og = load i32, ptr %i.fo, align 1
  %i.oh = xor i32 %i.og, 1701326125
  %i.oi = getelementptr i8, ptr %i.fo, i64 4
  %i.oj = load i16, ptr %i.oi, align 1
  %i.ok = zext i16 %i.oj to i32
  %i.ol = xor i32 %i.ok, 28780
  %i.om = or i32 %i.oh, %i.ol
  %i.on = icmp ne i32 %i.om, 0
  %i.oo = zext i1 %i.on to i32
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %bb.bg, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  call fastcc void @_RINvCsl8pJiQOn4hA_9coreutils5usageINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBB_6cloned6ClonedINtNtNtBF_5slice4iter4IterB2c_EEEEB2_(ptr nonnull @880, i64 79, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cv) #45
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 0) #52
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.oq = load i16, ptr %i.fo, align 1
  %i.or = icmp ne i16 %i.oq, 26669
  %i.os = zext i1 %i.or to i32
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %bb.bg, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.be, %bb.bh, %bb.bf
  %rhsc = load i8, ptr %i.fo, align 1
  %i.ou = icmp eq i8 %rhsc, 45
  br i1 %i.ou, label %bb.bi, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.be, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation9not_found(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6144.0, i64 noundef %.sroa.9145.0) #52
  unreachable

bb.bi:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation19unrecognized_option(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6144.0, i64 noundef %.sroa.9145.0) #52
  unreachable

bb.bj:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.gs, ptr %i.p, align 8
  %i.ov = ptrtoint ptr %i.gs to i64               ; 3 uses
  %i.ow = and i64 %i.ov, 3
  switch i64 %i.ow, label %default.unreachable [
    i64 2, label %bb.bk
    i64 3, label %bb.bl
    i64 0, label %bb.bm
    i64 1, label %bb.bn
  ], !prof !91

bb.bk:                                            ; preds = %bb.bj
  %i.ox = lshr i64 %i.ov, 32
  %i.oy = trunc nuw i64 %i.ox to i32
  %i.oz = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #45
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !nonnull !12, !noundef !12
  %i.pc = call noundef i8 %i.pb(i32 noundef %i.oy) #45, !inline_history !5493
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.bl:                                            ; preds = %bb.bj
  %i.pd = lshr i64 %i.ov, 32
  %i.pe = icmp ult ptr %i.gs, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.pd to i8  ; 2 uses
  %i.pf = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.pe)
  call void @llvm.assume(i1 %i.pf)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.bm:                                            ; preds = %bb.bj
  %i.pg = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.ph = load i8, ptr %i.pg, align 8, !range !605, !noundef !12
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.bn:                                            ; preds = %bb.bj
  %i.pi = getelementptr i8, ptr %i.gs, i64 31
  %i.pj = load i8, ptr %i.pi, align 8, !range !605, !noundef !12
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.bk, %bb.bl, %bb.bm, %bb.bn
  %.sroa.0.0.i114 = phi i8 [ %i.pc, %bb.bk ], [ %switch.idx.cast.i.i.i, %bb.bl ], [ %i.ph, %bb.bm ], [ %i.pj, %bb.bn ]
  %.not58 = icmp eq i8 %.sroa.0.0.i114, 11
  br i1 %.not58, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bp, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 0) #52
  unreachable

bb.bp:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bo

bb.bq:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error11strip_errno(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.pk = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @215, ptr noundef nonnull %i.m) #45
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils(ptr %i.pk) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 1) #52
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ao, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.pl = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #45
  store ptr %i.pl, ptr %i.y, align 8
  %i.pm = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y) #45
  store ptr %i.pm, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.br

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104.thread222: ; preds = %bb.ap, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104
  %.sroa.8149.0226 = phi ptr [ %i.gf, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit104 ], [ inttoptr (i64 1 to ptr), %bb.ap ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils(i64 %.val2.i99, ptr nonnull %.sroa.8149.0226) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.aa, align 8
  %i.pq = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @883, ptr noundef nonnull inttoptr (i64 57 to ptr)) #45
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils(ptr %i.pq) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 1) #52
  unreachable

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit, %bb.ce
  %.sroa.0151.0.idx250 = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.0151.0.add, %bb.ce ] ; 2 uses
  %.sroa.0151.0.ptr = getelementptr inbounds nuw i8, ptr @880, i64 %.sroa.0151.0.idx250
  %.sroa.0151.0.add = add nuw nsw i64 %.sroa.0151.0.idx250, 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %.sroa.0151.0.ptr, ptr %i.x, align 8, !captures !1848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.x, ptr %i.w, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.436.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34290
  store ptr %i.z, ptr %i.d, align 8, !noalias !34290
  store ptr null, ptr %i.pn, align 8, !noalias !34290
  %i.pr = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @325, ptr noundef nonnull @6, ptr noundef nonnull %i.w) #45
  %i.ps = load ptr, ptr %i.pn, align 8, !noalias !34290, !noundef !12 ; 11 uses
  %.not.i5.i = icmp eq ptr %i.ps, null            ; 2 uses
  br i1 %i.pr, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  br i1 %.not.i5.i, label %bb.bx, label %bb.bz, !prof !48

bb.bt:                                            ; preds = %bb.br
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit.i.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34295
  %i.pt = ptrtoint ptr %i.ps to i64               ; 2 uses
  %i.pu = and i64 %i.pt, 3
  switch i64 %i.pu, label %default.unreachable [
end_hunk_1
