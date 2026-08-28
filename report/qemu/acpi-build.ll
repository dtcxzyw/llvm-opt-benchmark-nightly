Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/acpi-build?download=true
inline.NumInlined: 114
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@acpi_get_i386_pci_host:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @object_resolve_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @acpi_setup() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.AcpiBuildTables, align 8    ; 11 uses
  %i.a = tail call ptr @qdev_get_machine() #11
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 125, ptr noundef nonnull @__func__.PC_MACHINE) #11 ; 4 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 408 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1216
  %i.g = load i8, ptr %i.f, align 16, !range !7, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #11
  %i.j = tail call zeroext i1 @x86_machine_is_acpi_enabled(ptr noundef %i.i) #11
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !9
  %i.k = tail call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #12 ; 9 uses
  call void @acpi_build_tables_init(ptr noundef nonnull %0) #11
  %i.l = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #11
  call fastcc void @acpi_build(ptr noundef %0, ptr noundef %i.l)
  %i.m = load ptr, ptr %0, align 8
  %i.n = call ptr @acpi_add_rom_blob(ptr noundef nonnull @acpi_build_update, ptr noundef %i.k, ptr noundef %i.m, ptr noundef nonnull @.str.2) #11 ; 2 uses
  store ptr %i.n, ptr %i.k, align 8
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 2310, ptr noundef nonnull @__PRETTY_FUNCTION__.acpi_setup) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call ptr @acpi_add_rom_blob(ptr noundef nonnull @acpi_build_update, ptr noundef nonnull %i.k, ptr noundef %i.q, ptr noundef nonnull @.str.5) #11
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i32 @acpi_data_len(ptr noundef nonnull %i.v) #11
  %i.y = zext i32 %i.x to i64
  call void @fw_cfg_add_file(ptr noundef %i.t, ptr noundef nonnull @.str.6, ptr noundef %i.w, i64 noundef %i.y) #11
  %i.z = call ptr @object_resolve_path_type(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.201, ptr noundef null) #11
  %i.aa = call ptr @object_dynamic_cast_assert(ptr noundef %i.z, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, i32 noundef 70, ptr noundef nonnull @__func__.tpm_find) #11 ; 4 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %tpm_ppi_enabled.exit.thread, label %tpm_ppi_enabled.exit

tpm_ppi_enabled.exit:                             ; preds = %bb.f
  %i.ab = call ptr @object_get_class(ptr noundef nonnull %i.aa) #11
  %i.ac = call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ab, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, i32 noundef 33, ptr noundef nonnull @__func__.TPM_IF_GET_CLASS) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ae = load i8, ptr %i.ad, align 8, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %tpm_get_version.exit, label %tpm_ppi_enabled.exit.thread

tpm_get_version.exit:                             ; preds = %tpm_ppi_enabled.exit
  %i.ag = call ptr @object_get_class(ptr noundef nonnull %i.aa) #11
  %i.ah = call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ag, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, i32 noundef 33, ptr noundef nonnull @__func__.TPM_IF_GET_CLASS) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i32 %i.aj(ptr noundef nonnull %i.aa) #11, !inline_history !10
  %i.al = trunc i32 %i.ak to i8
  store i32 -19640320, ptr @acpi_setup.tpm_config, align 4
  store i8 %i.al, ptr getelementptr inbounds nuw (i8, ptr @acpi_setup.tpm_config, i64 4), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @acpi_setup.tpm_config, i64 5), align 1
  %i.am = load ptr, ptr %i.d, align 8
  call void @fw_cfg_add_file(ptr noundef %i.am, ptr noundef nonnull @.str.7, ptr noundef nonnull @acpi_setup.tpm_config, i64 noundef 6) #11
  br label %tpm_ppi_enabled.exit.thread

