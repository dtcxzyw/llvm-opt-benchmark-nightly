Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_edid?download=true
inline.NumInlined: 572
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_header_is_valid: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_header_is_valid ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_is_valid: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_is_valid ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_valid: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_valid ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_override_connector_update: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_override_connector_update ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_raw: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_raw ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_alloc: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_alloc ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_dup: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_dup ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_free: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_free ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_probe_ddc: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_probe_ddc ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_get_edid: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_get_edid ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_read_custom: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_read_custom ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_read_ddc: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_read_ddc ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_read: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_read ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_get_product_id: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_get_product_id ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_print_product_id: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_print_product_id ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_get_panel_id: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_get_panel_id ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_read_base_block: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_read_base_block ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_get_edid_switcheroo: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_get_edid_switcheroo ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_read_switcheroo: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_read_switcheroo ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_duplicate: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_duplicate ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_has_quirk: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_has_quirk ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mode_find_dmt: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_mode_find_dmt ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_match_cea_mode: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_match_cea_mode ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_display_mode_from_cea_vic: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_display_mode_from_cea_vic ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_match: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_match ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_get_monitor_name: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_get_monitor_name ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_to_sad: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_to_sad ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_to_speaker_allocation: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_to_speaker_allocation ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_av_sync_delay: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_av_sync_delay ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_detect_hdmi_monitor: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_detect_hdmi_monitor ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_detect_monitor_audio: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_detect_monitor_audio ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_default_rgb_quant_range: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_default_rgb_quant_range ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_connector_update: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_connector_update ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_connector_add_modes: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_connector_add_modes ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_connector_update_edid_property: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_connector_update_edid_property ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_add_edid_modes: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_add_edid_modes ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_add_modes_noedid: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_add_modes_noedid ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_hdmi_avi_infoframe_from_display_mode: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_hdmi_avi_infoframe_from_display_mode ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_hdmi_avi_infoframe_quant_range: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_hdmi_avi_infoframe_quant_range ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_hdmi_vendor_infoframe_from_display_mode: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_hdmi_vendor_infoframe_from_display_mode ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_edid_is_digital: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad drm_edid_is_digital ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%union.anon.5 = type { ptr }
%struct.static_call_key = type { ptr, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.minimode = type { i16, i16, i16, i16 }
%struct.displayid_iter = type { ptr, ptr, i32, i32, i32, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.drm_edid = type { i64, ptr }
%struct.seq_buf = type { ptr, i64, i64 }
%struct.drm_edid_match_closure = type { ptr, i8 }
%struct.cea_db_iter = type { %struct.drm_edid_iter, %struct.displayid_iter, ptr, i32, i32 }
%struct.drm_edid_iter = type { ptr, i32 }
%struct.detailed_mode_closure = type { ptr, ptr, i8, i32 }

@__UNIQUE_ID_addressable_drm_edid_header_is_valid_666 = internal global ptr @drm_edid_header_is_valid, section ".discard.addressable", align 8
@__param_str_edid_fixup = internal constant [15 x i8] c"drm.edid_fixup\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@edid_fixup = internal global i32 6, section ".data..read_mostly", align 4
@__param_edid_fixup = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon.5 } { ptr @__param_str_edid_fixup, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon.5 { ptr @edid_fixup } }, section "__param", align 8
@__UNIQUE_ID_modinfo_667 = internal constant [28 x i8] c"drm.parmtype=edid_fixup:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_668 = internal constant [79 x i8] c"drm.parm=edid_fixup:Minimum number of valid EDID header bytes (0-8, default 6)\00", section ".modinfo", align 1
@__UNIQUE_ID_addressable_drm_edid_is_valid_677 = internal global ptr @drm_edid_is_valid, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_valid_678 = internal global ptr @drm_edid_valid, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [41 x i8] c"[CONNECTOR:%d:%s] EDID override invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[CONNECTOR:%d:%s] EDID override set\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"[CONNECTOR:%d:%s] EDID override reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"[CONNECTOR:%d:%s] adding %d modes via fallback override/firmware EDID\0A\00", align 1
@__UNIQUE_ID_addressable_drm_edid_override_connector_update_681 = internal global ptr @drm_edid_override_connector_update, section ".discard.addressable", align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/drm_edid.c\00", align 1
@__UNIQUE_ID_addressable_drm_edid_raw_684 = internal global ptr @drm_edid_raw, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_alloc_685 = internal global ptr @drm_edid_alloc, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_dup_686 = internal global ptr @drm_edid_dup, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_free_687 = internal global ptr @drm_edid_free, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_probe_ddc_688 = internal global ptr @drm_probe_ddc, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_get_edid_689 = internal global ptr @drm_get_edid, section ".discard.addressable", align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"%s %s: [drm] %s\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"drm_WARN_ON(!size)\00", align 1
@drm_edid_read_custom.__UNIQUE_ID_addressable___SCK__WARN_trap_690 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@__UNIQUE_ID_addressable_drm_edid_read_custom_691 = internal global ptr @drm_edid_read_custom, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_read_ddc_692 = internal global ptr @drm_edid_read_ddc, section ".discard.addressable", align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"drm_WARN_ON(!connector->ddc)\00", align 1
@drm_edid_read.__UNIQUE_ID_addressable___SCK__WARN_trap_693 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_read_694 = internal global ptr @drm_edid_read, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_get_product_id_695 = internal global ptr @drm_edid_get_product_id, section ".discard.addressable", align 8
@.str.9 = private unnamed_addr constant [64 x i8] c"manufacturer name: %s, product code: %u, serial number: %u, %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"raw product id: %*ph\0A\00", align 1
@__UNIQUE_ID_addressable_drm_edid_print_product_id_698 = internal global ptr @drm_edid_print_product_id, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_get_panel_id_699 = internal global ptr @drm_edid_get_panel_id, section ".discard.addressable", align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"\015\00", align 1
@__UNIQUE_ID_addressable_drm_edid_read_base_block_700 = internal global ptr @drm_edid_read_base_block, section ".discard.addressable", align 8
@pci_bus_type = external dso_local constant %struct.bus_type, align 8
@.str.12 = private unnamed_addr constant [54 x i8] c"drm_WARN_ON_ONCE(!((dev->dev)->bus == &pci_bus_type))\00", align 1
@drm_get_edid_switcheroo.__UNIQUE_ID_addressable___SCK__WARN_trap_701 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_get_edid_switcheroo_702 = internal global ptr @drm_get_edid_switcheroo, section ".discard.addressable", align 8
@drm_edid_read_switcheroo.__UNIQUE_ID_addressable___SCK__WARN_trap_703 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_read_switcheroo_704 = internal global ptr @drm_edid_read_switcheroo, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_duplicate_705 = internal global ptr @drm_edid_duplicate, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_has_quirk_706 = internal global ptr @drm_edid_has_quirk, section ".discard.addressable", align 8
@drm_dmt_modes = internal constant [88 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 31500, i16 640, i16 672, i16 736, i16 832, i16 0, i16 350, i16 382, i16 385, i16 445, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x350\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 31500, i16 640, i16 672, i16 736, i16 832, i16 0, i16 400, i16 401, i16 404, i16 445, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 35500, i16 720, i16 756, i16 828, i16 936, i16 0, i16 400, i16 401, i16 404, i16 446, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 25175, i16 640, i16 656, i16 752, i16 800, i16 0, i16 480, i16 490, i16 492, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 31500, i16 640, i16 664, i16 704, i16 832, i16 0, i16 480, i16 489, i16 492, i16 520, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 31500, i16 640, i16 656, i16 720, i16 840, i16 0, i16 480, i16 481, i16 484, i16 500, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 36000, i16 640, i16 696, i16 752, i16 832, i16 0, i16 480, i16 481, i16 484, i16 509, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 36000, i16 800, i16 824, i16 896, i16 1024, i16 0, i16 600, i16 601, i16 603, i16 625, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 40000, i16 800, i16 840, i16 968, i16 1056, i16 0, i16 600, i16 601, i16 605, i16 628, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 50000, i16 800, i16 856, i16 976, i16 1040, i16 0, i16 600, i16 637, i16 643, i16 666, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 49500, i16 800, i16 816, i16 896, i16 1056, i16 0, i16 600, i16 601, i16 604, i16 625, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 56250, i16 800, i16 832, i16 896, i16 1048, i16 0, i16 600, i16 601, i16 604, i16 631, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 73250, i16 800, i16 848, i16 880, i16 960, i16 0, i16 600, i16 603, i16 607, i16 636, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 33750, i16 848, i16 864, i16 976, i16 1088, i16 0, i16 480, i16 486, i16 494, i16 517, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"848x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 44900, i16 1024, i16 1032, i16 1208, i16 1264, i16 0, i16 768, i16 768, i16 776, i16 817, i16 0, i32 21, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 65000, i16 1024, i16 1048, i16 1184, i16 1344, i16 0, i16 768, i16 771, i16 777, i16 806, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 75000, i16 1024, i16 1048, i16 1184, i16 1328, i16 0, i16 768, i16 771, i16 777, i16 806, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 78750, i16 1024, i16 1040, i16 1136, i16 1312, i16 0, i16 768, i16 769, i16 772, i16 800, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 94500, i16 1024, i16 1072, i16 1168, i16 1376, i16 0, i16 768, i16 769, i16 772, i16 808, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 115500, i16 1024, i16 1072, i16 1104, i16 1184, i16 0, i16 768, i16 771, i16 775, i16 813, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 108000, i16 1152, i16 1216, i16 1344, i16 1600, i16 0, i16 864, i16 865, i16 868, i16 900, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1152x864\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 74250, i16 1280, i16 1390, i16 1430, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 68250, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 768, i16 771, i16 778, i16 790, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 79500, i16 1280, i16 1344, i16 1472, i16 1664, i16 0, i16 768, i16 771, i16 778, i16 798, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 102250, i16 1280, i16 1360, i16 1488, i16 1696, i16 0, i16 768, i16 771, i16 778, i16 805, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 117500, i16 1280, i16 1360, i16 1496, i16 1712, i16 0, i16 768, i16 771, i16 778, i16 809, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 140250, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 768, i16 771, i16 778, i16 813, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 71000, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 800, i16 803, i16 809, i16 823, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x800\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 83500, i16 1280, i16 1352, i16 1480, i16 1680, i16 0, i16 800, i16 803, i16 809, i16 831, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x800\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 106500, i16 1280, i16 1360, i16 1488, i16 1696, i16 0, i16 800, i16 803, i16 809, i16 838, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x800\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 122500, i16 1280, i16 1360, i16 1496, i16 1712, i16 0, i16 800, i16 803, i16 809, i16 843, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x800\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 146250, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 800, i16 803, i16 809, i16 847, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x800\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 108000, i16 1280, i16 1376, i16 1488, i16 1800, i16 0, i16 960, i16 961, i16 964, i16 1000, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 148500, i16 1280, i16 1344, i16 1504, i16 1728, i16 0, i16 960, i16 961, i16 964, i16 1011, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 175500, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 960, i16 963, i16 967, i16 1017, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 108000, i16 1280, i16 1328, i16 1440, i16 1688, i16 0, i16 1024, i16 1025, i16 1028, i16 1066, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x1024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 135000, i16 1280, i16 1296, i16 1440, i16 1688, i16 0, i16 1024, i16 1025, i16 1028, i16 1066, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x1024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 157500, i16 1280, i16 1344, i16 1504, i16 1728, i16 0, i16 1024, i16 1025, i16 1028, i16 1072, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x1024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 187250, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 1024, i16 1027, i16 1034, i16 1084, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x1024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 85500, i16 1360, i16 1424, i16 1536, i16 1792, i16 0, i16 768, i16 771, i16 777, i16 795, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1360x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 148250, i16 1360, i16 1408, i16 1440, i16 1520, i16 0, i16 768, i16 771, i16 776, i16 813, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1360x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 85500, i16 1366, i16 1436, i16 1579, i16 1792, i16 0, i16 768, i16 771, i16 774, i16 798, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1366x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 72000, i16 1366, i16 1380, i16 1436, i16 1500, i16 0, i16 768, i16 769, i16 772, i16 800, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1366x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 101000, i16 1400, i16 1448, i16 1480, i16 1560, i16 0, i16 1050, i16 1053, i16 1057, i16 1080, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1400x1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 121750, i16 1400, i16 1488, i16 1632, i16 1864, i16 0, i16 1050, i16 1053, i16 1057, i16 1089, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1400x1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 156000, i16 1400, i16 1504, i16 1648, i16 1896, i16 0, i16 1050, i16 1053, i16 1057, i16 1099, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1400x1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 179500, i16 1400, i16 1504, i16 1656, i16 1912, i16 0, i16 1050, i16 1053, i16 1057, i16 1105, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1400x1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 208000, i16 1400, i16 1448, i16 1480, i16 1560, i16 0, i16 1050, i16 1053, i16 1057, i16 1112, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1400x1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 88750, i16 1440, i16 1488, i16 1520, i16 1600, i16 0, i16 900, i16 903, i16 909, i16 926, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1440x900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 106500, i16 1440, i16 1520, i16 1672, i16 1904, i16 0, i16 900, i16 903, i16 909, i16 934, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1440x900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 136750, i16 1440, i16 1536, i16 1688, i16 1936, i16 0, i16 900, i16 903, i16 909, i16 942, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1440x900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 157000, i16 1440, i16 1544, i16 1696, i16 1952, i16 0, i16 900, i16 903, i16 909, i16 948, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1440x900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 182750, i16 1440, i16 1488, i16 1520, i16 1600, i16 0, i16 900, i16 903, i16 909, i16 953, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1440x900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 108000, i16 1600, i16 1624, i16 1704, i16 1800, i16 0, i16 900, i16 901, i16 904, i16 1000, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1600x900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 162000, i16 1600, i16 1664, i16 1856, i16 2160, i16 0, i16 1200, i16 1201, i16 1204, i16 1250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1600x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 175500, i16 1600, i16 1664, i16 1856, i16 2160, i16 0, i16 1200, i16 1201, i16 1204, i16 1250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1600x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 189000, i16 1600, i16 1664, i16 1856, i16 2160, i16 0, i16 1200, i16 1201, i16 1204, i16 1250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1600x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 202500, i16 1600, i16 1664, i16 1856, i16 2160, i16 0, i16 1200, i16 1201, i16 1204, i16 1250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1600x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 229500, i16 1600, i16 1664, i16 1856, i16 2160, i16 0, i16 1200, i16 1201, i16 1204, i16 1250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1600x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 268250, i16 1600, i16 1648, i16 1680, i16 1760, i16 0, i16 1200, i16 1203, i16 1207, i16 1271, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1600x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 119000, i16 1680, i16 1728, i16 1760, i16 1840, i16 0, i16 1050, i16 1053, i16 1059, i16 1080, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 146250, i16 1680, i16 1784, i16 1960, i16 2240, i16 0, i16 1050, i16 1053, i16 1059, i16 1089, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 187000, i16 1680, i16 1800, i16 1976, i16 2272, i16 0, i16 1050, i16 1053, i16 1059, i16 1099, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 214750, i16 1680, i16 1808, i16 1984, i16 2288, i16 0, i16 1050, i16 1053, i16 1059, i16 1105, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 245500, i16 1680, i16 1728, i16 1760, i16 1840, i16 0, i16 1050, i16 1053, i16 1059, i16 1112, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 204750, i16 1792, i16 1920, i16 2120, i16 2448, i16 0, i16 1344, i16 1345, i16 1348, i16 1394, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1792x1344\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 261000, i16 1792, i16 1888, i16 2104, i16 2456, i16 0, i16 1344, i16 1345, i16 1348, i16 1417, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1792x1344\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 333250, i16 1792, i16 1840, i16 1872, i16 1952, i16 0, i16 1344, i16 1347, i16 1351, i16 1423, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1792x1344\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 218250, i16 1856, i16 1952, i16 2176, i16 2528, i16 0, i16 1392, i16 1393, i16 1396, i16 1439, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1856x1392\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 288000, i16 1856, i16 1984, i16 2208, i16 2560, i16 0, i16 1392, i16 1393, i16 1396, i16 1500, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1856x1392\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 356500, i16 1856, i16 1904, i16 1936, i16 2016, i16 0, i16 1392, i16 1395, i16 1399, i16 1474, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1856x1392\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 148500, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 154000, i16 1920, i16 1968, i16 2000, i16 2080, i16 0, i16 1200, i16 1203, i16 1209, i16 1235, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 193250, i16 1920, i16 2056, i16 2256, i16 2592, i16 0, i16 1200, i16 1203, i16 1209, i16 1245, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 245250, i16 1920, i16 2056, i16 2264, i16 2608, i16 0, i16 1200, i16 1203, i16 1209, i16 1255, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 281250, i16 1920, i16 2064, i16 2272, i16 2624, i16 0, i16 1200, i16 1203, i16 1209, i16 1262, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 317000, i16 1920, i16 1968, i16 2000, i16 2080, i16 0, i16 1200, i16 1203, i16 1209, i16 1271, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 234000, i16 1920, i16 2048, i16 2256, i16 2600, i16 0, i16 1440, i16 1441, i16 1444, i16 1500, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1440\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 297000, i16 1920, i16 2064, i16 2288, i16 2640, i16 0, i16 1440, i16 1441, i16 1444, i16 1500, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1440\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 380500, i16 1920, i16 1968, i16 2000, i16 2080, i16 0, i16 1440, i16 1443, i16 1447, i16 1525, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1440\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 162000, i16 2048, i16 2074, i16 2154, i16 2250, i16 0, i16 1152, i16 1153, i16 1156, i16 1200, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2048x1152\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 268500, i16 2560, i16 2608, i16 2640, i16 2720, i16 0, i16 1600, i16 1603, i16 1609, i16 1646, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 348500, i16 2560, i16 2752, i16 3032, i16 3504, i16 0, i16 1600, i16 1603, i16 1609, i16 1658, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 443250, i16 2560, i16 2768, i16 3048, i16 3536, i16 0, i16 1600, i16 1603, i16 1609, i16 1672, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 505250, i16 2560, i16 2768, i16 3048, i16 3536, i16 0, i16 1600, i16 1603, i16 1609, i16 1682, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 552750, i16 2560, i16 2608, i16 2640, i16 2720, i16 0, i16 1600, i16 1603, i16 1609, i16 1694, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 556744, i16 4096, i16 4104, i16 4136, i16 4176, i16 0, i16 2160, i16 2208, i16 2216, i16 2222, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 556188, i16 4096, i16 4104, i16 4136, i16 4176, i16 0, i16 2160, i16 2208, i16 2216, i16 2222, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }], align 16
@__UNIQUE_ID_addressable_drm_mode_find_dmt_707 = internal global ptr @drm_mode_find_dmt, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_match_cea_mode_727 = internal global ptr @drm_match_cea_mode, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_display_mode_from_cea_vic_728 = internal global ptr @drm_display_mode_from_cea_vic, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_match_733 = internal global ptr @drm_edid_match, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_get_monitor_name_737 = internal global ptr @drm_edid_get_monitor_name, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_to_sad_741 = internal global ptr @drm_edid_to_sad, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_to_speaker_allocation_742 = internal global ptr @drm_edid_to_speaker_allocation, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_av_sync_delay_752 = internal global ptr @drm_av_sync_delay, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_detect_hdmi_monitor_753 = internal global ptr @drm_detect_hdmi_monitor, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_detect_monitor_audio_754 = internal global ptr @drm_detect_monitor_audio, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_default_rgb_quant_range_755 = internal global ptr @drm_default_rgb_quant_range, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_connector_update_768 = internal global ptr @drm_edid_connector_update, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_connector_add_modes_769 = internal global ptr @drm_edid_connector_add_modes, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_connector_update_edid_property_770 = internal global ptr @drm_connector_update_edid_property, section ".discard.addressable", align 8
@.str.13 = private unnamed_addr constant [39 x i8] c"[drm] [CONNECTOR:%d:%s] EDID invalid.\0A\00", align 1
@__UNIQUE_ID_addressable_drm_add_edid_modes_771 = internal global ptr @drm_add_edid_modes, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_add_modes_noedid_772 = internal global ptr @drm_add_modes_noedid, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_hdmi_avi_infoframe_from_display_mode_773 = internal global ptr @drm_hdmi_avi_infoframe_from_display_mode, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_hdmi_avi_infoframe_quant_range_774 = internal global ptr @drm_hdmi_avi_infoframe_quant_range, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_hdmi_vendor_infoframe_from_display_mode_775 = internal global ptr @drm_hdmi_vendor_infoframe_from_display_mode, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_drm_edid_is_digital_776 = internal global ptr @drm_edid_is_digital, section ".discard.addressable", align 8
@.str.14 = private unnamed_addr constant [50 x i8] c"Fixing EDID header, your hardware may be failing\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"\015Raw EDID:\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"drm: skipping non-existent adapter %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.18 = private unnamed_addr constant [36 x i8] c"[CONNECTOR:%d:%s] EDID is invalid:\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i64, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"model year: %d\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"year of manufacture: %d\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"week/year of manufacture: %d/%d\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"include/linux/seq_buf.h\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"\015EDID block %d is all zeroes\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"\015EDID has corrupt header\0A\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"\015EDID block %d (tag 0x%02x) checksum is invalid, remainder is %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"\015EDID has major version %d, instead of 1\0A\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"EDID block %d unknown edid block status code %d\0A\00", align 1
@edid_block_status_print.__UNIQUE_ID_addressable___SCK__WARN_trap_674 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.29 = private unnamed_addr constant [14 x i8] c"\09[%02x] ZERO \00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"\09[%02x] BAD  \00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"\09[%02x] GOOD \00", align 1
@edid_cea_modes_1 = internal constant [127 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 25175, i16 640, i16 656, i16 752, i16 800, i16 0, i16 480, i16 490, i16 492, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 27000, i16 720, i16 736, i16 798, i16 858, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 27000, i16 720, i16 736, i16 798, i16 858, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 74250, i16 1280, i16 1390, i16 1430, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 74250, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1094, i16 1125, i16 0, i32 21, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 13500, i16 720, i16 739, i16 801, i16 858, i16 0, i16 480, i16 488, i16 494, i16 525, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 13500, i16 720, i16 739, i16 801, i16 858, i16 0, i16 480, i16 488, i16 494, i16 525, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 13500, i16 720, i16 739, i16 801, i16 858, i16 0, i16 240, i16 244, i16 247, i16 262, i16 0, i32 4106, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x240\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 13500, i16 720, i16 739, i16 801, i16 858, i16 0, i16 240, i16 244, i16 247, i16 262, i16 0, i32 4106, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x240\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 54000, i16 2880, i16 2956, i16 3204, i16 3432, i16 0, i16 480, i16 488, i16 494, i16 525, i16 0, i32 26, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x480i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 54000, i16 2880, i16 2956, i16 3204, i16 3432, i16 0, i16 480, i16 488, i16 494, i16 525, i16 0, i32 26, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x480i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 54000, i16 2880, i16 2956, i16 3204, i16 3432, i16 0, i16 240, i16 244, i16 247, i16 262, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x240\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 54000, i16 2880, i16 2956, i16 3204, i16 3432, i16 0, i16 240, i16 244, i16 247, i16 262, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x240\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 54000, i16 1440, i16 1472, i16 1596, i16 1716, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1440x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 54000, i16 1440, i16 1472, i16 1596, i16 1716, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1440x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 148500, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 27000, i16 720, i16 732, i16 796, i16 864, i16 0, i16 576, i16 581, i16 586, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 27000, i16 720, i16 732, i16 796, i16 864, i16 0, i16 576, i16 581, i16 586, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 74250, i16 1280, i16 1720, i16 1760, i16 1980, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 74250, i16 1920, i16 2448, i16 2492, i16 2640, i16 0, i16 1080, i16 1084, i16 1094, i16 1125, i16 0, i32 21, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 13500, i16 720, i16 732, i16 795, i16 864, i16 0, i16 576, i16 580, i16 586, i16 625, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 13500, i16 720, i16 732, i16 795, i16 864, i16 0, i16 576, i16 580, i16 586, i16 625, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 13500, i16 720, i16 732, i16 795, i16 864, i16 0, i16 288, i16 290, i16 293, i16 312, i16 0, i32 4106, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x288\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 13500, i16 720, i16 732, i16 795, i16 864, i16 0, i16 288, i16 290, i16 293, i16 312, i16 0, i32 4106, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x288\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 54000, i16 2880, i16 2928, i16 3180, i16 3456, i16 0, i16 576, i16 580, i16 586, i16 625, i16 0, i32 26, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x576i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 54000, i16 2880, i16 2928, i16 3180, i16 3456, i16 0, i16 576, i16 580, i16 586, i16 625, i16 0, i32 26, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x576i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 54000, i16 2880, i16 2928, i16 3180, i16 3456, i16 0, i16 288, i16 290, i16 293, i16 312, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x288\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 54000, i16 2880, i16 2928, i16 3180, i16 3456, i16 0, i16 288, i16 290, i16 293, i16 312, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x288\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 54000, i16 1440, i16 1464, i16 1592, i16 1728, i16 0, i16 576, i16 581, i16 586, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1440x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 54000, i16 1440, i16 1464, i16 1592, i16 1728, i16 0, i16 576, i16 581, i16 586, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1440x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 148500, i16 1920, i16 2448, i16 2492, i16 2640, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 74250, i16 1920, i16 2558, i16 2602, i16 2750, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 74250, i16 1920, i16 2448, i16 2492, i16 2640, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 74250, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 108000, i16 2880, i16 2944, i16 3192, i16 3432, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 108000, i16 2880, i16 2944, i16 3192, i16 3432, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 108000, i16 2880, i16 2928, i16 3184, i16 3456, i16 0, i16 576, i16 581, i16 586, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 108000, i16 2880, i16 2928, i16 3184, i16 3456, i16 0, i16 576, i16 581, i16 586, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2880x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 72000, i16 1920, i16 1952, i16 2120, i16 2304, i16 0, i16 1080, i16 1126, i16 1136, i16 1250, i16 0, i32 25, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 148500, i16 1920, i16 2448, i16 2492, i16 2640, i16 0, i16 1080, i16 1084, i16 1094, i16 1125, i16 0, i32 21, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 148500, i16 1280, i16 1720, i16 1760, i16 1980, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 54000, i16 720, i16 732, i16 796, i16 864, i16 0, i16 576, i16 581, i16 586, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 54000, i16 720, i16 732, i16 796, i16 864, i16 0, i16 576, i16 581, i16 586, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 27000, i16 720, i16 732, i16 795, i16 864, i16 0, i16 576, i16 580, i16 586, i16 625, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 27000, i16 720, i16 732, i16 795, i16 864, i16 0, i16 576, i16 580, i16 586, i16 625, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 148500, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1094, i16 1125, i16 0, i32 21, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 148500, i16 1280, i16 1390, i16 1430, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 54000, i16 720, i16 736, i16 798, i16 858, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 54000, i16 720, i16 736, i16 798, i16 858, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 27000, i16 720, i16 739, i16 801, i16 858, i16 0, i16 480, i16 488, i16 494, i16 525, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 27000, i16 720, i16 739, i16 801, i16 858, i16 0, i16 480, i16 488, i16 494, i16 525, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 108000, i16 720, i16 732, i16 796, i16 864, i16 0, i16 576, i16 581, i16 586, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 108000, i16 720, i16 732, i16 796, i16 864, i16 0, i16 576, i16 581, i16 586, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 54000, i16 720, i16 732, i16 795, i16 864, i16 0, i16 576, i16 580, i16 586, i16 625, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 54000, i16 720, i16 732, i16 795, i16 864, i16 0, i16 576, i16 580, i16 586, i16 625, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 108000, i16 720, i16 736, i16 798, i16 858, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 108000, i16 720, i16 736, i16 798, i16 858, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 54000, i16 720, i16 739, i16 801, i16 858, i16 0, i16 480, i16 488, i16 494, i16 525, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 }, %struct.drm_display_mode { i32 54000, i16 720, i16 739, i16 801, i16 858, i16 0, i16 480, i16 488, i16 494, i16 525, i16 0, i32 4122, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 59400, i16 1280, i16 3040, i16 3080, i16 3300, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 74250, i16 1280, i16 3700, i16 3740, i16 3960, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 74250, i16 1280, i16 3040, i16 3080, i16 3300, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 297000, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 297000, i16 1920, i16 2448, i16 2492, i16 2640, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 59400, i16 1280, i16 3040, i16 3080, i16 3300, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 74250, i16 1280, i16 3700, i16 3740, i16 3960, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 74250, i16 1280, i16 3040, i16 3080, i16 3300, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 74250, i16 1280, i16 1720, i16 1760, i16 1980, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 74250, i16 1280, i16 1390, i16 1430, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 148500, i16 1280, i16 1720, i16 1760, i16 1980, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 148500, i16 1280, i16 1390, i16 1430, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 74250, i16 1920, i16 2558, i16 2602, i16 2750, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 74250, i16 1920, i16 2448, i16 2492, i16 2640, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 74250, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 148500, i16 1920, i16 2448, i16 2492, i16 2640, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 148500, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 297000, i16 1920, i16 2448, i16 2492, i16 2640, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 297000, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 59400, i16 1680, i16 3040, i16 3080, i16 3300, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 59400, i16 1680, i16 2908, i16 2948, i16 3168, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 59400, i16 1680, i16 2380, i16 2420, i16 2640, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 82500, i16 1680, i16 1940, i16 1980, i16 2200, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 99000, i16 1680, i16 1940, i16 1980, i16 2200, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 165000, i16 1680, i16 1740, i16 1780, i16 2000, i16 0, i16 720, i16 725, i16 730, i16 825, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 198000, i16 1680, i16 1740, i16 1780, i16 2000, i16 0, i16 720, i16 725, i16 730, i16 825, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 99000, i16 2560, i16 3558, i16 3602, i16 3750, i16 0, i16 1080, i16 1084, i16 1089, i16 1100, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 90000, i16 2560, i16 3008, i16 3052, i16 3200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 118800, i16 2560, i16 3328, i16 3372, i16 3520, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 185625, i16 2560, i16 3108, i16 3152, i16 3300, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 198000, i16 2560, i16 2808, i16 2852, i16 3000, i16 0, i16 1080, i16 1084, i16 1089, i16 1100, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 371250, i16 2560, i16 2778, i16 2822, i16 2970, i16 0, i16 1080, i16 1084, i16 1089, i16 1250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 495000, i16 2560, i16 3108, i16 3152, i16 3300, i16 0, i16 1080, i16 1084, i16 1089, i16 1250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 297000, i16 3840, i16 5116, i16 5204, i16 5500, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 297000, i16 3840, i16 4896, i16 4984, i16 5280, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 297000, i16 3840, i16 4016, i16 4104, i16 4400, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 594000, i16 3840, i16 4896, i16 4984, i16 5280, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 594000, i16 3840, i16 4016, i16 4104, i16 4400, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 297000, i16 4096, i16 5116, i16 5204, i16 5500, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4 }, %struct.drm_display_mode { i32 297000, i16 4096, i16 5064, i16 5152, i16 5280, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4 }, %struct.drm_display_mode { i32 297000, i16 4096, i16 4184, i16 4272, i16 4400, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4 }, %struct.drm_display_mode { i32 594000, i16 4096, i16 5064, i16 5152, i16 5280, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4 }, %struct.drm_display_mode { i32 594000, i16 4096, i16 4184, i16 4272, i16 4400, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4 }, %struct.drm_display_mode { i32 297000, i16 3840, i16 5116, i16 5204, i16 5500, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 297000, i16 3840, i16 4896, i16 4984, i16 5280, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 297000, i16 3840, i16 4016, i16 4104, i16 4400, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 594000, i16 3840, i16 4896, i16 4984, i16 5280, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 594000, i16 3840, i16 4016, i16 4104, i16 4400, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 90000, i16 1280, i16 2240, i16 2280, i16 2500, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 90000, i16 1280, i16 2240, i16 2280, i16 2500, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 99000, i16 1680, i16 2490, i16 2530, i16 2750, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1680x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 148500, i16 1920, i16 2558, i16 2602, i16 2750, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 148500, i16 1920, i16 2558, i16 2602, i16 2750, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 198000, i16 2560, i16 3558, i16 3602, i16 3750, i16 0, i16 1080, i16 1084, i16 1089, i16 1100, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"2560x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 594000, i16 3840, i16 5116, i16 5204, i16 5500, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 594000, i16 4096, i16 5116, i16 5204, i16 5500, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4 }, %struct.drm_display_mode { i32 594000, i16 3840, i16 5116, i16 5204, i16 5500, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 1188000, i16 3840, i16 4896, i16 4984, i16 5280, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 1188000, i16 3840, i16 4016, i16 4104, i16 4400, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 1188000, i16 3840, i16 4896, i16 4984, i16 5280, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 1188000, i16 3840, i16 4016, i16 4104, i16 4400, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 396000, i16 5120, i16 7116, i16 7204, i16 7500, i16 0, i16 2160, i16 2168, i16 2178, i16 2200, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"5120x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 396000, i16 5120, i16 6816, i16 6904, i16 7200, i16 0, i16 2160, i16 2168, i16 2178, i16 2200, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"5120x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 396000, i16 5120, i16 5784, i16 5872, i16 6000, i16 0, i16 2160, i16 2168, i16 2178, i16 2200, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"5120x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 742500, i16 5120, i16 5866, i16 5954, i16 6250, i16 0, i16 2160, i16 2168, i16 2178, i16 2475, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"5120x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 742500, i16 5120, i16 6216, i16 6304, i16 6600, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"5120x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 742500, i16 5120, i16 5284, i16 5372, i16 5500, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"5120x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 1485000, i16 5120, i16 6216, i16 6304, i16 6600, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"5120x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }], align 16
@edid_cea_modes_193 = internal constant [27 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 1485000, i16 5120, i16 5284, i16 5372, i16 5500, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"5120x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 1188000, i16 7680, i16 10232, i16 10408, i16 11000, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 1188000, i16 7680, i16 10032, i16 10208, i16 10800, i16 0, i16 4320, i16 4336, i16 4356, i16 4400, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 1188000, i16 7680, i16 8232, i16 8408, i16 9000, i16 0, i16 4320, i16 4336, i16 4356, i16 4400, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 2376000, i16 7680, i16 10232, i16 10408, i16 11000, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 2376000, i16 7680, i16 10032, i16 10208, i16 10800, i16 0, i16 4320, i16 4336, i16 4356, i16 4400, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 2376000, i16 7680, i16 8232, i16 8408, i16 9000, i16 0, i16 4320, i16 4336, i16 4356, i16 4400, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 4752000, i16 7680, i16 9792, i16 9968, i16 10560, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 4752000, i16 7680, i16 8032, i16 8208, i16 8800, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 1188000, i16 7680, i16 10232, i16 10408, i16 11000, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 1188000, i16 7680, i16 10032, i16 10208, i16 10800, i16 0, i16 4320, i16 4336, i16 4356, i16 4400, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 1188000, i16 7680, i16 8232, i16 8408, i16 9000, i16 0, i16 4320, i16 4336, i16 4356, i16 4400, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 2376000, i16 7680, i16 10232, i16 10408, i16 11000, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 2376000, i16 7680, i16 10032, i16 10208, i16 10800, i16 0, i16 4320, i16 4336, i16 4356, i16 4400, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 2376000, i16 7680, i16 8232, i16 8408, i16 9000, i16 0, i16 4320, i16 4336, i16 4356, i16 4400, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 4752000, i16 7680, i16 9792, i16 9968, i16 10560, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 4752000, i16 7680, i16 8032, i16 8208, i16 8800, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"7680x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 1485000, i16 10240, i16 11732, i16 11908, i16 12500, i16 0, i16 4320, i16 4336, i16 4356, i16 4950, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"10240x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 1485000, i16 10240, i16 12732, i16 12908, i16 13500, i16 0, i16 4320, i16 4336, i16 4356, i16 4400, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"10240x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 1485000, i16 10240, i16 10528, i16 10704, i16 11000, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"10240x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 2970000, i16 10240, i16 11732, i16 11908, i16 12500, i16 0, i16 4320, i16 4336, i16 4356, i16 4950, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"10240x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 2970000, i16 10240, i16 12732, i16 12908, i16 13500, i16 0, i16 4320, i16 4336, i16 4356, i16 4400, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"10240x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 2970000, i16 10240, i16 10528, i16 10704, i16 11000, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"10240x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 5940000, i16 10240, i16 12432, i16 12608, i16 13200, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"10240x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 5940000, i16 10240, i16 10528, i16 10704, i16 11000, i16 0, i16 4320, i16 4336, i16 4356, i16 4500, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"10240x4320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 3 }, %struct.drm_display_mode { i32 1188000, i16 4096, i16 4896, i16 4984, i16 5280, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4 }, %struct.drm_display_mode { i32 1188000, i16 4096, i16 4184, i16 4272, i16 4400, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4 }], align 16
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"Found %d Short Audio Descriptors\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"Found %d Speaker Allocation Data Blocks\0A\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Monitor has basic audio support\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"CEA audio format %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [61 x i8] c"[CONNECTOR:%d:%s] Assigning DFP sink color depth as %d bpc.\0A\00", align 1
@.str.37 = private unnamed_addr constant [74 x i8] c"[CONNECTOR:%d:%s] Assigning EDID-1.4 digital sink color depth as %d bpc.\0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"[CONNECTOR:%d:%s] Non-desktop display%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c" (redundant quirk)\00", align 1
@edid_quirk_list = internal unnamed_addr constant [62 x { { i32, [4 x i8], ptr }, i32, [4 x i8] }] [{ { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 74624326, [4 x i8] zeroinitializer, ptr null }, i32 2, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 101283330, [4 x i8] zeroinitializer, ptr null }, i32 2, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 78577664, [4 x i8] zeroinitializer, ptr null }, i32 1024, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 164722902, [4 x i8] zeroinitializer, ptr null }, i32 256, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 166004619, [4 x i8] zeroinitializer, ptr null }, i32 1024, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 236197855, [4 x i8] zeroinitializer, ptr null }, i32 1024, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1283667538, [4 x i8] zeroinitializer, ptr null }, i32 1024, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 166004593, [4 x i8] zeroinitializer, ptr null }, i32 1024, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 876086764, [4 x i8] zeroinitializer, ptr null }, i32 2, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 876087166, [4 x i8] zeroinitializer, ptr null }, i32 2, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 369747840, [4 x i8] zeroinitializer, ptr null }, i32 4, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 369696808, [4 x i8] zeroinitializer, ptr null }, i32 2, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 409810208, [4 x i8] zeroinitializer, ptr null }, i32 24, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 510483391, [4 x i8] zeroinitializer, ptr null }, i32 8192, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 510483354, [4 x i8] zeroinitializer, ptr null }, i32 8192, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 820249340, [4 x i8] zeroinitializer, ptr null }, i32 2048, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 839647232, [4 x i8] zeroinitializer, ptr null }, i32 32, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 839657984, [4 x i8] zeroinitializer, ptr null }, i32 32, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1278018077, [4 x i8] zeroinitializer, ptr null }, i32 64, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1278018132, [4 x i8] zeroinitializer, ptr null }, i32 2, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1278018174, [4 x i8] zeroinitializer, ptr null }, i32 2, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1306076481, [4 x i8] zeroinitializer, ptr null }, i32 512, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1516442524, [4 x i8] zeroinitializer, ptr null }, i32 128, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 883165112, [4 x i8] zeroinitializer, ptr null }, i32 8, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1283672146, [4 x i8] zeroinitializer, ptr null }, i32 1024, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1285804083, [4 x i8] zeroinitializer, ptr null }, i32 256, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 378680904, [4 x i8] zeroinitializer, ptr null }, i32 256, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039912, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039920, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039921, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039922, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039923, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039924, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039925, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039926, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039927, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039928, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039929, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039930, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039931, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039932, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039933, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039934, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1503039935, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 584231425, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 584231426, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1053949953, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1053949955, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1053949956, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1053949970, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 74612686, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 816710664, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 447355248, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 279740366, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1285755978, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 112443650, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1306068740, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1286475801, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1322389529, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 112136465, [4 x i8] zeroinitializer, ptr null }, i32 4096, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 1292899660, [4 x i8] zeroinitializer, ptr null }, i32 1024, [4 x i8] zeroinitializer }, { { i32, [4 x i8], ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr } { i32 586164329, [4 x i8] zeroinitializer, ptr null }, i32 1, [4 x i8] zeroinitializer }], align 16
@.str.41 = private unnamed_addr constant [73 x i8] c"[CONNECTOR:%d:%s] Supported Monitor Refresh rate range is %d Hz - %d Hz\0A\00", align 1
@.str.42 = private unnamed_addr constant [59 x i8] c"[CONNECTOR:%d:%s] CEA extension version mismatch %u != %u\0A\00", align 1
@.str.43 = private unnamed_addr constant [60 x i8] c"[CONNECTOR:%d:%s] HDMI: DVI dual %d, max TMDS clock %d kHz\0A\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"[CONNECTOR:%d:%s] HDMI sink does deep color 30.\0A\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"[CONNECTOR:%d:%s] HDMI sink does deep color 36.\0A\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"[CONNECTOR:%d:%s] HDMI sink does deep color 48.\0A\00", align 1
@.str.47 = private unnamed_addr constant [60 x i8] c"[CONNECTOR:%d:%s] No deep color support on this HDMI sink.\0A\00", align 1
@.str.48 = private unnamed_addr constant [62 x i8] c"[CONNECTOR:%d:%s] Assigning HDMI sink color depth as %d bpc.\0A\00", align 1
@.str.49 = private unnamed_addr constant [58 x i8] c"[CONNECTOR:%d:%s] HDMI sink does YCRCB444 in deep color.\0A\00", align 1
@.str.50 = private unnamed_addr constant [60 x i8] c"[CONNECTOR:%d:%s] HDMI sink should do DC_36, but does not!\0A\00", align 1
@.str.51 = private unnamed_addr constant [94 x i8] c"[CONNECTOR:%d:%s] HF-VSDB: max TMDS clock: %d KHz, HDMI 2.1 support: %s, DSC 1.2 support: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.54 = private unnamed_addr constant [70 x i8] c"[CONNECTOR:%d:%s] HMD or specialized display VSDB version %u: 0x%02x\0A\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"[CONNECTOR:%d:%s] Unsupported AMD VSDB version %u\0A\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"[CONNECTOR:%d:%s] CEA VCDB 0x%02x\0A\00", align 1
@drm_calculate_luminance_range.pre_computed_values = internal unnamed_addr constant [32 x i8] c"2345789:;=>?ABDEGHJKMOQRTVXZ\\^`b", align 16
@.str.57 = private unnamed_addr constant [74 x i8] c"[CONNECTOR:%d:%s] DisplayID extension version 0x%02x, primary use 0x%02x\0A\00", align 1
@.str.58 = private unnamed_addr constant [51 x i8] c"[CONNECTOR:%d:%s] Unexpected vendor block size %u\0A\00", align 1
@.str.59 = private unnamed_addr constant [53 x i8] c"[CONNECTOR:%d:%s] Unexpected VESA vendor block size\0A\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"[CONNECTOR:%d:%s] Reserved MSO mode value\0A\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"[CONNECTOR:%d:%s] Reserved MSO pixel overlap value %u\0A\00", align 1
@.str.62 = private unnamed_addr constant [57 x i8] c"[CONNECTOR:%d:%s] MSO stream count %u, pixel overlap %u\0A\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"[CONNECTOR:%d:%s] ELD monitor %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [45 x i8] c"[CONNECTOR:%d:%s] ELD size %d, SAD count %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [89 x i8] c"[CONNECTOR:%d:%s] HDMI: latency present %d %d, video latency %d %d, audio latency %d %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [52 x i8] c"[CONNECTOR:%d:%s] EDID changed, epoch counter %llu\0A\00", align 1
@.str.67 = private unnamed_addr constant [52 x i8] c"[CONNECTOR:%d:%s] EDID property update failed (%d)\0A\00", align 1
@.str.68 = private unnamed_addr constant [59 x i8] c"[CONNECTOR:%d:%s] Non-desktop property update failed (%d)\0A\00", align 1
@.str.69 = private unnamed_addr constant [52 x i8] c"[CONNECTOR:%d:%s] Tile property update failed (%d)\0A\00", align 1
@.str.70 = private unnamed_addr constant [45 x i8] c"[CONNECTOR:%d:%s] Stereo mode not supported\0A\00", align 1
@.str.71 = private unnamed_addr constant [48 x i8] c"[CONNECTOR:%d:%s] Composite sync not supported\0A\00", align 1
@.str.72 = private unnamed_addr constant [76 x i8] c"[CONNECTOR:%d:%s] Incorrect Detailed timing. Wrong Hsync/Vsync pulse width\0A\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"[CONNECTOR:%d:%s] reducing hsync_end %d->%d\0A\00", align 1
@.str.74 = private unnamed_addr constant [45 x i8] c"[CONNECTOR:%d:%s] reducing vsync_end %d->%d\0A\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"CEA\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@edid_4k_modes = internal constant [5 x %struct.drm_display_mode] [%struct.drm_display_mode zeroinitializer, %struct.drm_display_mode { i32 297000, i16 3840, i16 4016, i16 4104, i16 4400, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 297000, i16 3840, i16 4896, i16 4984, i16 5280, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 297000, i16 3840, i16 5116, i16 5204, i16 5500, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"3840x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2 }, %struct.drm_display_mode { i32 297000, i16 4096, i16 5116, i16 5204, i16 5500, i16 0, i16 2160, i16 2168, i16 2178, i16 2250, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"4096x2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4 }], align 16
@.str.77 = private unnamed_addr constant [77 x i8] c"[CONNECTOR:%d:%s] detailed mode matches %s VIC %d, adjusting clock %d -> %d\0A\00", align 1
@edid_est_modes = internal constant [17 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 40000, i16 800, i16 840, i16 968, i16 1056, i16 0, i16 600, i16 601, i16 605, i16 628, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 36000, i16 800, i16 824, i16 896, i16 1024, i16 0, i16 600, i16 601, i16 603, i16 625, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 31500, i16 640, i16 656, i16 720, i16 840, i16 0, i16 480, i16 481, i16 484, i16 500, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 31500, i16 640, i16 664, i16 704, i16 832, i16 0, i16 480, i16 489, i16 492, i16 520, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 30240, i16 640, i16 704, i16 768, i16 864, i16 0, i16 480, i16 483, i16 486, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 25175, i16 640, i16 656, i16 752, i16 800, i16 0, i16 480, i16 490, i16 492, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 35500, i16 720, i16 738, i16 846, i16 900, i16 0, i16 400, i16 421, i16 423, i16 449, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 28320, i16 720, i16 738, i16 846, i16 900, i16 0, i16 400, i16 412, i16 414, i16 449, i16 0, i32 6, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 135000, i16 1280, i16 1296, i16 1440, i16 1688, i16 0, i16 1024, i16 1025, i16 1028, i16 1066, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x1024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 78750, i16 1024, i16 1040, i16 1136, i16 1312, i16 0, i16 768, i16 769, i16 772, i16 800, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 75000, i16 1024, i16 1048, i16 1184, i16 1328, i16 0, i16 768, i16 771, i16 777, i16 806, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 65000, i16 1024, i16 1048, i16 1184, i16 1344, i16 0, i16 768, i16 771, i16 777, i16 806, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 44900, i16 1024, i16 1032, i16 1208, i16 1264, i16 0, i16 768, i16 768, i16 776, i16 817, i16 0, i32 21, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 57284, i16 832, i16 864, i16 928, i16 1152, i16 0, i16 624, i16 625, i16 628, i16 667, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"832x624\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 49500, i16 800, i16 816, i16 896, i16 1056, i16 0, i16 600, i16 601, i16 604, i16 625, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 50000, i16 800, i16 856, i16 976, i16 1040, i16 0, i16 600, i16 637, i16 643, i16 666, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 108000, i16 1152, i16 1216, i16 1344, i16 1600, i16 0, i16 864, i16 865, i16 868, i16 900, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1152x864\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }], align 16
@est3_modes = internal unnamed_addr constant [44 x %struct.minimode] [%struct.minimode { i16 640, i16 350, i16 85, i16 0 }, %struct.minimode { i16 640, i16 400, i16 85, i16 0 }, %struct.minimode { i16 720, i16 400, i16 85, i16 0 }, %struct.minimode { i16 640, i16 480, i16 85, i16 0 }, %struct.minimode { i16 848, i16 480, i16 60, i16 0 }, %struct.minimode { i16 800, i16 600, i16 85, i16 0 }, %struct.minimode { i16 1024, i16 768, i16 85, i16 0 }, %struct.minimode { i16 1152, i16 864, i16 75, i16 0 }, %struct.minimode { i16 1280, i16 768, i16 60, i16 1 }, %struct.minimode { i16 1280, i16 768, i16 60, i16 0 }, %struct.minimode { i16 1280, i16 768, i16 75, i16 0 }, %struct.minimode { i16 1280, i16 768, i16 85, i16 0 }, %struct.minimode { i16 1280, i16 960, i16 60, i16 0 }, %struct.minimode { i16 1280, i16 960, i16 85, i16 0 }, %struct.minimode { i16 1280, i16 1024, i16 60, i16 0 }, %struct.minimode { i16 1280, i16 1024, i16 85, i16 0 }, %struct.minimode { i16 1360, i16 768, i16 60, i16 0 }, %struct.minimode { i16 1440, i16 900, i16 60, i16 1 }, %struct.minimode { i16 1440, i16 900, i16 60, i16 0 }, %struct.minimode { i16 1440, i16 900, i16 75, i16 0 }, %struct.minimode { i16 1440, i16 900, i16 85, i16 0 }, %struct.minimode { i16 1400, i16 1050, i16 60, i16 1 }, %struct.minimode { i16 1400, i16 1050, i16 60, i16 0 }, %struct.minimode { i16 1400, i16 1050, i16 75, i16 0 }, %struct.minimode { i16 1400, i16 1050, i16 85, i16 0 }, %struct.minimode { i16 1680, i16 1050, i16 60, i16 1 }, %struct.minimode { i16 1680, i16 1050, i16 60, i16 0 }, %struct.minimode { i16 1680, i16 1050, i16 75, i16 0 }, %struct.minimode { i16 1680, i16 1050, i16 85, i16 0 }, %struct.minimode { i16 1600, i16 1200, i16 60, i16 0 }, %struct.minimode { i16 1600, i16 1200, i16 65, i16 0 }, %struct.minimode { i16 1600, i16 1200, i16 70, i16 0 }, %struct.minimode { i16 1600, i16 1200, i16 75, i16 0 }, %struct.minimode { i16 1600, i16 1200, i16 85, i16 0 }, %struct.minimode { i16 1792, i16 1344, i16 60, i16 0 }, %struct.minimode { i16 1792, i16 1344, i16 75, i16 0 }, %struct.minimode { i16 1856, i16 1392, i16 60, i16 0 }, %struct.minimode { i16 1856, i16 1392, i16 75, i16 0 }, %struct.minimode { i16 1920, i16 1200, i16 60, i16 1 }, %struct.minimode { i16 1920, i16 1200, i16 60, i16 0 }, %struct.minimode { i16 1920, i16 1200, i16 75, i16 0 }, %struct.minimode { i16 1920, i16 1200, i16 85, i16 0 }, %struct.minimode { i16 1920, i16 1440, i16 60, i16 0 }, %struct.minimode { i16 1920, i16 1440, i16 75, i16 0 }], align 16
@.str.78 = private unnamed_addr constant [54 x i8] c"[drm] *ERROR* [CONNECTOR:%d:%s] Unknown HDMI VIC: %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [89 x i8] c"Fractional vrefresh is not implemented, proceeding with non-video-optimized refresh rate\00", align 1
@extra_modes = internal unnamed_addr constant [7 x %struct.minimode] [%struct.minimode { i16 1024, i16 576, i16 60, i16 0 }, %struct.minimode { i16 1366, i16 768, i16 60, i16 0 }, %struct.minimode { i16 1600, i16 900, i16 60, i16 0 }, %struct.minimode { i16 1680, i16 945, i16 60, i16 0 }, %struct.minimode { i16 1920, i16 1080, i16 60, i16 0 }, %struct.minimode { i16 2048, i16 1152, i16 60, i16 0 }, %struct.minimode { i16 2048, i16 1536, i16 60, i16 0 }], align 16
@.str.80 = private unnamed_addr constant [50 x i8] c"[CONNECTOR:%d:%s] Unexpected tiled block size %u\0A\00", align 1
@.str.81 = private unnamed_addr constant [90 x i8] c"[CONNECTOR:%d:%s] tile cap 0x%x, size %dx%d, num tiles %dx%d, location %dx%d, vend %c%c%c\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_addressable_drm_add_edid_modes_771, ptr @__UNIQUE_ID_addressable_drm_add_modes_noedid_772, ptr @__UNIQUE_ID_addressable_drm_av_sync_delay_752, ptr @__UNIQUE_ID_addressable_drm_connector_update_edid_property_770, ptr @__UNIQUE_ID_addressable_drm_default_rgb_quant_range_755, ptr @__UNIQUE_ID_addressable_drm_detect_hdmi_monitor_753, ptr @__UNIQUE_ID_addressable_drm_detect_monitor_audio_754, ptr @__UNIQUE_ID_addressable_drm_display_mode_from_cea_vic_728, ptr @__UNIQUE_ID_addressable_drm_edid_alloc_685, ptr @__UNIQUE_ID_addressable_drm_edid_connector_add_modes_769, ptr @__UNIQUE_ID_addressable_drm_edid_connector_update_768, ptr @__UNIQUE_ID_addressable_drm_edid_dup_686, ptr @__UNIQUE_ID_addressable_drm_edid_duplicate_705, ptr @__UNIQUE_ID_addressable_drm_edid_free_687, ptr @__UNIQUE_ID_addressable_drm_edid_get_monitor_name_737, ptr @__UNIQUE_ID_addressable_drm_edid_get_panel_id_699, ptr @__UNIQUE_ID_addressable_drm_edid_get_product_id_695, ptr @__UNIQUE_ID_addressable_drm_edid_has_quirk_706, ptr @__UNIQUE_ID_addressable_drm_edid_header_is_valid_666, ptr @__UNIQUE_ID_addressable_drm_edid_is_digital_776, ptr @__UNIQUE_ID_addressable_drm_edid_is_valid_677, ptr @__UNIQUE_ID_addressable_drm_edid_match_733, ptr @__UNIQUE_ID_addressable_drm_edid_override_connector_update_681, ptr @__UNIQUE_ID_addressable_drm_edid_print_product_id_698, ptr @__UNIQUE_ID_addressable_drm_edid_raw_684, ptr @__UNIQUE_ID_addressable_drm_edid_read_694, ptr @__UNIQUE_ID_addressable_drm_edid_read_base_block_700, ptr @__UNIQUE_ID_addressable_drm_edid_read_custom_691, ptr @__UNIQUE_ID_addressable_drm_edid_read_ddc_692, ptr @__UNIQUE_ID_addressable_drm_edid_read_switcheroo_704, ptr @__UNIQUE_ID_addressable_drm_edid_to_sad_741, ptr @__UNIQUE_ID_addressable_drm_edid_to_speaker_allocation_742, ptr @__UNIQUE_ID_addressable_drm_edid_valid_678, ptr @__UNIQUE_ID_addressable_drm_get_edid_689, ptr @__UNIQUE_ID_addressable_drm_get_edid_switcheroo_702, ptr @__UNIQUE_ID_addressable_drm_hdmi_avi_infoframe_from_display_mode_773, ptr @__UNIQUE_ID_addressable_drm_hdmi_avi_infoframe_quant_range_774, ptr @__UNIQUE_ID_addressable_drm_hdmi_vendor_infoframe_from_display_mode_775, ptr @__UNIQUE_ID_addressable_drm_match_cea_mode_727, ptr @__UNIQUE_ID_addressable_drm_mode_find_dmt_707, ptr @__UNIQUE_ID_addressable_drm_probe_ddc_688, ptr @__UNIQUE_ID_modinfo_667, ptr @__UNIQUE_ID_modinfo_668, ptr @__param_edid_fixup, ptr @drm_edid_read.__UNIQUE_ID_addressable___SCK__WARN_trap_693, ptr @drm_edid_read_custom.__UNIQUE_ID_addressable___SCK__WARN_trap_690, ptr @drm_edid_read_switcheroo.__UNIQUE_ID_addressable___SCK__WARN_trap_703, ptr @drm_get_edid_switcheroo.__UNIQUE_ID_addressable___SCK__WARN_trap_701, ptr @edid_block_status_print.__UNIQUE_ID_addressable___SCK__WARN_trap_674], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 9) i32 @drm_edid_header_is_valid(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 0
  %i.c = zext i1 %i.b to i32
  %i.d = getelementptr i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, -1
  %i.g = zext i1 %i.f to i32
  %spec.select.1 = add nuw nsw i32 %i.c, %i.g
  %i.h = getelementptr i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, -1
  %i.k = zext i1 %i.j to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.k
  %i.l = getelementptr i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, -1
  %i.o = zext i1 %i.n to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %i.o
  %i.p = getelementptr i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, -1
  %i.s = zext i1 %i.r to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %i.s
  %i.t = getelementptr i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, -1
  %i.w = zext i1 %i.v to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %i.w
  %i.x = getelementptr i8, ptr %0, i64 6
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, -1
  %i.aa = zext i1 %i.z to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %i.aa
  %i.ab = getelementptr i8, ptr %0, i64 7
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %i.ae
  ret i32 %spec.select.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @drm_edid_is_valid(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %drm_edid_block_valid.exit.thread14, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 126
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %drm_edid_block_valid.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %drm_edid_block_valid.exit.thread ] ; 5 uses
  %i.c = getelementptr [128 x i8], ptr %0, i64 %indvars.iv ; 9 uses
  %i.d = icmp eq i64 %indvars.iv, 0               ; 3 uses
  %.not40.i = icmp eq ptr %i.c, null
  br i1 %.not40.i, label %bb.c, label %.critedge.i, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "675: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 675b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 675) #20, !srcloc !23
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, ptr @.str.5, i32 2018, i32 2305, i64 16) #20, !srcloc !24
  tail call void asm sideeffect "676: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 676b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 676) #20, !srcloc !25
  br label %drm_edid_block_valid.exit.thread14

