inline.NumInlined: 3152
inline.NumDeleted: 1113
begin_hunk_0_@_ZN4LIEF5MachO16FunctionVariants11parse_entryERNS_12BinaryStreamE:bb.a
  %i.b = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"class.LIEF::MachO::FunctionVariants::RuntimeTable", align 8 ; 13 uses
  %4 = alloca %"class.LIEF::MachO::FunctionVariants::RuntimeTableEntry", align 8 ; 9 uses
  %5 = alloca %"class.std::vector.53", align 16   ; 7 uses
  %6 = alloca %"class.LIEF::MachO::FunctionVariants::RuntimeTableEntry", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO16FunctionVariants11parse_entryERNS_12BinaryStreamE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.ptr59 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_1
begin_hunk_2_@_ZN4LIEF5MachO16FunctionVariants11parse_entryERNS_12BinaryStreamE:bb.a
  %i.bm = load i32, ptr %3, align 8
  call void @_ZN4LIEF5MachO20get_high_level_flagsEN3tcb4spanIKhLm18446744073709551615EEENS0_16FunctionVariants12RuntimeTable4KINDE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.53") align 8 %5, ptr nonnull %.ptr59, i64 %.pn10.i, i32 noundef %i.bm)
  %i.bn = load ptr, ptr %i.ah, align 16
  %7 = load <2 x ptr>, ptr %5, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.am, align 8            ; 6 uses
  %.pre63 = load ptr, ptr %i.an, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 12, i1 false)
  store <2 x ptr> %7, ptr %i.aj, align 8
  store ptr %i.bn, ptr %i.al, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
end_hunk_2
begin_hunk_3_@_ZN4LIEF5MachO16FunctionVariants11parse_entryERNS_12BinaryStreamE:bb.a
  %i.bu = load ptr, ptr %i.am, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr %i.bv, ptr %i.am, align 8
  br label %_ZN4LIEF5MachO16FunctionVariants17RuntimeTableEntryD2Ev.exit

_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit: ; preds = %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit
  call void @_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %.pre, ptr noundef nonnull align 8 dereferenceable(40) %6)
  %.pr = load ptr, ptr %i.aj, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZN4LIEF5MachO16FunctionVariants17RuntimeTableEntryD2Ev.exit, label %8

8:                                                ; preds = %_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit
  %9 = load ptr, ptr %i.al, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %.pr to i64
  %12 = sub i64 %10, %11
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %12) #28
  br label %_ZN4LIEF5MachO16FunctionVariants17RuntimeTableEntryD2Ev.exit

_ZN4LIEF5MachO16FunctionVariants17RuntimeTableEntryD2Ev.exit: ; preds = %_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit.thread, %_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit, %8
  %13 = load ptr, ptr %5, align 16                ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %13, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit19, label %bb.j

bb.j:                                             ; preds = %_ZN4LIEF5MachO16FunctionVariants17RuntimeTableEntryD2Ev.exit
  %i.bw = load ptr, ptr %i.ah, align 16
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %13 to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %i.bz) #28
  br label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit19

_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit19: ; preds = %_ZN4LIEF5MachO16FunctionVariants17RuntimeTableEntryD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ca = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ca, null
end_hunk_3