tpm_ppi_enabled.exit.thread:                      ; preds = %bb.f, %tpm_get_version.exit, %tpm_ppi_enabled.exit
  %i.an = call ptr @object_resolve_path_type(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.203, ptr noundef null) #11 ; 2 uses
  %.not23 = icmp eq ptr %i.an, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %tpm_ppi_enabled.exit.thread
  %i.ao = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.204, i32 noundef 19, ptr noundef nonnull @__func__.VMGENID) #11
  %i.ap = load ptr, ptr %i.d, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void @vmgenid_add_fw_cfg(ptr noundef %i.ao, ptr noundef %i.ap, ptr noundef %i.ar) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %tpm_ppi_enabled.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call ptr @acpi_add_rom_blob(ptr noundef nonnull @acpi_build_update, ptr noundef nonnull %i.k, ptr noundef %i.at, ptr noundef nonnull @.str.8) #11
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.au, ptr %i.av, align 8
  call void @qemu_register_reset(ptr noundef nonnull @acpi_build_reset, ptr noundef nonnull %i.k) #11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 0, ptr %i.aw, align 8
  %i.ax = call i32 @vmstate_register_with_alias_id(ptr noundef null, i32 noundef 0, ptr noundef nonnull @vmstate_acpi_build, ptr noundef nonnull %i.k, i32 noundef -1, i32 noundef 0, ptr noundef null) #11 ; 0 uses
  call void @acpi_build_tables_cleanup(ptr noundef nonnull %0, i1 noundef zeroext false) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret void
}

declare ptr @qdev_get_machine() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare zeroext i1 @x86_machine_is_acpi_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

declare void @acpi_build_tables_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @acpi_build(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.AcpiTable, align 8          ; 9 uses
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %3 = alloca %struct.AcpiTable, align 8          ; 9 uses
  %4 = alloca %struct.AcpiTable, align 8          ; 9 uses
  %5 = alloca %struct.AcpiTable, align 8          ; 9 uses
  %6 = alloca %struct.AcpiTable, align 8          ; 9 uses
  %7 = alloca %struct.AcpiTable, align 8          ; 9 uses
  %i.b = alloca [40 x i8], align 16               ; 4 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.AcpiPmInfo, align 8         ; 52 uses
  %9 = alloca %struct.AcpiMcfgInfo, align 8       ; 5 uses
  %10 = alloca %struct.AcpiSlicOem, align 8       ; 7 uses
  %11 = alloca %struct.AcpiRsdpData, align 8      ; 7 uses
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 125, ptr noundef nonnull @__func__.PC_MACHINE) #11 ; 3 uses
  %i.h = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #11 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1168
  %i.j = load ptr, ptr %i.i, align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %8, i8 0, i64 184, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.k = load ptr, ptr %0, align 8                ; 132 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.l = tail call ptr @object_resolve_type_unambiguous(ptr noundef nonnull @.str.19, ptr noundef null) #11 ; 2 uses
  %i.m = tail call ptr @object_resolve_type_unambiguous(ptr noundef nonnull @.str.20, ptr noundef null) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.l, null                ; 2 uses
  %i.n = select i1 %.not.i, ptr %i.m, ptr %i.l    ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 3 uses
  store i16 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 178 ; 2 uses
  store i16 0, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 180 ; 2 uses
  store i16 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 3 ; 2 uses
  store i8 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store i8 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 184 ; 4 uses
  store i64 0, ptr %i.t, align 8
  %.not74.i = icmp eq ptr %i.n, null
  br i1 %.not74.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.4, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__.acpi_get_pm_info) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.v = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 107, ptr noundef nonnull @__func__.X86_MACHINE) #11
  %i.w = tail call zeroext i1 @object_property_get_bool(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.31, ptr noundef null) #11
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = tail call zeroext i1 @x86_machine_is_smm_enabled(ptr noundef %i.v) #11
  %12 = xor i1 %i.x, true
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.i.i = phi i1 [ %12, %bb.d ], [ false, %bb.c ]
  %i.y = tail call i64 @object_property_get_uint(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.23, ptr noundef null) #11 ; 3 uses
  %i.z = tail call i64 @object_property_get_uint(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.32, ptr noundef null) #11
  %i.aa = tail call i64 @object_property_get_uint(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.33, ptr noundef null) #11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = tail call i64 @object_property_get_uint(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.34, ptr noundef null) #11
  br i1 %.not.i.i, label %init_common_fadt_data.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call i64 @object_property_get_uint(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.35, ptr noundef null) #11
  %i.af = trunc i64 %i.ae to i8
  %i.ag = tail call i64 @object_property_get_uint(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.36, ptr noundef null) #11
  %i.ah = trunc i64 %i.ag to i8
  br label %init_common_fadt_data.exit.i