.critedge.i:                                      ; preds = %bb.b
  %i.e = tail call fastcc i32 @edid_block_check(ptr noundef nonnull %i.c, i1 noundef zeroext %i.d) #21, !srcloc !26 ; 2 uses
  %i.f = icmp eq i32 %i.e, 5
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.i
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef @.str.14) #22
  store i64 72057594037927680, ptr %i.c, align 1
  %i.g = tail call fastcc i32 @edid_block_check(ptr noundef nonnull %i.c, i1 noundef zeroext %i.d) #21, !srcloc !27 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %drm_edid_block_valid.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge.i
  %.037.i = phi i32 [ %i.g, %bb.d ], [ %i.e, %.critedge.i ] ; 4 uses
  %i.i = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  tail call fastcc void @edid_block_status_print(i32 noundef %.037.i, ptr noundef nonnull %i.c, i32 noundef range(i32 -2147483648, 256) %i.i) #21, !srcloc !28
  switch i32 %.037.i, label %edid_block_status_valid.exit.i [
    i32 6, label %drm_edid_block_valid.exit.thread
    i32 0, label %drm_edid_block_valid.exit.thread
  ]

edid_block_status_valid.exit.i:                   ; preds = %bb.e
  %.val.i = load i8, ptr %i.c, align 1
  %i.j = icmp eq i32 %.037.i, 7
  %i.k = icmp eq i8 %.val.i, 2
  %i.l = and i1 %i.j, %i.k                        ; 2 uses
  %i.m = icmp eq i32 %.037.i, 3
  %or.cond5.not.i = or i1 %i.m, %i.l
  br i1 %or.cond5.not.i, label %drm_edid_block_valid.exit, label %bb.f

bb.f:                                             ; preds = %edid_block_status_valid.exit.i
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !annotation !14
  %i.o = tail call fastcc i32 @edid_block_check(ptr noundef nonnull %i.c, i1 noundef zeroext %i.d) #21, !srcloc !15 ; 2 uses
  switch i32 %i.o, label %edid_block_status_valid.exit.i.i [
    i32 3, label %edid_block_dump.exit.i
    i32 6, label %edid_block_status_valid.exit.thread.i.i
    i32 0, label %edid_block_status_valid.exit.thread.i.i
  ]

edid_block_status_valid.exit.i.i:                 ; preds = %bb.f
  %.val.i.i = load i8, ptr %i.c, align 1
  %i.p = icmp eq i32 %i.o, 7
  %i.q = icmp eq i8 %.val.i.i, 2
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %edid_block_status_valid.exit.thread.i.i, label %edid_block_dump.exit.i

edid_block_status_valid.exit.thread.i.i:          ; preds = %edid_block_status_valid.exit.i.i, %bb.f, %bb.f
  br label %edid_block_dump.exit.i

edid_block_dump.exit.i:                           ; preds = %edid_block_status_valid.exit.thread.i.i, %edid_block_status_valid.exit.i.i, %bb.f
  %.str.30.sink.i.i = phi ptr [ @.str.29, %bb.f ], [ @.str.31, %edid_block_status_valid.exit.thread.i.i ], [ @.str.30, %edid_block_status_valid.exit.i.i ]
  %i.s = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %.str.30.sink.i.i, i32 noundef range(i32 -2147483648, 256) %i.i) #22 ; 0 uses
  call void @print_hex_dump(ptr noundef @.str.11, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef 128, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %drm_edid_block_valid.exit.thread14

drm_edid_block_valid.exit:                        ; preds = %edid_block_status_valid.exit.i
  br i1 %i.l, label %drm_edid_block_valid.exit.thread, label %drm_edid_block_valid.exit.thread14

drm_edid_block_valid.exit.thread:                 ; preds = %bb.d, %bb.e, %bb.e, %drm_edid_block_valid.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val = load i8, ptr %i.b, align 1
  %i.t = zext i8 %.val to i64
  %.not16.not = icmp samesign ult i64 %indvars.iv, %i.t
  br i1 %.not16.not, label %bb.b, label %drm_edid_block_valid.exit.thread14, !llvm.loop !22

drm_edid_block_valid.exit.thread14:               ; preds = %drm_edid_block_valid.exit.thread, %drm_edid_block_valid.exit, %edid_block_dump.exit.i, %bb.c, %bb.a
  %.2 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %edid_block_dump.exit.i ], [ true, %drm_edid_block_valid.exit.thread ], [ false, %drm_edid_block_valid.exit ]
  ret i1 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @drm_edid_valid(ptr nofree noundef readonly captures(address_is_null) %0) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8               ; 3 uses
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val15 = load ptr, ptr %i.a, align 8           ; 8 uses
  %i.b = getelementptr i8, ptr %.val15, i64 126
  %.val.i = load i8, ptr %i.b, align 1            ; 4 uses
  %.not.i = icmp ult i64 %.val, 256
  br i1 %.not.i, label %__drm_edid_block_count.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %.val15, i64 128
  %.val8.i.i.i = load i8, ptr %i.c, align 1
  %.not7.i.i.i = icmp eq i8 %.val8.i.i.i, 2
  br i1 %.not7.i.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr i8, ptr %.val15, i64 129
  %.val9.i.i.i = load i8, ptr %i.d, align 1
  %i.e = icmp ult i8 %.val9.i.i.i, 3
  br i1 %i.e, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr i8, ptr %.val15, i64 130
  %.val10.i.i.i = load i8, ptr %i.f, align 1
  %i.g = icmp slt i8 %.val10.i.i.i, 7
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr i8, ptr %.val15, i64 132
  %.val.i.i.i.i.i = load i8, ptr %i.h, align 1    ; 2 uses
  %i.i = icmp ult i8 %.val.i.i.i.i.i, -32
  %i.j = and i8 %.val.i.i.i.i.i, 31               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  %or.cond.i.i.i.i.i = or i1 %i.i, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.h, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.i

cea_db_is_hdmi_forum_eeodb.exit.i.i.i:            ; preds = %bb.g
  %i.k = getelementptr i8, ptr %.val15, i64 133
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 120
  %i.n = icmp samesign ugt i8 %i.j, 1
  %spec.select.i.i.i.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %spec.select.i.i.i.i, label %edid_hfeeodb_extension_block_count.exit.i.i, label %bb.h

edid_hfeeodb_extension_block_count.exit.i.i:      ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.i
  %i.o = getelementptr i8, ptr %.val15, i64 134
  %i.p = load i8, ptr %i.o, align 1
  %.fr.i.i = freeze i8 %i.p                       ; 2 uses
  %.not.i.i = icmp eq i8 %.fr.i.i, 0
  br i1 %.not.i.i, label %bb.h, label %__drm_edid_block_count.exit

bb.h:                                             ; preds = %edid_hfeeodb_extension_block_count.exit.i.i, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  br label %__drm_edid_block_count.exit

__drm_edid_block_count.exit:                      ; preds = %bb.b, %edid_hfeeodb_extension_block_count.exit.i.i, %bb.h
  %.1.in.in.i = phi i8 [ %.val.i, %bb.b ], [ %.val.i, %bb.h ], [ %.fr.i.i, %edid_hfeeodb_extension_block_count.exit.i.i ]
  %.1.in.i = zext i8 %.1.in.in.i to i64
  %.1.i = shl nuw nsw i64 %.1.in.i, 7
  %i.q = add nuw nsw i64 %.1.i, 128
  %.not14 = icmp eq i64 %.val, %i.q
  br i1 %.not14, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %__drm_edid_block_count.exit, %edid_block_valid.exit.thread
  %.val.i.i = phi i8 [ %.val.i.i.pre, %edid_block_valid.exit.thread ], [ %.val.i, %__drm_edid_block_count.exit ] ; 3 uses
  %.val17 = phi ptr [ %.val17.pre, %edid_block_valid.exit.thread ], [ %.val15, %__drm_edid_block_count.exit ] ; 7 uses
  %.val16 = phi i64 [ %.val16.pre, %edid_block_valid.exit.thread ], [ %.val, %__drm_edid_block_count.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %edid_block_valid.exit.thread ], [ 0, %__drm_edid_block_count.exit ] ; 4 uses
  %.not.i.i19 = icmp ult i64 %.val16, 256
  br i1 %.not.i.i19, label %drm_edid_block_count.exit, label %bb.i

bb.i:                                             ; preds = %.preheader
  %.not.i.i.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %.val17, i64 128
  %.val8.i.i.i.i = load i8, ptr %i.r, align 1
  %.not7.i.i.i.i = icmp eq i8 %.val8.i.i.i.i, 2
  br i1 %.not7.i.i.i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %.val17, i64 129
  %.val9.i.i.i.i = load i8, ptr %i.s, align 1
  %i.t = icmp ult i8 %.val9.i.i.i.i, 3
  br i1 %i.t, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr i8, ptr %.val17, i64 130
  %.val10.i.i.i.i = load i8, ptr %i.u, align 1
  %i.v = icmp slt i8 %.val10.i.i.i.i, 7
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr i8, ptr %.val17, i64 132
  %.val.i.i.i.i.i.i = load i8, ptr %i.w, align 1  ; 2 uses
  %i.x = icmp ult i8 %.val.i.i.i.i.i.i, -32
  %i.y = and i8 %.val.i.i.i.i.i.i, 31             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.x, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.n, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i

cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i:          ; preds = %bb.m
  %i.z = getelementptr i8, ptr %.val17, i64 133
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 120
  %i.ac = icmp samesign ugt i8 %i.y, 1
  %spec.select.i.i.i.i.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %spec.select.i.i.i.i.i, label %edid_hfeeodb_extension_block_count.exit.i.i.i, label %bb.n

edid_hfeeodb_extension_block_count.exit.i.i.i:    ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i
  %i.ad = getelementptr i8, ptr %.val17, i64 134
  %i.ae = load i8, ptr %i.ad, align 1
  %.fr.i.i.i = freeze i8 %i.ae                    ; 2 uses
  %.not.i.i.i20 = icmp eq i8 %.fr.i.i.i, 0
  br i1 %.not.i.i.i20, label %bb.n, label %drm_edid_block_count.exit

bb.n:                                             ; preds = %edid_hfeeodb_extension_block_count.exit.i.i.i, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  br label %drm_edid_block_count.exit

drm_edid_block_count.exit:                        ; preds = %.preheader, %edid_hfeeodb_extension_block_count.exit.i.i.i, %bb.n
  %.1.in.in.i.i = phi i8 [ %.val.i.i, %.preheader ], [ %.val.i.i, %bb.n ], [ %.fr.i.i.i, %edid_hfeeodb_extension_block_count.exit.i.i.i ]
  %.1.in.i.i = zext i8 %.1.in.in.i.i to i32
  %.1.i.i = add nuw nsw i32 %.1.in.i.i, 1
  %i.af = trunc i64 %.val16 to i32
  %i.ag = sdiv i32 %i.af, 128
  %i.ah = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i, i32 %i.ag)
  %i.ai = sext i32 %i.ah to i64
  %.not28.not = icmp sge i64 %indvars.iv, %i.ai   ; 3 uses
  br i1 %.not28.not, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %drm_edid_block_count.exit
  %i.aj = getelementptr [128 x i8], ptr %.val17, i64 %indvars.iv ; 2 uses
  %i.ak = icmp eq i64 %indvars.iv, 0
  %i.al = tail call fastcc i32 @edid_block_check(ptr noundef %i.aj, i1 noundef zeroext %i.ak) #21, !srcloc !17 ; 2 uses
  switch i32 %i.al, label %edid_block_valid.exit [
    i32 6, label %edid_block_valid.exit.thread
    i32 0, label %edid_block_valid.exit.thread
  ]

edid_block_valid.exit:                            ; preds = %bb.o
  %.val.i21 = load i8, ptr %i.aj, align 1
  %i.am = icmp eq i32 %i.al, 7
  %i.an = icmp eq i8 %.val.i21, 2
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %edid_block_valid.exit.thread, label %.loopexit

edid_block_valid.exit.thread:                     ; preds = %bb.o, %bb.o, %edid_block_valid.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val16.pre = load i64, ptr %0, align 8
  %.val17.pre = load ptr, ptr %i.a, align 8       ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.val17.pre, i64 126
  %.val.i.i.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %.preheader, !llvm.loop !29

.loopexit:                                        ; preds = %drm_edid_block_count.exit, %edid_block_valid.exit, %__drm_edid_block_count.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %__drm_edid_block_count.exit ], [ %.not28.not, %edid_block_valid.exit ], [ %.not28.not, %drm_edid_block_count.exit ]
  ret i1 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @drm_edid_override_show(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1704       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.a) #22
  %i.b = getelementptr i8, ptr %0, i64 1696
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i64, ptr %i.c, align 8
  %i.g = tail call i32 @seq_write(ptr noundef %1, ptr noundef %i.e, i64 noundef %i.f) #22 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @mutex_unlock(ptr noundef %i.a) #22
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @drm_edid_override_set(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ult i64 %2, 128
  %or.cond3.i = or i1 %i.a, %i.b
  br i1 %or.cond3.i, label %drm_edid_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @kmemdup_noprof(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 3264) #24 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %drm_edid_alloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.e = tail call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3520, i64 noundef 16) #25 ; 4 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %_drm_edid_alloc.exit.i

_drm_edid_alloc.exit.i:                           ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.c, ptr %i.f, align 8
  store i64 %2, ptr %i.e, align 8
  br label %drm_edid_alloc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @kfree(ptr noundef nonnull %i.c) #22
  br label %drm_edid_alloc.exit

drm_edid_alloc.exit:                              ; preds = %bb.a, %bb.b, %_drm_edid_alloc.exit.i, %bb.d
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ %i.e, %_drm_edid_alloc.exit.i ] ; 5 uses
  %i.g = tail call zeroext i1 @drm_edid_valid(ptr noundef %.0.i) #21
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i17 = icmp eq ptr %i.h, null              ; 2 uses
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %drm_edid_alloc.exit
  br i1 %.not.i17, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.k = phi ptr [ %i.j, %bb.f ], [ null, %bb.e ]
  %i.l = getelementptr i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.k, i32 noundef 2, ptr noundef @.str, i32 noundef %i.m, ptr noundef %i.o) #22
  %.not.i16 = icmp eq ptr %.0.i, null
  br i1 %.not.i16, label %drm_edid_free.exit, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit
  %i.p = getelementptr i8, ptr %.0.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @kfree(ptr noundef %i.q) #22
  tail call void @kfree(ptr noundef nonnull %.0.i) #22
  br label %drm_edid_free.exit

bb.h:                                             ; preds = %drm_edid_alloc.exit
  br i1 %.not.i17, label %__drm_to_dev.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %i.h, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit18

__drm_to_dev.exit18:                              ; preds = %bb.h, %bb.i
  %i.t = phi ptr [ %i.s, %bb.i ], [ null, %bb.h ]
  %i.u = getelementptr i8, ptr %0, i64 64
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.t, i32 noundef 2, ptr noundef @.str.1, i32 noundef %i.v, ptr noundef %i.x) #22
  %i.y = getelementptr i8, ptr %0, i64 1704       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.y) #22
  %i.z = getelementptr i8, ptr %0, i64 1696       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not.i19 = icmp eq ptr %i.aa, null
  br i1 %.not.i19, label %drm_edid_free.exit20, label %bb.j

bb.j:                                             ; preds = %__drm_to_dev.exit18
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @kfree(ptr noundef %i.ac) #22
  tail call void @kfree(ptr noundef nonnull %i.aa) #22
  br label %drm_edid_free.exit20

drm_edid_free.exit20:                             ; preds = %__drm_to_dev.exit18, %bb.j
  store ptr %.0.i, ptr %i.z, align 8
  tail call void @mutex_unlock(ptr noundef %i.y) #22
  br label %drm_edid_free.exit

drm_edid_free.exit:                               ; preds = %bb.g, %__drm_to_dev.exit, %drm_edid_free.exit20
  %.0 = phi i32 [ 0, %drm_edid_free.exit20 ], [ -22, %__drm_to_dev.exit ], [ -22, %bb.g ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noalias noundef ptr @drm_edid_alloc(ptr noundef %0, i64 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %1, 128
  %or.cond3 = or i1 %i.a, %i.b
  br i1 %or.cond3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @kmemdup_noprof(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 3264) #24 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.e = tail call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3520, i64 noundef 16) #25 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %_drm_edid_alloc.exit

_drm_edid_alloc.exit:                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.c, ptr %i.f, align 8
  store i64 %1, ptr %i.e, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @kfree(ptr noundef nonnull %i.c) #22
  br label %bb.e

bb.e:                                             ; preds = %_drm_edid_alloc.exit, %bb.d, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ %i.e, %_drm_edid_alloc.exit ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_edid_free(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @kfree(ptr noundef %i.b) #22
  tail call void @kfree(ptr noundef nonnull %0) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @drm_edid_override_reset(ptr noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.d, i32 noundef 2, ptr noundef @.str.2, i32 noundef %i.f, ptr noundef %i.h) #22
  %i.i = getelementptr i8, ptr %0, i64 1704       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.i) #22
  %i.j = getelementptr i8, ptr %0, i64 1696       ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i7 = icmp eq ptr %i.k, null
  br i1 %.not.i7, label %drm_edid_free.exit, label %bb.c

bb.c:                                             ; preds = %__drm_to_dev.exit
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @kfree(ptr noundef %i.m) #22
  tail call void @kfree(ptr noundef nonnull %i.k) #22
  br label %drm_edid_free.exit

drm_edid_free.exit:                               ; preds = %__drm_to_dev.exit, %bb.c
  store ptr null, ptr %i.j, align 8
  tail call void @mutex_unlock(ptr noundef %i.i) #22
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_edid_override_connector_update(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc ptr @drm_edid_override_get(ptr noundef %0) #21, !srcloc !30 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @drm_edid_connector_update(ptr noundef %0, ptr noundef nonnull %i.a) #21
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %drm_edid_free.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @drm_edid_connector_add_modes(ptr noundef %0) #21
  br label %drm_edid_free.exit

drm_edid_free.exit:                               ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.b ]     ; 2 uses
  %i.e = getelementptr i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @kfree(ptr noundef %i.f) #22
  tail call void @kfree(ptr noundef nonnull %i.a) #22
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i11 = icmp eq ptr %i.g, null
  br i1 %.not.i11, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %drm_edid_free.exit
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %drm_edid_free.exit, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ null, %drm_edid_free.exit ]
  %i.k = getelementptr i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.j, i32 noundef 2, ptr noundef @.str.3, i32 noundef %i.l, ptr noundef %i.n, i32 noundef %.0) #22
  br label %bb.e

bb.e:                                             ; preds = %__drm_to_dev.exit, %bb.a
  %.1 = phi i32 [ %.0, %__drm_to_dev.exit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @drm_edid_override_get(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1704       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.a) #22
  %i.b = getelementptr i8, ptr %0, i64 1696
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load i64, ptr %i.c, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ult i64 %i.f, 128
  %or.cond3.i.i = or i1 %i.g, %i.h
  br i1 %or.cond3.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @kmemdup_noprof(ptr noundef nonnull %i.e, i64 noundef %i.f, i32 noundef 3264) #24 ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.k = tail call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.j, i32 noundef 3520, i64 noundef 16) #25 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.e, label %drm_edid_dup.exit

bb.e:                                             ; preds = %bb.d
  tail call void @kfree(ptr noundef nonnull %i.i) #22
  br label %bb.f

drm_edid_dup.exit:                                ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.i, ptr %i.l, align 8
  store i64 %i.f, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a, %drm_edid_dup.exit
  %.1 = phi ptr [ %i.k, %drm_edid_dup.exit ], [ inttoptr (i64 -2 to ptr), %bb.a ], [ inttoptr (i64 -2 to ptr), %bb.b ], [ inttoptr (i64 -2 to ptr), %bb.c ], [ inttoptr (i64 -2 to ptr), %bb.e ] ; 2 uses
  tail call void @mutex_unlock(ptr noundef %i.a) #22
  %i.m = icmp ugt ptr %.1, inttoptr (i64 -4096 to ptr)
  %i.n = select i1 %i.m, ptr null, ptr %.1
  ret ptr %i.n
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_edid_connector_update(ptr noundef initializes((192, 204), (212, 216), (232, 244), (248, 357), (358, 362), (364, 374), (376, 380), (392, 402), (404, 424)) %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.displayid_iter, align 8     ; 9 uses
  tail call fastcc void @update_display_info(ptr noundef %0, ptr noundef %1) #21, !srcloc !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !14
  %i.a = getelementptr i8, ptr %0, i64 1976       ; 3 uses
  store i8 0, ptr %i.a, align 8
  call void @displayid_iter_edid_begin(ptr noundef %1, ptr noundef nonnull %2) #22
  %i.b = call ptr @__displayid_iter_next(ptr noundef nonnull %2) #22 ; 2 uses
  %.not13.i = icmp eq ptr %i.b, null
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1992
  %i.d = getelementptr i8, ptr %0, i64 1993
  %i.e = getelementptr i8, ptr %0, i64 1994
  %i.f = getelementptr i8, ptr %0, i64 1995
  %i.g = getelementptr i8, ptr %0, i64 1996
  %i.h = getelementptr i8, ptr %0, i64 1998
  %i.i = getelementptr i8, ptr %0, i64 2000
  %i.j = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 1984       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %drm_parse_tiled_block.exit.i, %.lr.ph.i
  %i.m = phi ptr [ %i.b, %.lr.ph.i ], [ %i.cm, %drm_parse_tiled_block.exit.i ] ; 12 uses
  %i.n = call zeroext i8 @displayid_version(ptr noundef nonnull %2) #22
  %i.o = icmp ult i8 %i.n, 32
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.m, align 1
  %i.q = icmp eq i8 %i.p, 18
  br i1 %i.q, label %displayid_is_tiled_block.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = call zeroext i8 @displayid_version(ptr noundef nonnull %2) #22
  %i.s = icmp eq i8 %i.r, 32
  br i1 %i.s, label %displayid_is_tiled_block.exit.i, label %drm_parse_tiled_block.exit.i

displayid_is_tiled_block.exit.i:                  ; preds = %bb.d
  %i.t = load i8, ptr %i.m, align 1
  %i.u = icmp eq i8 %i.t, 40
  br i1 %i.u, label %displayid_is_tiled_block.exit.thread.i, label %drm_parse_tiled_block.exit.i

displayid_is_tiled_block.exit.thread.i:           ; preds = %displayid_is_tiled_block.exit.i, %bb.c
  %i.v = getelementptr i8, ptr %i.m, i64 2
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = icmp ult i8 %i.w, 22
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %displayid_is_tiled_block.exit.thread.i
  %i.y = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %__drm_to_dev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ]
  %i.ac = load i32, ptr %i.j, align 8
  %i.ad = load ptr, ptr %i.k, align 8
  %i.ae = zext nneg i8 %i.w to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ab, i32 noundef 2, ptr noundef @.str.80, i32 noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.ae) #22
  br label %drm_parse_tiled_block.exit.i

