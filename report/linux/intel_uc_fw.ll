Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_uc_fw?download=true
inline.NumInlined: 150
inline.NumDeleted: 66
begin_hunk_0
@__UNIQUE_ID_modinfo_825 = internal constant [37 x i8] c"i915.firmware=i915/kbl_huc_4.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_826 = internal constant [37 x i8] c"i915.firmware=i915/bxt_huc_2.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_827 = internal constant [37 x i8] c"i915.firmware=i915/skl_huc_2.0.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_828 = internal constant [33 x i8] c"i915.firmware=i915/mtl_gsc_1.bin\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [64 x i8] c"[drm] GT%u: %s firmware %s: unexpected version: %u.%u != %u.%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"[drm] GT%u: %s firmware %s (%d.%d.%d) is recommended, but only %s (%d.%d.%d) was found\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"[drm] GT%u: Consider updating your linux-firmware pkg or downloading from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"[drm] *ERROR* GT%u: %s firmware %s: fetch failed %pe\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"[drm] GT%u: %s firmware(s) can be downloaded from %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"[drm] *ERROR* GT%u: Failed to load %s firmware %s %pe\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"GT%u: %s fw pin-pages failed %pe\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"GT%u: %s fw rsa data creation failed %pe\0A\00", align 1
@vmemmap_base = external dso_local local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"%s firmware: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%s firmware wanted: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"\09status: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\09version: wanted %u.%u.%u, found %u.%u.%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\09version: found %u.%u.%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\09uCode: %u bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\09RSA: %u bytes\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"[drm] *ERROR* No blob array for %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [82 x i8] c"[drm] *ERROR* Duplicate %s blobs: %s r%u %s%d.%d.%d [%s] matches %s%d.%d.%d [%s]\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.20 = private unnamed_addr constant [87 x i8] c"[drm] *ERROR* Invalid %s blob order: %s r%u %s%d.%d.%d comes before %s r%u %s%d.%d.%d\0A\00", align 1
@blobs_guc = internal constant [21 x %struct.uc_fw_platform_requirement] [%struct.uc_fw_platform_requirement <{ i32 37, i8 0, %struct.uc_fw_blob <{ ptr @.str.22, i8 0, i8 70, i8 53, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 36, i8 0, %struct.uc_fw_blob <{ ptr @.str.23, i8 0, i8 70, i8 53, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 35, i8 0, %struct.uc_fw_blob <{ ptr @.str.24, i8 0, i8 70, i8 12, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 35, i8 0, %struct.uc_fw_blob <{ ptr @.str.25, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 35, i8 0, %struct.uc_fw_blob <{ ptr @.str.26, i8 1, i8 69, i8 0, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 34, i8 0, %struct.uc_fw_blob <{ ptr @.str.27, i8 0, i8 70, i8 12, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 34, i8 0, %struct.uc_fw_blob <{ ptr @.str.28, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 34, i8 0, %struct.uc_fw_blob <{ ptr @.str.29, i8 1, i8 69, i8 0, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 33, i8 0, %struct.uc_fw_blob <{ ptr @.str.30, i8 0, i8 70, i8 5, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 32, i8 0, %struct.uc_fw_blob <{ ptr @.str.28, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 31, i8 0, %struct.uc_fw_blob <{ ptr @.str.28, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 30, i8 0, %struct.uc_fw_blob <{ ptr @.str.31, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 29, i8 0, %struct.uc_fw_blob <{ ptr @.str.31, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 28, i8 0, %struct.uc_fw_blob <{ ptr @.str.32, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 27, i8 5, %struct.uc_fw_blob <{ ptr @.str.33, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 27, i8 0, %struct.uc_fw_blob <{ ptr @.str.34, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 26, i8 0, %struct.uc_fw_blob <{ ptr @.str.34, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 25, i8 0, %struct.uc_fw_blob <{ ptr @.str.35, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 24, i8 0, %struct.uc_fw_blob <{ ptr @.str.34, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 23, i8 0, %struct.uc_fw_blob <{ ptr @.str.36, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 22, i8 0, %struct.uc_fw_blob <{ ptr @.str.37, i8 1, i8 70, i8 1, i8 1, i8 0 }> }>], align 16
@blobs_huc = internal constant [19 x %struct.uc_fw_platform_requirement] [%struct.uc_fw_platform_requirement <{ i32 37, i8 0, %struct.uc_fw_blob <{ ptr @.str.38, i8 0, i8 0, i8 0, i8 0, i8 1 }> }>, %struct.uc_fw_platform_requirement <{ i32 36, i8 0, %struct.uc_fw_blob <{ ptr @.str.39, i8 0, i8 0, i8 0, i8 0, i8 1 }> }>, %struct.uc_fw_platform_requirement <{ i32 35, i8 0, %struct.uc_fw_blob <{ ptr @.str.40, i8 0, i8 0, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 35, i8 0, %struct.uc_fw_blob <{ ptr @.str.41, i8 1, i8 7, i8 9, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 34, i8 0, %struct.uc_fw_blob <{ ptr @.str.40, i8 0, i8 0, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 34, i8 0, %struct.uc_fw_blob <{ ptr @.str.41, i8 1, i8 7, i8 9, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 33, i8 0, %struct.uc_fw_blob <{ ptr @.str.42, i8 0, i8 0, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 32, i8 0, %struct.uc_fw_blob <{ ptr @.str.41, i8 1, i8 7, i8 9, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 31, i8 0, %struct.uc_fw_blob <{ ptr @.str.41, i8 1, i8 7, i8 9, i8 3, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 30, i8 0, %struct.uc_fw_blob <{ ptr @.str.43, i8 1, i8 9, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 29, i8 0, %struct.uc_fw_blob <{ ptr @.str.43, i8 1, i8 9, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 28, i8 0, %struct.uc_fw_blob <{ ptr @.str.44, i8 1, i8 9, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 27, i8 5, %struct.uc_fw_blob <{ ptr @.str.45, i8 1, i8 4, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 27, i8 0, %struct.uc_fw_blob <{ ptr @.str.46, i8 1, i8 4, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 26, i8 0, %struct.uc_fw_blob <{ ptr @.str.46, i8 1, i8 4, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 25, i8 0, %struct.uc_fw_blob <{ ptr @.str.47, i8 1, i8 4, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 24, i8 0, %struct.uc_fw_blob <{ ptr @.str.46, i8 1, i8 4, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 23, i8 0, %struct.uc_fw_blob <{ ptr @.str.48, i8 1, i8 2, i8 0, i8 0, i8 0 }> }>, %struct.uc_fw_platform_requirement <{ i32 22, i8 0, %struct.uc_fw_blob <{ ptr @.str.49, i8 1, i8 2, i8 0, i8 0, i8 0 }> }>], align 16
@blobs_gsc = internal constant [1 x %struct.uc_fw_platform_requirement] [%struct.uc_fw_platform_requirement <{ i32 37, i8 0, %struct.uc_fw_blob <{ ptr @.str.50, i8 0, i8 1, i8 0, i8 0, i8 1 }> }>], align 16
@blobs_all = internal unnamed_addr constant [3 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @blobs_guc, i32 21, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @blobs_huc, i32 19, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @blobs_gsc, i32 1, [4 x i8] zeroinitializer }], align 16
@.str.22 = private unnamed_addr constant [20 x i8] c"i915/mtl_guc_70.bin\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"i915/dg2_guc_70.bin\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"i915/adlp_guc_70.bin\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"i915/adlp_guc_70.1.1.bin\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"i915/adlp_guc_69.0.3.bin\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"i915/tgl_guc_70.bin\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"i915/tgl_guc_70.1.1.bin\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"i915/tgl_guc_69.0.3.bin\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"i915/dg1_guc_70.bin\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"i915/ehl_guc_70.1.1.bin\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"i915/icl_guc_70.1.1.bin\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"i915/cml_guc_70.1.1.bin\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"i915/kbl_guc_70.1.1.bin\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"i915/glk_guc_70.1.1.bin\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"i915/bxt_guc_70.1.1.bin\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"i915/skl_guc_70.1.1.bin\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"i915/mtl_huc_gsc.bin\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"i915/dg2_huc_gsc.bin\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"i915/tgl_huc.bin\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"i915/tgl_huc_7.9.3.bin\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"i915/dg1_huc.bin\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"i915/ehl_huc_9.0.0.bin\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"i915/icl_huc_9.0.0.bin\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"i915/cml_huc_4.0.0.bin\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"i915/kbl_huc_4.0.0.bin\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"i915/glk_huc_4.0.0.bin\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"i915/bxt_huc_2.0.0.bin\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"i915/skl_huc_2.0.0.bin\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"i915/mtl_gsc_1.bin\00", align 1
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [60 x i8] c"[drm] GT%u: HuC %u.%u.%u is incompatible with GuC %u.%u.%u\0A\00", align 1
@.str.53 = private unnamed_addr constant [75 x i8] c"[drm] GT%u: MTL GuC 70.7.0+ and HuC 8.5.1+ don't work with older releases\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"GuC\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"HuC\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"GSC\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"uC\00", align 1
@.str.58 = private unnamed_addr constant [84 x i8] c"[drm] *ERROR* GT%u: %s firmware %s: size (%zuKB) exceeds max supported size (%uKB)\0A\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"Missing case (%s == %ld)\0A\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"uc_fw->type\00", align 1
@check_gsc_manifest.__UNIQUE_ID_addressable___SCK__WARN_trap_845 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.61 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c\00", align 1
@.str.62 = private unnamed_addr constant [53 x i8] c"[drm] GT%u: %s firmware %s: invalid size: %zu < %zu\0A\00", align 1
@.str.63 = private unnamed_addr constant [64 x i8] c"[drm] GT%u: %s firmware %s: unexpected header size: %zu != %zu\0A\00", align 1
@.str.64 = private unnamed_addr constant [53 x i8] c"[drm] GT%u: %s firmware %s: invalid size: %zu > %zu\0A\00", align 1
@.str.65 = private unnamed_addr constant [65 x i8] c"[drm] GT%u: %s firmware: invalid file version: 0x%02X:%02X:%02X\0A\00", align 1
@.str.66 = private unnamed_addr constant [67 x i8] c"[drm] GT%u: %s firmware: invalid submit version: 0x%02X:%02X:%02X\0A\00", align 1
@.str.67 = private unnamed_addr constant [55 x i8] c"[drm] *ERROR* GT%u: DMA for %s fw failed, DMA_CTRL=%u\0A\00", align 1
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8
@__preempt_count = external dso_local global i32, section ".data..percpu..hot..__preempt_count", align 4
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@io_mapping_unmap_atomic.__UNIQUE_ID_addressable___SCK__preempt_schedule_729 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@.str.68 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"UNINITIALIZED\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"SELECTED\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"AVAILABLE\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"INIT FAIL\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"LOADABLE\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"LOAD FAIL\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"TRANSFERRED\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"RUNNING\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_modinfo_788, ptr @__UNIQUE_ID_modinfo_789, ptr @__UNIQUE_ID_modinfo_790, ptr @__UNIQUE_ID_modinfo_791, ptr @__UNIQUE_ID_modinfo_792, ptr @__UNIQUE_ID_modinfo_793, ptr @__UNIQUE_ID_modinfo_794, ptr @__UNIQUE_ID_modinfo_795, ptr @__UNIQUE_ID_modinfo_796, ptr @__UNIQUE_ID_modinfo_797, ptr @__UNIQUE_ID_modinfo_798, ptr @__UNIQUE_ID_modinfo_799, ptr @__UNIQUE_ID_modinfo_800, ptr @__UNIQUE_ID_modinfo_801, ptr @__UNIQUE_ID_modinfo_802, ptr @__UNIQUE_ID_modinfo_803, ptr @__UNIQUE_ID_modinfo_804, ptr @__UNIQUE_ID_modinfo_805, ptr @__UNIQUE_ID_modinfo_806, ptr @__UNIQUE_ID_modinfo_807, ptr @__UNIQUE_ID_modinfo_808, ptr @__UNIQUE_ID_modinfo_809, ptr @__UNIQUE_ID_modinfo_810, ptr @__UNIQUE_ID_modinfo_811, ptr @__UNIQUE_ID_modinfo_812, ptr @__UNIQUE_ID_modinfo_813, ptr @__UNIQUE_ID_modinfo_814, ptr @__UNIQUE_ID_modinfo_815, ptr @__UNIQUE_ID_modinfo_816, ptr @__UNIQUE_ID_modinfo_817, ptr @__UNIQUE_ID_modinfo_818, ptr @__UNIQUE_ID_modinfo_819, ptr @__UNIQUE_ID_modinfo_820, ptr @__UNIQUE_ID_modinfo_821, ptr @__UNIQUE_ID_modinfo_822, ptr @__UNIQUE_ID_modinfo_823, ptr @__UNIQUE_ID_modinfo_824, ptr @__UNIQUE_ID_modinfo_825, ptr @__UNIQUE_ID_modinfo_826, ptr @__UNIQUE_ID_modinfo_827, ptr @__UNIQUE_ID_modinfo_828, ptr @check_gsc_manifest.__UNIQUE_ID_addressable___SCK__WARN_trap_845, ptr @io_mapping_unmap_atomic.__UNIQUE_ID_addressable___SCK__preempt_schedule_729], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local void @intel_uc_fw_version_from_gsc_manifest(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %i.b = load i16, ptr %i.a, align 1
  %i.c = zext i16 %i.b to i32
  store i32 %i.c, ptr %0, align 4
  %i.d = getelementptr i8, ptr %1, i64 38
  %i.e = load i16, ptr %i.d, align 1
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %1, i64 40
  %i.i = load i16, ptr %i.h, align 1
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %1, i64 42
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr i8, ptr %0, i64 12
  store i32 %i.n, ptr %i.o, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_uc_fw_init_early(ptr nofree noundef captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = zext i1 %2 to i8
  switch i32 %1, label %____uc_fw_to_gt.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -624
  br label %____uc_fw_to_gt.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 -2392
  br label %____uc_fw_to_gt.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -48
  br label %____uc_fw_to_gt.exit

____uc_fw_to_gt.exit:                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.0.i, align 8             ; 10 uses
  store i32 %1, ptr %0, align 8
  %i.f = getelementptr i8, ptr %0, i64 80
  store i8 %i.a, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 1648     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 28
  %i.j = load i64, ptr %i.i, align 4
  %i.k = and i64 %i.j, 2048
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %____uc_fw_to_gt.exit.__uc_fw_user_override.exit_crit_edge, label %bb.e

____uc_fw_to_gt.exit.__uc_fw_user_override.exit_crit_edge: ; preds = %____uc_fw_to_gt.exit
  %.phi.trans.insert48 = getelementptr i8, ptr %0, i64 32
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8
  br label %__uc_fw_user_override.exit

bb.e:                                             ; preds = %____uc_fw_to_gt.exit
  %i.l = icmp ugt i32 %1, 2
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %intel_uc_fw_type_repr.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %intel_uc_fw_type_repr.exit.i

intel_uc_fw_type_repr.exit.i:                     ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ %i.n, %bb.g ], [ null, %bb.f ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.o, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.57) #9
  br label %validate_fw_table_type.exit

bb.h:                                             ; preds = %bb.e
  %i.p = zext nneg i32 %1 to i64
  %i.q = getelementptr [16 x i8], ptr @blobs_all, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 16             ; 6 uses
  %i.s = getelementptr i8, ptr %i.q, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 5 uses
  %.not.i = icmp eq i32 %1, 2
  br i1 %.not.i, label %.loopexit, label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %bb.h
  %.not.i142.i = icmp eq ptr %i.e, null           ; 2 uses
  %i.u = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 2)
  %i.v = icmp eq i32 %1, 0
  %spec.select.i = select i1 %i.v, ptr @.str.54, ptr @.str.55 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ab, %.lr.ph157.i
  %.0127155.i = phi i32 [ 1, %.lr.ph157.i ], [ %3, %bb.ab ] ; 3 uses
  %3 = add nuw i32 %.0127155.i, 1                 ; 5 uses
  %i.w = icmp ult i32 %3, %i.t
  %4 = sext i32 %.0127155.i to i64                ; 2 uses
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.x = getelementptr [18 x i8], ptr %i.r, i64 %4 ; 7 uses
  %i.y = getelementptr i8, ptr %i.x, i64 5        ; 4 uses
  %i.z = getelementptr i8, ptr %i.x, i64 13       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 14      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 15      ; 2 uses
  %i.ac = getelementptr i8, ptr %i.x, i64 16      ; 2 uses
  br i1 %.not.i142.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.k
  %.0154.us.i = phi i32 [ %i.bm, %bb.k ], [ %3, %.lr.ph.i ] ; 2 uses
  %i.ad = load i32, ptr %i.x, align 1             ; 2 uses
  %i.ae = sext i32 %.0154.us.i to i64
  %i.af = getelementptr [18 x i8], ptr %i.r, i64 %i.ae ; 7 uses
  %i.ag = load i32, ptr %i.af, align 1
  %.not140.us.i = icmp eq i32 %i.ad, %i.ag
  br i1 %.not140.us.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.ah = load ptr, ptr %i.y, align 1
  %i.ai = getelementptr i8, ptr %i.af, i64 5      ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 1
  %.not141.us.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not141.us.i, label %__drm_to_dev.exit143.us.i, label %bb.k

__drm_to_dev.exit143.us.i:                        ; preds = %bb.j
  %i.ak = tail call ptr @intel_platform_name(i32 noundef %i.ad) #10
  %i.al = getelementptr i8, ptr %i.af, i64 4
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %i.af, i64 13
  %i.ap = load i8, ptr %i.ao, align 1, !range !11, !noundef !12
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.aq, ptr @.str.18, ptr @.str.19
  %i.as = getelementptr i8, ptr %i.af, i64 14
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr i8, ptr %i.af, i64 15
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr i8, ptr %i.af, i64 16
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = load ptr, ptr %i.ai, align 1
  %i.bc = load i8, ptr %i.z, align 1, !range !11, !noundef !12
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = select i1 %i.bd, ptr @.str.18, ptr @.str.19
  %i.bf = load i8, ptr %i.aa, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = load i8, ptr %i.ab, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = load i8, ptr %i.ac, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = load ptr, ptr %i.y, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull %spec.select.i, ptr noundef %i.ak, i32 noundef %i.an, ptr noundef nonnull %i.ar, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.ba, ptr noundef %i.bb, ptr noundef nonnull %i.be, i32 noundef %i.bg, i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef %i.bl) #9
  br label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit143.us.i, %bb.j, %.lr.ph.split.us.i
  %i.bm = add i32 %.0154.us.i, 1                  ; 2 uses
  %exitcond164.not.i = icmp eq i32 %i.bm, %i.t
  br i1 %exitcond164.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !13

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.m
  %.0154.i = phi i32 [ %i.cx, %bb.m ], [ %3, %.lr.ph.i ] ; 2 uses
  %i.bn = load i32, ptr %i.x, align 1             ; 2 uses
  %i.bo = sext i32 %.0154.i to i64
  %i.bp = getelementptr [18 x i8], ptr %i.r, i64 %i.bo ; 7 uses
  %i.bq = load i32, ptr %i.bp, align 1
  %.not140.i = icmp eq i32 %i.bn, %i.bq
  br i1 %.not140.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.br = load ptr, ptr %i.y, align 1
  %i.bs = getelementptr i8, ptr %i.bp, i64 5      ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 1
  %.not141.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not141.i, label %__drm_to_dev.exit143.i, label %bb.m

__drm_to_dev.exit143.i:                           ; preds = %bb.l
  %i.bu = load ptr, ptr %i.u, align 8
  %i.bv = tail call ptr @intel_platform_name(i32 noundef %i.bn) #10
  %i.bw = getelementptr i8, ptr %i.bp, i64 4
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.bp, i64 13
  %i.ca = load i8, ptr %i.bz, align 1, !range !11, !noundef !12
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = select i1 %i.cb, ptr @.str.18, ptr @.str.19
  %i.cd = getelementptr i8, ptr %i.bp, i64 14
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i32
  %i.cg = getelementptr i8, ptr %i.bp, i64 15
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32
  %i.cj = getelementptr i8, ptr %i.bp, i64 16
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i32
  %i.cm = load ptr, ptr %i.bs, align 1
  %i.cn = load i8, ptr %i.z, align 1, !range !11, !noundef !12
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = select i1 %i.co, ptr @.str.18, ptr @.str.19
  %i.cq = load i8, ptr %i.aa, align 1
  %i.cr = zext i8 %i.cq to i32
  %i.cs = load i8, ptr %i.ab, align 1
  %i.ct = zext i8 %i.cs to i32
  %i.cu = load i8, ptr %i.ac, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = load ptr, ptr %i.y, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bu, ptr noundef nonnull @.str.17, ptr noundef nonnull %spec.select.i, ptr noundef %i.bv, i32 noundef %i.by, ptr noundef nonnull %i.cc, i32 noundef %i.cf, i32 noundef %i.ci, i32 noundef %i.cl, ptr noundef %i.cm, ptr noundef nonnull %i.cp, i32 noundef %i.cr, i32 noundef %i.ct, i32 noundef %i.cv, ptr noundef %i.cw) #9
  br label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit143.i, %bb.l, %.lr.ph.split.i
  %i.cx = add i32 %.0154.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cx, %i.t
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.m, %bb.k, %bb.i
  %i.cy = getelementptr [18 x i8], ptr %i.r, i64 %4 ; 12 uses
  %i.cz = load i32, ptr %i.cy, align 1            ; 7 uses
  %5 = add i32 %.0127155.i, -1
  %6 = sext i32 %5 to i64
  %i.da = getelementptr [18 x i8], ptr %i.r, i64 %6 ; 11 uses
  %i.db = load i32, ptr %i.da, align 1            ; 3 uses
  %i.dc = icmp ult i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.dd = icmp eq i32 %i.cz, %i.db
  br i1 %i.dd, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.de = getelementptr i8, ptr %i.cy, i64 4
  %i.df = load i8, ptr %i.de, align 1             ; 2 uses
  %i.dg = getelementptr i8, ptr %i.da, i64 4
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %i.di = icmp ult i8 %i.df, %i.dh
  br i1 %i.di, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not136.i = icmp eq i8 %i.df, %i.dh
  br i1 %.not136.i, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr i8, ptr %i.cy, i64 14
  %i.dk = load i8, ptr %i.dj, align 1             ; 4 uses
  %i.dl = getelementptr i8, ptr %i.da, i64 14
  %i.dm = load i8, ptr %i.dl, align 1             ; 5 uses
  %i.dn = icmp ult i8 %i.dk, %i.dm
  br i1 %i.dn, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr i8, ptr %i.cy, i64 13
  %i.dp = load i8, ptr %i.do, align 1, !range !11, !noundef !12
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = getelementptr i8, ptr %i.da, i64 13
  %i.ds = load i8, ptr %i.dr, align 1, !range !11, !noundef !12
  %i.dt = trunc nuw i8 %i.ds to i1                ; 2 uses
  br i1 %i.dq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not138.i = icmp ne i8 %i.dk, %i.dm
  %or.cond151.not.i = or i1 %.not138.i, %i.dt
  br i1 %or.cond151.not.i, label %bb.z, label %bb.w

bb.t:                                             ; preds = %bb.r
  br i1 %i.dt, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not137.i = icmp eq i8 %i.dm, 0
  %i.du = icmp eq i8 %i.dk, %i.dm
  %or.cond.i = or i1 %.not137.i, %i.du
  br i1 %or.cond.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not138.old.i = icmp eq i8 %i.dk, %i.dm
  br i1 %.not138.old.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dv = getelementptr i8, ptr %i.cy, i64 15
  %i.dw = load i8, ptr %i.dv, align 1             ; 2 uses
  %i.dx = getelementptr i8, ptr %i.da, i64 15
  %i.dy = load i8, ptr %i.dx, align 1             ; 2 uses
  %i.dz = icmp ult i8 %i.dw, %i.dy
  br i1 %i.dz, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not139.i = icmp eq i8 %i.dw, %i.dy
  br i1 %.not139.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr i8, ptr %i.cy, i64 16
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = getelementptr i8, ptr %i.da, i64 16
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = icmp ult i8 %i.eb, %i.ed
  br i1 %i.ee, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v, %bb.s, %bb.p, %bb.n
  %.lcssa.i = phi i32 [ %i.db, %bb.n ], [ %i.cz, %bb.p ], [ %i.cz, %bb.s ], [ %i.cz, %bb.v ], [ %i.cz, %bb.x ], [ %i.cz, %bb.y ]
  br i1 %.not.i142.i, label %__drm_to_dev.exit147.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = load ptr, ptr %i.u, align 8
  br label %__drm_to_dev.exit147.i

__drm_to_dev.exit147.i:                           ; preds = %bb.aa, %bb.z
  %i.eg = phi ptr [ %i.ef, %bb.aa ], [ null, %bb.z ]
  %i.eh = tail call ptr @intel_platform_name(i32 noundef %.lcssa.i) #10
  %i.ei = getelementptr i8, ptr %i.da, i64 4
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = zext i8 %i.ej to i32
  %i.el = getelementptr i8, ptr %i.da, i64 13
  %i.em = load i8, ptr %i.el, align 1, !range !11, !noundef !12
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = select i1 %i.en, ptr @.str.18, ptr @.str.19
  %i.ep = getelementptr i8, ptr %i.da, i64 14
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = zext i8 %i.eq to i32
  %i.es = getelementptr i8, ptr %i.da, i64 15
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr i8, ptr %i.da, i64 16
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i32
  %i.ey = load i32, ptr %i.cy, align 1
  %i.ez = tail call ptr @intel_platform_name(i32 noundef %i.ey) #10
  %i.fa = getelementptr i8, ptr %i.cy, i64 4
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i32
  %i.fd = getelementptr i8, ptr %i.cy, i64 13
  %i.fe = load i8, ptr %i.fd, align 1, !range !11, !noundef !12
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = select i1 %i.ff, ptr @.str.18, ptr @.str.19
  %i.fh = getelementptr i8, ptr %i.cy, i64 14
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i32
  %i.fk = getelementptr i8, ptr %i.cy, i64 15
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = zext i8 %i.fl to i32
  %i.fn = getelementptr i8, ptr %i.cy, i64 16
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = zext i8 %i.fo to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.eg, ptr noundef nonnull @.str.20, ptr noundef nonnull %spec.select.i, ptr noundef %i.eh, i32 noundef %i.ek, ptr noundef nonnull %i.eo, i32 noundef %i.er, i32 noundef %i.eu, i32 noundef %i.ex, ptr noundef %i.ez, i32 noundef %i.fc, ptr noundef nonnull %i.fg, i32 noundef %i.fj, i32 noundef %i.fm, i32 noundef %i.fp) #9
  br label %validate_fw_table_type.exit

bb.ab:                                            ; preds = %bb.y, %bb.w, %bb.u, %bb.q, %bb.o, %._crit_edge.i
  %exitcond165.not.i = icmp eq i32 %3, %umax.i
  br i1 %exitcond165.not.i, label %.loopexit.loopexit, label %bb.i, !llvm.loop !15

validate_fw_table_type.exit:                      ; preds = %__drm_to_dev.exit147.i, %intel_uc_fw_type_repr.exit.i
  %i.fq = getelementptr i8, ptr %.0.i, i64 3009
  store i8 1, ptr %i.fq, align 1
  br label %bb.an

.loopexit.loopexit:                               ; preds = %bb.ab
  %.pre = load ptr, ptr %i.g, align 8
  %.pre43 = load i32, ptr %0, align 8             ; 2 uses
  %.phi.trans.insert = zext i32 %.pre43 to i64
  %.phi.trans.insert44 = getelementptr [16 x i8], ptr @blobs_all, i64 %.phi.trans.insert ; 2 uses
  %.pre45 = load ptr, ptr %.phi.trans.insert44, align 16
  %.phi.trans.insert46 = getelementptr i8, ptr %.phi.trans.insert44, i64 8
  %.pre47 = load i32, ptr %.phi.trans.insert46, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.loopexit
  %i.fr = phi i32 [ %.pre47, %.loopexit.loopexit ], [ %i.t, %bb.h ]
  %i.fs = phi ptr [ %.pre45, %.loopexit.loopexit ], [ %i.r, %bb.h ]
  %i.ft = phi i32 [ %.pre43, %.loopexit.loopexit ], [ 2, %bb.h ]
  %i.fu = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.h, %bb.h ]
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = getelementptr i8, ptr %i.e, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr i8, ptr %i.fx, i64 -128
  %i.fz = load i8, ptr %i.fy, align 8
  %i.ga = getelementptr i8, ptr %i.e, i64 1668
  %i.gb = load i32, ptr %i.ga, align 4            ; 2 uses
  %i.gc = shl i32 %i.gb, 20
  %i.gd = shl i32 %i.gb, 30
  %i.ge = and i32 %i.gc, %i.gd
  %i.gf = icmp slt i32 %i.ge, 0
  %spec.select.i21 = select i1 %i.gf, i32 34, i32 %i.fv ; 2 uses
  %i.gg = getelementptr i8, ptr %0, i64 32        ; 6 uses
  %umax.i22 = tail call i32 @llvm.umax.i32(i32 %i.fr, i32 1)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ai, %.loopexit
  %.04154.i = phi i32 [ 0, %.loopexit ], [ %i.hi, %bb.ai ] ; 2 uses
  %i.gh = sext i32 %.04154.i to i64
  %i.gi = getelementptr [18 x i8], ptr %i.fs, i64 %i.gh ; 7 uses
  %i.gj = load i32, ptr %i.gi, align 1            ; 2 uses
  %.not.i23 = icmp ugt i32 %spec.select.i21, %i.gj
  br i1 %.not.i23, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gk = getelementptr i8, ptr %i.gi, i64 5      ; 2 uses
  %.not45.i = icmp eq i32 %spec.select.i21, %i.gj
  br i1 %.not45.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.gl = getelementptr i8, ptr %i.gi, i64 4
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = icmp ult i8 %i.fz, %i.gm
  br i1 %i.gn, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.go = load ptr, ptr %i.gg, align 8            ; 2 uses
  %.not46.i = icmp eq ptr %i.go, null
  %i.gp = load ptr, ptr %i.gk, align 1            ; 3 uses
  br i1 %.not46.i, label %.critedge.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr null, ptr %i.gg, align 8
  br label %bb.ai

.critedge.thread.i:                               ; preds = %bb.af
  store ptr %i.gp, ptr %i.gg, align 8
  %i.gr = load ptr, ptr %i.gk, align 1
  %i.gs = getelementptr i8, ptr %0, i64 8
  store ptr %i.gr, ptr %i.gs, align 8
  %i.gt = getelementptr i8, ptr %i.gi, i64 14
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i32
  %i.gw = getelementptr i8, ptr %0, i64 16
  store i32 %i.gv, ptr %i.gw, align 8
  %i.gx = getelementptr i8, ptr %i.gi, i64 15
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = zext i8 %i.gy to i32
  %i.ha = getelementptr i8, ptr %0, i64 20
  store i32 %i.gz, ptr %i.ha, align 4
  %i.hb = getelementptr i8, ptr %i.gi, i64 16
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = zext i8 %i.hc to i32
  %i.he = getelementptr i8, ptr %0, i64 24
  store i32 %i.hd, ptr %i.he, align 8
  %i.hf = getelementptr i8, ptr %i.gi, i64 17
  %i.hg = load i8, ptr %i.hf, align 1, !range !11, !noundef !12
  %i.hh = getelementptr i8, ptr %0, i64 408
  store i8 %i.hg, ptr %i.hh, align 8
  br label %__uc_fw_auto_select.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %i.hi = add nuw i32 %.04154.i, 1                ; 2 uses
  %exitcond.not.i24 = icmp eq i32 %i.hi, %umax.i22
  br i1 %exitcond.not.i24, label %.critedge.i, label %bb.ac, !llvm.loop !16

.critedge.i:                                      ; preds = %bb.ai, %bb.ac
  %i.hj = load ptr, ptr %i.gg, align 8
  %.not47.i = icmp eq ptr %i.hj, null
  br i1 %.not47.i, label %__uc_fw_auto_select.exit, label %bb.aj

bb.aj:                                            ; preds = %.critedge.i
  store ptr null, ptr %i.gg, align 8
  br label %__uc_fw_auto_select.exit

__uc_fw_auto_select.exit:                         ; preds = %.critedge.thread.i, %.critedge.i, %bb.aj
  %i.hk = phi ptr [ %i.gp, %.critedge.thread.i ], [ null, %.critedge.i ], [ null, %bb.aj ] ; 2 uses
  switch i32 %i.ft, label %__uc_fw_user_override.exit [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %__override_guc_firmware_path.exit.i
  ]

bb.ak:                                            ; preds = %__uc_fw_auto_select.exit
  %i.hl = getelementptr i8, ptr %i.e, i64 1572
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = and i32 %i.hm, 3
  %.not.i.i27 = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i27, label %__uc_fw_user_override.exit.thread, label %__override_guc_firmware_path.exit.i

bb.al:                                            ; preds = %__uc_fw_auto_select.exit
  %i.ho = getelementptr i8, ptr %i.e, i64 1572
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = and i32 %i.hp, 2
  %.not.i8.i = icmp eq i32 %i.hq, 0
  br i1 %.not.i8.i, label %__uc_fw_user_override.exit.thread, label %__override_guc_firmware_path.exit.i

__override_guc_firmware_path.exit.i:              ; preds = %bb.al, %bb.ak, %__uc_fw_auto_select.exit
  %.sink.i = phi i64 [ 1584, %bb.ak ], [ 1592, %bb.al ], [ 1600, %__uc_fw_auto_select.exit ]
  %i.hr = getelementptr i8, ptr %i.e, i64 %.sink.i
  %.0.i25 = load ptr, ptr %i.hr, align 8          ; 2 uses
  %.not.i26 = icmp eq ptr %.0.i25, null
  br i1 %.not.i26, label %__uc_fw_user_override.exit, label %__uc_fw_user_override.exit.thread, !prof !17

__uc_fw_user_override.exit.thread:                ; preds = %bb.ak, %bb.al, %__override_guc_firmware_path.exit.i
  %.012.i = phi ptr [ %.0.i25, %__override_guc_firmware_path.exit.i ], [ @.str.51, %bb.ak ], [ @.str.51, %bb.al ] ; 2 uses
  store ptr %.012.i, ptr %i.gg, align 8
  %i.hs = getelementptr i8, ptr %0, i64 56
  store i8 1, ptr %i.hs, align 8
  br label %bb.am

__uc_fw_user_override.exit:                       ; preds = %____uc_fw_to_gt.exit.__uc_fw_user_override.exit_crit_edge, %__override_guc_firmware_path.exit.i, %__uc_fw_auto_select.exit
  %i.ht = phi ptr [ %.pre49, %____uc_fw_to_gt.exit.__uc_fw_user_override.exit_crit_edge ], [ %i.hk, %__uc_fw_auto_select.exit ], [ %i.hk, %__override_guc_firmware_path.exit.i ] ; 2 uses
  %.not18 = icmp eq ptr %i.ht, null
  br i1 %.not18, label %bb.an, label %bb.am

bb.am:                                            ; preds = %__uc_fw_user_override.exit.thread, %__uc_fw_user_override.exit
  %i.hu = phi ptr [ %.012.i, %__uc_fw_user_override.exit.thread ], [ %i.ht, %__uc_fw_user_override.exit ]
  %i.hv = load i8, ptr %i.hu, align 1
  %.not19 = icmp eq i8 %i.hv, 0
  %i.hw = select i1 %.not19, i32 1, i32 2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %__uc_fw_user_override.exit, %validate_fw_table_type.exit
  %.sink = phi i32 [ -1, %validate_fw_table_type.exit ], [ %i.hw, %bb.am ], [ -1, %__uc_fw_user_override.exit ]
  %i.hx = getelementptr i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.hx, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -8, 1) i32 @intel_uc_check_file_version(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  switch i32 %i.a, label %__uc_fw_to_gt.exit [
    i32 0, label %bb.b
    i32 1, label %__uc_fw_to_gt.exit.thread
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -624
  br label %__uc_fw_to_gt.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 -48
  br label %__uc_fw_to_gt.exit

__uc_fw_to_gt.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.c, %bb.c ], [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.0.i.i, align 8
  br label %check_mtl_huc_guc_compatibility.exit.thread

__uc_fw_to_gt.exit.thread:                        ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 -2392      ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 1668
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 8192
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %check_mtl_huc_guc_compatibility.exit.thread, label %.thread

.thread:                                          ; preds = %__uc_fw_to_gt.exit.thread
  %i.j = getelementptr i8, ptr %0, i64 40
end_hunk_0