init_common_fadt_data.exit.i:                     ; preds = %bb.f, %bb.e
  %i.ai = phi i8 [ %i.af, %bb.f ], [ 0, %bb.e ]
  %i.aj = phi i32 [ 178, %bb.f ], [ 0, %bb.e ]
  %i.ak = phi i8 [ %i.ah, %bb.f ], [ 0, %bb.e ]
  store i32 0, ptr %i.d, align 4, !annotation !9
  store i32 0, ptr %i.e, align 4, !annotation !9
  store i32 0, ptr %i.f, align 4, !annotation !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !annotation !9
  %i.al = trunc i64 %i.ad to i16
  %i.am = icmp ugt i32 %i.ac, 8
  %i.an = select i1 %i.am, i32 295077, i32 32933
  %.tr.i.i = trunc i64 %i.z to i8
  %i.ao = shl i8 %.tr.i.i, 3
  %i.ap = add i64 %i.y, 8
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = and i64 %i.y, 4294967295
  %i.as = add i64 %i.y, 4
  %i.at = and i64 %i.as, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i8 0, ptr %i.c, align 1
  %i.au = call ptr @object_resolve_path_type(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.c) #11
  %i.av = icmp ne ptr %i.au, null
  %i.aw = load i8, ptr %i.c, align 1, !range !7
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = select i1 %i.av, i1 true, i1 %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.az = select i1 %i.ay, i16 2, i16 0
  store <4 x i8> <i8 1, i8 16, i8 0, i8 0>, ptr %i.u, align 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i, align 4
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.at, ptr %.sroa.9.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store <4 x i8> <i8 1, i8 32, i8 0, i8 0>, ptr %.sroa.10.0..sroa_idx.i.i, align 8
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 0, ptr %.sroa.14.0..sroa_idx.i.i, align 4
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.ar, ptr %.sroa.15.0..sroa_idx.i.i, align 8
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store <4 x i8> <i8 1, i8 32, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx.i.i, align 8
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 0, ptr %.sroa.20.0..sroa_idx.i.i, align 4
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %i.aq, ptr %.sroa.21.0..sroa_idx.i.i, align 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i8 1, ptr %.sroa.22.0..sroa_idx.i.i, align 8
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 57
  store i8 %i.ao, ptr %.sroa.23.0..sroa_idx.i.i, align 1
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 58
  store i8 0, ptr %.sroa.24.0..sroa_idx.i.i, align 2
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 59
  store i8 0, ptr %.sroa.25.0..sroa_idx.i.i, align 1
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i32 0, ptr %.sroa.26.0..sroa_idx.i.i, align 4
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 %i.aa, ptr %.sroa.27.0..sroa_idx.i.i, align 8
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 121 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.sroa.28.0..sroa_idx.i.i, i8 0, i64 49, i1 false)
  store i8 3, ptr %.sroa.32.0..sroa_idx.i.i, align 1
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 122
  store i16 0, ptr %.sroa.33.0..sroa_idx.i.i, align 2
  %.sroa.34.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 124 ; 3 uses
  store i32 %i.an, ptr %.sroa.34.0..sroa_idx.i.i, align 4
  %.sroa.35.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i32 %i.aj, ptr %.sroa.35.0..sroa_idx.i.i, align 8
  %.sroa.36.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 132
  store i16 %i.al, ptr %.sroa.36.0..sroa_idx.i.i, align 4
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 134
  store i8 1, ptr %.sroa.37.0..sroa_idx.i.i, align 2
  %.sroa.38.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 135
  store i8 %i.ai, ptr %.sroa.38.0..sroa_idx.i.i, align 1
  %.sroa.39.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i8 %i.ak, ptr %.sroa.39.0..sroa_idx.i.i, align 8
  %.sroa.40.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 137
  store i8 50, ptr %.sroa.40.0..sroa_idx.i.i, align 1
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 138
  store i16 4095, ptr %.sroa.41.0..sroa_idx.i.i, align 2
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 140
  store i16 4095, ptr %.sroa.42.0..sroa_idx.i.i, align 4
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 142
  store i16 0, ptr %.sroa.43.0..sroa_idx.i.i, align 2
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i16 %i.az, ptr %.sroa.44.0..sroa_idx.i.i, align 8
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i, i8 0, i64 30, i1 false)
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %init_common_fadt_data.exit.i
  store i8 1, ptr %.sroa.32.0..sroa_idx.i.i, align 1
  store i16 -20736, ptr %i.o, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %init_common_fadt_data.exit.i
  %.not75.i = icmp eq ptr %i.m, null
  br i1 %.not75.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = call i64 @object_property_get_uint(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.22, ptr noundef null) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) @__const.acpi_get_pm_info.r, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i8 15, ptr %i.bb, align 8
  %i.bc = load i32, ptr %.sroa.34.0..sroa_idx.i.i, align 4
  %i.bd = or i32 %i.bc, 1024
  store i32 %i.bd, ptr %.sroa.34.0..sroa_idx.i.i, align 4
  store i16 3288, ptr %i.o, align 8
  %i.be = trunc i64 %i.ba to i8                   ; 2 uses
  %i.bf = lshr i8 %i.be, 1
  %i.bg = and i8 %i.bf, 1
  store i8 %i.bg, ptr %i.r, align 1
  %i.bh = lshr i8 %i.be, 2
  %i.bi = and i8 %i.bh, 1
  store i8 %i.bi, ptr %i.s, align 4
  %i.bj = call i64 @object_property_get_uint(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.23, ptr noundef null) #11
  %i.bk = add i64 %i.bj, 96
  store i64 %i.bk, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bl = call i64 @object_property_get_uint(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.24, ptr noundef null) #11
  %i.bm = trunc i64 %i.bl to i16
  store i16 %i.bm, ptr %i.p, align 2
  %i.bn = call i64 @object_property_get_uint(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.25, ptr noundef null) #11
  %i.bo = trunc i64 %i.bn to i16
  store i16 %i.bo, ptr %i.q, align 4
  %i.bp = call ptr @object_property_get_qobject(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.26, ptr noundef null) #11 ; 5 uses
  %.not76.i = icmp eq ptr %i.bp, null
  br i1 %.not76.i, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  store i8 0, ptr %8, align 8
  br label %qobject_unref_impl.exit.i