bb.g:                                             ; preds = %displayid_is_tiled_block.exit.thread.i
  %i.af = getelementptr i8, ptr %i.m, i64 7
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %i.m, i64 9
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = getelementptr i8, ptr %i.m, i64 4
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.al = and i8 %i.ak, 15
  %i.am = getelementptr i8, ptr %i.m, i64 6
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = and i8 %i.an, 48
  %i.ap = or disjoint i8 %i.ao, %i.al
  %i.aq = lshr i8 %i.ak, 4
  %i.ar = lshr i8 %i.an, 2                        ; 2 uses
  %i.as = and i8 %i.ar, 48
  %i.at = or disjoint i8 %i.as, %i.aq
  %i.au = getelementptr i8, ptr %i.m, i64 5
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = and i8 %i.av, 15
  %i.ax = shl i8 %i.an, 4
  %i.ay = and i8 %i.ax, 48
  %i.az = or disjoint i8 %i.aw, %i.ay             ; 2 uses
  %i.ba = lshr i8 %i.av, 4
  %i.bb = shl i8 %i.ar, 4
  %i.bc = and i8 %i.bb, 48
  %i.bd = or disjoint i8 %i.bc, %i.ba             ; 2 uses
  store i8 1, ptr %i.a, align 8
  %i.be = getelementptr i8, ptr %i.m, i64 3       ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %.not.i.i = icmp sgt i8 %i.bf, -1
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %narrow.i.i = add nuw nsw i8 %i.at, 1           ; 2 uses
  store i8 %narrow.i.i, ptr %i.d, align 1
  %narrow62.i.i = add nuw nsw i8 %i.ap, 1         ; 2 uses
  store i8 %narrow62.i.i, ptr %i.e, align 2
  store i8 %i.bd, ptr %i.f, align 1
  store i8 %i.az, ptr %i.g, align 4
  %i.bg = add i16 %i.ag, 1                        ; 2 uses
  store i16 %i.bg, ptr %i.h, align 2
  %i.bh = add i16 %i.ai, 1                        ; 2 uses
  store i16 %i.bh, ptr %i.i, align 8
  %i.bi = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i67.i.i, label %__drm_to_dev.exit68.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  br label %__drm_to_dev.exit68.i.i

__drm_to_dev.exit68.i.i:                          ; preds = %bb.j, %bb.i
  %i.bl = phi ptr [ %i.bk, %bb.j ], [ null, %bb.i ]
  %i.bm = load i32, ptr %i.j, align 8
  %i.bn = load ptr, ptr %i.k, align 8
  %i.bo = load i8, ptr %i.be, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = zext i16 %i.bg to i32
  %i.br = zext i16 %i.bh to i32
  %i.bs = zext nneg i8 %narrow.i.i to i32
  %i.bt = zext nneg i8 %narrow62.i.i to i32
  %i.bu = zext nneg i8 %i.bd to i32
  %i.bv = zext nneg i8 %i.az to i32
  %i.bw = getelementptr i8, ptr %i.m, i64 16      ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.m, i64 17
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32
  %i.cc = getelementptr i8, ptr %i.m, i64 18
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bl, i32 noundef 2, ptr noundef @.str.81, i32 noundef %i.bm, ptr noundef %i.bn, i32 noundef %i.bp, i32 noundef %i.bq, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bt, i32 noundef %i.bu, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.cb, i32 noundef %i.ce) #22
  %i.cf = load ptr, ptr %0, align 8
  %i.cg = call ptr @drm_mode_get_tile_group(ptr noundef %i.cf, ptr noundef %i.bw) #22 ; 2 uses
  %.not63.i.i = icmp eq ptr %i.cg, null
  br i1 %.not63.i.i, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %__drm_to_dev.exit68.i.i
  %i.ch = load ptr, ptr %0, align 8
  %i.ci = call ptr @drm_mode_create_tile_group(ptr noundef %i.ch, ptr noundef %i.bw) #22 ; 2 uses
  %.not64.i.i = icmp eq ptr %i.ci, null
  br i1 %.not64.i.i, label %drm_parse_tiled_block.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k, %__drm_to_dev.exit68.i.i
  %.071.i.i = phi ptr [ %i.ci, %bb.k ], [ %i.cg, %__drm_to_dev.exit68.i.i ] ; 3 uses
  %i.cj = load ptr, ptr %i.l, align 8             ; 3 uses
  %.not65.i.i = icmp eq ptr %i.cj, %.071.i.i
  br i1 %.not65.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.thread.i.i
  %.not66.i.i = icmp eq ptr %i.cj, null
  br i1 %.not66.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = load ptr, ptr %0, align 8
  call void @drm_mode_put_tile_group(ptr noundef %i.ck, ptr noundef nonnull %i.cj) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %.071.i.i, ptr %i.l, align 8
  br label %drm_parse_tiled_block.exit.i

bb.o:                                             ; preds = %.thread.i.i
  %i.cl = load ptr, ptr %0, align 8
  call void @drm_mode_put_tile_group(ptr noundef %i.cl, ptr noundef nonnull %.071.i.i) #22
  br label %drm_parse_tiled_block.exit.i

drm_parse_tiled_block.exit.i:                     ; preds = %bb.o, %bb.n, %bb.k, %__drm_to_dev.exit.i.i, %displayid_is_tiled_block.exit.i, %bb.d
  %i.cm = call ptr @__displayid_iter_next(ptr noundef nonnull %2) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !31

._crit_edge.i:                                    ; preds = %drm_parse_tiled_block.exit.i, %bb.a
  call void @displayid_iter_end(ptr noundef nonnull %2) #22
  %i.cn = load i8, ptr %i.a, align 8, !range !18, !noundef !19
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_drm_update_tile_info.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.cp = getelementptr i8, ptr %0, i64 1984      ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.cq, null
  br i1 %.not11.i, label %_drm_update_tile_info.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %0, align 8
  call void @drm_mode_put_tile_group(ptr noundef %i.cr, ptr noundef nonnull %i.cq) #22
  store ptr null, ptr %i.cp, align 8
  br label %_drm_update_tile_info.exit

_drm_update_tile_info.exit:                       ; preds = %._crit_edge.i, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.cs = load ptr, ptr %0, align 8               ; 11 uses
  %i.ct = getelementptr i8, ptr %0, i64 432       ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %.not.i6 = icmp eq ptr %i.cu, null
  br i1 %.not.i6, label %drm_edid_eq.exit.i, label %bb.r

bb.r:                                             ; preds = %_drm_update_tile_info.exit
  %i.cv = getelementptr i8, ptr %i.cu, i64 80
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not47.i = icmp eq ptr %i.cw, null
  br i1 %.not47.i, label %drm_edid_eq.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr i8, ptr %i.cu, i64 72
  %i.cy = load i64, ptr %i.cx, align 8            ; 5 uses
  %.not.i.i7 = icmp eq ptr %1, null
  br i1 %.not.i.i7, label %.thr_comm.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr i8, ptr %1, i64 8
  %i.da = load ptr, ptr %i.cz, align 8            ; 4 uses
  %.not15.i.i = icmp eq ptr %i.da, null
  br i1 %.not15.i.i, label %.thr_comm.i.i, label %bb.u

.thr_comm.i.i:                                    ; preds = %bb.t, %bb.s
  %i.db = icmp eq i64 %i.cy, 0
  br i1 %i.db, label %drm_edid_eq.exit.i, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dc = load i64, ptr %1, align 8               ; 2 uses
  %i.dd = icmp ne i64 %i.dc, 0                    ; 2 uses
  %i.de = icmp eq i64 %i.cy, 0
  %.not16.i.i = xor i1 %i.de, %i.dd
  br i1 %.not16.i.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %i.dd, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %.not17.i.i = icmp eq i64 %i.dc, %i.cy
  br i1 %.not17.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.da, ptr nonnull readonly %i.cw, i64 %i.cy)
  %.not18.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not18.i.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u, %.thr_comm.i.i
  %i.df = getelementptr i8, ptr %0, i64 1728      ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = add i64 %i.dg, 1                        ; 2 uses
  store i64 %i.dh, ptr %i.df, align 8
  %.not.i52.i = icmp eq ptr %i.cs, null
  br i1 %.not.i52.i, label %__drm_to_dev.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr i8, ptr %i.cs, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.z, %bb.y
  %i.dk = phi ptr [ %i.dj, %bb.z ], [ null, %bb.y ]
  %i.dl = getelementptr i8, ptr %0, i64 64
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = getelementptr i8, ptr %0, i64 96
  %i.do = load ptr, ptr %i.dn, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dk, i32 noundef 2, ptr noundef @.str.66, i32 noundef %i.dm, ptr noundef %i.do, i64 noundef %i.dh) #22
  br label %drm_edid_eq.exit.i

drm_edid_eq.exit.i:                               ; preds = %__drm_to_dev.exit.i, %.thr_comm.i.i, %bb.r, %_drm_update_tile_info.exit
  %.not48.i = icmp eq ptr %1, null
  br i1 %.not48.i, label %.thread.i, label %drm_edid_eq.exit..thread66_crit_edge.i

drm_edid_eq.exit..thread66_crit_edge.i:           ; preds = %drm_edid_eq.exit.i
  %.pre.i = load i64, ptr %1, align 8
  %.phi.trans.insert.i = getelementptr i8, ptr %1, i64 8
  %.pre68.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %drm_edid_eq.exit..thread66_crit_edge.i, %drm_edid_eq.exit.i, %bb.x, %bb.v
  %i.dp = phi i64 [ 0, %drm_edid_eq.exit.i ], [ %.pre.i, %drm_edid_eq.exit..thread66_crit_edge.i ], [ 0, %bb.v ], [ %i.cy, %bb.x ]
  %i.dq = phi ptr [ null, %drm_edid_eq.exit.i ], [ %.pre68.i, %drm_edid_eq.exit..thread66_crit_edge.i ], [ %i.da, %bb.v ], [ %i.da, %bb.x ]
  %i.dr = getelementptr i8, ptr %0, i64 64        ; 5 uses
  %i.ds = getelementptr i8, ptr %i.cs, i64 904
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = call i32 @drm_property_replace_global_blob(ptr noundef %i.cs, ptr noundef %i.ct, i64 noundef %i.dp, ptr noundef %i.dq, ptr noundef %i.dr, ptr noundef %i.dt) #22 ; 3 uses
  %.not49.i = icmp eq i32 %i.du, 0
  br i1 %.not49.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.thread.i
  %.not.i53.i = icmp eq ptr %i.cs, null
  br i1 %.not.i53.i, label %__drm_to_dev.exit54.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = getelementptr i8, ptr %i.cs, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  br label %__drm_to_dev.exit54.i

__drm_to_dev.exit54.i:                            ; preds = %bb.ab, %bb.aa
  %i.dx = phi ptr [ %i.dw, %bb.ab ], [ null, %bb.aa ]
  %i.dy = load i32, ptr %i.dr, align 8
  %i.dz = getelementptr i8, ptr %0, i64 96
  %i.ea = load ptr, ptr %i.dz, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dx, i32 noundef 2, ptr noundef @.str.67, i32 noundef %i.dy, ptr noundef %i.ea, i32 noundef %i.du) #22
  br label %_drm_edid_connector_property_update.exit

bb.ac:                                            ; preds = %.thread.i
  %i.eb = getelementptr i8, ptr %i.cs, i64 1312
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr i8, ptr %0, i64 356
  %i.ee = load i8, ptr %i.ed, align 4, !range !18, !noundef !19
  %i.ef = zext nneg i8 %i.ee to i64
  %i.eg = call i32 @drm_object_property_set_value(ptr noundef %i.dr, ptr noundef %i.ec, i64 noundef %i.ef) #22 ; 3 uses
  %.not50.i = icmp eq i32 %i.eg, 0
  br i1 %.not50.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i55.i = icmp eq ptr %i.cs, null
  br i1 %.not.i55.i, label %__drm_to_dev.exit56.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr i8, ptr %i.cs, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  br label %__drm_to_dev.exit56.i

__drm_to_dev.exit56.i:                            ; preds = %bb.ae, %bb.ad
  %i.ej = phi ptr [ %i.ei, %bb.ae ], [ null, %bb.ad ]
  %i.ek = load i32, ptr %i.dr, align 8
  %i.el = getelementptr i8, ptr %0, i64 96
  %i.em = load ptr, ptr %i.el, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ej, i32 noundef 2, ptr noundef @.str.68, i32 noundef %i.ek, ptr noundef %i.em, i32 noundef %i.eg) #22
  br label %_drm_edid_connector_property_update.exit

bb.af:                                            ; preds = %bb.ac
  %i.en = call i32 @drm_connector_set_tile_property(ptr noundef %0) #22 ; 3 uses
  %.not51.i = icmp eq i32 %i.en, 0
  br i1 %.not51.i, label %_drm_edid_connector_property_update.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i57.i = icmp eq ptr %i.cs, null
  br i1 %.not.i57.i, label %__drm_to_dev.exit58.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = getelementptr i8, ptr %i.cs, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  br label %__drm_to_dev.exit58.i

__drm_to_dev.exit58.i:                            ; preds = %bb.ah, %bb.ag
  %i.eq = phi ptr [ %i.ep, %bb.ah ], [ null, %bb.ag ]
  %i.er = load i32, ptr %i.dr, align 8
  %i.es = getelementptr i8, ptr %0, i64 96
  %i.et = load ptr, ptr %i.es, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.eq, i32 noundef 2, ptr noundef @.str.69, i32 noundef %i.er, ptr noundef %i.et, i32 noundef %i.en) #22
  br label %_drm_edid_connector_property_update.exit

_drm_edid_connector_property_update.exit:         ; preds = %__drm_to_dev.exit54.i, %__drm_to_dev.exit56.i, %bb.af, %__drm_to_dev.exit58.i
  %.0.i = phi i32 [ %i.du, %__drm_to_dev.exit54.i ], [ %i.eg, %__drm_to_dev.exit56.i ], [ %i.en, %__drm_to_dev.exit58.i ], [ 0, %bb.af ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_edid_connector_add_modes(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %drm_edid_alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 72
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.d, null
  %i.h = icmp ult i64 %i.f, 128
  %or.cond3.i = or i1 %i.g, %i.h
  br i1 %or.cond3.i, label %drm_edid_alloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @kmemdup_noprof(ptr noundef nonnull %i.d, i64 noundef %i.f, i32 noundef 3264) #24 ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %drm_edid_alloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.k = tail call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.j, i32 noundef 3520, i64 noundef 16) #25 ; 5 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @kfree(ptr noundef nonnull %i.i) #22
  br label %drm_edid_alloc.exit.thread

drm_edid_alloc.exit.thread:                       ; preds = %bb.a, %bb.b, %bb.c, %bb.e
  %i.l = tail call fastcc i32 @_drm_edid_connector_add_modes(ptr noundef %0, ptr noundef null) #21, !srcloc !33
  br label %drm_edid_free.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  store ptr %i.i, ptr %i.m, align 8
  store i64 %i.f, ptr %i.k, align 8
  %i.n = tail call fastcc i32 @_drm_edid_connector_add_modes(ptr noundef %0, ptr noundef nonnull %i.k) #21, !srcloc !33
  %i.o = load ptr, ptr %i.m, align 8
  tail call void @kfree(ptr noundef %i.o) #22
  tail call void @kfree(ptr noundef nonnull %i.k) #22
  br label %drm_edid_free.exit

drm_edid_free.exit:                               ; preds = %drm_edid_alloc.exit.thread, %bb.f
  %i.p = phi i32 [ %i.l, %drm_edid_alloc.exit.thread ], [ %i.n, %bb.f ]
  ret i32 %i.p
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @drm_edid_raw(ptr nofree noundef readonly captures(address_is_null) %0) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %.not10 = icmp eq i64 %i.a, 0
  br i1 %.not10, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 126
  %.val = load i8, ptr %i.d, align 1
  %i.e = zext i8 %.val to i64
  %i.f = shl nuw nsw i64 %i.e, 7
  %i.g = add nuw nsw i64 %i.f, 128
  %i.h = icmp ult i64 %i.a, %i.g
  br i1 %i.h, label %bb.d, label %.critedge, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "682: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 682b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 682) #20, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, ptr @.str.5, i32 2514, i32 2305, i64 16) #20, !srcloc !35
  tail call void asm sideeffect "683: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 683b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 683) #20, !srcloc !36
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @kmemdup_noprof(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noalias noundef ptr @drm_edid_dup(ptr nofree noundef readonly captures(address_is_null) %0) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %drm_edid_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = icmp eq ptr %i.b, null
  %i.e = icmp ult i64 %i.c, 128
  %or.cond3.i = or i1 %i.d, %i.e
  br i1 %or.cond3.i, label %drm_edid_alloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @kmemdup_noprof(ptr noundef nonnull %i.b, i64 noundef %i.c, i32 noundef 3264) #24 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %drm_edid_alloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.h = tail call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.g, i32 noundef 3520, i64 noundef 16) #25 ; 4 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.e, label %_drm_edid_alloc.exit.i

_drm_edid_alloc.exit.i:                           ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %i.i, align 8
  store i64 %i.c, ptr %i.h, align 8
  br label %drm_edid_alloc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @kfree(ptr noundef nonnull %i.f) #22
  br label %drm_edid_alloc.exit

drm_edid_alloc.exit:                              ; preds = %bb.e, %_drm_edid_alloc.exit.i, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ %i.h, %_drm_edid_alloc.exit.i ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @drm_probe_ddc(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca [3 x %struct.i2c_msg], align 16     ; 18 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 0, ptr %i.c, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 0, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.015.i = phi i32 [ 5, %bb.a ], [ %i.u, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i16 48, ptr %1, align 16
  store i16 0, ptr %i.d, align 2
  store i16 1, ptr %i.e, align 4
  store i16 0, ptr %i.f, align 2
  store ptr %i.b, ptr %i.g, align 8
  store i16 80, ptr %i.h, align 16
  store i16 0, ptr %i.i, align 2
  store i16 1, ptr %i.j, align 4
  store i16 0, ptr %i.k, align 2
  store ptr %i.a, ptr %i.l, align 8
  store i16 80, ptr %i.m, align 16
  store i16 1, ptr %i.n, align 2
  store i16 1, ptr %i.o, align 4
  store i16 0, ptr %i.p, align 2
  store ptr %i.c, ptr %i.q, align 8
  %i.r = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %i.h, i32 noundef 2) #22 ; 2 uses
  %i.s = icmp eq i32 %i.r, -6
  br i1 %i.s, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.t = getelementptr i8, ptr %0, i64 884
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef @.str.16, ptr noundef %i.t) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %drm_do_probe_ddc_edid.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.not17.i = icmp eq i32 %i.r, 2                 ; 2 uses
  %i.u = add nsw i32 %.015.i, -1                  ; 2 uses
  %.not18.i = icmp eq i32 %i.u, 0
  %or.cond19.i = select i1 %.not17.i, i1 true, i1 %.not18.i
  br i1 %or.cond19.i, label %drm_do_probe_ddc_edid.exit, label %bb.b, !llvm.loop !0

drm_do_probe_ddc_edid.exit:                       ; preds = %bb.c, %.thread.i
  %i.v = phi i1 [ false, %.thread.i ], [ %.not17.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  ret i1 %i.v
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -1, 1) i32 @drm_do_probe_ddc_edid(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca [3 x %struct.i2c_msg], align 16     ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.tr = trunc i32 %2 to i8
  %i.c = shl i8 %.tr, 7
  store i8 %i.c, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.d = lshr i32 %2, 1
  %i.e = trunc i32 %i.d to i8
  store i8 %i.e, ptr %i.b, align 1
  %i.f = and i32 %2, 510
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 34
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.s = trunc i64 %3 to i16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 38
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.v = select i1 %.not, i32 2, i32 3            ; 4 uses
  %i.w = xor i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr [16 x i8], ptr %4, i64 %i.x
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.015 = phi i32 [ 5, %bb.a ], [ %i.ac, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i16 48, ptr %4, align 16
  store i16 0, ptr %i.g, align 2
  store i16 1, ptr %i.h, align 4
  store i16 0, ptr %i.i, align 2
  store ptr %i.b, ptr %i.j, align 8
  store i16 80, ptr %i.k, align 16
  store i16 0, ptr %i.l, align 2
  store i16 1, ptr %i.m, align 4
  store i16 0, ptr %i.n, align 2
  store ptr %i.a, ptr %i.o, align 8
  store i16 80, ptr %i.p, align 16
  store i16 1, ptr %i.q, align 2
  store i16 %i.s, ptr %i.r, align 4
  store i16 0, ptr %i.t, align 2
  store ptr %1, ptr %i.u, align 8
  %i.z = call i32 @i2c_transfer(ptr noundef %0, ptr noundef %i.y, i32 noundef %i.v) #22 ; 3 uses
  %i.aa = icmp eq i32 %i.z, -6
  br i1 %i.aa, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %0, i64 884
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef @.str.16, ptr noundef %i.ab) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.not17 = icmp eq i32 %i.z, %i.v
  %i.ac = add nsw i32 %.015, -1                   ; 2 uses
  %.not18 = icmp eq i32 %i.ac, 0
  %or.cond19 = select i1 %.not17, i1 true, i1 %.not18
  br i1 %or.cond19, label %.critedge.loopexit, label %bb.b, !llvm.loop !0

.critedge.loopexit:                               ; preds = %bb.c
  %i.ad = icmp ne i32 %i.z, %i.v
  %i.ae = sext i1 %i.ad to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.thread
  %i.af = phi i32 [ %i.ae, %.critedge.loopexit ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.af
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @drm_get_edid(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.drm_edid, align 8           ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca [3 x %struct.i2c_msg], align 16     ; 18 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 1688
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %bb.e [
    i32 1, label %bb.g
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 0, ptr %i.c, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 0, ptr %i.b, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 34
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 38
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.015.i.i = phi i32 [ 5, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i16 48, ptr %3, align 16
  store i16 0, ptr %i.f, align 2
  store i16 1, ptr %i.g, align 4
  store i16 0, ptr %i.h, align 2
  store ptr %i.b, ptr %i.i, align 8
  store i16 80, ptr %i.j, align 16
  store i16 0, ptr %i.k, align 2
  store i16 1, ptr %i.l, align 4
  store i16 0, ptr %i.m, align 2
  store ptr %i.a, ptr %i.n, align 8
  store i16 80, ptr %i.o, align 16
  store i16 1, ptr %i.p, align 2
  store i16 1, ptr %i.q, align 4
  store i16 0, ptr %i.r, align 2
  store ptr %i.c, ptr %i.s, align 8
  %i.t = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %i.j, i32 noundef 2) #22 ; 2 uses
  %i.u = icmp eq i32 %i.t, -6
  br i1 %i.u, label %drm_probe_ddc.exit.thread, label %bb.d

drm_probe_ddc.exit.thread:                        ; preds = %bb.c
  %i.v = getelementptr i8, ptr %1, i64 884
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef @.str.16, ptr noundef %i.v) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not17.i.i = icmp eq i32 %i.t, 2               ; 2 uses
  %i.w = add nsw i32 %.015.i.i, -1                ; 2 uses
  %.not18.i.i = icmp eq i32 %i.w, 0
  %or.cond19.i.i = select i1 %.not17.i.i, i1 true, i1 %.not18.i.i
  br i1 %or.cond19.i.i, label %drm_probe_ddc.exit, label %bb.c, !llvm.loop !0

drm_probe_ddc.exit:                               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br i1 %.not17.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.a, %drm_probe_ddc.exit
  %i.x = call fastcc ptr @_drm_do_get_edid(ptr noundef %0, ptr noundef @drm_do_probe_ddc_edid, ptr noundef %1, ptr noundef null) #21, !srcloc !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !14
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %drm_connector_update_edid_property.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.x, i64 126
  %.val.i.i = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.val.i.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 7
  %i.ac = add nuw nsw i64 %i.ab, 128
  store i64 %i.ac, ptr %2, align 8
  br label %drm_connector_update_edid_property.exit

drm_connector_update_edid_property.exit:          ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %2, %bb.f ], [ null, %bb.e ]
  %i.ad = call i32 @drm_edid_connector_update(ptr noundef %0, ptr noundef %.0.i.i) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.g

bb.g:                                             ; preds = %drm_probe_ddc.exit.thread, %drm_probe_ddc.exit, %bb.a, %drm_connector_update_edid_property.exit
  %.0 = phi ptr [ null, %bb.a ], [ %i.x, %drm_connector_update_edid_property.exit ], [ null, %drm_probe_ddc.exit ], [ null, %drm_probe_ddc.exit.thread ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @_drm_do_get_edid(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 128, ptr %i.a, align 8
  %i.b = tail call fastcc ptr @drm_edid_override_get(ptr noundef %0) #21, !srcloc !39 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_kmalloc_noprof.exit, label %drm_edid_free.exit

drm_edid_free.exit:                               ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @kmemdup_noprof(ptr noundef %i.e, i64 noundef %i.c, i32 noundef 3264) #24 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  tail call void @kfree(ptr noundef %i.g) #22
  tail call void @kfree(ptr noundef nonnull %i.b) #22
  %.not106 = icmp eq ptr %i.f, null
  br i1 %.not106, label %bb.r, label %._crit_edge.thread

_kmalloc_noprof.exit:                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.i = tail call noalias align 8 dereferenceable_or_null(128) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef 3264, i64 noundef 128) #25 ; 11 uses
  %.not101 = icmp eq ptr %i.i, null
  br i1 %.not101, label %bb.r, label %bb.b

bb.b:                                             ; preds = %_kmalloc_noprof.exit
  %i.j = tail call fastcc i32 @edid_block_read(ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef %1, ptr noundef %2) #21, !srcloc !40 ; 6 uses
  tail call fastcc void @edid_block_status_print(i32 noundef %i.j, ptr noundef nonnull %i.i, i32 noundef 0) #21, !srcloc !41
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.j, 7
  %or.cond = icmp ne i32 %i.l, 0
  %spec.select = zext i1 %or.cond to i8
  %i.m = getelementptr i8, ptr %0, i64 1944
  store i8 %spec.select, ptr %i.m, align 8
  switch i32 %i.j, label %edid_block_status_valid.exit [
    i32 6, label %edid_block_status_valid.exit.thread
    i32 0, label %edid_block_status_valid.exit.thread
  ]

edid_block_status_valid.exit:                     ; preds = %bb.c
  %.1.i.val113 = load i8, ptr %i.i, align 8
  %i.n = icmp eq i32 %i.j, 7
  %i.o = icmp eq i8 %.1.i.val113, 2
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %edid_block_status_valid.exit.thread, label %bb.d

bb.d:                                             ; preds = %edid_block_status_valid.exit
  %i.q = icmp eq i32 %i.j, 3
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %0, i64 1936       ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @connector_bad_edid(ptr noundef %0, ptr noundef %i.i, i32 noundef 1) #21, !srcloc !42
  br label %select.unfold

edid_block_status_valid.exit.thread:              ; preds = %bb.c, %bb.c, %edid_block_status_valid.exit
  %i.u = getelementptr i8, ptr %i.i, i64 126
  %.1.i.val = load i8, ptr %i.u, align 2          ; 2 uses
  %.not102 = icmp eq i8 %.1.i.val, 0
  br i1 %.not102, label %._crit_edge.thread, label %bb.g

bb.g:                                             ; preds = %edid_block_status_valid.exit.thread
  %i.v = zext i8 %.1.i.val to i64
  %i.w = shl nuw nsw i64 %i.v, 7
  %i.x = add nuw nsw i64 %i.w, 128                ; 2 uses
  store i64 %i.x, ptr %i.a, align 8
  %i.y = tail call ptr @krealloc_node_align_noprof(ptr noundef nonnull %i.i, i64 noundef %i.x, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #24 ; 20 uses
  %.not103 = icmp eq ptr %i.y, null
  br i1 %.not103, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.y, i64 126      ; 2 uses
  %.val = load i8, ptr %i.z, align 1              ; 3 uses
  %i.aa = zext i8 %.val to i32
  %i.ab = add nuw nsw i32 %i.aa, 1                ; 8 uses
  %.not143 = icmp eq i8 %.val, 0
  br i1 %.not143, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.y, i64 128     ; 4 uses
  %i.ad = tail call fastcc i32 @edid_block_read(ptr noundef %i.ac, i32 noundef 1, ptr noundef %1, ptr noundef %2) #21, !srcloc !43 ; 4 uses
  tail call fastcc void @edid_block_status_print(i32 noundef %i.ad, ptr noundef %i.ac, i32 noundef 1) #21, !srcloc !44
  switch i32 %i.ad, label %edid_block_status_valid.exit115.peel [
    i32 6, label %edid_block_status_valid.exit115.thread.peel
    i32 0, label %edid_block_status_valid.exit115.thread.peel
  ]

edid_block_status_valid.exit115.peel:             ; preds = %.lr.ph.preheader
  %.val112.peel = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i32 %i.ad, 7
  %i.af = icmp eq i8 %.val112.peel, 2
  %i.ag = and i1 %i.ae, %i.af
  br i1 %i.ag, label %edid_block_status_valid.exit115.thread.peel, label %bb.i

bb.i:                                             ; preds = %edid_block_status_valid.exit115.peel
  %i.ah = icmp eq i32 %i.ad, 1
  br i1 %i.ah, label %select.unfold, label %edid_hfeeodb_block_count.exit.peel.thread

edid_block_status_valid.exit115.thread.peel:      ; preds = %.lr.ph.preheader, %.lr.ph.preheader, %edid_block_status_valid.exit115.peel
  %.val.i.i.peel = load i8, ptr %i.z, align 1
  %.not.i.i.peel = icmp eq i8 %.val.i.i.peel, 0
  br i1 %.not.i.i.peel, label %edid_hfeeodb_block_count.exit.peel.thread, label %bb.j

bb.j:                                             ; preds = %edid_block_status_valid.exit115.thread.peel
  %.val8.i.i.peel = load i8, ptr %i.ac, align 1
  %.not7.i.i.peel = icmp eq i8 %.val8.i.i.peel, 2
  br i1 %.not7.i.i.peel, label %bb.k, label %edid_hfeeodb_block_count.exit.peel.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %i.y, i64 129
  %.val9.i.i.peel = load i8, ptr %i.ai, align 1
  %i.aj = icmp ult i8 %.val9.i.i.peel, 3
  br i1 %i.aj, label %edid_hfeeodb_block_count.exit.peel.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.y, i64 130
  %.val10.i.i.peel = load i8, ptr %i.ak, align 1
  %i.al = icmp slt i8 %.val10.i.i.peel, 7
  br i1 %i.al, label %edid_hfeeodb_block_count.exit.peel.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %i.y, i64 132
  %.val.i.i.i.i.peel = load i8, ptr %i.am, align 1 ; 2 uses
  %i.an = icmp ult i8 %.val.i.i.i.i.peel, -32
  %i.ao = and i8 %.val.i.i.i.i.peel, 31           ; 2 uses
  %.not.i.i.i.i.peel = icmp eq i8 %i.ao, 0
  %or.cond.i.i.i.i.peel = or i1 %i.an, %.not.i.i.i.i.peel
  br i1 %or.cond.i.i.i.i.peel, label %edid_hfeeodb_block_count.exit.peel.thread, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.peel

cea_db_is_hdmi_forum_eeodb.exit.i.i.peel:         ; preds = %bb.m
  %i.ap = getelementptr i8, ptr %i.y, i64 133
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 120
  %i.as = icmp samesign ugt i8 %i.ao, 1
  %spec.select.i.i.i.peel = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %spec.select.i.i.i.peel, label %edid_hfeeodb_extension_block_count.exit.i.peel, label %edid_hfeeodb_block_count.exit.peel.thread

edid_hfeeodb_extension_block_count.exit.i.peel:   ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.peel
  %i.at = getelementptr i8, ptr %i.y, i64 134
  %i.au = load i8, ptr %i.at, align 1
  %.fr.i.peel = freeze i8 %i.au                   ; 2 uses
  %i.av = icmp ugt i8 %.fr.i.peel, %.val
  br i1 %i.av, label %bb.n, label %edid_hfeeodb_block_count.exit.peel.thread

bb.n:                                             ; preds = %edid_hfeeodb_extension_block_count.exit.i.peel
  %i.aw = zext i8 %.fr.i.peel to i32
  %i.ax = add nuw nsw i32 %i.aw, 1                ; 2 uses
  %i.ay = shl nuw nsw i32 %i.ax, 7
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  store i64 %i.az, ptr %i.a, align 8
  %i.ba = tail call ptr @krealloc_node_align_noprof(ptr noundef nonnull %i.y, i64 noundef %i.az, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #24 ; 2 uses
  %.not105.peel = icmp eq ptr %i.ba, null
  br i1 %.not105.peel, label %select.unfold, label %edid_hfeeodb_block_count.exit.peel.thread

edid_hfeeodb_block_count.exit.peel.thread:        ; preds = %edid_hfeeodb_extension_block_count.exit.i.peel, %cea_db_is_hdmi_forum_eeodb.exit.i.i.peel, %bb.m, %bb.l, %bb.k, %bb.j, %edid_block_status_valid.exit115.thread.peel, %bb.n, %bb.i
  %.492.ph.peel = phi ptr [ %i.y, %edid_hfeeodb_extension_block_count.exit.i.peel ], [ %i.y, %bb.i ], [ %i.ba, %bb.n ], [ %i.y, %edid_block_status_valid.exit115.thread.peel ], [ %i.y, %bb.j ], [ %i.y, %bb.k ], [ %i.y, %bb.l ], [ %i.y, %bb.m ], [ %i.y, %cea_db_is_hdmi_forum_eeodb.exit.i.i.peel ] ; 5 uses
  %.286.ph.peel = phi i32 [ 0, %edid_hfeeodb_extension_block_count.exit.i.peel ], [ 1, %bb.i ], [ 0, %bb.n ], [ 0, %edid_block_status_valid.exit115.thread.peel ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %cea_db_is_hdmi_forum_eeodb.exit.i.i.peel ] ; 2 uses
  %.4.ph.peel = phi i32 [ %i.ab, %edid_hfeeodb_extension_block_count.exit.i.peel ], [ %i.ab, %bb.i ], [ %i.ax, %bb.n ], [ %i.ab, %edid_block_status_valid.exit115.thread.peel ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %i.ab, %bb.l ], [ %i.ab, %bb.m ], [ %i.ab, %cea_db_is_hdmi_forum_eeodb.exit.i.i.peel ] ; 3 uses
  %i.bb = zext nneg i32 %.4.ph.peel to i64
  %i.bc = icmp samesign ugt i32 %.4.ph.peel, 2
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %edid_hfeeodb_block_count.exit.peel.thread, %edid_block_status_valid.exit115.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %edid_block_status_valid.exit115.thread ], [ 2, %edid_hfeeodb_block_count.exit.peel.thread ] ; 3 uses
  %.084138 = phi i32 [ %.286.ph, %edid_block_status_valid.exit115.thread ], [ %.286.ph.peel, %edid_hfeeodb_block_count.exit.peel.thread ] ; 4 uses
  %i.bd = getelementptr [128 x i8], ptr %.492.ph.peel, i64 %indvars.iv ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bf = tail call fastcc i32 @edid_block_read(ptr noundef %i.bd, i32 noundef %i.be, ptr noundef %1, ptr noundef %2) #21, !srcloc !43 ; 4 uses
  tail call fastcc void @edid_block_status_print(i32 noundef %i.bf, ptr noundef %i.bd, i32 noundef %i.be) #21, !srcloc !44
  switch i32 %i.bf, label %edid_block_status_valid.exit115 [
    i32 6, label %edid_block_status_valid.exit115.thread
    i32 0, label %edid_block_status_valid.exit115.thread
  ]

edid_block_status_valid.exit115:                  ; preds = %.lr.ph
  %.val112 = load i8, ptr %i.bd, align 1
  %i.bg = icmp eq i32 %i.bf, 7
  %i.bh = icmp eq i8 %.val112, 2
  %i.bi = and i1 %i.bg, %i.bh
  br i1 %i.bi, label %edid_block_status_valid.exit115.thread, label %bb.o

bb.o:                                             ; preds = %edid_block_status_valid.exit115
  %i.bj = icmp eq i32 %i.bf, 1
  %i.bk = add i32 %.084138, 1
  br i1 %i.bj, label %select.unfold, label %edid_block_status_valid.exit115.thread

edid_block_status_valid.exit115.thread:           ; preds = %edid_block_status_valid.exit115, %.lr.ph, %.lr.ph, %bb.o
  %.286.ph = phi i32 [ %i.bk, %bb.o ], [ %.084138, %.lr.ph ], [ %.084138, %.lr.ph ], [ %.084138, %edid_block_status_valid.exit115 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next, %i.bb
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %edid_block_status_valid.exit115.thread, %edid_hfeeodb_block_count.exit.peel.thread
  %.286.ph.lcssa = phi i32 [ %.286.ph.peel, %edid_hfeeodb_block_count.exit.peel.thread ], [ %.286.ph, %edid_block_status_valid.exit115.thread ]
  %i.bm = icmp eq i32 %.286.ph.lcssa, 0
  br i1 %i.bm, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  tail call fastcc void @connector_bad_edid(ptr noundef %0, ptr noundef %.492.ph.peel, i32 noundef %.4.ph.peel) #21, !srcloc !46
  %i.bn = call fastcc ptr @edid_filter_invalid_blocks(ptr noundef %.492.ph.peel, ptr noundef nonnull %i.a) #21, !srcloc !47
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge, %bb.p, %edid_block_status_valid.exit.thread, %drm_edid_free.exit
  %.5 = phi ptr [ %i.f, %drm_edid_free.exit ], [ %i.bn, %bb.p ], [ %.492.ph.peel, %._crit_edge ], [ %i.i, %edid_block_status_valid.exit.thread ], [ %i.y, %bb.h ] ; 2 uses
  %.not107 = icmp eq ptr %3, null
  br i1 %.not107, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread
  %i.bo = load i64, ptr %i.a, align 8
  store i64 %i.bo, ptr %3, align 8
  br label %bb.r

select.unfold:                                    ; preds = %bb.o, %bb.i, %bb.n, %bb.g, %bb.b, %bb.f
  %.6 = phi ptr [ %i.i, %bb.b ], [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.y, %bb.i ], [ %i.y, %bb.n ], [ %.492.ph.peel, %bb.o ]
  tail call void @kfree(ptr noundef %.6) #22
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread, %bb.q, %_kmalloc_noprof.exit, %drm_edid_free.exit, %select.unfold
  %.0 = phi ptr [ null, %_kmalloc_noprof.exit ], [ null, %drm_edid_free.exit ], [ null, %select.unfold ], [ %.5, %bb.q ], [ %.5, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_connector_update_edid_property(ptr noundef initializes((192, 204), (212, 216), (232, 244), (248, 357), (358, 362), (364, 374), (376, 380), (392, 402), (404, 424)) %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.drm_edid, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !14
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %drm_edid_legacy_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 126
  %.val.i = load i8, ptr %i.b, align 1
  %i.c = zext i8 %.val.i to i64
  %i.d = shl nuw nsw i64 %i.c, 7
  %i.e = add nuw nsw i64 %i.d, 128
  store i64 %i.e, ptr %2, align 8
  br label %drm_edid_legacy_init.exit

drm_edid_legacy_init.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %2, %bb.b ], [ null, %bb.a ]
  %i.f = call i32 @drm_edid_connector_update(ptr noundef %0, ptr noundef %.0.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noalias noundef ptr @drm_edid_read_custom(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8
  %i.b = call fastcc ptr @_drm_do_get_edid(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) #21, !srcloc !48 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %.not19 = icmp eq i64 %i.c, 0
  br i1 %.not19, label %bb.c, label %bb.h, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.g = phi ptr [ %i.f, %bb.d ], [ null, %bb.c ]
  %i.h = call ptr @dev_driver_string(ptr noundef %i.g) #22 ; 0 uses
  %i.i = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, ptr @.str.5, i32 2680, i32 2321, i64 16) #20, !srcloc !49
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i24 = icmp eq ptr %i.j, null
  br i1 %.not.i24, label %__drm_to_dev.exit25, label %bb.e

bb.e:                                             ; preds = %__drm_to_dev.exit
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  br label %__drm_to_dev.exit25

__drm_to_dev.exit25:                              ; preds = %__drm_to_dev.exit, %bb.e
  %i.m = phi ptr [ %i.l, %bb.e ], [ null, %__drm_to_dev.exit ]
  %i.n = call ptr @dev_driver_string(ptr noundef %i.m) #22
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i26 = icmp eq ptr %i.o, null
  br i1 %.not.i26, label %__drm_to_dev.exit27, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit25
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %__drm_to_dev.exit27

__drm_to_dev.exit27:                              ; preds = %__drm_to_dev.exit25, %bb.f
  %i.r = phi ptr [ %i.q, %bb.f ], [ null, %__drm_to_dev.exit25 ] ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i28 = icmp eq ptr %i.t, null
  br i1 %.not.i28, label %bb.g, label %dev_name.exit31

bb.g:                                             ; preds = %__drm_to_dev.exit27
  %.val.i30 = load ptr, ptr %i.r, align 8
  br label %dev_name.exit31

dev_name.exit31:                                  ; preds = %__drm_to_dev.exit27, %bb.g
  %.0.i29 = phi ptr [ %.val.i30, %bb.g ], [ %i.t, %__drm_to_dev.exit27 ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.i, ptr noundef %i.n, ptr noundef %.0.i29, ptr noundef @.str.7) #22
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !50
  %.pr = load i64, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %dev_name.exit31, %bb.b
  %i.u = phi i64 [ %.pr, %dev_name.exit31 ], [ %i.c, %bb.b ] ; 2 uses
  %i.v = icmp ult i64 %i.u, 128
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.x = call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.w, i32 noundef 3520, i64 noundef 16) #25 ; 4 uses
  %.not.i32 = icmp eq ptr %i.x, null
  br i1 %.not.i32, label %bb.j, label %_drm_edid_alloc.exit

_drm_edid_alloc.exit:                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store ptr %i.b, ptr %i.y, align 8
  store i64 %i.u, ptr %i.x, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @kfree(ptr noundef nonnull %i.b) #22
  br label %bb.k

bb.k:                                             ; preds = %_drm_edid_alloc.exit, %bb.j, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ %i.x, %_drm_edid_alloc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noalias noundef ptr @drm_edid_read_ddc(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %2 = alloca [3 x %struct.i2c_msg], align 16     ; 18 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 1688
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %bb.e [
    i32 1, label %bb.f
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 0, ptr %i.c, align 1, !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 0, ptr %i.b, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.015.i.i = phi i32 [ 5, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i16 48, ptr %2, align 16
  store i16 0, ptr %i.f, align 2
  store i16 1, ptr %i.g, align 4
  store i16 0, ptr %i.h, align 2
  store ptr %i.b, ptr %i.i, align 8
  store i16 80, ptr %i.j, align 16
  store i16 0, ptr %i.k, align 2
  store i16 1, ptr %i.l, align 4
  store i16 0, ptr %i.m, align 2
  store ptr %i.a, ptr %i.n, align 8
  store i16 80, ptr %i.o, align 16
  store i16 1, ptr %i.p, align 2
  store i16 1, ptr %i.q, align 4
  store i16 0, ptr %i.r, align 2
  store ptr %i.c, ptr %i.s, align 8
  %i.t = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %i.j, i32 noundef 2) #22 ; 2 uses
  %i.u = icmp eq i32 %i.t, -6
  br i1 %i.u, label %drm_probe_ddc.exit.thread, label %bb.d

drm_probe_ddc.exit.thread:                        ; preds = %bb.c
  %i.v = getelementptr i8, ptr %1, i64 884
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef @.str.16, ptr noundef %i.v) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not17.i.i = icmp eq i32 %i.t, 2               ; 2 uses
  %i.w = add nsw i32 %.015.i.i, -1                ; 2 uses
  %.not18.i.i = icmp eq i32 %i.w, 0
  %or.cond19.i.i = select i1 %.not17.i.i, i1 true, i1 %.not18.i.i
  br i1 %or.cond19.i.i, label %drm_probe_ddc.exit, label %bb.c, !llvm.loop !0

drm_probe_ddc.exit:                               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br i1 %.not17.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.a, %drm_probe_ddc.exit
  %i.x = call ptr @drm_edid_read_custom(ptr noundef %0, ptr noundef @drm_do_probe_ddc_edid, ptr noundef %1) #21
  br label %bb.f

bb.f:                                             ; preds = %drm_probe_ddc.exit.thread, %drm_probe_ddc.exit, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.a ], [ %i.x, %bb.e ], [ null, %drm_probe_ddc.exit ], [ null, %drm_probe_ddc.exit.thread ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noalias noundef ptr @drm_edid_read(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1928
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.b, %bb.c
  %i.f = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  %i.g = tail call ptr @dev_driver_string(ptr noundef %i.f) #22 ; 0 uses
  %i.h = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, ptr @.str.5, i32 2743, i32 2321, i64 16) #20, !srcloc !51
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i17 = icmp eq ptr %i.i, null
  br i1 %.not.i17, label %__drm_to_dev.exit18, label %bb.d

bb.d:                                             ; preds = %__drm_to_dev.exit
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %__drm_to_dev.exit18

__drm_to_dev.exit18:                              ; preds = %__drm_to_dev.exit, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ null, %__drm_to_dev.exit ]
  %i.m = tail call ptr @dev_driver_string(ptr noundef %i.l) #22
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i19 = icmp eq ptr %i.n, null
  br i1 %.not.i19, label %__drm_to_dev.exit20, label %bb.e

bb.e:                                             ; preds = %__drm_to_dev.exit18
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  br label %__drm_to_dev.exit20

__drm_to_dev.exit20:                              ; preds = %__drm_to_dev.exit18, %bb.e
  %i.q = phi ptr [ %i.p, %bb.e ], [ null, %__drm_to_dev.exit18 ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i21 = icmp eq ptr %i.s, null
  br i1 %.not.i21, label %bb.f, label %dev_name.exit24

bb.f:                                             ; preds = %__drm_to_dev.exit20
  %.val.i23 = load ptr, ptr %i.q, align 8
  br label %dev_name.exit24

dev_name.exit24:                                  ; preds = %__drm_to_dev.exit20, %bb.f
  %.0.i22 = phi ptr [ %.val.i23, %bb.f ], [ %i.s, %__drm_to_dev.exit20 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.h, ptr noundef %i.m, ptr noundef %.0.i22, ptr noundef @.str.8) #22
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !52
  br label %bb.g

.critedge:                                        ; preds = %bb.a
  %i.t = tail call ptr @drm_edid_read_ddc(ptr noundef %0, ptr noundef nonnull %i.b) #21
  br label %bb.g

bb.g:                                             ; preds = %dev_name.exit24, %.critedge
  %.0 = phi ptr [ %i.t, %.critedge ], [ null, %dev_name.exit24 ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local void @drm_edid_get_product_id(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 10)) %1) #5 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp ugt i64 %i.c, 127
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(10) %1, ptr noundef align 1 dereferenceable(10) %i.e, i64 10, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(10) %1, i8 0, i64 10, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_edid_print_product_id(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #2 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.seq_buf, align 8            ; 10 uses
  %i.a = alloca [40 x i8], align 1                ; 2 uses
  %i.b = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr %i.a, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 40, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.e = load i16, ptr %1, align 1
  %i.f = call i16 @llvm.bswap.i16(i16 %i.e)       ; 3 uses
  %i.g = lshr i16 %i.f, 10
  %i.h = trunc nuw nsw i16 %i.g to i8
  %i.i = and i8 %i.h, 31
  %i.j = or disjoint i8 %i.i, 64
  store i8 %i.j, ptr %i.b, align 1
  %i.k = lshr i16 %i.f, 5
  %i.l = trunc i16 %i.k to i8
  %i.m = and i8 %i.l, 31
  %i.n = or disjoint i8 %i.m, 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.n, ptr %i.o, align 1
  %i.p = trunc i16 %i.f to i8
  %i.q = and i8 %i.p, 31
  %i.r = or disjoint i8 %i.q, 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.r, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 0, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %1, i64 8
  %.val = load i8, ptr %i.u, align 1              ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 9
  %.val10 = load i8, ptr %i.v, align 1
  %i.w = zext i8 %.val10 to i32
  %i.x = add nuw nsw i32 %i.w, 1990               ; 3 uses
  switch i8 %.val, label %bb.d [
    i8 -1, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.y = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef nonnull %3, ptr noundef @.str.20, i32 noundef %i.x) #22 ; 0 uses
  br label %decode_date.exit

bb.c:                                             ; preds = %bb.a
  %i.z = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef nonnull %3, ptr noundef @.str.21, i32 noundef %i.x) #22 ; 0 uses
  br label %decode_date.exit

bb.d:                                             ; preds = %bb.a
  %i.aa = zext i8 %.val to i32
  %i.ab = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef nonnull %3, ptr noundef @.str.22, i32 noundef %i.aa, i32 noundef %i.x) #22 ; 0 uses
  br label %decode_date.exit

decode_date.exit:                                 ; preds = %bb.b, %bb.c, %bb.d
  %i.ac = getelementptr i8, ptr %1, i64 2
  %i.ad = load i16, ptr %i.ac, align 1
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr i8, ptr %1, i64 4
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = load i64, ptr %i.c, align 8             ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %.critedge.i, !prof !13

bb.e:                                             ; preds = %decode_date.exit
  call void asm sideeffect "627: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 627b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 627) #20, !srcloc !53
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, ptr @.str.23, i32 100, i32 2305, i64 16) #20, !srcloc !54
  call void asm sideeffect "628: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 628b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 628) #20, !srcloc !55
  br label %seq_buf_str.exit

.critedge.i:                                      ; preds = %decode_date.exit
  %.val11.i = load i64, ptr %i.d, align 8         ; 3 uses
  %i.aj = icmp ugt i64 %.val11.i, %i.ah
  %i.ak = sub i64 %i.ah, %.val11.i
  %i.al = and i64 %i.ak, 4294967295
  %.not12.i = icmp eq i64 %i.al, 0
  %.not.i = or i1 %i.aj, %.not12.i
  %i.am = load ptr, ptr %3, align 8               ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %i.an = getelementptr i8, ptr %i.am, i64 %.val11.i
  store i8 0, ptr %i.an, align 1
  br label %bb.h

bb.g:                                             ; preds = %.critedge.i
  %i.ao = getelementptr i8, ptr %i.am, i64 %i.ah
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  store i8 0, ptr %i.ap, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = load ptr, ptr %3, align 8
  br label %seq_buf_str.exit

seq_buf_str.exit:                                 ; preds = %bb.e, %bb.h
  %.0.i = phi ptr [ %i.aq, %bb.h ], [ @.str.4, %bb.e ]
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef @.str.9, ptr noundef nonnull %i.b, i32 noundef %i.ae, i32 noundef %i.ag, ptr noundef %.0.i) #22
  br i1 %2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %seq_buf_str.exit
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef @.str.10, i32 noundef 10, ptr noundef %1) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %seq_buf_str.exit
  %.val11 = load i64, ptr %i.c, align 8
  %.val12 = load i64, ptr %i.d, align 8
  %i.ar = icmp ugt i64 %.val12, %.val11
  br i1 %i.ar, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "696: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 696b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 696) #20, !srcloc !56
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, ptr @.str.5, i32 2803, i32 2305, i64 16) #20, !srcloc !57
  call void asm sideeffect "697: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 697b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 697) #20, !srcloc !58
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i32 @drm_edid_get_panel_id(ptr nofree noundef readonly captures(none) %0) #8 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp ult i64 %i.a, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 24
  %i.i = getelementptr i8, ptr %i.d, i64 9
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 16
  %i.m = or disjoint i32 %i.l, %i.h
  %i.n = getelementptr i8, ptr %i.d, i64 10
  %i.o = load i16, ptr %i.n, align 1
  %i.p = zext i16 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.q, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noalias noundef ptr @drm_edid_read_base_block(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.c = tail call noalias align 8 dereferenceable_or_null(128) ptr @__kmalloc_cache_noprof(ptr noundef %i.b, i32 noundef 3520, i64 noundef 128) #25 ; 9 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_drm_edid_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @edid_block_read(ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef @drm_do_probe_ddc_edid, ptr noundef %0) #21, !srcloc !59 ; 3 uses
  tail call fastcc void @edid_block_status_print(i32 noundef %i.d, ptr noundef nonnull %i.c, i32 noundef 0) #21, !srcloc !60
  switch i32 %i.d, label %edid_block_status_valid.exit [
    i32 6, label %edid_block_status_valid.exit.thread
    i32 0, label %edid_block_status_valid.exit.thread
  ]

edid_block_status_valid.exit:                     ; preds = %bb.b
  %.val = load i8, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 7
  %i.f = icmp eq i8 %.val, 2
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %edid_block_status_valid.exit.thread, label %bb.c

bb.c:                                             ; preds = %edid_block_status_valid.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !annotation !14
  %i.h = tail call fastcc i32 @edid_block_check(ptr noundef nonnull %i.c, i1 noundef zeroext true) #21, !srcloc !15 ; 2 uses
  switch i32 %i.h, label %edid_block_status_valid.exit.i [
    i32 3, label %edid_block_dump.exit
    i32 6, label %edid_block_status_valid.exit.thread.i
    i32 0, label %edid_block_status_valid.exit.thread.i
  ]

edid_block_status_valid.exit.i:                   ; preds = %bb.c
  %.val.i = load i8, ptr %i.c, align 8
  %i.i = icmp eq i32 %i.h, 7
  %i.j = icmp eq i8 %.val.i, 2
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %edid_block_status_valid.exit.thread.i, label %edid_block_dump.exit

edid_block_status_valid.exit.thread.i:            ; preds = %edid_block_status_valid.exit.i, %bb.c, %bb.c
  br label %edid_block_dump.exit

edid_block_dump.exit:                             ; preds = %bb.c, %edid_block_status_valid.exit.i, %edid_block_status_valid.exit.thread.i
  %.str.30.sink.i = phi ptr [ @.str.29, %bb.c ], [ @.str.31, %edid_block_status_valid.exit.thread.i ], [ @.str.30, %edid_block_status_valid.exit.i ]
  %i.l = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %.str.30.sink.i, i32 noundef 0) #22 ; 0 uses
  call void @print_hex_dump(ptr noundef @.str.11, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef 128, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @kfree(ptr noundef nonnull %i.c) #22
  br label %_drm_edid_alloc.exit

edid_block_status_valid.exit.thread:              ; preds = %bb.b, %bb.b, %edid_block_status_valid.exit
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.n = tail call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.m, i32 noundef 3520, i64 noundef 16) #25 ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_drm_edid_alloc.exit, label %bb.d

bb.d:                                             ; preds = %edid_block_status_valid.exit.thread
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.c, ptr %i.o, align 8
  store i64 128, ptr %i.n, align 8
  br label %_drm_edid_alloc.exit

_drm_edid_alloc.exit:                             ; preds = %bb.d, %edid_block_status_valid.exit.thread, %bb.a, %edid_block_dump.exit
  %.0 = phi ptr [ null, %bb.a ], [ null, %edid_block_dump.exit ], [ null, %edid_block_status_valid.exit.thread ], [ %i.n, %bb.d ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 9) i32 @edid_block_read(ptr noundef %0, i32 noundef range(i32 -2147483648, 256) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 9 uses
  %i.b = tail call i32 %2(ptr noundef %3, ptr noundef %0, i32 noundef %1, i64 noundef 128) #22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.m, label %edid_block_status_valid.exit.thread

bb.b:                                             ; preds = %bb.p
  %i.c = tail call i32 %2(ptr noundef %3, ptr noundef %0, i32 noundef %1, i64 noundef 128) #22
  %.not.1 = icmp eq i32 %i.c, 0
  br i1 %.not.1, label %bb.c, label %edid_block_status_valid.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @edid_block_check(ptr noundef %0, i1 noundef zeroext %i.a) #21, !srcloc !61 ; 2 uses
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 72057594037927680, ptr %0, align 1
  %i.f = tail call fastcc i32 @edid_block_check(ptr noundef %0, i1 noundef zeroext %i.a) #21, !srcloc !62 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %edid_block_status_valid.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i32 [ %i.f, %bb.d ], [ %i.d, %bb.c ] ; 4 uses
  switch i32 %.1.1, label %edid_block_status_valid.exit.1 [
    i32 6, label %edid_block_status_valid.exit.thread
    i32 0, label %edid_block_status_valid.exit.thread
  ]

edid_block_status_valid.exit.1:                   ; preds = %bb.e
  %.val.1 = load i8, ptr %0, align 1
  %i.h = icmp eq i32 %.1.1, 7
  %i.i = icmp eq i8 %.val.1, 2
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %edid_block_status_valid.exit.thread, label %bb.f

bb.f:                                             ; preds = %edid_block_status_valid.exit.1
  %i.k = tail call i32 %2(ptr noundef %3, ptr noundef %0, i32 noundef %1, i64 noundef 128) #22
  %.not.2 = icmp eq i32 %i.k, 0
  br i1 %.not.2, label %bb.g, label %edid_block_status_valid.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.l = tail call fastcc i32 @edid_block_check(ptr noundef %0, i1 noundef zeroext %i.a) #21, !srcloc !61 ; 2 uses
  %i.m = icmp eq i32 %i.l, 5
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 72057594037927680, ptr %0, align 1
  %i.n = tail call fastcc i32 @edid_block_check(ptr noundef %0, i1 noundef zeroext %i.a) #21, !srcloc !62 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %edid_block_status_valid.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.2 = phi i32 [ %i.n, %bb.h ], [ %i.l, %bb.g ] ; 4 uses
  switch i32 %.1.2, label %edid_block_status_valid.exit.2 [
    i32 6, label %edid_block_status_valid.exit.thread
    i32 0, label %edid_block_status_valid.exit.thread
  ]

edid_block_status_valid.exit.2:                   ; preds = %bb.i
  %.val.2 = load i8, ptr %0, align 1
  %i.p = icmp eq i32 %.1.2, 7
  %i.q = icmp eq i8 %.val.2, 2
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %edid_block_status_valid.exit.thread, label %bb.j

bb.j:                                             ; preds = %edid_block_status_valid.exit.2
  %i.s = tail call i32 %2(ptr noundef %3, ptr noundef %0, i32 noundef %1, i64 noundef 128) #22
  %.not.3 = icmp eq i32 %i.s, 0
  br i1 %.not.3, label %bb.k, label %edid_block_status_valid.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.t = tail call fastcc i32 @edid_block_check(ptr noundef %0, i1 noundef zeroext %i.a) #21, !srcloc !61 ; 2 uses
  %i.u = icmp eq i32 %i.t, 5
  br i1 %i.u, label %bb.l, label %edid_block_status_valid.exit.thread

bb.l:                                             ; preds = %bb.k
  store i64 72057594037927680, ptr %0, align 1
  %i.v = tail call fastcc i32 @edid_block_check(ptr noundef %0, i1 noundef zeroext %i.a) #21, !srcloc !62 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %spec.select = select i1 %i.w, i32 6, i32 %i.v
  br label %edid_block_status_valid.exit.thread

bb.m:                                             ; preds = %bb.a
  %i.x = tail call fastcc i32 @edid_block_check(ptr noundef %0, i1 noundef zeroext %i.a) #21, !srcloc !61 ; 2 uses
  %i.y = icmp eq i32 %i.x, 5
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 72057594037927680, ptr %0, align 1
  %i.z = tail call fastcc i32 @edid_block_check(ptr noundef %0, i1 noundef zeroext %i.a) #21, !srcloc !62 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %edid_block_status_valid.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ %i.z, %bb.n ], [ %i.x, %bb.m ]  ; 5 uses
  switch i32 %.1, label %edid_block_status_valid.exit [
    i32 6, label %edid_block_status_valid.exit.thread
    i32 0, label %edid_block_status_valid.exit.thread
  ]

edid_block_status_valid.exit:                     ; preds = %bb.o
  %.val = load i8, ptr %0, align 1
  %i.ab = icmp eq i32 %.1, 7
  %i.ac = icmp eq i8 %.val, 2
  %i.ad = and i1 %i.ab, %i.ac
  br i1 %i.ad, label %edid_block_status_valid.exit.thread, label %bb.p

bb.p:                                             ; preds = %edid_block_status_valid.exit
  %i.ae = icmp eq i32 %.1, 3
  %or.cond3 = and i1 %i.a, %i.ae
  br i1 %or.cond3, label %edid_block_status_valid.exit.thread, label %bb.b

edid_block_status_valid.exit.thread:              ; preds = %bb.l, %bb.k, %bb.j, %edid_block_status_valid.exit.2, %bb.i, %bb.i, %bb.h, %bb.f, %edid_block_status_valid.exit.1, %bb.e, %bb.e, %bb.d, %bb.b, %bb.n, %bb.o, %bb.o, %edid_block_status_valid.exit, %bb.p, %bb.a
  %.024 = phi i32 [ 1, %bb.a ], [ 7, %edid_block_status_valid.exit ], [ 3, %bb.p ], [ 1, %bb.j ], [ %.1, %bb.o ], [ %.1, %bb.o ], [ 6, %bb.n ], [ 1, %bb.b ], [ 6, %bb.d ], [ %.1.1, %bb.e ], [ %.1.1, %bb.e ], [ 7, %edid_block_status_valid.exit.1 ], [ 7, %edid_block_status_valid.exit.2 ], [ %spec.select, %bb.l ], [ 1, %bb.f ], [ 6, %bb.h ], [ %.1.2, %bb.i ], [ %.1.2, %bb.i ], [ %i.t, %bb.k ]
  ret i32 %.024
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @edid_block_status_print(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 256) %2) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  switch i32 %0, label %bb.f [
    i32 0, label %bb.g
    i32 1, label %bb.g
    i32 2, label %bb.g
    i32 3, label %bb.b
    i32 4, label %bb.c
    i32 5, label %bb.g
    i32 6, label %bb.g
    i32 7, label %bb.d
    i32 8, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.24, i32 noundef %2) #23 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.25) #23 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %.val17 = load i8, ptr %1, align 1              ; 2 uses
  %i.c = zext i8 %.val17 to i32
  %i.d = icmp eq i8 %.val17, 2
  br i1 %i.d, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.7
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.preheader.7 ], [ 0, %bb.d ] ; 10 uses
  %.09.i = phi i8 [ %i.ai, %.preheader.7 ], [ 0, %bb.d ]
  %i.e = getelementptr i8, ptr %1, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1
  %i.g = add i8 %i.f, %.09.i
  %i.h = getelementptr i8, ptr %1, i64 %indvars.iv.i
  %i.i = getelementptr i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = add i8 %i.j, %i.g
  %i.l = getelementptr i8, ptr %1, i64 %indvars.iv.i
  %i.m = getelementptr i8, ptr %i.l, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = add i8 %i.n, %i.k
  %i.p = getelementptr i8, ptr %1, i64 %indvars.iv.i
  %i.q = getelementptr i8, ptr %i.p, i64 3
  %i.r = load i8, ptr %i.q, align 1
  %i.s = add i8 %i.r, %i.o
  %i.t = getelementptr i8, ptr %1, i64 %indvars.iv.i
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i8, ptr %i.u, align 1
  %i.w = add i8 %i.v, %i.s
  %i.x = getelementptr i8, ptr %1, i64 %indvars.iv.i
  %i.y = getelementptr i8, ptr %i.x, i64 5
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = add i8 %i.z, %i.w
  %i.ab = getelementptr i8, ptr %1, i64 %indvars.iv.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 6
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = add i8 %i.ad, %i.aa                     ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %indvars.iv.i, 120
  br i1 %exitcond.not.i.6, label %edid_block_compute_checksum.exit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader
  %i.af = getelementptr i8, ptr %1, i64 %indvars.iv.i
  %i.ag = getelementptr i8, ptr %i.af, i64 7
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = add i8 %i.ah, %i.ae
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8
  br label %.preheader

edid_block_compute_checksum.exit:                 ; preds = %.preheader
  %i.aj = sub i8 0, %i.ae
  %i.ak = zext i8 %i.aj to i32
  %i.al = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.26, i32 noundef %2, i32 noundef %i.c, i32 noundef %i.ak) #23 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.am = getelementptr i8, ptr %1, i64 18
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.27, i32 noundef %i.ao) #23 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.aq = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.28, ptr @.str.5, i32 1984, i32 2321, i64 16) #20, !srcloc !63
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.aq, i32 noundef %2, i32 noundef %0) #22
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !64
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.a, %bb.a, %bb.a, %edid_block_compute_checksum.exit, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @drm_get_edid_switcheroo(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, @pci_bus_type
  br i1 %.not, label %.critedge, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %__drm_to_dev.exit25.thread, label %bb.c

__drm_to_dev.exit25.thread:                       ; preds = %bb.b
  %i.f = tail call ptr @dev_driver_string(ptr noundef null) #22 ; 0 uses
  %i.g = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, ptr @.str.5, i32 2912, i32 2323, i64 16) #20, !srcloc !65
  %i.h = tail call ptr @dev_driver_string(ptr noundef null) #22
  br label %__drm_to_dev.exit27

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @dev_driver_string(ptr noundef %i.c) #22 ; 0 uses
  %i.j = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, ptr @.str.5, i32 2912, i32 2323, i64 16) #20, !srcloc !65
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = tail call ptr @dev_driver_string(ptr noundef %i.k) #22
  %i.m = load ptr, ptr %i.b, align 8
  br label %__drm_to_dev.exit27

__drm_to_dev.exit27:                              ; preds = %__drm_to_dev.exit25.thread, %bb.c
  %i.n = phi ptr [ %i.j, %bb.c ], [ %i.g, %__drm_to_dev.exit25.thread ]
  %i.o = phi ptr [ %i.l, %bb.c ], [ %i.h, %__drm_to_dev.exit25.thread ]
  %i.p = phi ptr [ %i.m, %bb.c ], [ null, %__drm_to_dev.exit25.thread ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i28 = icmp eq ptr %i.r, null
  br i1 %.not.i28, label %bb.d, label %dev_name.exit31

bb.d:                                             ; preds = %__drm_to_dev.exit27
  %.val.i30 = load ptr, ptr %i.p, align 8
  br label %dev_name.exit31

dev_name.exit31:                                  ; preds = %__drm_to_dev.exit27, %bb.d
  %.0.i29 = phi ptr [ %.val.i30, %bb.d ], [ %i.r, %__drm_to_dev.exit27 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %.0.i29, ptr noundef @.str.12) #22
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !66
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  %i.s = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef %1) #21
  br label %bb.e

bb.e:                                             ; preds = %dev_name.exit31, %.critedge
  %.0 = phi ptr [ %i.s, %.critedge ], [ null, %dev_name.exit31 ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noalias noundef ptr @drm_edid_read_switcheroo(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, @pci_bus_type
  br i1 %.not, label %.critedge, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %__drm_to_dev.exit25.thread, label %bb.c

__drm_to_dev.exit25.thread:                       ; preds = %bb.b
  %i.f = tail call ptr @dev_driver_string(ptr noundef null) #22 ; 0 uses
  %i.g = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, ptr @.str.5, i32 2941, i32 2323, i64 16) #20, !srcloc !67
  %i.h = tail call ptr @dev_driver_string(ptr noundef null) #22
  br label %__drm_to_dev.exit27

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @dev_driver_string(ptr noundef %i.c) #22 ; 0 uses
  %i.j = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, ptr @.str.5, i32 2941, i32 2323, i64 16) #20, !srcloc !67
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = tail call ptr @dev_driver_string(ptr noundef %i.k) #22
  %i.m = load ptr, ptr %i.b, align 8
  br label %__drm_to_dev.exit27