bb.k:                                             ; preds = %bb.j
  %.val.i.i = load i32, ptr %i.bp, align 8        ; 2 uses
  %i.bq = add i32 %.val.i.i, -1
  %or.cond.i.i.i = icmp ult i32 %i.bq, 6
  br i1 %or.cond.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.br = icmp eq i32 %.val.i.i, 2
  %.0.i.i = select i1 %i.br, ptr %i.bp, ptr null
  %i.bs = call i64 @qnum_get_uint(ptr noundef %.0.i.i) #11
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = zext i1 %i.bt to i8
  store i8 %i.bu, ptr %8, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8
  %.not6.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not6.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bx = atomicrmw sub ptr %i.bv, i64 1 seq_cst, align 8
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.p, label %qobject_unref_impl.exit.i

bb.p:                                             ; preds = %bb.o
  call void @qobject_destroy(ptr noundef nonnull %i.bp) #11
  br label %qobject_unref_impl.exit.i

qobject_unref_impl.exit.i:                        ; preds = %bb.p, %bb.o, %.thread.i
  %i.bz = call ptr @object_property_get_qobject(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.27, ptr noundef null) #11 ; 5 uses
  %.not77.i = icmp eq ptr %i.bz, null
  br i1 %.not77.i, label %.thread97.i, label %bb.q

bb.q:                                             ; preds = %qobject_unref_impl.exit.i
  %.val.i82.i = load i32, ptr %i.bz, align 8      ; 2 uses
  %i.ca = add i32 %.val.i82.i, -1
  %or.cond.i.i83.i = icmp ult i32 %i.ca, 6
  br i1 %or.cond.i.i83.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #13
  unreachable

.thread97.i:                                      ; preds = %qobject_unref_impl.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 1
  store i8 0, ptr %i.cb, align 1
  br label %qobject_unref_impl.exit88.i

bb.s:                                             ; preds = %bb.q
  %i.cc = icmp eq i32 %.val.i82.i, 2
  %.0.i84.i = select i1 %i.cc, ptr %i.bz, ptr null
  %i.cd = call i64 @qnum_get_uint(ptr noundef %.0.i84.i) #11
end_hunk_0