__drm_to_dev.exit27:                              ; preds = %__drm_to_dev.exit25.thread, %bb.c
  %i.n = phi ptr [ %i.j, %bb.c ], [ %i.g, %__drm_to_dev.exit25.thread ]
  %i.o = phi ptr [ %i.l, %bb.c ], [ %i.h, %__drm_to_dev.exit25.thread ]
  %i.p = phi ptr [ %i.m, %bb.c ], [ null, %__drm_to_dev.exit25.thread ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i28 = icmp eq ptr %i.r, null
  br i1 %.not.i28, label %bb.d, label %dev_name.exit31

bb.d:                                             ; preds = %__drm_to_dev.exit27
  %.val.i30 = load ptr, ptr %i.p, align 8
  br label %dev_name.exit31

dev_name.exit31:                                  ; preds = %__drm_to_dev.exit27, %bb.d
  %.0.i29 = phi ptr [ %.val.i30, %bb.d ], [ %i.r, %__drm_to_dev.exit27 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %.0.i29, ptr noundef @.str.12) #22
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !68
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  %i.s = tail call ptr @drm_edid_read_ddc(ptr noundef %0, ptr noundef %1) #21
  br label %bb.e

bb.e:                                             ; preds = %dev_name.exit31, %.critedge
  %.0 = phi ptr [ %i.s, %.critedge ], [ null, %dev_name.exit31 ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @drm_edid_duplicate(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 126
  %.val = load i8, ptr %i.a, align 1
  %i.b = zext i8 %.val to i64
  %i.c = shl nuw nsw i64 %i.b, 7
  %i.d = add nuw nsw i64 %i.c, 128
  %i.e = tail call ptr @kmemdup_noprof(ptr noundef nonnull %0, i64 noundef %i.d, i32 noundef 3264) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @drm_edid_has_quirk(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 396
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl nuw i64 1, %i.d
  %i.f = and i64 %i.e, %i.c
  %i.g = icmp ne i64 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @drm_mode_find_dmt(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #2 align 16 prefalign(16) {
bb.a:
  br i1 %4, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %mode_is_rb.exit.thr_comm.us
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %mode_is_rb.exit.thr_comm.us ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr [120 x i8], ptr @drm_dmt_modes, i64 %indvars.iv36 ; 8 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %i.c = load i16, ptr %i.b, align 4
  %i.d = zext i16 %i.c to i32
  %.not.us = icmp eq i32 %1, %i.d
  br i1 %.not.us, label %bb.b, label %mode_is_rb.exit.thr_comm.us

bb.b:                                             ; preds = %.split.us
  %i.e = getelementptr i8, ptr %i.a, i64 14
  %i.f = load i16, ptr %i.e, align 2
  %i.g = zext i16 %i.f to i32
  %.not17.us = icmp eq i32 %2, %i.g
  br i1 %.not17.us, label %bb.c, label %mode_is_rb.exit.thr_comm.us

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @drm_mode_vrefresh(ptr noundef %i.a) #22
  %.not18.us = icmp eq i32 %3, %i.h
  br i1 %.not18.us, label %bb.d, label %mode_is_rb.exit.thr_comm.us

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.a, i64 10
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = sub nsw i32 %i.k, %1
  %i.m = icmp eq i32 %i.l, 160
  br i1 %i.m, label %bb.e, label %mode_is_rb.exit.thr_comm.us

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.a, i64 8
  %i.o = load i16, ptr %i.n, align 8
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = sub nsw i32 %i.p, %1
  %i.r = icmp eq i32 %i.q, 80
  br i1 %i.r, label %bb.f, label %mode_is_rb.exit.thr_comm.us

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.a, i64 6
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  %i.v = sub nsw i32 %i.p, %i.u
  %i.w = icmp eq i32 %i.v, 32
  br i1 %i.w, label %mode_is_rb.exit.us, label %mode_is_rb.exit.thr_comm.us

mode_is_rb.exit.us:                               ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.a, i64 16
  %i.y = load i16, ptr %i.x, align 8
  %i.z = zext i16 %i.y to i32
  %i.aa = sub nsw i32 %i.z, %2
  %.not29 = icmp eq i32 %i.aa, 3
  br i1 %.not29, label %.split25.us, label %mode_is_rb.exit.thr_comm.us

mode_is_rb.exit.thr_comm.us:                      ; preds = %bb.d, %bb.e, %bb.f, %mode_is_rb.exit.us, %bb.c, %bb.b, %.split.us
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next37, 88
  br i1 %exitcond39.not, label %.loopexit, label %.split.us, !llvm.loop !1

.split:                                           ; preds = %bb.a, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %bb.a ] ; 2 uses
  %i.ab = getelementptr [120 x i8], ptr @drm_dmt_modes, i64 %indvars.iv ; 11 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %i.ad = load i16, ptr %i.ac, align 4
  %i.ae = zext i16 %i.ad to i32
  %.not = icmp eq i32 %1, %i.ae
  br i1 %.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.split
  %i.af = getelementptr i8, ptr %i.ab, i64 14
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i32
  %.not17 = icmp eq i32 %2, %i.ah
  br i1 %.not17, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call i32 @drm_mode_vrefresh(ptr noundef %i.ab) #22
  %.not18 = icmp eq i32 %3, %i.ai
  br i1 %.not18, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.ab, i64 10
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i32
  %i.am = sub nsw i32 %i.al, %1
  %i.an = icmp eq i32 %i.am, 160
  br i1 %i.an, label %bb.j, label %.split25.us

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.ab, i64 8
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = sub nsw i32 %i.aq, %1
  %i.as = icmp eq i32 %i.ar, 80
  br i1 %i.as, label %bb.k, label %.split25.us

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr i8, ptr %i.ab, i64 6
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = sub nsw i32 %i.aq, %i.av
  %i.ax = icmp eq i32 %i.aw, 32
  br i1 %i.ax, label %mode_is_rb.exit, label %.split25.us

mode_is_rb.exit:                                  ; preds = %bb.k
  %i.ay = getelementptr i8, ptr %i.ab, i64 16
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = zext i16 %i.az to i32
  %i.bb = sub nsw i32 %i.ba, %2
  %i.bc = icmp eq i32 %i.bb, 3
  br i1 %i.bc, label %bb.l, label %.split25.us

.split25.us:                                      ; preds = %bb.i, %bb.j, %bb.k, %mode_is_rb.exit, %mode_is_rb.exit.us
  %.us-phi = phi ptr [ %i.a, %mode_is_rb.exit.us ], [ %i.ab, %mode_is_rb.exit ], [ %i.ab, %bb.k ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ]
  %i.bd = tail call ptr @drm_mode_duplicate(ptr noundef %0, ptr noundef %.us-phi) #22
  br label %.loopexit

bb.l:                                             ; preds = %.split, %bb.g, %bb.h, %mode_is_rb.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 88
  br i1 %exitcond.not, label %.loopexit, label %.split, !llvm.loop !1

.loopexit:                                        ; preds = %bb.l, %mode_is_rb.exit.thr_comm.us, %.split25.us
  %.2 = phi ptr [ %i.bd, %.split25.us ], [ null, %mode_is_rb.exit.thr_comm.us ], [ null, %bb.l ]
  ret ptr %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_mode_fixup_1366x768(ptr noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.b = load i16, ptr %i.a, align 4
  %i.c = icmp eq i16 %i.b, 1368
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 14
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp eq i16 %i.e, 768
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 1366, ptr %i.a, align 4
  %i.g = getelementptr i8, ptr %0, i64 6          ; 2 uses
  %i.h = load i16, ptr %i.g, align 2
  %i.i = add i16 %i.h, -1
  store i16 %i.i, ptr %i.g, align 2
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.k = load i16, ptr %i.j, align 8
  %i.l = add i16 %i.k, -1
  store i16 %i.l, ptr %i.j, align 8
  tail call void @drm_mode_set_name(ptr noundef %0) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local ptr @drm_edid_find_extension(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val24 = load i64, ptr %0, align 8             ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val25 = load ptr, ptr %i.a, align 8           ; 21 uses
  %i.b = getelementptr i8, ptr %.val25, i64 126
  %.val.i.i.i = load i8, ptr %i.b, align 1        ; 20 uses
  %.not.i.i.i = icmp ult i64 %.val24, 256         ; 3 uses
  br i1 %.not.i.i.i, label %drm_edid_extension_block_count.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %.val25, i64 128
  %.val8.i.i.i.i.i = load i8, ptr %i.c, align 1
  %.not7.i.i.i.i.i = icmp eq i8 %.val8.i.i.i.i.i, 2
  br i1 %.not7.i.i.i.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr i8, ptr %.val25, i64 129
  %.val9.i.i.i.i.i = load i8, ptr %i.d, align 1
  %i.e = icmp ult i8 %.val9.i.i.i.i.i, 3
  br i1 %i.e, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr i8, ptr %.val25, i64 130
  %.val10.i.i.i.i.i = load i8, ptr %i.f, align 1
  %i.g = icmp slt i8 %.val10.i.i.i.i.i, 7
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr i8, ptr %.val25, i64 132
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.h, align 1 ; 2 uses
  %i.i = icmp ult i8 %.val.i.i.i.i.i.i.i, -32
  %i.j = and i8 %.val.i.i.i.i.i.i.i, 31           ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.i, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.h, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i

cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i:        ; preds = %bb.g
  %i.k = getelementptr i8, ptr %.val25, i64 133
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 120
  %i.n = icmp samesign ugt i8 %i.j, 1
  %spec.select.i.i.i.i.i.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %spec.select.i.i.i.i.i.i, label %edid_hfeeodb_extension_block_count.exit.i.i.i.i, label %bb.h

edid_hfeeodb_extension_block_count.exit.i.i.i.i:  ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i
  %i.o = getelementptr i8, ptr %.val25, i64 134
  %i.p = load i8, ptr %i.o, align 1
  %.fr.i.i.i.i = freeze i8 %i.p                   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.fr.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %drm_edid_extension_block_count.exit

bb.h:                                             ; preds = %edid_hfeeodb_extension_block_count.exit.i.i.i.i, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  br label %drm_edid_extension_block_count.exit

drm_edid_extension_block_count.exit:              ; preds = %bb.b, %edid_hfeeodb_extension_block_count.exit.i.i.i.i, %bb.h
  %.1.in.in.i.i.i = phi i8 [ %.val.i.i.i, %bb.b ], [ %.val.i.i.i, %bb.h ], [ %.fr.i.i.i.i, %edid_hfeeodb_extension_block_count.exit.i.i.i.i ]
  %.1.in.i.i.i = zext i8 %.1.in.in.i.i.i to i32
  %.1.i.i.i = add nuw nsw i32 %.1.in.i.i.i, 1
  %i.q = trunc i64 %.val24 to i32
  %i.r = sdiv i32 %i.q, 128                       ; 10 uses
  %i.s = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i, i32 %i.r)
  %.not18 = icmp eq i32 %i.s, 1
  br i1 %.not18, label %bb.n, label %bb.i

bb.i:                                             ; preds = %drm_edid_extension_block_count.exit
  %i.t = load i32, ptr %2, align 4                ; 23 uses
  %i.u = getelementptr i8, ptr %.val25, i64 128   ; 2 uses
  %i.v = getelementptr i8, ptr %.val25, i64 129   ; 2 uses
  %i.w = getelementptr i8, ptr %.val25, i64 130   ; 2 uses
  %i.x = getelementptr i8, ptr %.val25, i64 132   ; 2 uses
  %i.y = getelementptr i8, ptr %.val25, i64 133   ; 2 uses
  %i.z = getelementptr i8, ptr %.val25, i64 134   ; 2 uses
  br i1 %.not.i.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.i
  %.1.in.i.i.i33.us = zext i8 %.val.i.i.i to i32
  %.1.i.i.i34.us = add nuw nsw i32 %.1.in.i.i.i33.us, 1
  %i.aa = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i34.us, i32 %i.r)
  %i.ab = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ac = icmp slt i32 %i.t, %i.ab
  br i1 %i.ac, label %.lr.ph160.preheader, label %drm_edid_extension_block_count.exit64

.lr.ph160.preheader:                              ; preds = %.split.us
  %i.ad = sext i32 %i.t to i64
  %wide.trip.count238 = sext i32 %i.ab to i64
  br label %.lr.ph160

drm_edid_extension_block_count.exit45.us:         ; preds = %.lr.ph160
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %.split66.us, label %.lr.ph160, !llvm.loop !69

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %drm_edid_extension_block_count.exit45.us
  %indvars.iv235 = phi i64 [ %i.ad, %.lr.ph160.preheader ], [ %indvars.iv.next236, %drm_edid_extension_block_count.exit45.us ] ; 2 uses
  %indvars.iv.next236 = add nsw i64 %indvars.iv235, 1 ; 3 uses
  %i.ae = getelementptr [128 x i8], ptr %.val25, i64 %indvars.iv.next236 ; 3 uses
  %.val.us = load i8, ptr %i.ae, align 1
  %i.af = zext i8 %.val.us to i32
  %i.ag = icmp eq i32 %1, %i.af
  br i1 %i.ag, label %..split66.us_crit_edge, label %drm_edid_extension_block_count.exit45.us, !llvm.loop !69

..split66.us_crit_edge:                           ; preds = %.lr.ph160
  %i.ah = trunc nsw i64 %indvars.iv235 to i32
  br label %.split66.us, !llvm.loop !69

.split:                                           ; preds = %bb.i
  %.not.i.i.i.i.i29 = icmp eq i8 %.val.i.i.i, 0
  br i1 %.not.i.i.i.i.i29, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split
  %i.ai = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %i.r, i32 1)
  %i.aj = add nsw i32 %i.ai, -1                   ; 3 uses
  %i.ak = icmp slt i32 %i.t, %i.aj
  br i1 %i.ak, label %.lr.ph154.preheader, label %drm_edid_extension_block_count.exit64

.lr.ph154.preheader:                              ; preds = %.split.split.us
  %i.al = sext i32 %i.t to i64
  %wide.trip.count233 = sext i32 %i.aj to i64
  br label %.lr.ph154

drm_edid_extension_block_count.exit45.us70:       ; preds = %.lr.ph154
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %.split66.us, label %.lr.ph154, !llvm.loop !69

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %drm_edid_extension_block_count.exit45.us70
  %indvars.iv230 = phi i64 [ %i.al, %.lr.ph154.preheader ], [ %indvars.iv.next231, %drm_edid_extension_block_count.exit45.us70 ] ; 2 uses
  %indvars.iv.next231 = add nsw i64 %indvars.iv230, 1 ; 3 uses
  %i.am = getelementptr [128 x i8], ptr %.val25, i64 %indvars.iv.next231 ; 3 uses
  %.val.us74 = load i8, ptr %i.am, align 1
  %i.an = zext i8 %.val.us74 to i32
  %i.ao = icmp eq i32 %1, %i.an
  br i1 %i.ao, label %..split66.split.us_crit_edge, label %drm_edid_extension_block_count.exit45.us70, !llvm.loop !69

..split66.split.us_crit_edge:                     ; preds = %.lr.ph154
  %i.ap = trunc nsw i64 %indvars.iv230 to i32
  br label %.split66.us, !llvm.loop !69

.split.split:                                     ; preds = %.split
  %.val8.i.i.i.i.i30 = load i8, ptr %i.u, align 1
  %.not7.i.i.i.i.i31 = icmp eq i8 %.val8.i.i.i.i.i30, 2
  br i1 %.not7.i.i.i.i.i31, label %.split.split.split.us, label %.split.split.split

.split.split.split.us:                            ; preds = %.split.split
  %.val9.i.i.i.i.i35.us = load i8, ptr %i.v, align 1
  %i.aq = icmp ult i8 %.val9.i.i.i.i.i35.us, 3
  br i1 %i.aq, label %.split.split.split.us.split.us, label %.split.split.split.us.split

.split.split.split.us.split.us:                   ; preds = %.split.split.split.us
  %.1.in.i.i.i33.us83.us = zext i8 %.val.i.i.i to i32
  %.1.i.i.i34.us84.us = add nuw nsw i32 %.1.in.i.i.i33.us83.us, 1
  %i.ar = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i34.us84.us, i32 %i.r)
  %i.as = add nsw i32 %i.ar, -1                   ; 3 uses
  %i.at = icmp slt i32 %i.t, %i.as
  br i1 %i.at, label %.lr.ph148.preheader, label %.split66.us.thread.thread

.lr.ph148.preheader:                              ; preds = %.split.split.split.us.split.us
  %i.au = sext i32 %i.t to i64
  %wide.trip.count228 = sext i32 %i.as to i64
  br label %.lr.ph148

drm_edid_extension_block_count.exit45.us81.us:    ; preds = %.lr.ph148
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %.split66.us, label %.lr.ph148, !llvm.loop !69

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %drm_edid_extension_block_count.exit45.us81.us
  %indvars.iv225 = phi i64 [ %i.au, %.lr.ph148.preheader ], [ %indvars.iv.next226, %drm_edid_extension_block_count.exit45.us81.us ] ; 2 uses
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 3 uses
  %i.av = getelementptr [128 x i8], ptr %.val25, i64 %indvars.iv.next226 ; 3 uses
  %.val.us85.us = load i8, ptr %i.av, align 1
  %i.aw = zext i8 %.val.us85.us to i32
  %i.ax = icmp eq i32 %1, %i.aw
  br i1 %i.ax, label %..split66.split.split.us.split.us_crit_edge, label %drm_edid_extension_block_count.exit45.us81.us, !llvm.loop !69

..split66.split.split.us.split.us_crit_edge:      ; preds = %.lr.ph148
  %i.ay = trunc nsw i64 %indvars.iv225 to i32
  br label %.split66.us, !llvm.loop !69

.split.split.split.us.split:                      ; preds = %.split.split.split.us
  %.val10.i.i.i.i.i36.us = load i8, ptr %i.w, align 1
  %i.az = icmp slt i8 %.val10.i.i.i.i.i36.us, 7
  br i1 %i.az, label %.split.split.split.us.split.split.us, label %.split.split.split.us.split.split

.split.split.split.us.split.split.us:             ; preds = %.split.split.split.us.split
  %.1.in.i.i.i33.us83.us100 = zext i8 %.val.i.i.i to i32
  %.1.i.i.i34.us84.us101 = add nuw nsw i32 %.1.in.i.i.i33.us83.us100, 1
  %i.ba = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i34.us84.us101, i32 %i.r)
  %i.bb = add nsw i32 %i.ba, -1                   ; 3 uses
  %i.bc = icmp slt i32 %i.t, %i.bb
  br i1 %i.bc, label %.lr.ph142.preheader, label %.split66.us.thread.thread

.lr.ph142.preheader:                              ; preds = %.split.split.split.us.split.split.us
  %i.bd = sext i32 %i.t to i64
  %wide.trip.count223 = sext i32 %i.bb to i64
  br label %.lr.ph142

drm_edid_extension_block_count.exit45.us81.us98:  ; preds = %.lr.ph142
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count223
  br i1 %exitcond224.not, label %.split66.us, label %.lr.ph142, !llvm.loop !69

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %drm_edid_extension_block_count.exit45.us81.us98
  %indvars.iv220 = phi i64 [ %i.bd, %.lr.ph142.preheader ], [ %indvars.iv.next221, %drm_edid_extension_block_count.exit45.us81.us98 ] ; 2 uses
  %indvars.iv.next221 = add nsw i64 %indvars.iv220, 1 ; 3 uses
  %i.be = getelementptr [128 x i8], ptr %.val25, i64 %indvars.iv.next221 ; 3 uses
  %.val.us85.us102 = load i8, ptr %i.be, align 1
  %i.bf = zext i8 %.val.us85.us102 to i32
  %i.bg = icmp eq i32 %1, %i.bf
  br i1 %i.bg, label %..split66.split.split.us.split.split.us_crit_edge, label %drm_edid_extension_block_count.exit45.us81.us98, !llvm.loop !69

..split66.split.split.us.split.split.us_crit_edge: ; preds = %.lr.ph142
  %i.bh = trunc nsw i64 %indvars.iv220 to i32
  br label %.split66.us, !llvm.loop !69

.split.split.split.us.split.split:                ; preds = %.split.split.split.us.split
  %.val.i.i.i.i.i.i.i37.us = load i8, ptr %i.x, align 1 ; 2 uses
  %i.bi = icmp ult i8 %.val.i.i.i.i.i.i.i37.us, -32
  %i.bj = and i8 %.val.i.i.i.i.i.i.i37.us, 31     ; 2 uses
  %.not.i.i.i.i.i.i.i38.us = icmp eq i8 %i.bj, 0
  %or.cond.i.i.i.i.i.i.i39.us = or i1 %i.bi, %.not.i.i.i.i.i.i.i38.us
  br i1 %or.cond.i.i.i.i.i.i.i39.us, label %.split.split.split.us.split.split.split.us, label %.split.split.split.us.split.split.split

.split.split.split.us.split.split.split.us:       ; preds = %.split.split.split.us.split.split
  %.1.in.i.i.i33.us83.us111 = zext i8 %.val.i.i.i to i32
  %.1.i.i.i34.us84.us112 = add nuw nsw i32 %.1.in.i.i.i33.us83.us111, 1
  %i.bk = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i34.us84.us112, i32 %i.r)
  %i.bl = add nsw i32 %i.bk, -1                   ; 3 uses
  %i.bm = icmp slt i32 %i.t, %i.bl
  br i1 %i.bm, label %.lr.ph136.preheader, label %.split66.us.thread.thread

.lr.ph136.preheader:                              ; preds = %.split.split.split.us.split.split.split.us
  %i.bn = sext i32 %i.t to i64
  %wide.trip.count218 = sext i32 %i.bl to i64
  br label %.lr.ph136

drm_edid_extension_block_count.exit45.us81.us109: ; preds = %.lr.ph136
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  br i1 %exitcond219.not, label %.split66.us, label %.lr.ph136, !llvm.loop !69

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %drm_edid_extension_block_count.exit45.us81.us109
  %indvars.iv215 = phi i64 [ %i.bn, %.lr.ph136.preheader ], [ %indvars.iv.next216, %drm_edid_extension_block_count.exit45.us81.us109 ] ; 2 uses
  %indvars.iv.next216 = add nsw i64 %indvars.iv215, 1 ; 3 uses
  %i.bo = getelementptr [128 x i8], ptr %.val25, i64 %indvars.iv.next216 ; 3 uses
  %.val.us85.us113 = load i8, ptr %i.bo, align 1
  %i.bp = zext i8 %.val.us85.us113 to i32
  %i.bq = icmp eq i32 %1, %i.bp
  br i1 %i.bq, label %..split66.split.split.us.split.split.split.us_crit_edge, label %drm_edid_extension_block_count.exit45.us81.us109, !llvm.loop !69

..split66.split.split.us.split.split.split.us_crit_edge: ; preds = %.lr.ph136
  %i.br = trunc nsw i64 %indvars.iv215 to i32
  br label %.split66.us, !llvm.loop !69

.split.split.split.us.split.split.split:          ; preds = %.split.split.split.us.split.split
  %i.bs = icmp samesign ugt i8 %i.bj, 1
  %i.bt = load i8, ptr %i.y, align 1
  %i.bu = icmp eq i8 %i.bt, 120
  %spec.select.i.i.i.i.i.i41.us = select i1 %i.bu, i1 %i.bs, i1 false
  br i1 %spec.select.i.i.i.i.i.i41.us, label %.split.split.split.us.split.split.split.split.us, label %.split.split.split.us.split.split.split.split

.split.split.split.us.split.split.split.split.us: ; preds = %.split.split.split.us.split.split.split
  %i.bv = load i8, ptr %i.z, align 1
  %.fr.i.i.i.i43.us.us = freeze i8 %i.bv          ; 2 uses
  %.not.i.i.i.i44.us.us = icmp eq i8 %.fr.i.i.i.i43.us.us, 0
  %i.bw = sext i32 %i.t to i64                    ; 2 uses
  %spec.select = select i1 %.not.i.i.i.i44.us.us, i8 %.val.i.i.i, i8 %.fr.i.i.i.i43.us.us
  %.1.in.i.i.i33.us83.us122 = zext i8 %spec.select to i32
  %.1.i.i.i34.us84.us123 = add nuw nsw i32 %.1.in.i.i.i33.us83.us122, 1
  %i.bx = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i34.us84.us123, i32 %i.r)
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i32 %i.t, %i.by
  br i1 %i.ca, label %.lr.ph327, label %.split66.us.loopexit275

cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us.us: ; preds = %.lr.ph327
  %i.cb = icmp slt i64 %indvars.iv.next213, %i.bz
  br i1 %i.cb, label %.lr.ph327, label %.split66.us.loopexit275, !llvm.loop !69

.lr.ph327:                                        ; preds = %.split.split.split.us.split.split.split.split.us, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us.us
  %indvars.iv212326 = phi i64 [ %indvars.iv.next213, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us.us ], [ %i.bw, %.split.split.split.us.split.split.split.split.us ] ; 2 uses
  %indvars.iv.next213 = add nsw i64 %indvars.iv212326, 1 ; 4 uses
  %i.cc = getelementptr [128 x i8], ptr %.val25, i64 %indvars.iv.next213 ; 3 uses
  %.val.us85.us124 = load i8, ptr %i.cc, align 1
  %i.cd = zext i8 %.val.us85.us124 to i32
  %i.ce = icmp eq i32 %1, %i.cd
  br i1 %i.ce, label %..split66.us.loopexit275_crit_edge, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us.us, !llvm.loop !69

.split.split.split.us.split.split.split.split:    ; preds = %.split.split.split.us.split.split.split
  %.1.in.i.i.i33.us83 = zext i8 %.val.i.i.i to i32
  %.1.i.i.i34.us84 = add nuw nsw i32 %.1.in.i.i.i33.us83, 1
  %i.cf = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i34.us84, i32 %i.r)
  %i.cg = add nsw i32 %i.cf, -1                   ; 3 uses
  %i.ch = icmp slt i32 %i.t, %i.cg
  br i1 %i.ch, label %.lr.ph130.preheader, label %.split66.us.thread.thread

.lr.ph130.preheader:                              ; preds = %.split.split.split.us.split.split.split.split
  %i.ci = sext i32 %i.t to i64
  %wide.trip.count210 = sext i32 %i.cg to i64
  br label %.lr.ph130

cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us:   ; preds = %.lr.ph130
  %exitcond211.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count210
  br i1 %exitcond211.not, label %.split66.us, label %.lr.ph130, !llvm.loop !69

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us
  %indvars.iv207 = phi i64 [ %i.ci, %.lr.ph130.preheader ], [ %indvars.iv.next208, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us ] ; 2 uses
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, 1 ; 3 uses
  %i.cj = getelementptr [128 x i8], ptr %.val25, i64 %indvars.iv.next208 ; 3 uses
  %.val.us85 = load i8, ptr %i.cj, align 1
  %i.ck = zext i8 %.val.us85 to i32
  %i.cl = icmp eq i32 %1, %i.ck
  br i1 %i.cl, label %..split66.split.split.us.split.split.split.split_crit_edge, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us, !llvm.loop !69

..split66.split.split.us.split.split.split.split_crit_edge: ; preds = %.lr.ph130
  %i.cm = trunc nsw i64 %indvars.iv207 to i32
  br label %.split66.us, !llvm.loop !69

.split.split.split:                               ; preds = %.split.split
  %.1.in.i.i.i33 = zext i8 %.val.i.i.i to i32
  %.1.i.i.i34 = add nuw nsw i32 %.1.in.i.i.i33, 1
  %i.cn = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i34, i32 %i.r)
  %i.co = add nsw i32 %i.cn, -1                   ; 3 uses
  %i.cp = icmp slt i32 %i.t, %i.co
  br i1 %i.cp, label %.lr.ph.preheader, label %.split66.us.thread.thread

.lr.ph.preheader:                                 ; preds = %.split.split.split
  %i.cq = sext i32 %i.t to i64
  %wide.trip.count = sext i32 %i.co to i64
  br label %.lr.ph

drm_edid_extension_block_count.exit45:            ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split66.us, label %.lr.ph, !llvm.loop !69

.lr.ph:                                           ; preds = %.lr.ph.preheader, %drm_edid_extension_block_count.exit45
  %indvars.iv = phi i64 [ %i.cq, %.lr.ph.preheader ], [ %indvars.iv.next, %drm_edid_extension_block_count.exit45 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.cr = getelementptr [128 x i8], ptr %.val25, i64 %indvars.iv.next ; 3 uses
  %.val = load i8, ptr %i.cr, align 1
  %i.cs = zext i8 %.val to i32
  %i.ct = icmp eq i32 %1, %i.cs
  br i1 %i.ct, label %..split66.split.split_crit_edge, label %drm_edid_extension_block_count.exit45, !llvm.loop !69

..split66.split.split_crit_edge:                  ; preds = %.lr.ph
  %i.cu = trunc nsw i64 %indvars.iv to i32
  br label %.split66.us, !llvm.loop !69

..split66.us.loopexit275_crit_edge:               ; preds = %.lr.ph327
  br label %.split66.us.loopexit275, !llvm.loop !69

.split66.us.loopexit275:                          ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us.us, %..split66.us.loopexit275_crit_edge, %.split.split.split.us.split.split.split.split.us
  %indvars.iv212.lcssa = phi i64 [ %indvars.iv212326, %..split66.us.loopexit275_crit_edge ], [ %i.bw, %.split.split.split.us.split.split.split.split.us ], [ %indvars.iv.next213, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us.us ]
  %.us-phi67.ph = phi ptr [ %i.cc, %..split66.us.loopexit275_crit_edge ], [ null, %.split.split.split.us.split.split.split.split.us ], [ %i.cc, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us.us ]
  %i.cv = trunc nsw i64 %indvars.iv212.lcssa to i32
  br label %.split66.us

.split66.us:                                      ; preds = %drm_edid_extension_block_count.exit45, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us, %drm_edid_extension_block_count.exit45.us81.us109, %drm_edid_extension_block_count.exit45.us81.us98, %drm_edid_extension_block_count.exit45.us81.us, %drm_edid_extension_block_count.exit45.us70, %drm_edid_extension_block_count.exit45.us, %.split66.us.loopexit275, %..split66.split.us_crit_edge, %..split66.split.split_crit_edge, %..split66.split.split.us.split.us_crit_edge, %..split66.split.split.us.split.split.split.us_crit_edge, %..split66.split.split.us.split.split.split.split_crit_edge, %..split66.split.split.us.split.split.us_crit_edge, %..split66.us_crit_edge
  %.us-phi = phi i32 [ %i.br, %..split66.split.split.us.split.split.split.us_crit_edge ], [ %i.ah, %..split66.us_crit_edge ], [ %i.cg, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us ], [ %i.cv, %.split66.us.loopexit275 ], [ %i.ap, %..split66.split.us_crit_edge ], [ %i.bb, %drm_edid_extension_block_count.exit45.us81.us98 ], [ %i.bl, %drm_edid_extension_block_count.exit45.us81.us109 ], [ %i.cu, %..split66.split.split_crit_edge ], [ %i.ay, %..split66.split.split.us.split.us_crit_edge ], [ %i.cm, %..split66.split.split.us.split.split.split.split_crit_edge ], [ %i.aj, %drm_edid_extension_block_count.exit45.us70 ], [ %i.bh, %..split66.split.split.us.split.split.us_crit_edge ], [ %i.ab, %drm_edid_extension_block_count.exit45.us ], [ %i.as, %drm_edid_extension_block_count.exit45.us81.us ], [ %i.co, %drm_edid_extension_block_count.exit45 ] ; 3 uses
  %.us-phi67 = phi ptr [ %i.bo, %..split66.split.split.us.split.split.split.us_crit_edge ], [ %i.ae, %..split66.us_crit_edge ], [ %i.cj, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i40.us ], [ %.us-phi67.ph, %.split66.us.loopexit275 ], [ %i.am, %..split66.split.us_crit_edge ], [ %i.be, %drm_edid_extension_block_count.exit45.us81.us98 ], [ %i.bo, %drm_edid_extension_block_count.exit45.us81.us109 ], [ %i.cr, %..split66.split.split_crit_edge ], [ %i.av, %..split66.split.split.us.split.us_crit_edge ], [ %i.cj, %..split66.split.split.us.split.split.split.split_crit_edge ], [ %i.am, %drm_edid_extension_block_count.exit45.us70 ], [ %i.be, %..split66.split.split.us.split.split.us_crit_edge ], [ %i.ae, %drm_edid_extension_block_count.exit45.us ], [ %i.av, %drm_edid_extension_block_count.exit45.us81.us ], [ %i.cr, %drm_edid_extension_block_count.exit45 ] ; 3 uses
  br i1 %.not.i.i.i, label %drm_edid_extension_block_count.exit64, label %.split66.us.thread

.split66.us.thread:                               ; preds = %.split66.us
  %.not.i.i.i.i.i48 = icmp eq i8 %.val.i.i.i, 0
  br i1 %.not.i.i.i.i.i48, label %drm_edid_extension_block_count.exit64, label %.split66.us.thread.thread

.split66.us.thread.thread:                        ; preds = %.split.split.split, %.split.split.split.us.split.us, %.split.split.split.us.split.split.split.us, %.split.split.split.us.split.split.split.split, %.split.split.split.us.split.split.us, %.split66.us.thread
  %.us-phi253265 = phi i32 [ %.us-phi, %.split66.us.thread ], [ %i.t, %.split.split.split.us.split.split.us ], [ %i.t, %.split.split.split.us.split.split.split.split ], [ %i.t, %.split.split.split.us.split.split.split.us ], [ %i.t, %.split.split.split.us.split.us ], [ %i.t, %.split.split.split ] ; 6 uses
  %.us-phi67255263 = phi ptr [ %.us-phi67, %.split66.us.thread ], [ null, %.split.split.split.us.split.split.us ], [ null, %.split.split.split.us.split.split.split.split ], [ null, %.split.split.split.us.split.split.split.us ], [ null, %.split.split.split.us.split.us ], [ null, %.split.split.split ] ; 6 uses
  %.val8.i.i.i.i.i49 = load i8, ptr %i.u, align 1
  %.not7.i.i.i.i.i50 = icmp eq i8 %.val8.i.i.i.i.i49, 2
  br i1 %.not7.i.i.i.i.i50, label %bb.j, label %drm_edid_extension_block_count.exit64

bb.j:                                             ; preds = %.split66.us.thread.thread
  %.val9.i.i.i.i.i54 = load i8, ptr %i.v, align 1
  %i.cw = icmp ult i8 %.val9.i.i.i.i.i54, 3
  br i1 %i.cw, label %drm_edid_extension_block_count.exit64, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val10.i.i.i.i.i55 = load i8, ptr %i.w, align 1
  %i.cx = icmp slt i8 %.val10.i.i.i.i.i55, 7
  br i1 %i.cx, label %drm_edid_extension_block_count.exit64, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i.i.i.i.i.i.i56 = load i8, ptr %i.x, align 1 ; 2 uses
  %i.cy = icmp ult i8 %.val.i.i.i.i.i.i.i56, -32
  %i.cz = and i8 %.val.i.i.i.i.i.i.i56, 31        ; 2 uses
  %.not.i.i.i.i.i.i.i57 = icmp eq i8 %i.cz, 0
  %or.cond.i.i.i.i.i.i.i58 = or i1 %i.cy, %.not.i.i.i.i.i.i.i57
  br i1 %or.cond.i.i.i.i.i.i.i58, label %drm_edid_extension_block_count.exit64, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i59

cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i59:      ; preds = %bb.l
  %i.da = load i8, ptr %i.y, align 1
  %i.db = icmp eq i8 %i.da, 120
  %i.dc = icmp samesign ugt i8 %i.cz, 1
  %spec.select.i.i.i.i.i.i60 = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %spec.select.i.i.i.i.i.i60, label %edid_hfeeodb_extension_block_count.exit.i.i.i.i61, label %drm_edid_extension_block_count.exit64

edid_hfeeodb_extension_block_count.exit.i.i.i.i61: ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i59
  %i.dd = load i8, ptr %i.z, align 1
  %.fr.i.i.i.i62 = freeze i8 %i.dd                ; 2 uses
  %.not.i.i.i.i63 = icmp eq i8 %.fr.i.i.i.i62, 0
  %spec.select299 = select i1 %.not.i.i.i.i63, i8 %.val.i.i.i, i8 %.fr.i.i.i.i62
  br label %drm_edid_extension_block_count.exit64

drm_edid_extension_block_count.exit64:            ; preds = %edid_hfeeodb_extension_block_count.exit.i.i.i.i61, %.split.split.us, %.split66.us.thread, %.split66.us.thread.thread, %bb.j, %bb.k, %bb.l, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i59, %.split.us, %.split66.us
  %.us-phi67256 = phi ptr [ %.us-phi67, %.split66.us ], [ null, %.split.us ], [ %.us-phi67255263, %edid_hfeeodb_extension_block_count.exit.i.i.i.i61 ], [ %.us-phi67255263, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i59 ], [ %.us-phi67255263, %bb.l ], [ %.us-phi67255263, %bb.k ], [ %.us-phi67255263, %bb.j ], [ %.us-phi67255263, %.split66.us.thread.thread ], [ %.us-phi67, %.split66.us.thread ], [ null, %.split.split.us ]
  %.us-phi254 = phi i32 [ %.us-phi, %.split66.us ], [ %i.t, %.split.us ], [ %.us-phi253265, %edid_hfeeodb_extension_block_count.exit.i.i.i.i61 ], [ %.us-phi253265, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i59 ], [ %.us-phi253265, %bb.l ], [ %.us-phi253265, %bb.k ], [ %.us-phi253265, %bb.j ], [ %.us-phi253265, %.split66.us.thread.thread ], [ %.us-phi, %.split66.us.thread ], [ %i.t, %.split.split.us ] ; 2 uses
  %.1.in.in.i.i.i51 = phi i8 [ %.val.i.i.i, %.split66.us ], [ %.val.i.i.i, %.split.us ], [ %spec.select299, %edid_hfeeodb_extension_block_count.exit.i.i.i.i61 ], [ %.val.i.i.i, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i59 ], [ %.val.i.i.i, %bb.l ], [ %.val.i.i.i, %bb.k ], [ %.val.i.i.i, %bb.j ], [ %.val.i.i.i, %.split66.us.thread.thread ], [ 0, %.split66.us.thread ], [ 0, %.split.split.us ]
  %.1.in.i.i.i52 = zext i8 %.1.in.in.i.i.i51 to i32
  %.1.i.i.i53 = add nuw nsw i32 %.1.in.i.i.i52, 1
  %i.de = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i53, i32 %i.r)
  %i.df = add nsw i32 %i.de, -1
  %.not19 = icmp slt i32 %.us-phi254, %i.df
  br i1 %.not19, label %bb.m, label %bb.n

bb.m:                                             ; preds = %drm_edid_extension_block_count.exit64
  %i.dg = add nsw i32 %.us-phi254, 1
  store i32 %i.dg, ptr %2, align 4
  br label %bb.n

bb.n:                                             ; preds = %drm_edid_extension_block_count.exit64, %bb.a, %drm_edid_extension_block_count.exit, %bb.m
  %.016 = phi ptr [ null, %bb.a ], [ %.us-phi67256, %bb.m ], [ null, %drm_edid_extension_block_count.exit ], [ null, %drm_edid_extension_block_count.exit64 ]
  ret ptr %.016
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i8 @drm_match_cea_mode(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.drm_display_mode, align 8   ; 14 uses
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 116
  %i.c = load i32, ptr %i.b, align 4
  %.not19 = icmp eq i32 %i.c, 0
  %spec.select = select i1 %.not19, i32 5, i32 21 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %cea_mode_alternate_timings.exit.thread
  %.01536 = phi i8 [ 1, %bb.b ], [ %spec.select30, %cea_mode_alternate_timings.exit.thread ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %1, i8 0, i64 120, i1 false), !annotation !14
  %or.cond.i = icmp sgt i8 %.01536, 0
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i8 %.01536 to i64
  %i.i = getelementptr [120 x i8], ptr @edid_cea_modes_1, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -120
  br label %cea_mode_for_vic.exit

bb.e:                                             ; preds = %bb.c
  %i.k = add nsw i8 %.01536, 63
  %or.cond5.i = icmp ult i8 %i.k, 27
  br i1 %or.cond5.i, label %bb.f, label %cea_mode_for_vic.exit

bb.f:                                             ; preds = %bb.e
  %i.l = zext i8 %.01536 to i64
  %i.m = getelementptr [120 x i8], ptr @edid_cea_modes_193, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -23160
  br label %cea_mode_for_vic.exit

cea_mode_for_vic.exit:                            ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.j, %bb.d ], [ %i.n, %bb.f ], [ null, %bb.e ]
  call void @drm_mode_init(ptr noundef nonnull %1, ptr noundef %.0.i) #22
  %i.o = load i32, ptr %1, align 8                ; 4 uses
  %i.p = call i32 @drm_mode_vrefresh(ptr noundef nonnull %1) #22
  %i.q = srem i32 %i.p, 6
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %cea_mode_alternate_clock.exit

bb.g:                                             ; preds = %cea_mode_for_vic.exit
  %i.r = load i16, ptr %i.d, align 2
  switch i16 %i.r, label %bb.i [
    i16 240, label %bb.h
    i16 480, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.s = mul i32 %i.o, 1001
  %i.t = add i32 %i.s, 500
  %i.u = udiv i32 %i.t, 1000
  br label %cea_mode_alternate_clock.exit

bb.i:                                             ; preds = %bb.g
  %i.v = mul i32 %i.o, 1000
  %i.w = add i32 %i.v, 500
  %i.x = udiv i32 %i.w, 1001
  br label %cea_mode_alternate_clock.exit

cea_mode_alternate_clock.exit:                    ; preds = %cea_mode_for_vic.exit, %bb.h, %bb.i
  %.0.i22 = phi i32 [ %i.o, %cea_mode_for_vic.exit ], [ %i.u, %bb.h ], [ %i.x, %bb.i ]
  %i.y = load i32, ptr %0, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = udiv i64 1000000000, %i.z               ; 2 uses
  %i.ab = udiv i32 1000000000, %i.o
  %i.ac = zext nneg i32 %i.ab to i64
  %.not20 = icmp eq i64 %i.aa, %i.ac
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %cea_mode_alternate_clock.exit
  %i.ad = udiv i32 1000000000, %.0.i22
  %i.ae = zext nneg i32 %i.ad to i64
  %.not21 = icmp eq i64 %i.aa, %i.ae
  br i1 %.not21, label %bb.k, label %cea_mode_alternate_timings.exit.thread

bb.k:                                             ; preds = %bb.j, %cea_mode_alternate_clock.exit
  %i.af = call zeroext i1 @drm_mode_match(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %spec.select) #22
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  switch i8 %.01536, label %.lr.ph.split [
    i8 28, label %.lr.ph.split.us.split.us.preheader
    i8 27, label %.lr.ph.split.us.split.us.preheader
    i8 24, label %.lr.ph.split.us.split.us.preheader
    i8 23, label %.lr.ph.split.us.split.us.preheader
  ]

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %cea_mode_alternate_timings.exit.us.us
  %i.ag = load i16, ptr %i.e, align 4             ; 2 uses
  %i.ah = icmp ult i16 %i.ag, 314
  br i1 %i.ah, label %cea_mode_alternate_timings.exit.us.us, label %cea_mode_alternate_timings.exit.thread

cea_mode_alternate_timings.exit.us.us:            ; preds = %.lr.ph.split.us.split.us
  %i.ai = load i16, ptr %i.f, align 8
  %i.aj = add i16 %i.ai, 1
  store i16 %i.aj, ptr %i.f, align 8
  %i.ak = load i16, ptr %i.g, align 2
  %i.al = add i16 %i.ak, 1
  store i16 %i.al, ptr %i.g, align 2
  %i.am = add nuw nsw i16 %i.ag, 1
  store i16 %i.am, ptr %i.e, align 4
  %i.an = call zeroext i1 @drm_mode_match(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %spec.select) #22
  br i1 %i.an, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !70

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ao = and i8 %.01536, -6
  %or.cond8.i = icmp eq i8 %i.ao, 8
  br i1 %or.cond8.i, label %.lr.ph.split.split, label %cea_mode_alternate_timings.exit.thread

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %cea_mode_alternate_timings.exit
  %i.ap = load i16, ptr %i.e, align 4             ; 2 uses
  %i.aq = icmp ult i16 %i.ap, 263
  br i1 %i.aq, label %cea_mode_alternate_timings.exit, label %cea_mode_alternate_timings.exit.thread

cea_mode_alternate_timings.exit:                  ; preds = %.lr.ph.split.split
  %i.ar = load i16, ptr %i.f, align 8
  %i.as = add i16 %i.ar, 1
  store i16 %i.as, ptr %i.f, align 8
  %i.at = load i16, ptr %i.g, align 2
  %i.au = add i16 %i.at, 1
  store i16 %i.au, ptr %i.g, align 2
  %i.av = add nuw nsw i16 %i.ap, 1
  store i16 %i.av, ptr %i.e, align 4
  %i.aw = call zeroext i1 @drm_mode_match(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %spec.select) #22
  br i1 %i.aw, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.k, %cea_mode_alternate_timings.exit.us.us, %cea_mode_alternate_timings.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.loopexit

cea_mode_alternate_timings.exit.thread:           ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.split, %.lr.ph.split, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.ax = add i8 %.01536, 1                       ; 2 uses
  %i.ay = icmp eq i8 %i.ax, -128
  %spec.select30 = select i1 %i.ay, i8 -63, i8 %i.ax ; 2 uses
  %i.az = icmp ult i8 %spec.select30, -36
  br i1 %i.az, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %cea_mode_alternate_timings.exit.thread, %._crit_edge, %bb.a
  %.2 = phi i8 [ %.01536, %._crit_edge ], [ 0, %bb.a ], [ 0, %cea_mode_alternate_timings.exit.thread ]
  ret i8 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mode_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_match(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @drm_display_mode_from_cea_vic(ptr noundef %0, i8 noundef zeroext %1) #2 align 16 prefalign(16) {
bb.a:
  %or.cond.i = icmp sgt i8 %1, 0
  br i1 %or.cond.i, label %cea_mode_for_vic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i8 %1, 63
  %or.cond5.i = icmp ult i8 %i.a, 27
  br i1 %or.cond5.i, label %cea_mode_for_vic.exit, label %cea_mode_for_vic.exit.thread

cea_mode_for_vic.exit:                            ; preds = %bb.b, %bb.a
  %edid_cea_modes_1.sink = phi ptr [ @edid_cea_modes_1, %bb.a ], [ @edid_cea_modes_193, %bb.b ]
  %.sink12 = phi i64 [ -120, %bb.a ], [ -23160, %bb.b ]
  %i.b = zext i8 %1 to i64
  %i.c = getelementptr [120 x i8], ptr %edid_cea_modes_1.sink, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 %.sink12 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %cea_mode_for_vic.exit.thread, label %bb.c

bb.c:                                             ; preds = %cea_mode_for_vic.exit
  %i.e = tail call ptr @drm_mode_duplicate(ptr noundef %0, ptr noundef nonnull %i.d) #22
  br label %cea_mode_for_vic.exit.thread

cea_mode_for_vic.exit.thread:                     ; preds = %bb.b, %bb.c, %cea_mode_for_vic.exit
  %.0 = phi ptr [ null, %cea_mode_for_vic.exit ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @drm_edid_match(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.drm_edid_match_closure, align 8 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp ult i64 %i.a, 128
  br i1 %i.b, label %drm_edid_get_panel_id.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 24
  %i.i = getelementptr i8, ptr %i.d, i64 9
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 16
  %i.m = or disjoint i32 %i.l, %i.h
  %i.n = getelementptr i8, ptr %i.d, i64 10
  %i.o = load i16, ptr %i.n, align 1
  %i.p = zext i16 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p
  br label %drm_edid_get_panel_id.exit

drm_edid_get_panel_id.exit:                       ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ]
  %i.r = load i32, ptr %1, align 8
  %.not8 = icmp eq i32 %.0.i, %i.r
  br i1 %.not8, label %bb.d, label %bb.f

bb.d:                                             ; preds = %drm_edid_get_panel_id.exit
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.not9 = icmp eq ptr %i.t, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %1, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.u, align 8
  call fastcc void @drm_for_each_detailed_block(ptr noundef nonnull %0, ptr noundef @match_identity, ptr noundef nonnull %2) #21, !srcloc !71
  %i.v = load i8, ptr %i.u, align 8, !range !18, !noundef !19
  %i.w = trunc nuw i8 %i.v to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %drm_edid_get_panel_id.exit, %bb.e
  %.0 = phi i1 [ false, %bb.a ], [ %i.w, %bb.e ], [ false, %drm_edid_get_panel_id.exit ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @drm_for_each_detailed_block(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %__drm_edid_iter_next.exit.thread, label %.preheader28

.preheader28:                                     ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 54
  tail call void %1(ptr noundef %i.c, ptr noundef %2) #22
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 72
  tail call void %1(ptr noundef %i.e, ptr noundef %2) #22
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 90
  tail call void %1(ptr noundef %i.g, ptr noundef %2) #22
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 108
  tail call void %1(ptr noundef %i.i, ptr noundef %2) #22
  br label %bb.b

bb.b:                                             ; preds = %.preheader28, %cea_for_each_detailed_block.exit
  %.sroa.6.0 = phi i64 [ %i.ac, %cea_for_each_detailed_block.exit ], [ 0, %.preheader28 ] ; 3 uses
  %.sroa.6.8.extract.trunc = trunc i64 %.sroa.6.0 to i32
  %.val.i = load i64, ptr %0, align 8             ; 2 uses
  %.val9.i = load ptr, ptr %i.a, align 8          ; 8 uses
  %i.j = getelementptr i8, ptr %.val9.i, i64 126
  %.val.i.i.i = load i8, ptr %i.j, align 1        ; 3 uses
  %.not.i.i.i = icmp ult i64 %.val.i, 256
  br i1 %.not.i.i.i, label %drm_edid_block_count.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val9.i, i64 128
  %.val8.i.i.i.i.i = load i8, ptr %i.k, align 1
  %.not7.i.i.i.i.i = icmp eq i8 %.val8.i.i.i.i.i, 2
  br i1 %.not7.i.i.i.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val9.i, i64 129
  %.val9.i.i.i.i.i = load i8, ptr %i.l, align 1
  %i.m = icmp ult i8 %.val9.i.i.i.i.i, 3
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %.val9.i, i64 130
  %.val10.i.i.i.i.i = load i8, ptr %i.n, align 1
  %i.o = icmp slt i8 %.val10.i.i.i.i.i, 7
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.val9.i, i64 132
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.p, align 1 ; 2 uses
  %i.q = icmp ult i8 %.val.i.i.i.i.i.i.i, -32
  %i.r = and i8 %.val.i.i.i.i.i.i.i, 31           ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.q, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.h, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i

cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i:        ; preds = %bb.g
  %i.s = getelementptr i8, ptr %.val9.i, i64 133
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 120
  %i.v = icmp samesign ugt i8 %i.r, 1
  %spec.select.i.i.i.i.i.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %spec.select.i.i.i.i.i.i, label %edid_hfeeodb_extension_block_count.exit.i.i.i.i, label %bb.h

edid_hfeeodb_extension_block_count.exit.i.i.i.i:  ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i
  %i.w = getelementptr i8, ptr %.val9.i, i64 134
  %i.x = load i8, ptr %i.w, align 1
  %.fr.i.i.i.i = freeze i8 %i.x                   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.fr.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %drm_edid_block_count.exit.i

bb.h:                                             ; preds = %edid_hfeeodb_extension_block_count.exit.i.i.i.i, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  br label %drm_edid_block_count.exit.i

drm_edid_block_count.exit.i:                      ; preds = %bb.h, %edid_hfeeodb_extension_block_count.exit.i.i.i.i, %bb.b
  %.1.in.in.i.i.i = phi i8 [ %.val.i.i.i, %bb.b ], [ %.val.i.i.i, %bb.h ], [ %.fr.i.i.i.i, %edid_hfeeodb_extension_block_count.exit.i.i.i.i ]
  %.1.in.i.i.i = zext i8 %.1.in.in.i.i.i to i32
  %.1.i.i.i = add nuw nsw i32 %.1.in.i.i.i, 1
  %i.y = trunc i64 %.val.i to i32
  %i.z = sdiv i32 %i.y, 128
  %i.aa = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i, i32 %i.z)
  %i.ab = icmp sgt i32 %i.aa, %.sroa.6.8.extract.trunc
  br i1 %i.ab, label %__drm_edid_iter_next.exit, label %__drm_edid_iter_next.exit.thread

__drm_edid_iter_next.exit:                        ; preds = %drm_edid_block_count.exit.i
  %i.ac = add i64 %.sroa.6.0, 1
  %sext = shl i64 %.sroa.6.0, 32
  %i.ad = ashr exact i64 %sext, 25
  %i.ae = getelementptr i8, ptr %.val9.i, i64 %i.ad ; 7 uses
  %.not16 = icmp eq ptr %i.ae, null
  br i1 %.not16, label %__drm_edid_iter_next.exit.thread, label %bb.i

bb.i:                                             ; preds = %__drm_edid_iter_next.exit
  %i.af = load i8, ptr %i.ae, align 1
  switch i8 %i.af, label %cea_for_each_detailed_block.exit [
    i8 2, label %bb.j
    i8 16, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.ae, i64 2
  %i.ah = load i8, ptr %i.ag, align 1             ; 3 uses
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.ak = add i8 %i.ah, -110
  %or.cond17.i = icmp ult i8 %i.ak, -106
  br i1 %or.cond17.i, label %cea_for_each_detailed_block.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %narrow.i = sub nuw nsw i8 127, %i.ah
  %i.al = udiv i8 %narrow.i, 18
  %wide.trip.count.i = zext nneg i8 %i.al to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.am = mul nuw nsw i64 %indvars.iv.i, 18
  %i.an = getelementptr i8, ptr %i.aj, i64 %i.am
  tail call void %1(ptr noundef %i.an, ptr noundef %2) #22, !inline_history !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cea_for_each_detailed_block.exit, label %.lr.ph.i, !llvm.loop !73

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.ae, i64 2
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ae, i64 5
  %i.ar = getelementptr i8, ptr %i.ae, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  %.not.i17 = icmp eq i8 %i.as, 1
  %i.at = icmp ne i8 %i.ap, 0
  %or.cond.i = select i1 %.not.i17, i1 %i.at, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i18, label %cea_for_each_detailed_block.exit

.lr.ph.preheader.i18:                             ; preds = %bb.k
  %i.au = tail call i8 @llvm.umin.i8(i8 %i.ap, i8 6)
  %wide.trip.count.i19 = zext nneg i8 %i.au to i64
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20, %.lr.ph.preheader.i18
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.preheader.i18 ], [ %indvars.iv.next.i22, %.lr.ph.i20 ] ; 2 uses
  %i.av = mul nuw nsw i64 %indvars.iv.i21, 18
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.av
  tail call void %1(ptr noundef %i.aw, ptr noundef %2) #22, !inline_history !74
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %wide.trip.count.i19
  br i1 %exitcond.not.i23, label %cea_for_each_detailed_block.exit, label %.lr.ph.i20, !llvm.loop !75

cea_for_each_detailed_block.exit:                 ; preds = %.lr.ph.i20, %.lr.ph.i, %bb.k, %bb.j, %bb.i
  br label %bb.b, !llvm.loop !2

__drm_edid_iter_next.exit.thread:                 ; preds = %drm_edid_block_count.exit.i, %__drm_edid_iter_next.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal void @match_identity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #9 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef %i.c) #22 ; 3 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 5          ; 2 uses
  %i.g = icmp ugt i32 %i.e, 13
  br i1 %i.g, label %is_display_descriptor.exit22.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr %0, align 1
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.c, label %is_display_descriptor.exit22.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %is_display_descriptor.exit, label %is_display_descriptor.exit22.thread

is_display_descriptor.exit:                       ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, -4
  br i1 %i.o, label %bb.d, label %is_display_descriptor.exit22
end_hunk_0
begin_hunk_1_@drm_detect_monitor_audio:bb.a
  %i.q = load i8, ptr %i.h, align 1
  %i.r = icmp eq i8 %i.q, 120
  %i.s = icmp samesign ugt i8 %i.p, 1
  %spec.select.i.i.i.i.i.i.i.us = select i1 %i.r, i1 %i.s, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.us, label %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i.us, label %bb.d

edid_hfeeodb_extension_block_count.exit.i.i.i.i.i.us: ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.i.us
  %i.t = load i8, ptr %i.i, align 1
  %.fr.i.i.i.i.i.us = freeze i8 %i.t              ; 2 uses
  %.not.i.i.i.i.i.us = icmp eq i8 %.fr.i.i.i.i.i.us, 0
  br i1 %.not.i.i.i.i.i.us, label %bb.d, label %drm_edid_block_count.exit.i.i.us16

bb.d:                                             ; preds = %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i.us, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.i.us, %bb.c, %bb.b, %.lr.ph.split.split.i.us13
  br label %drm_edid_block_count.exit.i.i.us16

drm_edid_block_count.exit.i.i.us16:               ; preds = %bb.d, %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i.us
  %.1.in.in.i.i.i.i.us17 = phi i8 [ %.fr.i.i.i.i.i.us, %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i.us ], [ %.val.i, %bb.d ]
  %.1.in.i.i.i.i.us18 = zext i8 %.1.in.in.i.i.i.i.us17 to i32
  %.1.i.i.i.i.us19 = add nuw nsw i32 %.1.in.i.i.i.i.us18, 1
  %i.u = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i.i.us19, i32 %i.k)
  %i.v = icmp sgt i32 %i.u, %.sroa.6.8.extract.trunc.i.us15
  br i1 %i.v, label %__drm_edid_iter_next.exit.i.us20, label %.loopexit82.i

__drm_edid_iter_next.exit.i.us20:                 ; preds = %drm_edid_block_count.exit.i.i.us16
  %i.w = add i64 %.sroa.6.030.i.us14, 1
  %sext.i.us21 = shl i64 %.sroa.6.030.i.us14, 32
  %i.x = ashr exact i64 %sext.i.us21, 25
  %i.y = getelementptr i8, ptr %0, i64 %i.x       ; 3 uses
  %.not.i2.us22 = icmp eq ptr %i.y, null
  br i1 %.not.i2.us22, label %.loopexit82.i, label %bb.e

bb.e:                                             ; preds = %__drm_edid_iter_next.exit.i.us20
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 2
  br i1 %i.aa, label %bb.f, label %.lr.ph.split.split.i.us13.backedge

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.y, i64 3
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 64
  %.not16.i.us23 = icmp eq i8 %i.ad, 0
  br i1 %.not16.i.us23, label %.lr.ph.split.split.i.us13.backedge, label %__drm_edid_iter_next.exit.thread.i

.lr.ph.split.split.i.us13.backedge:               ; preds = %bb.f, %bb.e
  br label %.lr.ph.split.split.i.us13

.lr.ph.split.split.i.preheader.split.split:       ; preds = %.lr.ph.split.split.i.preheader.split
  %.1.in.i.i.i.i = zext i8 %.val.i to i32
  %.1.i.i.i.i = add nuw nsw i32 %.1.in.i.i.i.i, 1
  %i.ae = tail call i32 @llvm.umin.i32(i32 %.1.i.i.i.i, i32 %i.k)
  %wide.trip.count = zext nneg i32 %i.ae to i64
  br label %__drm_edid_iter_next.exit.i

__drm_edid_iter_next.exit.us.i:                   ; preds = %.lr.ph.i
  %i.af = load i8, ptr %0, align 1
  %i.ag = icmp eq i8 %i.af, 2
  br i1 %i.ag, label %bb.g, label %.loopexit82.i

bb.g:                                             ; preds = %__drm_edid_iter_next.exit.us.i
  %i.ah = getelementptr i8, ptr %0, i64 3
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = and i8 %i.ai, 64
  %.not16.us.i = icmp eq i8 %i.aj, 0
  br i1 %.not16.us.i, label %.loopexit82.i, label %__drm_edid_iter_next.exit.thread.i

__drm_edid_iter_next.exit.i:                      ; preds = %.lr.ph.split.split.i.preheader.split.split, %.lr.ph.split.split.i
  %.sroa.6.030.i24 = phi i64 [ 0, %.lr.ph.split.split.i.preheader.split.split ], [ %i.ak, %.lr.ph.split.split.i ] ; 2 uses
  %i.ak = add nuw nsw i64 %.sroa.6.030.i24, 1     ; 2 uses
  %i.al = shl nuw nsw i64 %.sroa.6.030.i24, 7
  %i.am = getelementptr i8, ptr %0, i64 %i.al     ; 3 uses
  %.not.i2 = icmp eq ptr %i.am, null
  br i1 %.not.i2, label %.loopexit82.i, label %bb.h

bb.h:                                             ; preds = %__drm_edid_iter_next.exit.i
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 2
  br i1 %i.ao, label %bb.i, label %.lr.ph.split.split.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %i.am, i64 3
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = and i8 %i.aq, 64
  %.not16.i = icmp eq i8 %i.ar, 0
  br i1 %.not16.i, label %.lr.ph.split.split.i, label %__drm_edid_iter_next.exit.thread.i

.lr.ph.split.split.i:                             ; preds = %bb.i, %bb.h
  %exitcond.not = icmp eq i64 %i.ak, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit82.i, label %__drm_edid_iter_next.exit.i

__drm_edid_iter_next.exit.thread.i:               ; preds = %bb.i, %bb.f, %bb.g
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef @.str.34) #22
  br label %_drm_detect_monitor_audio.exit

.loopexit82.i:                                    ; preds = %__drm_edid_iter_next.exit.i, %.lr.ph.split.split.i, %drm_edid_block_count.exit.i.i.us16, %__drm_edid_iter_next.exit.i.us20, %bb.g, %__drm_edid_iter_next.exit.us.i, %drm_edid_legacy_init.exit.thread
  %.0.i6 = phi ptr [ null, %drm_edid_legacy_init.exit.thread ], [ %2, %drm_edid_block_count.exit.i.i.us16 ], [ %2, %bb.g ], [ %2, %__drm_edid_iter_next.exit.us.i ], [ %2, %__drm_edid_iter_next.exit.i.us20 ], [ %2, %.lr.ph.split.split.i ], [ %2, %__drm_edid_iter_next.exit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, i8 0, i64 56, i1 false)
  store ptr %.0.i6, ptr %1, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @displayid_iter_edid_begin(ptr noundef %.0.i6, ptr noundef nonnull %i.at) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.loopexit82.i
  %i.au = call fastcc ptr @__cea_db_iter_next(ptr noundef nonnull %1) #21, !srcloc !87 ; 4 uses
  %.not17.not.i.not.not.not.not.not = icmp ne ptr %i.au, null ; 2 uses
  br i1 %.not17.not.i.not.not.not.not.not, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  %.val.i1 = load i8, ptr %i.au, align 1          ; 2 uses
  %.mask.i = and i8 %.val.i1, -32
  %i.av = icmp eq i8 %.mask.i, 32
  br i1 %i.av, label %bb.l, label %bb.j, !llvm.loop !85

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.au, i64 1
  %i.ax = and i8 %.val.i1, 31
  %.not63.i = icmp eq i8 %i.ax, 0
  br i1 %.not63.i, label %.loopexit.i, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.l, %.lr.ph62.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph62.i ], [ 0, %bb.l ] ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 %indvars.iv.i
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = lshr i8 %i.az, 3
  %i.bb = and i8 %i.ba, 15
  %i.bc = zext nneg i8 %i.bb to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef @.str.35, i32 noundef %i.bc) #22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %.val18.i = load i8, ptr %i.au, align 1
  %i.bd = and i8 %.val18.i, 31
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next.i, %i.be
  br i1 %i.bf, label %.lr.ph62.i, label %.loopexit.i, !llvm.loop !86

.loopexit.i:                                      ; preds = %bb.j, %.lr.ph62.i, %bb.l
  call void @displayid_iter_end(ptr noundef nonnull %i.at) #22
  br label %_drm_detect_monitor_audio.exit

_drm_detect_monitor_audio.exit:                   ; preds = %__drm_edid_iter_next.exit.thread.i, %.loopexit.i
  %.4.i = phi i1 [ true, %__drm_edid_iter_next.exit.thread.i ], [ %.not17.not.i.not.not.not.not.not, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 %.4.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 1, 3) i32 @drm_default_rgb_quant_range(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i8 @drm_match_cea_mode(ptr noundef %0) #21
  %i.b = icmp ugt i8 %i.a, 1
  %i.c = select i1 %i.b, i32 1, i32 2
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @drm_edid_connector_property_show(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 336
  tail call void @mutex_lock(ptr noundef %i.b) #22
  %i.c = getelementptr i8, ptr %0, i64 432
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 72
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %.not23 = icmp ne ptr %i.f, null
  %.not24 = icmp ult i64 %2, %i.h
  %or.cond = select i1 %.not23, i1 %.not24, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %3, %2
  %i.j = icmp ugt i64 %i.i, %i.h
  %i.k = sub nuw i64 %i.h, %2
  %spec.select = select i1 %i.j, i64 %i.k, i64 %3 ; 2 uses
  %i.l = getelementptr i8, ptr %i.f, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.l, i64 %spec.select, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 0, %bb.b ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 336
  tail call void @mutex_unlock(ptr noundef %i.n) #22
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @update_display_info(ptr noundef initializes((192, 204), (212, 216), (232, 244), (248, 357), (358, 362), (364, 374), (376, 380), (392, 402), (404, 424)) %0, ptr noundef %1) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.cea_db_iter, align 8        ; 8 uses
  %3 = alloca %struct.displayid_iter, align 8     ; 7 uses
  %4 = alloca %struct.displayid_iter, align 8     ; 11 uses
  %5 = alloca %struct.cea_db_iter, align 8        ; 8 uses
  %6 = alloca %struct.detailed_mode_closure, align 8 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 192        ; 2 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 196        ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %0, i64 200        ; 7 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 212        ; 14 uses
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %0, i64 232        ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 248        ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 358        ; 2 uses
  store i32 0, ptr %i.g, align 2
  %i.h = getelementptr i8, ptr %0, i64 364        ; 2 uses
  store i64 0, ptr %i.h, align 4
  %i.i = getelementptr i8, ptr %0, i64 372        ; 4 uses
  store i8 0, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %0, i64 373        ; 4 uses
  store i8 0, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %0, i64 376        ; 2 uses
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 384        ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(109) %i.f, i8 0, i64 109, i1 false)
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @kfree(ptr noundef %i.m) #22
  %i.n = getelementptr i8, ptr %0, i64 400        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i16 -1, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %0, i64 404        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %i.o, i8 0, i64 20, i1 false)
  %i.p = getelementptr i8, ptr %0, i64 1880       ; 4 uses
  tail call void @mutex_lock(ptr noundef %i.p) #22
  %i.q = getelementptr i8, ptr %0, i64 1752       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(128) %i.q, i8 0, i64 128, i1 false)
  tail call void @mutex_unlock(ptr noundef %i.p) #22
  %i.r = getelementptr i8, ptr %0, i64 1904       ; 3 uses
  store i8 0, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %0, i64 1905       ; 3 uses
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr i8, ptr %0, i64 1908       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.fw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %7 = getelementptr i8, ptr %1, i64 8            ; 8 uses
  %8 = load ptr, ptr %7, align 8                  ; 9 uses
  %i.u = load i64, ptr %1, align 8
  %i.v = icmp ult i64 %i.u, 128
  br i1 %i.v, label %edid_get_quirks.exit, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.w = getelementptr i8, ptr %8, i64 8
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw i32 %i.y, 24
  %i.aa = getelementptr i8, ptr %8, i64 9
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = or disjoint i32 %i.ad, %i.z
  %i.af = getelementptr i8, ptr %8, i64 10
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 2 uses
  br label %drm_edid_get_panel_id.exit.i.i

drm_edid_get_panel_id.exit.i.i.1:                 ; preds = %drm_edid_get_panel_id.exit.i.i
  %9 = getelementptr [24 x i8], ptr @edid_quirk_list, i64 %indvars.iv.i ; 2 uses
  %10 = getelementptr i8, ptr %9, i64 24
  %i.aj = load i32, ptr %10, align 8
  %.not8.i.i.1 = icmp eq i32 %i.ai, %i.aj
  br i1 %.not8.i.i.1, label %drm_edid_match.exit.thread.i.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %drm_edid_get_panel_id.exit.i.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 62
  br i1 %exitcond.not.i.1, label %edid_get_quirks.exit, label %drm_edid_get_panel_id.exit.i.i, !llvm.loop !88

drm_edid_get_panel_id.exit.i.i:                   ; preds = %bb.c, %.split.i
  %indvars.iv.i = phi i64 [ 0, %.split.i ], [ %indvars.iv.next.i.1, %bb.c ] ; 3 uses
  %11 = getelementptr [24 x i8], ptr @edid_quirk_list, i64 %indvars.iv.i ; 2 uses
  %12 = load i32, ptr %11, align 16
  %.not8.i.i = icmp eq i32 %i.ai, %12
  br i1 %.not8.i.i, label %drm_edid_match.exit.thread.i, label %drm_edid_get_panel_id.exit.i.i.1

drm_edid_match.exit.thread.i.split.loop.exit:     ; preds = %drm_edid_get_panel_id.exit.i.i.1
  %i.ak = getelementptr i8, ptr %9, i64 24
  br label %drm_edid_match.exit.thread.i

drm_edid_match.exit.thread.i:                     ; preds = %drm_edid_get_panel_id.exit.i.i, %drm_edid_match.exit.thread.i.split.loop.exit
  %.lcssa197 = phi ptr [ %i.ak, %drm_edid_match.exit.thread.i.split.loop.exit ], [ %11, %drm_edid_get_panel_id.exit.i.i ]
  %13 = getelementptr i8, ptr %.lcssa197, i64 16
  %14 = load i32, ptr %13, align 8
  br label %edid_get_quirks.exit

edid_get_quirks.exit:                             ; preds = %bb.c, %bb.b, %drm_edid_match.exit.thread.i
  %.06.i = phi i32 [ %14, %drm_edid_match.exit.thread.i ], [ 0, %bb.b ], [ 0, %bb.c ]
  %i.al = getelementptr i8, ptr %0, i64 396       ; 3 uses
  store i32 %.06.i, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %8, i64 21
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.ao, 10
  store i32 %i.ap, ptr %i.a, align 8
  %i.aq = getelementptr i8, ptr %8, i64 22
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = mul nuw nsw i32 %i.as, 10
  store i32 %i.at, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %0, ptr %6, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.av, align 8
  %i.aw = load ptr, ptr %7, align 8               ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 19
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp ult i8 %i.ay, 4
  br i1 %i.az, label %drm_get_monitor_range.exit, label %bb.d

bb.d:                                             ; preds = %edid_get_quirks.exit
  %i.ba = getelementptr i8, ptr %i.aw, i64 24
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, 1
  %.not.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i, label %drm_get_monitor_range.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @drm_for_each_detailed_block(ptr noundef nonnull %1, ptr noundef @get_monitor_range, ptr noundef nonnull %6) #21, !srcloc !98
  %i.bd = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.f, %bb.e
  %i.bg = phi ptr [ %i.bf, %bb.f ], [ null, %bb.e ]
  %i.bh = getelementptr i8, ptr %0, i64 64
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %0, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i16, ptr %i.g, align 2
  %i.bm = zext i16 %i.bl to i32
  %i.bn = getelementptr i8, ptr %0, i64 360
  %i.bo = load i16, ptr %i.bn, align 8
  %i.bp = zext i16 %i.bo to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bg, i32 noundef 2, ptr noundef @.str.41, i32 noundef %i.bi, ptr noundef %i.bk, i32 noundef %i.bm, i32 noundef %i.bp) #22
  br label %drm_get_monitor_range.exit

drm_get_monitor_range.exit:                       ; preds = %edid_get_quirks.exit, %bb.d, %__drm_to_dev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.bq = getelementptr i8, ptr %8, i64 19        ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = icmp ult i8 %i.br, 3
  br i1 %i.bs, label %drm_edid_is_digital.exit.thread, label %bb.g

bb.g:                                             ; preds = %drm_get_monitor_range.exit
  %i.bt = load ptr, ptr %7, align 8               ; 2 uses
  %.not4.i = icmp eq ptr %i.bt, null
  br i1 %.not4.i, label %drm_edid_is_digital.exit.thread, label %drm_edid_is_digital.exit

drm_edid_is_digital.exit:                         ; preds = %bb.g
  %i.bu = getelementptr i8, ptr %i.bt, i64 20
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = icmp slt i8 %i.bv, 0
  br i1 %i.bw, label %bb.h, label %drm_edid_is_digital.exit.thread

bb.h:                                             ; preds = %drm_edid_is_digital.exit
  %i.bx = load i32, ptr %i.d, align 4
  %i.by = or i32 %i.bx, 1
  store i32 %i.by, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bz = getelementptr i8, ptr %0, i64 243       ; 2 uses
  %i.ca = getelementptr i8, ptr %0, i64 64        ; 21 uses
  %i.cb = getelementptr i8, ptr %0, i64 96        ; 21 uses
  %i.cc = getelementptr i8, ptr %0, i64 238       ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.h
  %.sroa.6.0.i = phi i64 [ 0, %bb.h ], [ %i.cw, %.backedge.i.backedge ] ; 3 uses
  %.sroa.6.8.extract.trunc.i = trunc i64 %.sroa.6.0.i to i32
  %.val.i.i = load i64, ptr %1, align 8           ; 2 uses
  %.val9.i.i = load ptr, ptr %7, align 8          ; 8 uses
  %i.cd = getelementptr i8, ptr %.val9.i.i, i64 126
  %.val.i.i.i.i = load i8, ptr %i.cd, align 1     ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %.val.i.i, 256
  br i1 %.not.i.i.i.i, label %drm_edid_block_count.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.backedge.i
  %.not.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr i8, ptr %.val9.i.i, i64 128
  %.val8.i.i.i.i.i.i = load i8, ptr %i.ce, align 1
  %.not7.i.i.i.i.i.i = icmp eq i8 %.val8.i.i.i.i.i.i, 2
  br i1 %.not7.i.i.i.i.i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr i8, ptr %.val9.i.i, i64 129
  %.val9.i.i.i.i.i.i = load i8, ptr %i.cf, align 1
  %i.cg = icmp ult i8 %.val9.i.i.i.i.i.i, 3
  br i1 %i.cg, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr i8, ptr %.val9.i.i, i64 130
  %.val10.i.i.i.i.i.i = load i8, ptr %i.ch, align 1
  %i.ci = icmp slt i8 %.val10.i.i.i.i.i.i, 7
  br i1 %i.ci, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr i8, ptr %.val9.i.i, i64 132
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.cj, align 1 ; 2 uses
  %i.ck = icmp ult i8 %.val.i.i.i.i.i.i.i.i, -32
  %i.cl = and i8 %.val.i.i.i.i.i.i.i.i, 31        ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cl, 0
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.ck, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.n, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.i

cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.i:      ; preds = %bb.m
  %i.cm = getelementptr i8, ptr %.val9.i.i, i64 133
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = icmp eq i8 %i.cn, 120
  %i.cp = icmp samesign ugt i8 %i.cl, 1
  %spec.select.i.i.i.i.i.i.i = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i, label %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i, label %bb.n

edid_hfeeodb_extension_block_count.exit.i.i.i.i.i: ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.i
  %i.cq = getelementptr i8, ptr %.val9.i.i, i64 134
  %i.cr = load i8, ptr %i.cq, align 1
  %.fr.i.i.i.i.i = freeze i8 %i.cr                ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %.fr.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %drm_edid_block_count.exit.i.i

bb.n:                                             ; preds = %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  br label %drm_edid_block_count.exit.i.i

drm_edid_block_count.exit.i.i:                    ; preds = %bb.n, %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i, %.backedge.i
  %.1.in.in.i.i.i.i = phi i8 [ %.val.i.i.i.i, %.backedge.i ], [ %.val.i.i.i.i, %bb.n ], [ %.fr.i.i.i.i.i, %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i ]
  %.1.in.i.i.i.i = zext i8 %.1.in.in.i.i.i.i to i32
  %.1.i.i.i.i = add nuw nsw i32 %.1.in.i.i.i.i, 1
  %i.cs = trunc i64 %.val.i.i to i32
  %i.ct = sdiv i32 %i.cs, 128
  %i.cu = call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i.i, i32 %i.ct)
  %i.cv = icmp sgt i32 %i.cu, %.sroa.6.8.extract.trunc.i
  br i1 %i.cv, label %__drm_edid_iter_next.exit.i, label %__drm_edid_iter_next.exit.thread.i

__drm_edid_iter_next.exit.i:                      ; preds = %drm_edid_block_count.exit.i.i
  %i.cw = add i64 %.sroa.6.0.i, 1
  %sext.i = shl i64 %.sroa.6.0.i, 32
  %i.cx = ashr exact i64 %sext.i, 25
  %i.cy = getelementptr i8, ptr %.val9.i.i, i64 %i.cx ; 4 uses
  %.not.i74 = icmp eq ptr %i.cy, null
  br i1 %.not.i74, label %__drm_edid_iter_next.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %__drm_edid_iter_next.exit.i
  %i.cz = load i8, ptr %i.cy, align 1
  %.not57.i = icmp eq i8 %i.cz, 2
  br i1 %.not57.i, label %bb.p, label %.backedge.i.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load i8, ptr %i.bz, align 1             ; 3 uses
  %.not58.i = icmp eq i8 %i.da, 0
  %i.db = getelementptr i8, ptr %i.cy, i64 1
  %i.dc = load i8, ptr %i.db, align 1             ; 3 uses
  br i1 %.not58.i, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %bb.p
  store i8 %i.dc, ptr %i.bz, align 1
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not59.i = icmp eq i8 %i.da, %i.dc
  br i1 %.not59.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i64.i = icmp eq ptr %i.dd, null
  br i1 %.not.i64.i, label %__drm_to_dev.exit.i75, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  br label %__drm_to_dev.exit.i75

__drm_to_dev.exit.i75:                            ; preds = %bb.s, %bb.r
  %i.dg = phi ptr [ %i.df, %bb.s ], [ null, %bb.r ]
  %i.dh = load i32, ptr %i.ca, align 8
  %i.di = load ptr, ptr %i.cb, align 8
  %i.dj = zext i8 %i.da to i32
  %i.dk = zext i8 %i.dc to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dg, i32 noundef 2, ptr noundef @.str.42, i32 noundef %i.dh, ptr noundef %i.di, i32 noundef %i.dj, i32 noundef %i.dk) #22
  br label %bb.t

bb.t:                                             ; preds = %__drm_to_dev.exit.i75, %bb.q, %.thread.i
  store i32 1, ptr %i.d, align 4
  %i.dl = getelementptr i8, ptr %i.cy, i64 3      ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = and i8 %i.dm, 32
  %.not60.i = icmp eq i8 %i.dn, 0
  %spec.store.select.i = select i1 %.not60.i, i32 1, i32 3 ; 2 uses
  store i32 %spec.store.select.i, ptr %i.d, align 4
  %i.do = load i8, ptr %i.dl, align 1             ; 2 uses
  %i.dp = and i8 %i.do, 16
  %.not61.i = icmp eq i8 %i.dp, 0
  br i1 %.not61.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = or disjoint i32 %spec.store.select.i, 4
  store i32 %i.dq, ptr %i.d, align 4
  %.pre232.i = load i8, ptr %i.dl, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dr = phi i8 [ %.pre232.i, %bb.u ], [ %i.do, %bb.t ]
  %i.ds = and i8 %i.dr, 64
  %.not62.i = icmp eq i8 %i.ds, 0
  br i1 %.not62.i, label %.backedge.i.backedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.cc, align 2
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.w, %bb.v, %bb.o
  br label %.backedge.i, !llvm.loop !89

__drm_edid_iter_next.exit.thread.i:               ; preds = %__drm_edid_iter_next.exit.i, %drm_edid_block_count.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dt, i8 0, i64 56, i1 false)
  store ptr %1, ptr %5, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @displayid_iter_edid_begin(ptr noundef nonnull %1, ptr noundef nonnull %i.du) #22
  %i.dv = call fastcc ptr @__cea_db_iter_next(ptr noundef nonnull %5) #21, !srcloc !99 ; 2 uses
  %.not55228.i = icmp eq ptr %i.dv, null
  br i1 %.not55228.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %__drm_edid_iter_next.exit.thread.i
  %i.dw = getelementptr i8, ptr %0, i64 348
  %i.dx = getelementptr i8, ptr %0, i64 349
  %i.dy = getelementptr i8, ptr %0, i64 350
  %i.dz = getelementptr i8, ptr %0, i64 352
  %i.ea = getelementptr i8, ptr %0, i64 354
  %i.eb = getelementptr i8, ptr %0, i64 368
  %i.ec = getelementptr i8, ptr %0, i64 240
  %i.ed = getelementptr i8, ptr %0, i64 256
  %i.ee = getelementptr i8, ptr %0, i64 392       ; 3 uses
  %i.ef = getelementptr i8, ptr %0, i64 405
  %i.eg = getelementptr i8, ptr %0, i64 406
  %i.eh = getelementptr i8, ptr %0, i64 408
  %i.ei = getelementptr i8, ptr %0, i64 412
  %i.ej = getelementptr i8, ptr %0, i64 416
  %i.ek = getelementptr i8, ptr %0, i64 420
  %i.el = getelementptr i8, ptr %0, i64 356
  %i.em = getelementptr i8, ptr %0, i64 324
  %i.en = getelementptr i8, ptr %0, i64 239       ; 2 uses
  %i.eo = getelementptr i8, ptr %0, i64 249
  %i.ep = getelementptr i8, ptr %0, i64 250
  %i.eq = getelementptr i8, ptr %0, i64 251
  %i.er = getelementptr i8, ptr %0, i64 322
  %i.es = getelementptr i8, ptr %0, i64 321
  %i.et = getelementptr i8, ptr %0, i64 320
  %i.eu = getelementptr i8, ptr %0, i64 325
  %i.ev = getelementptr i8, ptr %0, i64 326
  %i.ew = getelementptr i8, ptr %0, i64 327
  %i.ex = getelementptr i8, ptr %0, i64 336
  %i.ey = getelementptr i8, ptr %0, i64 337
  %i.ez = getelementptr i8, ptr %0, i64 328
  %i.fa = getelementptr i8, ptr %0, i64 332
  %i.fb = getelementptr i8, ptr %0, i64 338
  %i.fc = getelementptr i8, ptr %0, i64 237
  %i.fd = getelementptr i8, ptr %0, i64 236       ; 2 uses
  %i.fe = getelementptr i8, ptr %0, i64 241       ; 7 uses
  %i.ff = getelementptr i8, ptr %0, i64 242
  br label %bb.x

bb.x:                                             ; preds = %drm_parse_hdmi_vsdb_video.exit.i, %.lr.ph.i
  %i.fg = phi ptr [ %i.dv, %.lr.ph.i ], [ %i.sa, %drm_parse_hdmi_vsdb_video.exit.i ] ; 39 uses
  %.0229.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %drm_parse_hdmi_vsdb_video.exit.i ] ; 22 uses
  %.val.i.i.i = load i8, ptr %i.fg, align 1       ; 6 uses
  %.mask.i.i.i = and i8 %.val.i.i.i, -32
  %i.fh = icmp eq i8 %.mask.i.i.i, 96
  %i.fi = and i8 %.val.i.i.i, 31                  ; 18 uses
  %i.fj = icmp samesign ugt i8 %i.fi, 2           ; 2 uses
end_hunk_1
begin_hunk_2_@update_display_info:bb.a
  store i16 %i.qs, ptr %i.ea, align 2
  %.not.i.i131.i = icmp eq i8 %i.qh, 0
  br i1 %.not.i.i131.i, label %drm_parse_hdmi_vsdb_video.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qt = zext i8 %i.qn to i32                    ; 2 uses
  %i.qu = lshr i32 %i.qt, 5
  %i.qv = and i32 %i.qt, 31
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = getelementptr i8, ptr @drm_calculate_luminance_range.pre_computed_values, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1
  %i.qz = zext i8 %i.qy to i32
  %i.ra = shl nuw nsw i32 %i.qz, %i.qu
  store i32 0, ptr %i.h, align 4
  store i32 %i.ra, ptr %i.eb, align 8
  br label %drm_parse_hdmi_vsdb_video.exit.i

cea_db_is_hdmi_hdr_metadata_block.exit.thread.i:  ; preds = %cea_db_is_hdmi_hdr_metadata_block.exit.i, %cea_db_is_vendor.exit.i93.i, %bb.aw
  %.not.i.i75159164168178182189191197201206210215219221.i = phi i1 [ false, %cea_db_is_hdmi_hdr_metadata_block.exit.i ], [ %.not.i.i75.i, %bb.aw ], [ false, %cea_db_is_vendor.exit.i93.i ]
  %i.rb = lshr i8 %.val.i.i.i, 5
  switch i8 %i.rb, label %drm_parse_hdmi_vsdb_video.exit.i [
    i8 2, label %bb.cw
    i8 1, label %bb.dd
  ]

bb.cw:                                            ; preds = %cea_db_is_hdmi_hdr_metadata_block.exit.thread.i
  %i.rc = zext nneg i8 %i.fi to i32               ; 2 uses
  %i.rd = getelementptr i8, ptr %i.fg, i64 1
  br i1 %.not.i.i75159164168178182189191197201206210215219221.i, label %drm_parse_hdmi_vsdb_video.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.re = load ptr, ptr %i.l, align 8
  %i.rf = load i32, ptr %i.ee, align 8
  %i.rg = add i32 %i.rf, %i.rc
  %i.rh = sext i32 %i.rg to i64
  %i.ri = call ptr @krealloc_node_align_noprof(ptr noundef %i.re, i64 noundef %i.rh, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #24 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.ri, null
  br i1 %.not31.i.i, label %drm_parse_hdmi_vsdb_video.exit.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rj = load i32, ptr %i.ee, align 8            ; 2 uses
  %i.rk = add i32 %i.rj, %i.rc
  store i32 %i.rk, ptr %i.ee, align 8
  store ptr %i.ri, ptr %i.l, align 8
  %wide.trip.count.i134.i = zext nneg i8 %i.fi to i64
  br label %bb.cz

bb.cz:                                            ; preds = %drm_valid_cea_vic.exit.i140.i, %bb.cy
  %indvars.iv.i135.i = phi i64 [ 0, %bb.cy ], [ %indvars.iv.next.i142.i, %drm_valid_cea_vic.exit.i140.i ] ; 2 uses
  %.02933.i.i = phi i32 [ %i.rj, %bb.cy ], [ %i.rx, %drm_valid_cea_vic.exit.i140.i ] ; 2 uses
  %i.rl = getelementptr i8, ptr %i.rd, i64 %indvars.iv.i135.i
  %i.rm = load i8, ptr %i.rl, align 1             ; 2 uses
  %i.rn = and i8 %i.rm, 127                       ; 2 uses
  %i.ro = add nsw i8 %i.rn, -1
  %or.cond12.i.i136.i = icmp ult i8 %i.ro, 64
  %.0.i.i137.i = select i1 %or.cond12.i.i136.i, i8 %i.rn, i8 %i.rm ; 5 uses
  %or.cond.i.i.i138.i = icmp sgt i8 %.0.i.i137.i, 0
  br i1 %or.cond.i.i.i138.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.rp = zext nneg i8 %.0.i.i137.i to i64
  %i.rq = getelementptr [120 x i8], ptr @edid_cea_modes_1, i64 %i.rp
  %i.rr = getelementptr i8, ptr %i.rq, i64 -120
  br label %drm_valid_cea_vic.exit.i140.i

bb.db:                                            ; preds = %bb.cz
  %i.rs = add nsw i8 %.0.i.i137.i, 63
  %or.cond5.i.i.i139.i = icmp ult i8 %i.rs, 27
  br i1 %or.cond5.i.i.i139.i, label %bb.dc, label %drm_valid_cea_vic.exit.i140.i

bb.dc:                                            ; preds = %bb.db
  %i.rt = zext i8 %.0.i.i137.i to i64
  %i.ru = getelementptr [120 x i8], ptr @edid_cea_modes_193, i64 %i.rt
  %i.rv = getelementptr i8, ptr %i.ru, i64 -23160
  br label %drm_valid_cea_vic.exit.i140.i

drm_valid_cea_vic.exit.i140.i:                    ; preds = %bb.dc, %bb.db, %bb.da
  %.0.i.i.i.i = phi ptr [ %i.rr, %bb.da ], [ %i.rv, %bb.dc ], [ null, %bb.db ]
  %.not32.i.i = icmp eq ptr %.0.i.i.i.i, null
  %spec.select.i141.i = select i1 %.not32.i.i, i8 0, i8 %.0.i.i137.i
  %i.rw = load ptr, ptr %i.l, align 8
  %i.rx = add i32 %.02933.i.i, 1
  %i.ry = sext i32 %.02933.i.i to i64
  %i.rz = getelementptr i8, ptr %i.rw, i64 %i.ry
  store i8 %spec.select.i141.i, ptr %i.rz, align 1
  %indvars.iv.next.i142.i = add nuw nsw i64 %indvars.iv.i135.i, 1 ; 2 uses
  %exitcond.not.i143.i = icmp eq i64 %indvars.iv.next.i142.i, %wide.trip.count.i134.i
  br i1 %exitcond.not.i143.i, label %drm_parse_hdmi_vsdb_video.exit.i, label %bb.cz, !llvm.loop !93

bb.dd:                                            ; preds = %cea_db_is_hdmi_hdr_metadata_block.exit.thread.i
  store i8 1, ptr %i.cc, align 2
  br label %drm_parse_hdmi_vsdb_video.exit.i

drm_parse_hdmi_vsdb_video.exit.i:                 ; preds = %drm_valid_cea_vic.exit.thread.i.i, %drm_valid_cea_vic.exit.i140.i, %bb.dd, %bb.cx, %bb.cw, %cea_db_is_hdmi_hdr_metadata_block.exit.thread.i, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %__drm_to_dev.exit.i121.i, %bb.cm, %.thread.i.i, %._crit_edge.i.i, %bb.cj, %__drm_to_dev.exit.i97.i, %drm_parse_microsoft_vsdb.exit.i, %drm_parse_hdmi_forum_scds.exit.i, %__drm_to_dev.exit52.i.i.i, %bb.at, %__drm_to_dev.exit46.i.i.i, %__drm_to_dev.exit.i.i
  %.1.i = phi i64 [ %.0229.i, %cea_db_is_hdmi_hdr_metadata_block.exit.thread.i ], [ %.0229.i, %drm_parse_hdmi_forum_scds.exit.i ], [ %.0229.i, %drm_parse_microsoft_vsdb.exit.i ], [ %.0229.i, %__drm_to_dev.exit52.i.i.i ], [ %.0229.i, %bb.cj ], [ %.0229.i, %drm_valid_cea_vic.exit.i140.i ], [ %.0229.i, %bb.cx ], [ %.0229.i, %bb.cq ], [ %.0229.i, %bb.cv ], [ %.0229.i, %bb.dd ], [ %.0229.i, %__drm_to_dev.exit.i.i ], [ %.0229.i, %__drm_to_dev.exit46.i.i.i ], [ %.0229.i, %bb.at ], [ %.0229.i, %__drm_to_dev.exit.i97.i ], [ %.124.i.i, %.thread.i.i ], [ 0, %._crit_edge.i.i ], [ %.0229.i, %bb.cm ], [ %.0229.i, %__drm_to_dev.exit.i121.i ], [ %.0229.i, %bb.cr ], [ %.0229.i, %bb.cs ], [ %.0229.i, %bb.ct ], [ %.0229.i, %bb.cu ], [ %.0229.i, %bb.cw ], [ %.0229.i, %drm_valid_cea_vic.exit.thread.i.i ] ; 2 uses
  %i.sa = call fastcc ptr @__cea_db_iter_next(ptr noundef nonnull %5) #21, !srcloc !99 ; 2 uses
  %.not55.i = icmp eq ptr %i.sa, null
  br i1 %.not55.i, label %._crit_edge.i, label %bb.x, !llvm.loop !94

._crit_edge.i:                                    ; preds = %drm_parse_hdmi_vsdb_video.exit.i, %__drm_edid_iter_next.exit.thread.i
  %.0.lcssa.i = phi i64 [ 0, %__drm_edid_iter_next.exit.thread.i ], [ %.1.i, %drm_parse_hdmi_vsdb_video.exit.i ] ; 2 uses
  call void @displayid_iter_end(ptr noundef nonnull %i.du) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %.not56.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not56.i, label %drm_parse_cea_ext.exit, label %bb.de

bb.de:                                            ; preds = %._crit_edge.i
  %i.sb = getelementptr i8, ptr %0, i64 392
  %i.sc = load i32, ptr %i.sb, align 8            ; 2 uses
  %i.sd = icmp sgt i32 %i.sc, 0
  br i1 %i.sd, label %.lr.ph.i145.i, label %drm_parse_cea_ext.exit

.lr.ph.i145.i:                                    ; preds = %bb.de
  %i.se = call i32 @llvm.umin.i32(i32 %i.sc, i32 64)
  %i.sf = getelementptr i8, ptr %0, i64 288
  %wide.trip.count.i146.i = zext nneg i32 %i.se to i64
  br label %bb.df

bb.df:                                            ; preds = %bitmap_set.exit.i149.i, %.lr.ph.i145.i
  %indvars.iv.i147.i = phi i64 [ 0, %.lr.ph.i145.i ], [ %indvars.iv.next.i150.i, %bitmap_set.exit.i149.i ] ; 3 uses
  %i.sg = load ptr, ptr %i.l, align 8
  %i.sh = getelementptr i8, ptr %i.sg, i64 %indvars.iv.i147.i
  %i.si = load i8, ptr %i.sh, align 1             ; 2 uses
  %.not.i148.i = icmp eq i8 %i.si, 0
  br i1 %.not.i148.i, label %bitmap_set.exit.i149.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sj = shl nuw i64 1, %indvars.iv.i147.i
  %i.sk = and i64 %i.sj, %.0.lcssa.i
  %.not18.i.i = icmp eq i64 %i.sk, 0
  br i1 %.not18.i.i, label %bitmap_set.exit.i149.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sl = zext i8 %i.si to i64
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.sf, i64 range(i64 0, 256) %i.sl) #20, !srcloc !104
  br label %bitmap_set.exit.i149.i

bitmap_set.exit.i149.i:                           ; preds = %bb.dh, %bb.dg, %bb.df
  %indvars.iv.next.i150.i = add nuw nsw i64 %indvars.iv.i147.i, 1 ; 2 uses
  %exitcond.not.i151.i = icmp eq i64 %indvars.iv.next.i150.i, %wide.trip.count.i146.i
  br i1 %exitcond.not.i151.i, label %drm_parse_cea_ext.exit, label %bb.df, !llvm.loop !95

drm_parse_cea_ext.exit:                           ; preds = %bitmap_set.exit.i149.i, %._crit_edge.i, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !14
  call void @displayid_iter_edid_begin(ptr noundef nonnull %1, ptr noundef nonnull %4) #22
  %i.sm = call ptr @__displayid_iter_next(ptr noundef nonnull %4) #22
  %.not.i76 = icmp eq ptr %i.sm, null
  br i1 %.not.i76, label %update_displayid_info.exit, label %bb.di

bb.di:                                            ; preds = %drm_parse_cea_ext.exit
  %i.sn = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i77, label %__drm_to_dev.exit.i78, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.so = getelementptr i8, ptr %i.sn, i64 8
  %i.sp = load ptr, ptr %i.so, align 8
  br label %__drm_to_dev.exit.i78

__drm_to_dev.exit.i78:                            ; preds = %bb.dj, %bb.di
  %i.sq = phi ptr [ %i.sp, %bb.dj ], [ null, %bb.di ]
  %i.sr = load i32, ptr %i.ca, align 8
  %i.ss = load ptr, ptr %i.cb, align 8
  %i.st = call zeroext i8 @displayid_version(ptr noundef nonnull %4) #22
  %i.su = zext i8 %i.st to i32
  %i.sv = call zeroext i8 @displayid_primary_use(ptr noundef nonnull %4) #22
  %i.sw = zext i8 %i.sv to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.sq, i32 noundef 2, ptr noundef @.str.57, i32 noundef %i.sr, ptr noundef %i.ss, i32 noundef %i.su, i32 noundef %i.sw) #22
  %i.sx = call zeroext i8 @displayid_version(ptr noundef nonnull %4) #22
  %i.sy = icmp eq i8 %i.sx, 32
  br i1 %i.sy, label %bb.dk, label %update_displayid_info.exit

bb.dk:                                            ; preds = %__drm_to_dev.exit.i78
  %i.sz = call zeroext i8 @displayid_primary_use(ptr noundef nonnull %4) #22
  %i.ta = icmp eq i8 %i.sz, 7
  br i1 %i.ta, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tb = call zeroext i8 @displayid_primary_use(ptr noundef nonnull %4) #22
  %i.tc = icmp eq i8 %i.tb, 8
  br i1 %i.tc, label %bb.dm, label %update_displayid_info.exit

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.td = getelementptr i8, ptr %0, i64 356
  store i8 1, ptr %i.td, align 4
  br label %update_displayid_info.exit

update_displayid_info.exit:                       ; preds = %drm_parse_cea_ext.exit, %__drm_to_dev.exit.i78, %bb.dl, %bb.dm
  call void @displayid_iter_end(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.te = load i32, ptr %i.c, align 8
  %i.tf = icmp eq i32 %i.te, 0
  %.pr.pre118 = load i8, ptr %i.bq, align 1       ; 2 uses
  %i.tg = icmp eq i8 %.pr.pre118, 3
  %or.cond = select i1 %i.tf, i1 %i.tg, i1 false
  br i1 %or.cond, label %bb.dn, label %thread-pre-split

bb.dn:                                            ; preds = %update_displayid_info.exit
  %i.th = getelementptr i8, ptr %8, i64 20
  %i.ti = load i8, ptr %i.th, align 1
  %i.tj = and i8 %i.ti, 1
  %.not65 = icmp eq i8 %i.tj, 0
  br i1 %.not65, label %drm_edid_is_digital.exit.thread, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 8, ptr %i.c, align 8
  %i.tk = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i79 = icmp eq ptr %i.tk, null
  br i1 %.not.i79, label %__drm_to_dev.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.tl = getelementptr i8, ptr %i.tk, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.do, %bb.dp
  %i.tn = phi ptr [ %i.tm, %bb.dp ], [ null, %bb.do ]
  %i.to = load i32, ptr %i.ca, align 8
  %i.tp = load ptr, ptr %i.cb, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.tn, i32 noundef 2, ptr noundef @.str.36, i32 noundef %i.to, ptr noundef %i.tp, i32 noundef 8) #22
  %.pr.pre = load i8, ptr %i.bq, align 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %__drm_to_dev.exit, %update_displayid_info.exit
  %i.tq = phi i8 [ %.pr.pre, %__drm_to_dev.exit ], [ %.pr.pre118, %update_displayid_info.exit ]
  %i.tr = icmp ult i8 %i.tq, 4
  br i1 %i.tr, label %drm_edid_is_digital.exit.thread, label %bb.dq

bb.dq:                                            ; preds = %thread-pre-split
  %i.ts = getelementptr i8, ptr %8, i64 20
  %i.tt = load i8, ptr %i.ts, align 1
  %i.tu = lshr i8 %i.tt, 4
  %i.tv = and i8 %i.tu, 7
  switch i8 %i.tv, label %default.unreachable [
    i8 1, label %bb.dx
    i8 2, label %bb.dr
    i8 3, label %bb.ds
    i8 4, label %bb.dt
    i8 5, label %bb.du
    i8 6, label %bb.dv
    i8 0, label %bb.dw
    i8 7, label %bb.dw
  ]

bb.dr:                                            ; preds = %bb.dq
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dq
  br label %bb.dx

bb.dt:                                            ; preds = %bb.dq
  br label %bb.dx

bb.du:                                            ; preds = %bb.dq
  br label %bb.dx

bb.dv:                                            ; preds = %bb.dq
  br label %bb.dx

default.unreachable:                              ; preds = %bb.ek, %bb.dq
  unreachable

bb.dw:                                            ; preds = %bb.dq, %bb.dq
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dq, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr
  %.sink = phi i32 [ 0, %bb.dw ], [ 16, %bb.dv ], [ 14, %bb.du ], [ 12, %bb.dt ], [ 10, %bb.ds ], [ 8, %bb.dr ], [ 6, %bb.dq ] ; 2 uses
  store i32 %.sink, ptr %i.c, align 8
  %i.tw = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i80 = icmp eq ptr %i.tw, null
  br i1 %.not.i80, label %__drm_to_dev.exit81, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.tx = getelementptr i8, ptr %i.tw, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8
  br label %__drm_to_dev.exit81

__drm_to_dev.exit81:                              ; preds = %bb.dx, %bb.dy
  %i.tz = phi ptr [ %i.ty, %bb.dy ], [ null, %bb.dx ]
  %i.ua = load i32, ptr %i.ca, align 8
  %i.ub = load ptr, ptr %i.cb, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.tz, i32 noundef 2, ptr noundef @.str.37, i32 noundef %i.ua, ptr noundef %i.ub, i32 noundef %.sink) #22
  %i.uc = getelementptr i8, ptr %8, i64 24        ; 2 uses
  %i.ud = load i8, ptr %i.uc, align 1             ; 2 uses
  %i.ue = and i8 %i.ud, 8
  %.not66 = icmp eq i8 %i.ue, 0
  br i1 %.not66, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %__drm_to_dev.exit81
  %i.uf = load i32, ptr %i.d, align 4
  %i.ug = or i32 %i.uf, 2
  store i32 %i.ug, ptr %i.d, align 4
  %.pre = load i8, ptr %i.uc, align 1
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %__drm_to_dev.exit81
  %i.uh = phi i8 [ %.pre, %bb.dz ], [ %i.ud, %__drm_to_dev.exit81 ]
  %i.ui = and i8 %i.uh, 16
  %.not67 = icmp eq i8 %i.ui, 0
  br i1 %.not67, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.uj = load i32, ptr %i.d, align 4
  %i.uk = or i32 %i.uj, 4
  store i32 %i.uk, ptr %i.d, align 4
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !14
  call void @displayid_iter_edid_begin(ptr noundef nonnull %1, ptr noundef nonnull %3) #22
  %i.ul = call ptr @__displayid_iter_next(ptr noundef nonnull %3) #22 ; 2 uses
  %.not4.i82 = icmp eq ptr %i.ul, null
  br i1 %.not4.i82, label %drm_update_mso.exit, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %bb.ec, %drm_parse_vesa_mso_data.exit.i
  %i.um = phi ptr [ %i.ww, %drm_parse_vesa_mso_data.exit.i ], [ %i.ul, %bb.ec ] ; 6 uses
  %i.un = load i8, ptr %i.um, align 1
  %i.uo = icmp eq i8 %i.un, 126
  br i1 %i.uo, label %bb.ed, label %drm_parse_vesa_mso_data.exit.i

bb.ed:                                            ; preds = %.lr.ph.i83
  %i.up = getelementptr i8, ptr %i.um, i64 2
  %i.uq = load i8, ptr %i.up, align 1             ; 3 uses
  %i.ur = icmp ult i8 %i.uq, 3
  br i1 %i.ur, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.us = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %i.us, null
  br i1 %.not.i.i.i88, label %__drm_to_dev.exit.i.i89, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ut = getelementptr i8, ptr %i.us, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8
  br label %__drm_to_dev.exit.i.i89

__drm_to_dev.exit.i.i89:                          ; preds = %bb.ef, %bb.ee
  %i.uv = phi ptr [ %i.uu, %bb.ef ], [ null, %bb.ee ]
  %i.uw = load i32, ptr %i.ca, align 8
  %i.ux = load ptr, ptr %i.cb, align 8
  %i.uy = zext nneg i8 %i.uq to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.uv, i32 noundef 2, ptr noundef @.str.58, i32 noundef %i.uw, ptr noundef %i.ux, i32 noundef %i.uy) #22
  br label %drm_parse_vesa_mso_data.exit.i

bb.eg:                                            ; preds = %bb.ed
  %i.uz = getelementptr i8, ptr %i.um, i64 3
  %i.va = load i8, ptr %i.uz, align 1
  %i.vb = getelementptr i8, ptr %i.um, i64 4
  %i.vc = load i8, ptr %i.vb, align 1
  %i.vd = getelementptr i8, ptr %i.um, i64 5
  %i.ve = load i8, ptr %i.vd, align 1
  %i.vf = zext i8 %i.va to i32
  %i.vg = shl nuw nsw i32 %i.vf, 16
  %i.vh = zext i8 %i.vc to i32
  %i.vi = shl nuw nsw i32 %i.vh, 8
  %i.vj = or disjoint i32 %i.vi, %i.vg
  %i.vk = zext i8 %i.ve to i32
  %i.vl = or disjoint i32 %i.vj, %i.vk
  %.not.i.i86 = icmp eq i32 %i.vl, 3801746
  br i1 %.not.i.i86, label %bb.eh, label %drm_parse_vesa_mso_data.exit.i

bb.eh:                                            ; preds = %bb.eg
  %.not39.i.i87 = icmp eq i8 %i.uq, 5
  br i1 %.not39.i.i87, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.vm = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i41.i.i = icmp eq ptr %i.vm, null
  br i1 %.not.i41.i.i, label %__drm_to_dev.exit42.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.vn = getelementptr i8, ptr %i.vm, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8
  br label %__drm_to_dev.exit42.i.i

__drm_to_dev.exit42.i.i:                          ; preds = %bb.ej, %bb.ei
  %i.vp = phi ptr [ %i.vo, %bb.ej ], [ null, %bb.ei ]
  %i.vq = load i32, ptr %i.ca, align 8
  %i.vr = load ptr, ptr %i.cb, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.vp, i32 noundef 2, ptr noundef @.str.59, i32 noundef %i.vq, ptr noundef %i.vr) #22
  br label %drm_parse_vesa_mso_data.exit.i

bb.ek:                                            ; preds = %bb.eh
  %i.vs = getelementptr i8, ptr %i.um, i64 7      ; 2 uses
  %i.vt = load i8, ptr %i.vs, align 1
  %i.vu = lshr i8 %i.vt, 5
  %i.vv = and i8 %i.vu, 3
  switch i8 %i.vv, label %default.unreachable [
    i8 0, label %bb.eo
    i8 1, label %bb.ep
    i8 2, label %bb.en
    i8 3, label %bb.el
  ]

bb.el:                                            ; preds = %bb.ek
  %i.vw = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i43.i.i = icmp eq ptr %i.vw, null
  br i1 %.not.i43.i.i, label %__drm_to_dev.exit44.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.vx = getelementptr i8, ptr %i.vw, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8
  br label %__drm_to_dev.exit44.i.i

__drm_to_dev.exit44.i.i:                          ; preds = %bb.em, %bb.el
  %i.vz = phi ptr [ %i.vy, %bb.em ], [ null, %bb.el ]
  %i.wa = load i32, ptr %i.ca, align 8
  %i.wb = load ptr, ptr %i.cb, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.vz, i32 noundef 2, ptr noundef @.str.60, i32 noundef %i.wa, ptr noundef %i.wb) #22
  br label %bb.eo

bb.en:                                            ; preds = %bb.ek
  br label %bb.ep

bb.eo:                                            ; preds = %__drm_to_dev.exit44.i.i, %bb.ek
  store i8 0, ptr %i.i, align 4
  store i8 0, ptr %i.j, align 1
  br label %drm_parse_vesa_mso_data.exit.i

bb.ep:                                            ; preds = %bb.en, %bb.ek
  %.sink.i.i = phi i8 [ 4, %bb.en ], [ 2, %bb.ek ]
  store i8 %.sink.i.i, ptr %i.i, align 4
  %i.wc = load i8, ptr %i.vs, align 1
  %i.wd = and i8 %i.wc, 15                        ; 4 uses
  store i8 %i.wd, ptr %i.j, align 1
  %i.we = icmp samesign ugt i8 %i.wd, 8
  br i1 %i.we, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.wf = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i45.i.i = icmp eq ptr %i.wf, null
  br i1 %.not.i45.i.i, label %__drm_to_dev.exit46.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.wg = getelementptr i8, ptr %i.wf, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8
  br label %__drm_to_dev.exit46.i.i

__drm_to_dev.exit46.i.i:                          ; preds = %bb.er, %bb.eq
  %i.wi = phi ptr [ %i.wh, %bb.er ], [ null, %bb.eq ]
  %i.wj = load i32, ptr %i.ca, align 8
  %i.wk = load ptr, ptr %i.cb, align 8
  %i.wl = zext nneg i8 %i.wd to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.wi, i32 noundef 2, ptr noundef @.str.61, i32 noundef %i.wj, ptr noundef %i.wk, i32 noundef %i.wl) #22
  store i8 8, ptr %i.j, align 1
  br label %bb.es

bb.es:                                            ; preds = %__drm_to_dev.exit46.i.i, %bb.ep
  %i.wm = phi i8 [ 8, %__drm_to_dev.exit46.i.i ], [ %i.wd, %bb.ep ]
  %i.wn = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i47.i.i = icmp eq ptr %i.wn, null
  br i1 %.not.i47.i.i, label %__drm_to_dev.exit48.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.wo = getelementptr i8, ptr %i.wn, i64 8
  %i.wp = load ptr, ptr %i.wo, align 8
  br label %__drm_to_dev.exit48.i.i

__drm_to_dev.exit48.i.i:                          ; preds = %bb.et, %bb.es
  %i.wq = phi ptr [ %i.wp, %bb.et ], [ null, %bb.es ]
  %i.wr = load i32, ptr %i.ca, align 8
  %i.ws = load ptr, ptr %i.cb, align 8
  %i.wt = load i8, ptr %i.i, align 4
  %i.wu = zext i8 %i.wt to i32
  %i.wv = zext nneg i8 %i.wm to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.wq, i32 noundef 2, ptr noundef @.str.62, i32 noundef %i.wr, ptr noundef %i.ws, i32 noundef %i.wu, i32 noundef %i.wv) #22
  br label %drm_parse_vesa_mso_data.exit.i

drm_parse_vesa_mso_data.exit.i:                   ; preds = %__drm_to_dev.exit48.i.i, %bb.eo, %__drm_to_dev.exit42.i.i, %bb.eg, %__drm_to_dev.exit.i.i89, %.lr.ph.i83
  %i.ww = call ptr @__displayid_iter_next(ptr noundef nonnull %3) #22 ; 2 uses
  %.not.i84 = icmp eq ptr %i.ww, null
  br i1 %.not.i84, label %drm_update_mso.exit, label %.lr.ph.i83, !llvm.loop !96

drm_update_mso.exit:                              ; preds = %drm_parse_vesa_mso_data.exit.i, %bb.ec
  call void @displayid_iter_end(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %drm_edid_is_digital.exit.thread

drm_edid_is_digital.exit.thread:                  ; preds = %bb.dn, %bb.g, %thread-pre-split, %drm_edid_is_digital.exit, %drm_get_monitor_range.exit, %drm_update_mso.exit
  %.val72 = load i32, ptr %i.al, align 4          ; 2 uses
  %i.wx = and i32 %.val72, 4096
  %.not106 = icmp eq i32 %i.wx, 0
  br i1 %.not106, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %drm_edid_is_digital.exit.thread
  %i.wy = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i90 = icmp eq ptr %i.wy, null
  br i1 %.not.i90, label %__drm_to_dev.exit91, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.wz = getelementptr i8, ptr %i.wy, i64 8
  %i.xa = load ptr, ptr %i.wz, align 8
  br label %__drm_to_dev.exit91

__drm_to_dev.exit91:                              ; preds = %bb.eu, %bb.ev
  %i.xb = phi ptr [ %i.xa, %bb.ev ], [ null, %bb.eu ]
  %i.xc = getelementptr i8, ptr %0, i64 64
  %i.xd = load i32, ptr %i.xc, align 8
  %i.xe = getelementptr i8, ptr %0, i64 96
  %i.xf = load ptr, ptr %i.xe, align 8
  %i.xg = getelementptr i8, ptr %0, i64 356       ; 2 uses
  %i.xh = load i8, ptr %i.xg, align 4, !range !18, !noundef !19
  %i.xi = trunc nuw i8 %i.xh to i1
  %i.xj = select i1 %i.xi, ptr @.str.39, ptr @.str.4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.xb, i32 noundef 2, ptr noundef @.str.38, i32 noundef %i.xd, ptr noundef %i.xf, ptr noundef nonnull %i.xj) #22
  store i8 1, ptr %i.xg, align 4
  %.val71.pre = load i32, ptr %i.al, align 4
  br label %bb.ew

bb.ew:                                            ; preds = %__drm_to_dev.exit91, %drm_edid_is_digital.exit.thread
  %.val71 = phi i32 [ %.val71.pre, %__drm_to_dev.exit91 ], [ %.val72, %drm_edid_is_digital.exit.thread ]
  %i.xk = zext i32 %.val71 to i64                 ; 5 uses
  %i.xl = and i64 %i.xk, 8192
  %.not107 = icmp eq i64 %i.xl, 0
  br i1 %.not107, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i32 15, ptr %i.k, align 8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.xm = and i64 %i.xk, 3840
  %.not110.a = icmp eq i64 %i.xm, 0
  br i1 %.not110.a, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xn = and i64 %i.xk, 512
  %.not111 = icmp eq i64 %i.xn, 0
  %i.xo = and i64 %i.xk, 2048
  %.not109.a = icmp eq i64 %i.xo, 0
  %i.xp = and i64 %i.xk, 256
  %.not108 = icmp eq i64 %i.xp, 0
  %spec.select = select i1 %.not108, i32 6, i32 8
  %spec.select104 = select i1 %.not109.a, i32 %spec.select, i32 10
  %spec.select105 = select i1 %.not111, i32 %spec.select104, i32 12
  store i32 %spec.select105, ptr %i.c, align 8
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ey, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @mutex_lock(ptr noundef %i.p) #22
  %i.xq = getelementptr i8, ptr %0, i64 1772      ; 2 uses
  %i.xr = call fastcc i32 @get_monitor_name(ptr noundef nonnull %1, ptr noundef %i.xq) #21, !srcloc !105 ; 2 uses
  %i.xs = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.xs, null
  br i1 %.not.i.i92, label %__drm_to_dev.exit.i93, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xt = getelementptr i8, ptr %i.xs, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8
  br label %__drm_to_dev.exit.i93

__drm_to_dev.exit.i93:                            ; preds = %bb.fb, %bb.fa
  %i.xv = phi ptr [ %i.xu, %bb.fb ], [ null, %bb.fa ]
  %i.xw = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.xx = load i32, ptr %i.xw, align 8
  %i.xy = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %i.xz = load ptr, ptr %i.xy, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.xv, i32 noundef 2, ptr noundef @.str.63, i32 noundef %i.xx, ptr noundef %i.xz, ptr noundef %i.xq) #22
  %i.ya = getelementptr i8, ptr %0, i64 243
  %i.yb = load i8, ptr %i.ya, align 1
  %i.yc = shl i8 %i.yb, 5
  %i.yd = getelementptr i8, ptr %0, i64 1756      ; 2 uses
  %i.ye = trunc nuw nsw i32 %i.xr to i8
  %i.yf = or disjoint i8 %i.yc, %i.ye
  store i8 %i.yf, ptr %i.yd, align 4
  store i8 16, ptr %i.q, align 8
  %i.yg = load ptr, ptr %7, align 8
  %i.yh = getelementptr i8, ptr %i.yg, i64 8
  %i.yi = load i8, ptr %i.yh, align 1
  %i.yj = getelementptr i8, ptr %0, i64 1768
  store i8 %i.yi, ptr %i.yj, align 8
  %i.yk = load ptr, ptr %7, align 8
  %i.yl = getelementptr i8, ptr %i.yk, i64 9
  %i.ym = load i8, ptr %i.yl, align 1
  %i.yn = getelementptr i8, ptr %0, i64 1769
  store i8 %i.ym, ptr %i.yn, align 1
  %i.yo = load ptr, ptr %7, align 8
  %i.yp = getelementptr i8, ptr %i.yo, i64 10
  %i.yq = load i8, ptr %i.yp, align 1
  %i.yr = getelementptr i8, ptr %0, i64 1770
  store i8 %i.yq, ptr %i.yr, align 2
  %i.ys = load ptr, ptr %7, align 8
  %i.yt = getelementptr i8, ptr %i.ys, i64 11
  %i.yu = load i8, ptr %i.yt, align 1
  %i.yv = getelementptr i8, ptr %0, i64 1771
  store i8 %i.yu, ptr %i.yv, align 1
  %i.yw = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.yw, i8 0, i64 56, i1 false)
  store ptr %1, ptr %2, align 8
  %i.yx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @displayid_iter_edid_begin(ptr noundef nonnull %1, ptr noundef nonnull %i.yx) #22
  %i.yy = call fastcc ptr @__cea_db_iter_next(ptr noundef nonnull %2) #21, !srcloc !106 ; 2 uses
  %.not77.i = icmp eq ptr %i.yy, null
  br i1 %.not77.i, label %._crit_edge.i99, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %__drm_to_dev.exit.i93
  %i.yz = getelementptr i8, ptr %0, i64 1757      ; 2 uses
  %i.za = getelementptr i8, ptr %0, i64 1916      ; 2 uses
  %i.zb = getelementptr i8, ptr %0, i64 1912      ; 2 uses
  %i.zc = getelementptr i8, ptr %0, i64 1920      ; 2 uses
  %i.zd = getelementptr i8, ptr %0, i64 1759
  %i.ze = add nuw nsw i32 %i.xr, 20
  br label %bb.fc

bb.fc:                                            ; preds = %cea_db_is_hdmi_vsdb.exit.thread.i, %.lr.ph.i94
  %i.zf = phi ptr [ %i.yy, %.lr.ph.i94 ], [ %i.abq, %cea_db_is_hdmi_vsdb.exit.thread.i ] ; 9 uses
  %.078.i = phi i32 [ 0, %.lr.ph.i94 ], [ %.1.i97, %cea_db_is_hdmi_vsdb.exit.thread.i ] ; 9 uses
  %i.zg = getelementptr i8, ptr %i.zf, i64 1      ; 3 uses
  %.val70.i = load i8, ptr %i.zf, align 1         ; 3 uses
  %i.zh = and i8 %.val70.i, 31                    ; 7 uses
  %i.zi = lshr i8 %.val70.i, 5
  switch i8 %i.zi, label %cea_db_is_hdmi_vsdb.exit.thread.i [
    i8 1, label %bb.fd
    i8 4, label %bb.fg
    i8 3, label %bb.fi
  ]

bb.fd:                                            ; preds = %bb.fc
  %i.zj = sub i32 15, %.078.i
  %i.zk = udiv i8 %i.zh, 3
  %.zext.i = zext nneg i8 %i.zk to i32
  %i.zl = call i32 @llvm.smin.i32(i32 %.zext.i, i32 %i.zj) ; 3 uses
  %i.zm = icmp sgt i32 %i.zl, 0
  br i1 %i.zm, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.zn = mul i32 %.078.i, 3
  %i.zo = add i32 %i.ze, %i.zn
  %i.zp = sext i32 %i.zo to i64
  %i.zq = getelementptr i8, ptr %i.q, i64 %i.zp
  %i.zr = mul nuw nsw i32 %i.zl, 3
  %i.zs = zext nneg i32 %i.zr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zq, ptr align 1 %i.zg, i64 %i.zs, i1 false)
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.zt = add i32 %i.zl, %.078.i
  br label %cea_db_is_hdmi_vsdb.exit.thread.i

bb.fg:                                            ; preds = %bb.fc
  %.not69.i = icmp eq i8 %i.zh, 0
  br i1 %.not69.i, label %cea_db_is_hdmi_vsdb.exit.thread.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.zu = load i8, ptr %i.zg, align 1
  store i8 %i.zu, ptr %i.zd, align 1
  br label %cea_db_is_hdmi_vsdb.exit.thread.i

bb.fi:                                            ; preds = %bb.fc
  %.mask.i.i.i95 = and i8 %.val70.i, -32
  %i.zv = icmp eq i8 %.mask.i.i.i95, 96
  %i.zw = icmp samesign ugt i8 %i.zh, 2
  %or.cond.i.i.i96 = select i1 %i.zv, i1 %i.zw, i1 false
  br i1 %or.cond.i.i.i96, label %cea_db_is_hdmi_vsdb.exit.i101, label %cea_db_is_hdmi_vsdb.exit.thread.i

cea_db_is_hdmi_vsdb.exit.i101:                    ; preds = %bb.fi
  %i.zx = getelementptr i8, ptr %i.zf, i64 2
  %i.zy = load i16, ptr %i.zx, align 1
  %i.zz = zext i16 %i.zy to i32
  %i.aaa = shl nuw nsw i32 %i.zz, 8
  %i.aab = load i8, ptr %i.zg, align 1
  %i.aac = zext i8 %i.aab to i32
  %i.aad = or disjoint i32 %i.aaa, %i.aac
  %i.aae = icmp eq i32 %i.aad, 3075
  %i.aaf = icmp samesign ugt i8 %i.zh, 4
  %spec.select.i.i102 = select i1 %i.aae, i1 %i.aaf, i1 false
  br i1 %spec.select.i.i102, label %bb.fj, label %cea_db_is_hdmi_vsdb.exit.thread.i

bb.fj:                                            ; preds = %cea_db_is_hdmi_vsdb.exit.i101
  %i.aag = icmp samesign ugt i8 %i.zh, 5
  br i1 %i.aag, label %bb.fk, label %.thread28.i.i

bb.fk:                                            ; preds = %bb.fj
  %i.aah = getelementptr i8, ptr %i.zf, i64 6
  %i.aai = load i8, ptr %i.aah, align 1
  %.not.i74.i = icmp sgt i8 %i.aai, -1
  br i1 %.not.i74.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aaj = load i8, ptr %i.yz, align 1
  %i.aak = or i8 %i.aaj, 2
  store i8 %i.aak, ptr %i.yz, align 1
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.aal = icmp samesign ugt i8 %i.zh, 9
  br i1 %i.aal, label %bb.fn, label %.thread28.i.i

bb.fn:                                            ; preds = %bb.fm
  %i.aam = getelementptr i8, ptr %i.zf, i64 8     ; 2 uses
  %.val26.i.i = load i8, ptr %i.aam, align 1
  %i.aan = icmp slt i8 %.val26.i.i, 0
  br i1 %i.aan, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  store i8 1, ptr %i.r, align 8
  %i.aao = getelementptr i8, ptr %i.zf, i64 9
  %i.aap = load i8, ptr %i.aao, align 1
  %i.aaq = zext i8 %i.aap to i32
  store i32 %i.aaq, ptr %i.t, align 4
  %i.aar = getelementptr i8, ptr %i.zf, i64 10
  %i.aas = load i8, ptr %i.aar, align 1
  %i.aat = zext i8 %i.aas to i32
  store i32 %i.aat, ptr %i.za, align 4
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.aau = icmp samesign ugt i8 %i.zh, 11
  br i1 %i.aau, label %bb.fq, label %.thread28.i.i

bb.fq:                                            ; preds = %bb.fp
  %.val27.i.i = load i8, ptr %i.aam, align 1
  %i.aav = icmp ugt i8 %.val27.i.i, -65
  br i1 %i.aav, label %bb.fr, label %.thread28.i.i

bb.fr:                                            ; preds = %bb.fq
  store i8 1, ptr %i.s, align 1
  %i.aaw = getelementptr i8, ptr %i.zf, i64 11
  %i.aax = load i8, ptr %i.aaw, align 1
  %i.aay = zext i8 %i.aax to i32
  store i32 %i.aay, ptr %i.zb, align 8
  %i.aaz = getelementptr i8, ptr %i.zf, i64 12
  %i.aba = load i8, ptr %i.aaz, align 1
  %i.abb = zext i8 %i.aba to i32
  store i32 %i.abb, ptr %i.zc, align 8
  br label %.thread28.i.i

.thread28.i.i:                                    ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fm, %bb.fj
  %i.abc = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.abc, null
  br i1 %.not.i.i.i103, label %drm_parse_hdmi_vsdb_audio.exit.i, label %bb.fs

bb.fs:                                            ; preds = %.thread28.i.i
  %i.abd = getelementptr i8, ptr %i.abc, i64 8
  %i.abe = load ptr, ptr %i.abd, align 8
  br label %drm_parse_hdmi_vsdb_audio.exit.i

drm_parse_hdmi_vsdb_audio.exit.i:                 ; preds = %bb.fs, %.thread28.i.i
  %i.abf = phi ptr [ %i.abe, %bb.fs ], [ null, %.thread28.i.i ]
  %i.abg = load i32, ptr %i.xw, align 8
  %i.abh = load ptr, ptr %i.xy, align 8
  %i.abi = load i8, ptr %i.r, align 8, !range !18, !noundef !19
  %i.abj = zext nneg i8 %i.abi to i32
  %i.abk = load i8, ptr %i.s, align 1, !range !18, !noundef !19
  %i.abl = zext nneg i8 %i.abk to i32
  %i.abm = load i32, ptr %i.t, align 4
  %i.abn = load i32, ptr %i.zb, align 8
  %i.abo = load i32, ptr %i.za, align 4
  %i.abp = load i32, ptr %i.zc, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.abf, i32 noundef 2, ptr noundef @.str.65, i32 noundef %i.abg, ptr noundef %i.abh, i32 noundef %i.abj, i32 noundef %i.abl, i32 noundef %i.abm, i32 noundef %i.abn, i32 noundef %i.abo, i32 noundef %i.abp) #22
  br label %cea_db_is_hdmi_vsdb.exit.thread.i

cea_db_is_hdmi_vsdb.exit.thread.i:                ; preds = %drm_parse_hdmi_vsdb_audio.exit.i, %cea_db_is_hdmi_vsdb.exit.i101, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fc
  %.1.i97 = phi i32 [ %.078.i, %bb.fc ], [ %i.zt, %bb.ff ], [ %.078.i, %bb.fh ], [ %.078.i, %bb.fg ], [ %.078.i, %drm_parse_hdmi_vsdb_audio.exit.i ], [ %.078.i, %cea_db_is_hdmi_vsdb.exit.i101 ], [ %.078.i, %bb.fi ] ; 2 uses
  %i.abq = call fastcc ptr @__cea_db_iter_next(ptr noundef nonnull %2) #21, !srcloc !106 ; 2 uses
  %.not.i98 = icmp eq ptr %i.abq, null
  br i1 %.not.i98, label %._crit_edge.i99, label %bb.fc, !llvm.loop !97

._crit_edge.i99:                                  ; preds = %cea_db_is_hdmi_vsdb.exit.thread.i, %__drm_to_dev.exit.i93
  %.0.lcssa.i100 = phi i32 [ 0, %__drm_to_dev.exit.i93 ], [ %.1.i97, %cea_db_is_hdmi_vsdb.exit.thread.i ] ; 2 uses
  call void @displayid_iter_end(ptr noundef nonnull %i.yx) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.abr = getelementptr i8, ptr %0, i64 1757     ; 2 uses
  %i.abs = load i8, ptr %i.abr, align 1
  %.0.tr.i = trunc i32 %.0.lcssa.i100 to i8
  %i.abt = shl i8 %.0.tr.i, 4
  %i.abu = or i8 %i.abs, %i.abt                   ; 2 uses
  %i.abv = getelementptr i8, ptr %0, i64 132
  %i.abw = load i32, ptr %i.abv, align 4
  switch i32 %i.abw, label %bb.fu [
    i32 10, label %bb.ft
    i32 14, label %bb.ft
  ]

bb.ft:                                            ; preds = %._crit_edge.i99, %._crit_edge.i99
  %i.abx = or i8 %i.abu, 4
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %._crit_edge.i99
  %storemerge.i = phi i8 [ %i.abx, %bb.ft ], [ %i.abu, %._crit_edge.i99 ] ; 2 uses
  store i8 %storemerge.i, ptr %i.abr, align 1
  %.val71.i = load i8, ptr %i.yd, align 4
end_hunk_2
begin_hunk_3_@_drm_edid_connector_add_modes:bb.a
  %i.abf = icmp eq i32 %i.aax, %i.abe
  br i1 %i.abf, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.abg = sub i32 %i.aar, %.148.i
  %i.abh = call i32 @llvm.abs.i32(i32 %i.abg, i1 false)
  %i.abi = sub i32 %i.aas, %.148.i
  %i.abj = call i32 @llvm.abs.i32(i32 %i.abi, i1 false)
  %i.abk = icmp slt i32 %i.abh, %i.abj
  %spec.select51.i = select i1 %i.abk, ptr %.04560.i, ptr %spec.select50.i
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %.lr.ph.i67
  %.2.i69 = phi ptr [ %.04659.i, %.lr.ph.i67 ], [ %spec.select50.i, %bb.gk ], [ %spec.select51.i, %bb.gl ] ; 2 uses
  %.not55.i = icmp eq ptr %.pn61.i68, %i.zu
  br i1 %.not55.i, label %._crit_edge.i70, label %.lr.ph.i67, !llvm.loop !121

._crit_edge.i70:                                  ; preds = %bb.gm
  %i.abl = getelementptr i8, ptr %.2.i69, i64 62  ; 2 uses
  %i.abm = load i8, ptr %i.abl, align 2
  %i.abn = or i8 %i.abm, 8
  store i8 %i.abn, ptr %i.abl, align 2
  br label %edid_fixup_preferred.exit

edid_fixup_preferred.exit:                        ; preds = %bb.gi, %._crit_edge.i70, %bb.gj, %bb.a
  %.030 = phi i32 [ 0, %bb.a ], [ %.0, %bb.gi ], [ %.0, %bb.gj ], [ %.0, %._crit_edge.i70 ]
  ret i32 %.030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_add_edid_modes(ptr noundef initializes((192, 204), (212, 216), (232, 244), (248, 357), (358, 362), (364, 374), (376, 380), (392, 402), (404, 424)) %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.drm_edid, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !14
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %drm_edid_legacy_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @drm_edid_is_valid(ptr noundef nonnull %1) #21
  br i1 %i.a, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.e = phi ptr [ %i.d, %bb.d ], [ null, %bb.c ]
  %i.f = getelementptr i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.e, ptr noundef @.str.13, i32 noundef %i.g, ptr noundef %i.i) #23
  br label %drm_edid_legacy_init.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %1, i64 126
  %.val.i = load i8, ptr %i.k, align 1
  %i.l = zext i8 %.val.i to i64
  %i.m = shl nuw nsw i64 %i.l, 7
  %i.n = add nuw nsw i64 %i.m, 128
  store i64 %i.n, ptr %2, align 8
  br label %drm_edid_legacy_init.exit

drm_edid_legacy_init.exit:                        ; preds = %bb.a, %__drm_to_dev.exit, %bb.e
  %.0.i = phi ptr [ %2, %bb.e ], [ null, %__drm_to_dev.exit ], [ null, %bb.a ] ; 2 uses
  call fastcc void @update_display_info(ptr noundef %0, ptr noundef %.0.i) #21, !srcloc !131
  %i.o = call fastcc i32 @_drm_edid_connector_add_modes(ptr noundef %0, ptr noundef %.0.i) #21, !srcloc !132
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %i.o
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_add_modes_noedid(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp ne i32 %1, 0
  %i.c = icmp ne i32 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.f
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %.024.us = phi i32 [ %.2.us, %bb.f ], [ 0, %bb.a ] ; 5 uses
  %i.d = getelementptr [120 x i8], ptr @drm_dmt_modes, i64 %indvars.iv29 ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i16, ptr %i.e, align 4
  %i.g = zext i16 %i.f to i32
  %i.h = icmp ult i32 %1, %i.g
  br i1 %i.h, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.i = getelementptr i8, ptr %i.d, i64 14
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @drm_mode_vrefresh(ptr noundef %i.d) #22
  %i.n = icmp sgt i32 %i.m, 61
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @drm_mode_duplicate(ptr noundef %i.a, ptr noundef %i.d) #22 ; 2 uses
  %.not.us = icmp eq ptr %i.o, null
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %i.o) #22
  %i.p = add i32 %.024.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.split.us
  %.2.us = phi i32 [ %.024.us, %bb.c ], [ %.024.us, %.split.us ], [ %.024.us, %bb.b ], [ %i.p, %bb.e ], [ %.024.us, %bb.d ] ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next30, 88
  br i1 %exitcond32.not, label %.split26.us, label %.split.us, !llvm.loop !133

.split:                                           ; preds = %bb.a, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.a ] ; 2 uses
  %.024 = phi i32 [ %.2, %bb.i ], [ 0, %bb.a ]    ; 3 uses
  %i.q = getelementptr [120 x i8], ptr @drm_dmt_modes, i64 %indvars.iv ; 2 uses
  %i.r = tail call i32 @drm_mode_vrefresh(ptr noundef %i.q) #22
  %i.s = icmp sgt i32 %i.r, 61
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.split
  %i.t = tail call ptr @drm_mode_duplicate(ptr noundef %i.a, ptr noundef %i.q) #22 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %i.t) #22
  %i.u = add i32 %.024, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.split
  %.2 = phi i32 [ %.024, %.split ], [ %i.u, %bb.h ], [ %.024, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 88
  br i1 %exitcond.not, label %.split26.us, label %.split, !llvm.loop !133

.split26.us:                                      ; preds = %bb.i, %bb.f
  %.us-phi = phi i32 [ %.2.us, %bb.f ], [ %.2, %bb.i ]
  ret i32 %.us-phi
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  tail call void @hdmi_avi_infoframe_init(ptr noundef nonnull %0) #22
  %i.c = getelementptr i8, ptr %2, i64 24         ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 4096
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 7
  store i8 1, ptr %i.f, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not.i.i = icmp eq ptr %1, null                ; 2 uses
  br i1 %.not.i.i, label %drm_mode_cea_vic.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %1, i64 239        ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !18, !noundef !19
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %drm_mode_cea_vic.exit.thread66, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %i.c, align 8
  %i.k = and i32 %i.j, 507904
  %.not7.i.i = icmp eq i32 %i.k, 0
  br i1 %.not7.i.i, label %drm_mode_hdmi_vic.exit.i, label %drm_mode_cea_vic.exit.thread66

drm_mode_hdmi_vic.exit.i:                         ; preds = %bb.f
  %i.l = tail call fastcc zeroext i8 @drm_match_hdmi_mode(ptr noundef nonnull %2) #21, !srcloc !21
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %drm_mode_cea_vic.exit.thread66, label %drm_mode_cea_vic.exit.thread

drm_mode_cea_vic.exit.thread66:                   ; preds = %bb.e, %bb.f, %drm_mode_hdmi_vic.exit.i
  %i.m = tail call zeroext i8 @drm_match_cea_mode(ptr noundef nonnull %2) #21
  br label %drm_mode_cea_vic.exit.thread

drm_mode_cea_vic.exit:                            ; preds = %bb.d
  %i.n = tail call zeroext i8 @drm_match_cea_mode(ptr noundef nonnull %2) #21
  br label %drm_mode_hdmi_vic.exit

drm_mode_cea_vic.exit.thread:                     ; preds = %drm_mode_hdmi_vic.exit.i, %drm_mode_cea_vic.exit.thread66
  %.0.i63 = phi i8 [ %i.m, %drm_mode_cea_vic.exit.thread66 ], [ 0, %drm_mode_hdmi_vic.exit.i ] ; 3 uses
  %i.o = load i8, ptr %i.g, align 1, !range !18, !noundef !19
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %drm_mode_hdmi_vic.exit, label %bb.g

bb.g:                                             ; preds = %drm_mode_cea_vic.exit.thread
  %i.q = load i32, ptr %i.c, align 8
  %i.r = and i32 %i.q, 507904
  %.not7.i = icmp eq i32 %i.r, 0
  br i1 %.not7.i, label %bb.h, label %drm_mode_hdmi_vic.exit

bb.h:                                             ; preds = %bb.g
  %i.s = tail call fastcc zeroext i8 @drm_match_hdmi_mode(ptr noundef nonnull %2) #21, !srcloc !21
  br label %drm_mode_hdmi_vic.exit

drm_mode_hdmi_vic.exit:                           ; preds = %drm_mode_cea_vic.exit, %drm_mode_cea_vic.exit.thread, %bb.g, %bb.h
  %.0.i64 = phi i8 [ %.0.i63, %drm_mode_cea_vic.exit.thread ], [ %.0.i63, %bb.h ], [ %.0.i63, %bb.g ], [ %i.n, %drm_mode_cea_vic.exit ] ; 12 uses
  %.0.i49 = phi i8 [ 0, %drm_mode_cea_vic.exit.thread ], [ %i.s, %bb.h ], [ 0, %bb.g ], [ 0, %drm_mode_cea_vic.exit ] ; 5 uses
  %i.t = getelementptr i8, ptr %0, i64 20         ; 2 uses
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %0, i64 48
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %0, i64 6
  store i8 0, ptr %i.v, align 2
  %i.w = getelementptr i8, ptr %2, i64 116
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %drm_get_cea_aspect_ratio.exit

bb.i:                                             ; preds = %drm_mode_hdmi_vic.exit
  %.not42 = icmp eq i8 %.0.i64, 0
  br i1 %.not42, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %or.cond.i.i = icmp sgt i8 %.0.i64, 0
  br i1 %or.cond.i.i, label %cea_mode_for_vic.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = add nsw i8 %.0.i64, 63
  %or.cond5.i.i = icmp ult i8 %i.z, 27
  br i1 %or.cond5.i.i, label %cea_mode_for_vic.exit.i, label %drm_get_cea_aspect_ratio.exit.thread

cea_mode_for_vic.exit.i:                          ; preds = %bb.k, %bb.j
  %edid_cea_modes_1.sink.i = phi ptr [ @edid_cea_modes_1, %bb.j ], [ @edid_cea_modes_193, %bb.k ]
  %.sink7.i = phi i64 [ -120, %bb.j ], [ -23160, %bb.k ]
  %i.aa = zext i8 %.0.i64 to i64
  %i.ab = getelementptr [120 x i8], ptr %edid_cea_modes_1.sink.i, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 %.sink7.i ; 2 uses
  %.not.i51 = icmp eq ptr %i.ac, null
  br i1 %.not.i51, label %drm_get_cea_aspect_ratio.exit.thread, label %bb.l

bb.l:                                             ; preds = %cea_mode_for_vic.exit.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 116
  %i.ae = load i32, ptr %i.ad, align 4
  br label %drm_get_cea_aspect_ratio.exit

bb.m:                                             ; preds = %bb.i
  %.not43 = icmp eq i8 %.0.i49, 0
  br i1 %.not43, label %drm_get_cea_aspect_ratio.exit.thread, label %drm_get_cea_aspect_ratio.exit.thread68

drm_get_cea_aspect_ratio.exit:                    ; preds = %bb.l, %drm_mode_hdmi_vic.exit
  %.0 = phi i32 [ %i.x, %drm_mode_hdmi_vic.exit ], [ %i.ae, %bb.l ] ; 4 uses
  %i.af = icmp ugt i32 %.0, 2
  br i1 %i.af, label %bb.n, label %drm_get_cea_aspect_ratio.exit.thread

drm_get_cea_aspect_ratio.exit.thread68:           ; preds = %bb.m
  %i.ag = zext nneg i8 %.0.i49 to i64
  %i.ah = getelementptr [120 x i8], ptr @edid_4k_modes, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 116
  %i.aj = load i32, ptr %i.ai, align 4
  %3 = icmp eq i8 %.0.i49, 4
  %spec.select = select i1 %3, i32 0, i32 %i.aj
  br label %drm_get_cea_aspect_ratio.exit.thread

bb.n:                                             ; preds = %drm_get_cea_aspect_ratio.exit
  %.not44 = icmp eq i8 %.0.i64, 0
  br i1 %.not44, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond.i.i52 = icmp sgt i8 %.0.i64, 0
  br i1 %or.cond.i.i52, label %cea_mode_for_vic.exit.i55, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = add nsw i8 %.0.i64, 63
  %or.cond5.i.i53 = icmp ult i8 %i.ak, 27
  br i1 %or.cond5.i.i53, label %cea_mode_for_vic.exit.i55, label %.critedge

cea_mode_for_vic.exit.i55:                        ; preds = %bb.p, %bb.o
  %edid_cea_modes_1.sink.i56 = phi ptr [ @edid_cea_modes_1, %bb.o ], [ @edid_cea_modes_193, %bb.p ]
  %.sink7.i57 = phi i64 [ -120, %bb.o ], [ -23160, %bb.p ]
  %i.al = zext i8 %.0.i64 to i64
  %i.am = getelementptr [120 x i8], ptr %edid_cea_modes_1.sink.i56, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 %.sink7.i57 ; 2 uses
  %.not.i58 = icmp eq ptr %i.an, null
  br i1 %.not.i58, label %.critedge, label %drm_get_cea_aspect_ratio.exit59

drm_get_cea_aspect_ratio.exit59:                  ; preds = %cea_mode_for_vic.exit.i55
  %i.ao = getelementptr i8, ptr %i.an, i64 116
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %.0, %i.ap
  br i1 %i.aq, label %drm_get_cea_aspect_ratio.exit.thread, label %.critedge

bb.q:                                             ; preds = %bb.n
  %.not45 = icmp eq i8 %.0.i49, 0
  br i1 %.not45, label %.critedge, label %.thread74

.thread74:                                        ; preds = %bb.q
  %.phi.trans.insert = zext nneg i8 %.0.i49 to i64
  %.phi.trans.insert78 = getelementptr [120 x i8], ptr @edid_4k_modes, i64 %.phi.trans.insert
  %.phi.trans.insert79 = getelementptr i8, ptr %.phi.trans.insert78, i64 116
  %.pre = load i32, ptr %.phi.trans.insert79, align 4
  %i.ar = icmp eq i32 %.0, %.pre
  br i1 %i.ar, label %drm_get_cea_aspect_ratio.exit.thread, label %.critedge

drm_get_cea_aspect_ratio.exit.thread:             ; preds = %drm_get_cea_aspect_ratio.exit.thread68, %bb.k, %cea_mode_for_vic.exit.i, %bb.m, %drm_get_cea_aspect_ratio.exit59, %.thread74, %drm_get_cea_aspect_ratio.exit
  %.0.i65 = phi i8 [ %.0.i64, %drm_get_cea_aspect_ratio.exit ], [ 0, %.thread74 ], [ %.0.i64, %drm_get_cea_aspect_ratio.exit59 ], [ 0, %drm_get_cea_aspect_ratio.exit.thread68 ], [ 0, %bb.m ], [ %.0.i64, %cea_mode_for_vic.exit.i ], [ %.0.i64, %bb.k ] ; 6 uses
  %.1 = phi i32 [ %.0, %drm_get_cea_aspect_ratio.exit ], [ 0, %.thread74 ], [ 0, %drm_get_cea_aspect_ratio.exit59 ], [ %spec.select, %drm_get_cea_aspect_ratio.exit.thread68 ], [ 0, %bb.m ], [ 0, %cea_mode_for_vic.exit.i ], [ 0, %bb.k ]
  br i1 %.not.i.i, label %vic_for_avi_infoframe.exit, label %bb.r

bb.r:                                             ; preds = %drm_get_cea_aspect_ratio.exit.thread
  %i.as = getelementptr i8, ptr %1, i64 248
  %i.at = load i8, ptr %i.as, align 8, !range !18, !noundef !19
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %vic_for_avi_infoframe.exit, label %is_hdmi2_sink.exit.i

is_hdmi2_sink.exit.i:                             ; preds = %bb.r
  %i.av = getelementptr i8, ptr %1, i64 212
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 8
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = icmp ult i8 %.0.i65, 65
  %or.cond.not.i = or i1 %i.az, %i.ay
  br i1 %or.cond.not.i, label %vic_for_avi_infoframe.exit, label %bb.s

bb.s:                                             ; preds = %is_hdmi2_sink.exit.i
  %i.ba = getelementptr i8, ptr %1, i64 384
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not11.i.i = icmp eq ptr %i.bb, null
  br i1 %.not11.i.i, label %vic_for_avi_infoframe.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.s
  %i.bc = getelementptr i8, ptr %1, i64 392
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.preheader.i.i, label %vic_for_avi_infoframe.exit

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.bd to i64
  br label %.lr.ph.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %vic_for_avi_infoframe.exit, label %.lr.ph.i.i, !llvm.loop !134

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.t ] ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bb, i64 %indvars.iv.i.i
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, %.0.i65
  br i1 %i.bh, label %vic_for_avi_infoframe.exit, label %bb.t

vic_for_avi_infoframe.exit:                       ; preds = %bb.t, %.lr.ph.i.i, %drm_get_cea_aspect_ratio.exit.thread, %bb.r, %is_hdmi2_sink.exit.i, %bb.s, %.preheader.i.i
  %.0.i61 = phi i8 [ %.0.i65, %bb.r ], [ 0, %bb.s ], [ %.0.i65, %is_hdmi2_sink.exit.i ], [ %.0.i65, %drm_get_cea_aspect_ratio.exit.thread ], [ 0, %.preheader.i.i ], [ %.0.i65, %.lr.ph.i.i ], [ 0, %bb.t ]
  %i.bi = getelementptr i8, ptr %0, i64 40
  store i8 %.0.i61, ptr %i.bi, align 4
  store i32 %.1, ptr %i.t, align 4
  %i.bj = getelementptr i8, ptr %0, i64 24
  store i32 8, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %0, i64 12
  store i32 2, ptr %i.bk, align 4
  br label %.critedge

.critedge:                                        ; preds = %cea_mode_for_vic.exit.i55, %bb.p, %bb.q, %.thread74, %drm_get_cea_aspect_ratio.exit59, %bb.a, %vic_for_avi_infoframe.exit
  %.033 = phi i32 [ -22, %bb.a ], [ 0, %vic_for_avi_infoframe.exit ], [ -22, %drm_get_cea_aspect_ratio.exit59 ], [ -22, %.thread74 ], [ -22, %bb.q ], [ -22, %bb.p ], [ -22, %cea_mode_for_vic.exit.i55 ]
  ret i32 %.033
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hdmi_avi_infoframe_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_hdmi_avi_infoframe_quant_range(ptr nofree noundef writeonly captures(none) initializes((32, 36), (44, 48)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 240
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @drm_match_cea_mode(ptr noundef %2) #21
  %i.e = icmp ugt i8 %i.d, 1
  %i.f = select i1 %i.e, i32 1, i32 2
  %i.g = icmp eq i32 %3, %i.f
  %spec.select14 = select i1 %i.g, i32 %3, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink12 = phi i32 [ %3, %bb.a ], [ %spec.select14, %bb.b ]
  %i.h = getelementptr i8, ptr %0, i64 32
  store i32 %.sink12, ptr %i.h, align 4
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %is_hdmi2_sink.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 248
  %i.j = load i8, ptr %i.i, align 8, !range !18, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %is_hdmi2_sink.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 212
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 8
  %i.o = icmp ne i32 %i.n, 0
  br label %is_hdmi2_sink.exit

is_hdmi2_sink.exit:                               ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ %i.o, %bb.e ]
  %i.p = icmp ne i32 %3, 1
  %or.cond.not = and i1 %i.p, %.0.i
  %spec.select = zext i1 %or.cond.not to i32
  %i.q = getelementptr i8, ptr %0, i64 44
  store i32 %spec.select, ptr %i.q, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 239        ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = icmp eq i8 %i.b, 0
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %2, null
  %or.cond.not26 = or i1 %i.d, %i.e
  %brmerge = or i1 %or.cond.not26, %i.c
  br i1 %brmerge, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @hdmi_vendor_infoframe_init(ptr noundef nonnull %0) #22 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %drm_mode_hdmi_vic.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 507904
  %.not7.i = icmp eq i32 %i.l, 0
  br i1 %.not7.i, label %bb.f, label %drm_mode_hdmi_vic.exit

bb.f:                                             ; preds = %bb.e
  %i.m = tail call fastcc zeroext i8 @drm_match_hdmi_mode(ptr noundef nonnull %2) #21, !srcloc !21
  br label %drm_mode_hdmi_vic.exit

drm_mode_hdmi_vic.exit:                           ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.d ], [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.n = getelementptr i8, ptr %0, i64 12
  store i8 %.0.i, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %2, i64 24
  %.val = load i32, ptr %i.o, align 8
  %i.p = lshr i32 %.val, 14
  %i.q = and i32 %i.p, 31
  switch i32 %i.q, label %bb.n [
    i32 1, label %s3d_structure_from_display_mode.exit
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 8, label %bb.m
  ]

bb.g:                                             ; preds = %drm_mode_hdmi_vic.exit
  br label %s3d_structure_from_display_mode.exit

bb.h:                                             ; preds = %drm_mode_hdmi_vic.exit
  br label %s3d_structure_from_display_mode.exit

bb.i:                                             ; preds = %drm_mode_hdmi_vic.exit
  br label %s3d_structure_from_display_mode.exit

bb.j:                                             ; preds = %drm_mode_hdmi_vic.exit
  br label %s3d_structure_from_display_mode.exit

bb.k:                                             ; preds = %drm_mode_hdmi_vic.exit
  br label %s3d_structure_from_display_mode.exit

bb.l:                                             ; preds = %drm_mode_hdmi_vic.exit
  br label %s3d_structure_from_display_mode.exit

bb.m:                                             ; preds = %drm_mode_hdmi_vic.exit
  br label %s3d_structure_from_display_mode.exit

bb.n:                                             ; preds = %drm_mode_hdmi_vic.exit
  br label %s3d_structure_from_display_mode.exit

s3d_structure_from_display_mode.exit:             ; preds = %drm_mode_hdmi_vic.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i19 = phi i32 [ -1, %bb.n ], [ 8, %bb.m ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 6, %bb.l ], [ 0, %drm_mode_hdmi_vic.exit ]
  %i.r = getelementptr i8, ptr %0, i64 16
  store i32 %.0.i19, ptr %i.r, align 4
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %s3d_structure_from_display_mode.exit
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %s3d_structure_from_display_mode.exit ], [ -22, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @hdmi_vendor_infoframe_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local zeroext i1 @drm_edid_is_digital(ptr nofree noundef readonly captures(address_is_null) %0) #8 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.b, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 20
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp slt i8 %i.d, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.e, %bb.c ]
  ret i1 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 9) i32 @edid_block_check(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 0
  %i.c = zext i1 %i.b to i32
  %i.d = getelementptr i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, -1
  %i.g = zext i1 %i.f to i32
  %spec.select.1.i = add nuw nsw i32 %i.g, %i.c
  %i.h = getelementptr i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, -1
  %i.k = zext i1 %i.j to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %i.k
  %i.l = getelementptr i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, -1
  %i.o = zext i1 %i.n to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %i.o
  %i.p = getelementptr i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, -1
  %i.s = zext i1 %i.r to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %i.s
  %i.t = getelementptr i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, -1
  %i.w = zext i1 %i.v to i32
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %i.w
  %i.x = getelementptr i8, ptr %0, i64 6
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, -1
  %i.aa = zext i1 %i.z to i32
  %spec.select.6.i = add nuw nsw i32 %spec.select.5.i, %i.aa
  %i.ab = getelementptr i8, ptr %0, i64 7
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %spec.select.7.i = add nuw nsw i32 %spec.select.6.i, %i.ae ; 2 uses
  %i.af = load i32, ptr @edid_fixup, align 4
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 8)
  %i.ai = icmp samesign ult i32 %spec.select.7.i, %i.ah
  br i1 %i.ai, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.aj = tail call ptr @memchr_inv(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 128) #22
  %.not.i.i = icmp eq ptr %i.aj, null
  %. = select i1 %.not.i.i, i32 3, i32 4
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp samesign ugt i32 %spec.select.7.i, 7
  br i1 %i.ak, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.d, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader
  %indvars.iv.i = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.i.7, %bb.f ] ; 10 uses
  %.09.i = phi i8 [ 0, %.preheader ], [ %i.bp, %bb.f ]
  %i.al = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.am = load i8, ptr %i.al, align 1
  %i.an = add i8 %i.am, %.09.i
  %i.ao = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, %i.an
  %i.as = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.at = getelementptr i8, ptr %i.as, i64 2
  %i.au = load i8, ptr %i.at, align 1
  %i.av = add i8 %i.au, %i.ar
  %i.aw = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 3
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = add i8 %i.ay, %i.av
  %i.ba = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = add i8 %i.bc, %i.az
  %i.be = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bf = getelementptr i8, ptr %i.be, i64 5
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = add i8 %i.bg, %i.bd
  %i.bi = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 6
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = add i8 %i.bk, %i.bh                     ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %indvars.iv.i, 120
  br i1 %exitcond.not.i.6, label %edid_block_compute_checksum.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 7
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = add i8 %i.bo, %i.bl
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8
  br label %bb.e

edid_block_compute_checksum.exit:                 ; preds = %bb.e
  %i.bq = sub i8 0, %i.bl
  %i.br = getelementptr i8, ptr %0, i64 127
  %.val = load i8, ptr %i.br, align 1
  %.not35 = icmp eq i8 %.val, %i.bq
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %edid_block_compute_checksum.exit
  %i.bs = tail call ptr @memchr_inv(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 128) #22
  %.not.i.i40 = icmp eq ptr %i.bs, null
end_hunk_3
begin_hunk_4_@mode_in_range:bb.a
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %.off.i = add i8 %i.bc, -1
  %switch.i = icmp ult i8 %.off.i, -2
  %.pre = load i8, ptr %i.c, align 1              ; 2 uses
  br i1 %switch.i, label %bb.j, label %range_pixel_clock.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.be = icmp ugt i8 %.pre, 3
  br i1 %i.be, label %bb.k, label %range_pixel_clock.exit.thread32

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr i8, ptr %2, i64 10
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 4
  br i1 %i.bh, label %range_pixel_clock.exit, label %range_pixel_clock.exit.thread32

range_pixel_clock.exit.thread32:                  ; preds = %bb.j, %bb.k
  %i.bi = mul nuw nsw i32 %i.bd, 10000
  %i.bj = add nuw nsw i32 %i.bi, 5001
  br label %bb.l

range_pixel_clock.exit:                           ; preds = %bb.k
  %i.bk = mul nuw nsw i32 %i.bd, 10000
  %i.bl = getelementptr i8, ptr %2, i64 12
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = lshr i8 %i.bm, 2
  %i.bo = zext nneg i8 %i.bn to i32
  %.neg.i = mul nsw i32 %i.bo, -250
  %i.bp = add nsw i32 %.neg.i, %i.bk              ; 2 uses
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %range_pixel_clock.exit.thread.thread, label %bb.l

bb.l:                                             ; preds = %range_pixel_clock.exit.thread32, %range_pixel_clock.exit
  %.0.i2935 = phi i32 [ %i.bj, %range_pixel_clock.exit.thread32 ], [ %i.bp, %range_pixel_clock.exit ]
  %i.bq = load i32, ptr %0, align 8
  %i.br = icmp ugt i32 %i.bq, %.0.i2935
  br i1 %i.br, label %bb.s, label %range_pixel_clock.exit.thread

range_pixel_clock.exit.thread:                    ; preds = %bb.i, %bb.l
  %i.bs = icmp ugt i8 %.pre, 3
  br i1 %i.bs, label %range_pixel_clock.exit.thread.thread, label %bb.o

range_pixel_clock.exit.thread.thread:             ; preds = %range_pixel_clock.exit, %range_pixel_clock.exit.thread
  %i.bt = getelementptr i8, ptr %2, i64 10
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = icmp eq i8 %i.bu, 4
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %range_pixel_clock.exit.thread.thread
  %i.bw = getelementptr i8, ptr %2, i64 13
  %i.bx = load i8, ptr %i.bw, align 1             ; 2 uses
  %.not23 = icmp eq i8 %i.bx, 0
  br i1 %.not23, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr i8, ptr %0, i64 4
  %i.ca = load i16, ptr %i.bz, align 4
  %i.cb = zext i16 %i.ca to i32
  %i.cc = getelementptr i8, ptr %2, i64 12
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = and i8 %i.cd, 3
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 11
  %i.ch = shl nuw nsw i32 %i.by, 3
  %i.ci = or disjoint i32 %i.cg, %i.ch
  %i.cj = icmp samesign ult i32 %i.ci, %i.cb
  br i1 %i.cj, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %range_pixel_clock.exit.thread.thread, %range_pixel_clock.exit.thread
  %i.ck = load i16, ptr %i.v, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = getelementptr i8, ptr %0, i64 4
  %i.cn = load i16, ptr %i.cm, align 4
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  %i.cp = sub nsw i32 %i.cl, %i.co
  %i.cq = icmp eq i32 %i.cp, 160
  br i1 %i.cq, label %bb.p, label %mode_is_rb.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cr = getelementptr i8, ptr %0, i64 8
  %i.cs = load i16, ptr %i.cr, align 8
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = sub nsw i32 %i.ct, %i.co
  %i.cv = icmp eq i32 %i.cu, 80
  br i1 %i.cv, label %bb.q, label %mode_is_rb.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr i8, ptr %0, i64 6
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = zext i16 %i.cx to i32
  %i.cz = sub nsw i32 %i.ct, %i.cy
  %i.da = icmp eq i32 %i.cz, 32
  br i1 %i.da, label %mode_is_rb.exit, label %mode_is_rb.exit.thread

mode_is_rb.exit:                                  ; preds = %bb.q
  %i.db = getelementptr i8, ptr %0, i64 16
  %i.dc = load i16, ptr %i.db, align 8
  %i.dd = zext i16 %i.dc to i32
  %i.de = getelementptr i8, ptr %0, i64 14
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = zext i16 %i.df to i32
  %i.dh = sub nsw i32 %i.dd, %i.dg
  %i.di = icmp eq i32 %i.dh, 3
  br i1 %i.di, label %bb.r, label %mode_is_rb.exit.thread

bb.r:                                             ; preds = %mode_is_rb.exit
  %i.dj = tail call fastcc zeroext i1 @drm_monitor_supports_rb(ptr noundef %1) #21, !srcloc !167
  br i1 %i.dj, label %mode_is_rb.exit.thread, label %bb.s

mode_is_rb.exit.thread:                           ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %mode_is_rb.exit
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n, %bb.l, %mode_in_vsync_range.exit, %mode_in_hsync_range.exit, %mode_is_rb.exit.thread
  %.0 = phi i1 [ false, %mode_in_vsync_range.exit ], [ false, %bb.l ], [ true, %mode_is_rb.exit.thread ], [ false, %bb.n ], [ false, %mode_in_hsync_range.exit ], [ false, %bb.r ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mode_put_tile_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_mode_get_tile_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_mode_create_tile_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(1) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #11 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { noredzone "no-builtin-wcslen" }
attributes #22 = { noredzone nounwind "no-builtin-wcslen" }
attributes #23 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #24 = { noredzone nounwind allocsize(1) "no-builtin-wcslen" }
attributes #25 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #26 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{!2, !16}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"cf-protection-branch", i32 1}
!5 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!7 = !{i32 1, !"Code Model", i32 2}
!8 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!9 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!10 = !{i32 1, !"override-stack-alignment", i32 8}
!11 = !{i32 4, !"SkipRaxSetup", i32 1}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"auto-init"}
!15 = !{i64 82297}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i64 80700}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{i64 227047}
!22 = distinct !{!22, !16}
!23 = !{i64 2159988961, i64 2159988836}
!24 = !{i64 2159989484, i64 2159990528, i64 2159990561, i64 2159990596, i64 2159990612, i64 2159991539, i64 2159991597, i64 2159991646, i64 2159991456, i64 2159990671, i64 2159990703, i64 2159990786}
!25 = !{i64 2159991953, i64 2159991829}
!26 = !{i64 83057}
!27 = !{i64 83312}
!28 = !{i64 83756}
!29 = distinct !{!29, !16}
!30 = !{i64 91300}
!31 = distinct !{!31, !16}
!32 = !{i64 222255}
!33 = !{i64 223102}
!34 = !{i64 2160026698, i64 2160026573}
!35 = !{i64 2160027221, i64 2160028301, i64 2160028334, i64 2160028369, i64 2160028385, i64 2160029312, i64 2160029370, i64 2160029419, i64 2160029229, i64 2160028444, i64 2160028476, i64 2160028559}
!36 = !{i64 2160029726, i64 2160029602}
!37 = !{i64 98562}
!38 = distinct !{!38, !16, !45}
!39 = !{i64 93041}
!40 = !{i64 93331}
!41 = !{i64 93380}
!42 = !{i64 93804}
!43 = !{i64 94165}
!44 = !{i64 94216}
!45 = !{!"llvm.loop.peeled.count", i32 1}
!46 = !{i64 94992}
!47 = !{i64 95051}
!48 = !{i64 99977}
!49 = !{i64 2160050506, i64 2160050533, i64 2160050914, i64 2160050947, i64 2160050982, i64 2160050998, i64 2160051839, i64 2160051897, i64 2160051946, i64 2160051756, i64 2160051057, i64 2160051089}
!50 = !{i64 2160048661}
!51 = !{i64 2160063114, i64 2160063141, i64 2160063522, i64 2160063555, i64 2160063590, i64 2160063606, i64 2160064447, i64 2160064505, i64 2160064554, i64 2160064364, i64 2160063665, i64 2160063697}
!52 = !{i64 2160061249}
!53 = !{i64 2158792192, i64 2158792067}
!54 = !{i64 2158792715, i64 2158793765, i64 2158793798, i64 2158793833, i64 2158793849, i64 2158798837, i64 2158798895, i64 2158798944, i64 2158798754, i64 2158793908, i64 2158793940, i64 2158794023}
!55 = !{i64 2158799247, i64 2158799123}
!56 = !{i64 2160069694, i64 2160069569}
!57 = !{i64 2160070217, i64 2160071284, i64 2160071317, i64 2160071352, i64 2160071368, i64 2160072295, i64 2160072353, i64 2160072402, i64 2160072212, i64 2160071427, i64 2160071459, i64 2160071542}
!58 = !{i64 2160072709, i64 2160072585}
!59 = !{i64 106690}
!60 = !{i64 106756}
!61 = !{i64 92188}
!62 = !{i64 92376}
!63 = !{i64 2159986624, i64 2159986651, i64 2159987063, i64 2159987096, i64 2159987131, i64 2159987147, i64 2159987988, i64 2159988046, i64 2159988095, i64 2159987905, i64 2159987206, i64 2159987238}
!64 = !{i64 2159984949}
!65 = !{i64 2160087078, i64 2160087105, i64 2160087486, i64 2160087519, i64 2160087554, i64 2160087570, i64 2160088411, i64 2160088469, i64 2160088518, i64 2160088328, i64 2160087629, i64 2160087661}
!66 = !{i64 2160085056}
!67 = !{i64 2160095120, i64 2160095147, i64 2160095528, i64 2160095561, i64 2160095596, i64 2160095612, i64 2160096453, i64 2160096511, i64 2160096560, i64 2160096370, i64 2160095671, i64 2160095703}
!68 = !{i64 2160093098}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = !{i64 177984}
!72 = distinct !{null}
!73 = distinct !{!73, !16}
!74 = distinct !{null}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = !{i64 2160260526}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = !{i64 2160277571}
!81 = distinct !{!81, !16}
!82 = !{i64 2160283724}
!83 = distinct !{!83, !16}
!84 = !{i64 2160305680}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = !{i64 2160308067}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !103}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = distinct !{!94, !16}
!95 = distinct !{!95, !16}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16}
!98 = !{i64 205448}
!99 = !{i64 2160323513}
!100 = !{i64 2160239927, i64 2160239802}
!101 = !{i64 2160240450, i64 2160241499, i64 2160241532, i64 2160241567, i64 2160241583, i64 2160242510, i64 2160242568, i64 2160242617, i64 2160242427, i64 2160241642, i64 2160241674, i64 2160241757}
!102 = !{i64 2160242924, i64 2160242800}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{i64 2148870606}
!105 = !{i64 180939}
!106 = !{i64 2160271806}
!107 = distinct !{!107, !16, !127}
!108 = distinct !{!108, !16}
!109 = distinct !{!109, !16}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = distinct !{!115, !16}
!116 = distinct !{!116, !16}
!117 = distinct !{!117, !16}
!118 = distinct !{!118, !16}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, !16}
!121 = distinct !{!121, !16}
!122 = !{i64 141667}
!123 = !{i64 140139}
!124 = !{i64 138131}
!125 = !{i64 138334}
!126 = !{i64 136914}
!127 = !{!"llvm.loop.unswitch.partial.disable"}
!128 = !{i64 2160243571}
!129 = !{i64 151522}
!130 = !{i64 134989}
!131 = !{i64 224938}
!132 = !{i64 224989}
!133 = distinct !{!133, !16}
!134 = distinct !{!134, !16}
!135 = distinct !{!135, !16}
!136 = distinct !{!136, !16}
!137 = !{i64 2160001568, i64 2160001443}
!138 = !{i64 2160002091, i64 2160003142, i64 2160003175, i64 2160003210, i64 2160003226, i64 2160004153, i64 2160004211, i64 2160004260, i64 2160004070, i64 2160003285, i64 2160003317, i64 2160003400}
!139 = !{i64 2160004567, i64 2160004443}
!140 = distinct !{!140, !16}
!141 = distinct !{!141, !16}
!142 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!143 = !{i64 2160235514, i64 2160235389}
!144 = !{i64 2160236037, i64 2160237078, i64 2160237111, i64 2160237146, i64 2160237162, i64 2160238089, i64 2160238147, i64 2160238196, i64 2160238006, i64 2160237221, i64 2160237253, i64 2160237336}
!145 = !{i64 2160238503, i64 2160238379}
!146 = distinct !{!146, !16}
!147 = distinct !{!147, !16}
!148 = distinct !{!148, !16}
!149 = !{i64 118814}
!150 = !{i64 122338}
!151 = !{i64 122767}
!152 = !{i64 137487}
!153 = !{i64 119883}
!154 = distinct !{!154, !16}
!155 = distinct !{!155, !16}
!156 = distinct !{!156, !16}
!157 = distinct !{!157, !16}
!158 = distinct !{!158, !16}
!159 = distinct !{!159, !16}
!160 = distinct !{!160, !16}
!161 = !{i64 130830}
!162 = !{i64 132499}
!163 = !{i64 132624}
!164 = !{i64 131913}
!165 = !{i64 133109}
!166 = !{i64 133377}
!167 = !{i64 129951}
end_hunk_4
