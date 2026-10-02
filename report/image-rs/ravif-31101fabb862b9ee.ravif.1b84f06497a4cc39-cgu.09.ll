Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [92 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rav1e-0.8.1/src/lrf.rs\00", align 1
@1 = private unnamed_addr constant [52 x i8] c"Width and height must be higher than 1 for LRF setup", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\004\05\00\00\07\00\00\00" }>, align 8
@3 = private unnamed_addr constant [128 x i8] c"\8C\00\00\00\A4\0C\00\00p\00\00\00n\08\00\00]\00\00\00R\06\00\00P\00\00\00\9E\05\00\00F\00\00\00\0F\05\00\00:\00\00\00\99\04\00\00/\00\00\007\04\00\00%\00\00\00\E4\03\00\00\1E\00\00\00\9D\03\00\00\19\00\00\00_\03\00\00\00\00\00\00\1D\0A\00\00\00\00\00\00R\06\00\00\00\00\00\00\99\04\00\00\00\00\00\00\9D\03\00\008\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00", align 4
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00`\03\00\00\13\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\12\04\00\00\11\00\00\00" }>, align 8
@6 = private unnamed_addr constant [42 x i8] c"assertion failed: index < self.rect.height", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\13\04\00\00\0F\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\CC\03\00\00\1D\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\CB\03\00\00\1A\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\8D\03\00\00\19\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\8C\03\00\00\16\00\00\00" }>, align 8
@12 = private unnamed_addr constant [15 x i8] c"not implemented", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00j\03\00\00\0A\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\1E\02\00\00\03\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00@\02\00\00 \00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00Y\02\00\00\16\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00[\02\00\00\19\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\AE\04\00\00\10\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\AD\04\00\00&\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\92\04\00\00\22\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\93\04\00\00 \00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\A6\04\00\00\07\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\9D\04\00\00<\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\9D\04\00\00\1E\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\95\04\00\00\10\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\88\02\00\00\13\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\1A\03\00\00\1A\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\002\03\00\00\11\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\F7\02\00\00\1D\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\F6\02\00\00\1A\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\B2\02\00\00\19\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\B1\02\00\00\16\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\8F\02\00\00\0A\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRbNtB6_5Debug3fmtCs2mu2Cb9JdUH_5ravif }>, align 8
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCs2mu2Cb9JdUH_5ravif }>, align 8
@36 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRiNtB6_5Debug3fmtCs2mu2Cb9JdUH_5ravif }>, align 8
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRtNtB6_5Debug3fmtCs2mu2Cb9JdUH_5ravif }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\FE\00\00\006\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\FE\00\00\00\16\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\12\01\00\00*\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00 \01\00\00\22\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00?\01\00\00\14\00\00\00" }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00A\01\00\00\10\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00L\01\00\00\14\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00L\01\00\00\1E\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00M\01\00\00\14\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00M\01\00\00\1E\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00N\01\00\00\15\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00N\01\00\00\1F\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00O\01\00\00\15\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00O\01\00\00\1F\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00>\01\00\00\13\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\006\01\00\00\14\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\EA\03\00\00\1D\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\EB\03\00\00!\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\EC\03\00\00\1B\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\E9\03\00\00!\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\22\03\00\00!\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00#\03\00\00\1B\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00!\03\00\00\1B\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\005\02\00\00\0B\00\00\00" }>, align 8
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\AA\04\00\005\00\00\00" }>, align 8
@63 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rav1e-0.8.1/src/api/internal.rs\00", align 1
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @63, [16 x i8] c"d\00\00\00\00\00\00\00\EA\03\00\00\0F\00\00\00" }>, align 8
@65 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\9B\01\00\00\05\00\00\00" }>, align 8
@67 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rav1e-0.8.1/src/tiling/tile_state.rs\00", align 1
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @67, [16 x i8] c"i\00\00\00\00\00\00\00\06\01\00\00\0C\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @67, [16 x i8] c"i\00\00\00\00\00\00\00\06\01\00\00!\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @67, [16 x i8] c"i\00\00\00\00\00\00\00\F2\00\00\00\0C\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @67, [16 x i8] c"i\00\00\00\00\00\00\00\F2\00\00\00!\00\00\00" }>, align 8
@72 = private unnamed_addr constant [44 x i8] c"assertion failed: x + cols <= frame_mvs.cols", align 1
@73 = private unnamed_addr constant [113 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rav1e-0.8.1/src/tiling/tile_motion_stats.rs\00", align 1
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @73, [16 x i8] c"p\00\00\00\00\00\00\00w\00\00\00\01\00\00\00" }>, align 8
@75 = private unnamed_addr constant [44 x i8] c"assertion failed: y + rows <= frame_mvs.rows", align 1
@76 = private unnamed_addr constant [118 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rav1e-0.8.1/src/tiling/tile_restoration_state.rs\00", align 1
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"u\00\00\00\00\00\00\00y\00\00\00\01\00\00\00" }>, align 8
@78 = private unnamed_addr constant [3 x i8] c"\03\F9\0F", align 1
@79 = private unnamed_addr constant [51 x i8] c"assertion failed: rect.x >= -(cfg.xorigin as isize)", align 1
@80 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rav1e-0.8.1/src/tiling/plane_region.rs\00", align 1
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @80, [16 x i8] c"k\00\00\00\00\00\00\00\A7\01\00\00\01\00\00\00" }>, align 8
@82 = private unnamed_addr constant [51 x i8] c"assertion failed: rect.y >= -(cfg.yorigin as isize)", align 1
@83 = private unnamed_addr constant [92 x i8] c"assertion failed: cfg.xorigin as isize + rect.x + rect.width as isize <= cfg.stride as isize", align 1
@84 = private unnamed_addr constant [103 x i8] c"assertion failed: cfg.yorigin as isize + rect.y + rect.height as isize <=\0A    cfg.alloc_height as isize", align 1
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @80, [16 x i8] c"k\00\00\00\00\00\00\00\A8\01\00\00\01\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\CF\01\00\00\1B\00\00\00" }>, align 8
@87 = private unnamed_addr constant [79 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/core/src/slice/iter.rs\00", align 1
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @87, [16 x i8] c"N\00\00\00\00\00\00\00o\07\00\00\11\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\01\02\00\00\0D\00\00\00" }>, align 8
@90 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead20estimate_intra_coststECs2mu2Cb9JdUH_5ravif = private unnamed_addr constant [22 x i8] c"\00\05\06\01\07\08\02\09\0A\03\0B\0C\04\04\04\04\0D\0E\0F\10\11\12", align 1
@switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif = private unnamed_addr constant [19 x i8] c"\02\03\04\05\06\02\03\03\04\04\05\05\06\02\04\03\05\04\06", align 8
@switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif.206 = private unnamed_addr constant [19 x i8] c"\02\03\04\05\06\03\02\04\03\05\04\06\05\04\02\05\03\06\04", align 8
@switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif = private unnamed_addr constant [22 x i8] c"\02\02\03\03\03\04\04\04\05\05\05\06\06\06\07\07\02\04\03\05\04\06", align 8
@switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif.208 = private unnamed_addr constant [22 x i8] c"\02\03\02\03\04\03\04\05\04\05\06\05\06\07\06\07\04\02\05\03\06\04", align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsc_NtCsdEEMmLUVy6d_5rav1e3lrfNtB6_16RestorationState16lrf_filter_framehECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %0, ptr noalias nofree noundef align 8 dereferenceable(288) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(816) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [28 x i8], align 4                ; 13 uses
  %i.f = alloca [28 x i8], align 4                ; 17 uses
  %i.g = alloca [284 x i8], align 4               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [288 x i8], align 8               ; 13 uses
  %i.l = alloca [48 x i8], align 16               ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 10 uses
  %i.q = alloca [288 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.r = invoke { ptr, i64 } @_RNvXsm_CscdqOssW2O4q_11aligned_vecINtB5_4ABoxShINtB5_10ConstAlignKj40_EENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
          to label %bb.c unwind label %bb.b, !noalias !97 ; 2 uses

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i, %bb.k, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.b ], [ %.pn, %bb.k ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %storemerge29.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ]
  %i.s = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEEECs2mu2Cb9JdUH_5ravif(ptr nonnull align 8 %i.k, i64 %storemerge29.lcssa.i.i.i) #24, !noalias !98
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = extractvalue { ptr, i64 } %i.r, 0
  %i.v = extractvalue { ptr, i64 } %i.r, 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.u, ptr %i.k, align 8, !alias.scope !96, !noalias !95
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.v, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !alias.scope !96, !noalias !95
  %.sroa.526.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.w, i64 80, i1 false), !noalias !98
  %i.x = invoke { ptr, i64 } @_RNvXsm_CscdqOssW2O4q_11aligned_vecINtB5_4ABoxShINtB5_10ConstAlignKj40_EENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.t)
          to label %bb.d unwind label %bb.b, !noalias !97 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.z = extractvalue { ptr, i64 } %i.x, 0
  %i.aa = extractvalue { ptr, i64 } %i.x, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.z, ptr %i.ac, align 8, !alias.scope !96, !noalias !95
  %.sroa.425.0..sroa_idx.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i64 %i.aa, ptr %.sroa.425.0..sroa_idx.1.i.i.i, align 8, !alias.scope !96, !noalias !95
  %.sroa.526.0..sroa_idx.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx.1.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ab, i64 80, i1 false), !noalias !98
  %i.ad = invoke { ptr, i64 } @_RNvXsm_CscdqOssW2O4q_11aligned_vecINtB5_4ABoxShINtB5_10ConstAlignKj40_EENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.y)
          to label %_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit unwind label %bb.b, !noalias !97 ; 2 uses

_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.d
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store ptr %i.ae, ptr %i.ah, align 8, !alias.scope !96, !noalias !95
  %.sroa.425.0..sroa_idx.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  store i64 %i.af, ptr %.sroa.425.0..sroa_idx.2.i.i.i, align 8, !alias.scope !96, !noalias !95
  %.sroa.526.0..sroa_idx.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx.2.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ag, i64 80, i1 false), !noalias !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.q, ptr noundef nonnull align 8 dereferenceable(288) %i.k, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !95
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 688
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 560
  %i.al = load i32, ptr %i.ak, align 8, !range !5, !noundef !4
  %i.am = icmp ne i32 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 584
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %i.ap = add i64 %i.ao, 7
  %i.aq = lshr i64 %i.ap, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !99
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !101
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef range(i64 28224, 69697) 28224, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc35 unwind label %bb.l

.noexc35:                                         ; preds = %_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit
  %i.ar = load i64, ptr %i.i, align 8, !range !6, !noalias !101, !noundef !4
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !7, !noalias !101, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.as, label %bb.e, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i, !prof !8

bb.e:                                             ; preds = %.noexc35
  %i.aw = load i64, ptr %i.av, align 8, !noalias !101
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #25
          to label %.noexc36 unwind label %bb.l

.noexc36:                                         ; preds = %bb.e
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i: ; preds = %.noexc35
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !101, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !101
  store i64 %i.au, ptr %i.j, align 8, !alias.scope !100, !noalias !99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !100, !noalias !99
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 28224, ptr %i.az, align 8, !alias.scope !100, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !102
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 28224, 69697) 28224, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %bb.g, !noalias !99

.noexc.i:                                         ; preds = %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i
  %i.ba = load i64, ptr %i.h, align 8, !range !6, !noalias !102, !noundef !4
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !7, !noalias !102, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.f, label %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit, !prof !8

bb.f:                                             ; preds = %.noexc.i
  %i.bf = load i64, ptr %i.be, align 8, !noalias !102
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.bf) #25
          to label %.noexc1.i unwind label %bb.g, !noalias !99

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %.body unwind label %bb.h, !noalias !99

bb.h:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !99
  unreachable

_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit: ; preds = %.noexc.i
  %i.bi = load ptr, ptr %i.be, align 8, !noalias !102, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.bd, ptr %i.bj, align 8, !alias.scope !99
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !99
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 28224, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !99
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 576
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 621
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 496
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.03.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.03.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.n

.body:                                            ; preds = %bb.l, %bb.g, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.cn, %bb.l ], [ %i.bg, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val9.i.i.i = load i64, ptr %i.ci, align 8, !alias.scope !106, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.body
  %.val8.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !106, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %.val9.i.i.i, i64 noundef 64) #27, !noalias !107
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i: ; preds = %bb.i, %.body
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %.val9.i.1.i.i = load i64, ptr %i.cj, align 8, !alias.scope !106, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.1.i.i = icmp eq i64 %.val9.i.1.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.1.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %.val8.i.1.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !106, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.1.i.i, i64 noundef %.val9.i.1.i.i, i64 noundef 64) #27, !noalias !107
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i: ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %.val9.i.2.i.i = load i64, ptr %i.cl, align 8, !alias.scope !106, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.2.i.i = icmp eq i64 %.val9.i.2.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.2.i.i, label %common.resume, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %.val8.i.2.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !106, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.2.i.i, i64 noundef %.val9.i.2.i.i, i64 noundef 64) #27, !noalias !107
  br label %common.resume

bb.l:                                             ; preds = %bb.e, %_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit, %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit84:                                      ; preds = %..loopexit81_crit_edge.us, %bb.n
  %i.co = icmp samesign ult i64 %.sroa.019.0188, 2
  %i.cp = select i1 %i.am, i1 %i.co, i1 false
  br i1 %i.cp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit84
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdEEMmLUVy6d_5rav1e3lrf19IntegralImageBufferECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(48) %i.p)
          to label %bb.au unwind label %bb.l

bb.n:                                             ; preds = %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit, %.loopexit84
  %.sroa.019.0188 = phi i64 [ 0, %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit ], [ %i.cq, %.loopexit84 ] ; 6 uses
  %i.cq = add nuw nsw i64 %.sroa.019.0188, 1
  %i.cr = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.019.0188 ; 3 uses
  %i.cs = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %.sroa.019.0188 ; 11 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !4
  %i.cx = and i64 %i.cu, 63                       ; 2 uses
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = lshr i64 %i.cy, 1
  %i.da = add i64 %i.cz, %i.bl
  %i.db = lshr i64 %i.da, %i.cx                   ; 3 uses
  %i.dc = and i64 %i.cw, 63                       ; 5 uses
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = lshr i64 %i.dd, 1
  %i.df = add i64 %i.de, %i.ao
  %i.dg = lshr i64 %i.df, %i.dc                   ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.di = load i64, ptr %i.dh, align 8, !noundef !4 ; 3 uses
  %.not189 = icmp eq i64 %i.di, 0
  %i.dj = lshr i64 64, %i.dc
  %i.dk = lshr i64 56, %i.dc
  %i.dl = add i64 %i.di, -1
  %i.dm = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %.sroa.019.0188 ; 3 uses
  %i.dn = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %.sroa.019.0188 ; 3 uses
  %4 = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.cs, i64 0
  %5 = getelementptr inbounds nuw i8, <2 x ptr> %4, <2 x i64> <i64 16, i64 0>
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.du = add i64 %i.db, 3
  %i.dv = add i64 %i.dg, -1                       ; 2 uses
  %i.dw = add i64 %i.db, -1                       ; 3 uses
  br i1 %.not189, label %.loopexit84, label %.split.us

.split.us:                                        ; preds = %bb.n
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !4 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %..loopexit81_crit_edge.us, %.split.us
  %.sroa.021.0150.us = phi i64 [ 0, %.split.us ], [ %i.dz, %..loopexit81_crit_edge.us ] ; 5 uses
  %i.dz = add nuw nsw i64 %.sroa.021.0150.us, 1
  %i.ea = icmp eq i64 %.sroa.021.0150.us, 0
  br i1 %i.ea, label %.lr.ph149.us.thread, label %.lr.ph149.us

.lr.ph149.us:                                     ; preds = %bb.o
  %i.eb = shl nuw i64 %.sroa.021.0150.us, 6
  %i.ec = add i64 %i.eb, -8
  %i.ed = lshr i64 %i.ec, %i.dc
  %.fr = freeze i64 %i.ed                         ; 6 uses
  %i.ee = sub i64 %i.dg, %.fr
  %..i.us = call noundef i64 @llvm.umin.i64(i64 %i.ee, i64 %i.dj)
  %i.ef = sub i64 0, %.fr
  %i.eg = sub i64 %i.dg, %.fr
  %i.eh = icmp slt i64 %.fr, 0
  %.sroa.020.0.i.us = call i64 @llvm.smax.i64(i64 range(i64 0, -71) %.fr, i64 0)
  %spec.select = select i1 %i.eh, i64 %i.ef, i64 0
  br label %.lr.ph149.us.thread

.lr.ph149.us.thread:                              ; preds = %.lr.ph149.us, %bb.o
  %.sroa.020.0.i.us291 = phi i64 [ 0, %bb.o ], [ %.sroa.020.0.i.us, %.lr.ph149.us ]
  %i.ei = phi i64 [ %i.dg, %bb.o ], [ %i.eg, %.lr.ph149.us ]
  %.sroa.04.0.us290 = phi i64 [ 0, %bb.o ], [ %.fr, %.lr.ph149.us ] ; 12 uses
  %.sroa.010.0.us289 = phi i64 [ %i.dk, %bb.o ], [ %..i.us, %.lr.ph149.us ] ; 5 uses
  %i.ej = phi i64 [ 0, %bb.o ], [ %spec.select, %.lr.ph149.us ] ; 6 uses
  %i.ek = add nuw i64 %.sroa.04.0.us290, %.sroa.010.0.us289 ; 4 uses
  %i.el = icmp sgt i64 %i.ek, %i.dg
  %i.em = add i64 %.sroa.04.0.us290, %i.ej
  %i.en = sub i64 %i.dg, %i.em
  %i.eo = sub i64 %.sroa.010.0.us289, %i.ej
  %.sroa.021.0.i.us = select i1 %i.el, i64 %i.en, i64 %i.eo ; 2 uses
  %..i.i.us = call i64 @llvm.smax.i64(i64 %.sroa.021.0.i.us, i64 0) ; 2 uses
  %i.ep = add i64 %.sroa.04.0.us290, -3           ; 2 uses
  %i.eq = add nuw i64 %i.ek, 4                    ; 2 uses
  %i.er = icmp slt i64 %i.ep, %i.eq
  %i.es = add nuw i64 %i.ek, 1
  %i.et = add i64 %.sroa.04.0.us290, -2
  %i.eu = add i64 %..i.i.us, %i.ej                ; 2 uses
  %i.ev = icmp ult i64 %i.ej, %i.eu
  %i.ew = add nuw i64 %i.ej, 1
  %i.ex = icmp slt i64 %.sroa.021.0.i.us, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph149.us.thread, %.backedge.us
  %.sroa.023.0148.us = phi i64 [ 0, %.lr.ph149.us.thread ], [ %i.ey, %.backedge.us ] ; 4 uses
  %i.ey = add nuw i64 %.sroa.023.0148.us, 1       ; 2 uses
  %i.ez = mul i64 %i.dy, %.sroa.023.0148.us       ; 12 uses
  %i.fa = icmp eq i64 %.sroa.023.0148.us, %i.dl
  %i.fb = sub i64 %i.db, %i.ez                    ; 2 uses
  %.sroa.014.0.us = select i1 %i.fa, i64 %i.fb, i64 %i.dy ; 4 uses
  %i.fc = invoke noundef nonnull ptr @_RNvMsb_NtCsdEEMmLUVy6d_5rav1e3lrfNtB5_16RestorationPlane26restoration_unit_by_stripe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cr, i64 noundef %.sroa.021.0150.us, i64 noundef %.sroa.023.0148.us)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.fd = load i8, ptr %i.fc, align 1, !range !9, !noundef !4
  switch i8 %i.fd, label %default.unreachable [
    i8 0, label %.backedge.us
    i8 1, label %bb.z
    i8 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %.sroa.017.0.copyload.us = load i16, ptr %i.fg, align 1
  %i.fh = load i8, ptr %i.bm, align 1, !range !10, !noundef !4
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.s, label %.backedge.us

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.dm, ptr %i.o, align 8
  store i64 %i.ez, ptr %i.bn, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.dn, ptr %i.n, align 8
  store i64 %i.ez, ptr %i.bp, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bq, align 8
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef 392, i64 noundef %i.fb, i64 noundef %i.ei, i64 noundef %.sroa.014.0.us, i64 noundef %.sroa.010.0.us289, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.dm, ptr %i.m, align 8
  store i64 %i.ez, ptr %i.br, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.fj = load i64, ptr %i.do, align 8, !alias.scope !109, !noalias !110, !noundef !4 ; 2 uses
  %i.fk = load ptr, ptr %i.cs, align 8, !alias.scope !109, !noalias !110, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.fl = load i64, ptr %i.dp, align 8, !alias.scope !114, !noalias !115, !noundef !4
  %i.fm = icmp eq i64 %i.fl, 0
  %i.fn = load i64, ptr %i.dq, align 8, !alias.scope !114, !noalias !115
  %i.fo = icmp eq i64 %i.fn, 0
  %or.cond.i.i.us = select i1 %i.fm, i1 true, i1 %i.fo, !prof !11
  br i1 %or.cond.i.i.us, label %.noexc.us, label %bb.t, !prof !11

bb.t:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  %i.fp = load i64, ptr %i.dr, align 8, !alias.scope !114, !noalias !115, !noundef !4 ; 3 uses
  %i.fq = sub i64 0, %i.fp
  %.not.i.i.us = icmp slt i64 %i.ez, %i.fq
  br i1 %.not.i.i.us, label %.split152.us.invoke, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.fr = load i64, ptr %i.ds, align 8, !alias.scope !114, !noalias !115, !noundef !4 ; 2 uses
  %i.fs = sub i64 0, %i.fr
  %.not5.i.i.us = icmp slt i64 %.sroa.04.0.us290, %i.fs
  br i1 %.not5.i.i.us, label %.split152.us.invoke, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.ft = add i64 %.sroa.014.0.us, %i.ez
  %i.fu = add i64 %i.ft, %i.fp
  %.not6.i.i.us = icmp sgt i64 %i.fu, %i.fj
  br i1 %.not6.i.i.us, label %.split152.us.invoke, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.fv = add i64 %i.fr, %.sroa.04.0.us290        ; 2 uses
  %i.fw = add i64 %i.fv, %.sroa.010.0.us289
  %i.fx = load i64, ptr %i.dt, align 8, !alias.scope !114, !noalias !115, !noundef !4
  %.not7.i.i.us = icmp sgt i64 %i.fw, %i.fx
  br i1 %.not7.i.i.us, label %.split152.us.invoke, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  %i.fy = mul i64 %i.fv, %i.fj
  %i.fz = getelementptr i8, ptr %i.fk, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.fp
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.ez
  store ptr %i.gb, ptr %i.bt, align 8, !alias.scope !116, !noalias !117
  store ptr %i.do, ptr %i.l, align 16, !alias.scope !116, !noalias !117
  store i64 %i.ez, ptr %i.bu, align 16, !alias.scope !118, !noalias !119
  store i64 %.sroa.04.0.us290, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !118, !noalias !119
  store i64 %.sroa.014.0.us, ptr %.sroa.13.0..sroa_idx, align 16, !alias.scope !118, !noalias !119
  store i64 %.sroa.010.0.us289, ptr %.sroa.18.0..sroa_idx, align 8, !alias.scope !118, !noalias !119
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

.noexc.us:                                        ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  store <2 x ptr> %5, ptr %i.l, align 16, !alias.scope !120, !noalias !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bu, i8 0, i64 32, i1 false), !alias.scope !120, !noalias !121
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us: ; preds = %.noexc.us, %bb.x
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterhhECs2mu2Cb9JdUH_5ravif(i8 noundef %i.ff, i16 noundef %.sroa.017.0.copyload.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, i64 noundef 392, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.y:                                             ; preds = %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge.us

bb.z:                                             ; preds = %bb.q
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %.sroa.028.0.copyload.us = load i48, ptr %i.gc, align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.extract.trunc.i.us = trunc i48 %.sroa.028.0.copyload.us to i8
  %.sroa.2.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 8
  %.sroa.2.0.extract.trunc.i.us = trunc i48 %.sroa.2.0.extract.shift.i.us to i8
  %.sroa.3.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 16
  %.sroa.3.0.extract.trunc.i.us = trunc i48 %.sroa.3.0.extract.shift.i.us to i8
  %.sroa.4.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 24
  %.sroa.4.0.extract.trunc.i.us = trunc i48 %.sroa.4.0.extract.shift.i.us to i8
  %.sroa.5.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 32
  %.sroa.5.0.extract.trunc.i.us = trunc i48 %.sroa.5.0.extract.shift.i.us to i8
  %i.gd = load i64, ptr %i.bv, align 8, !noalias !122, !noundef !4 ; 4 uses
  %i.ge = sext i8 %.sroa.0.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gf = sext i8 %.sroa.2.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gg = sext i8 %.sroa.3.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gh = sext i8 %.sroa.4.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gi = sext i8 %.sroa.5.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gj = ashr i48 %.sroa.028.0.copyload.us, 40
  %i.gk = trunc nsw i48 %i.gj to i32              ; 3 uses
  %i.gl = icmp eq i64 %i.gd, 12                   ; 3 uses
  %..i49.us = select i1 %i.gl, i32 9, i32 11      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(284) %i.g, i8 0, i64 284, i1 false), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !122
  %i.gm = add nsw i32 %i.gf, %i.ge
  %i.gn = add nsw i32 %i.gm, %i.gg
  %i.go = shl nsw i32 %i.gn, 1
  %i.gp = sub nsw i32 128, %i.go
  store i32 %i.ge, ptr %i.f, align 4, !noalias !122
  store i32 %i.gf, ptr %i.bw, align 4, !noalias !122
  store i32 %i.gg, ptr %i.bx, align 4, !noalias !122
  store i32 %i.gp, ptr %i.by, align 4, !noalias !122
  store i32 %i.gg, ptr %i.bz, align 4, !noalias !122
  store i32 %i.gf, ptr %i.ca, align 4, !noalias !122
  store i32 %i.ge, ptr %i.cb, align 4, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !122
  %i.gq = add nsw i32 %i.gh, %i.gk
  %i.gr = add nsw i32 %i.gq, %i.gi
  %i.gs = shl nsw i32 %i.gr, 1
  %i.gt = sub nsw i32 128, %i.gs
  store i32 %i.gh, ptr %i.e, align 4, !noalias !122
  store i32 %i.gi, ptr %i.cc, align 4, !noalias !122
  store i32 %i.gk, ptr %i.cd, align 4, !noalias !122
  store i32 %i.gt, ptr %i.ce, align 4, !noalias !122
  store i32 %i.gk, ptr %i.cf, align 4, !noalias !122
  store i32 %i.gi, ptr %i.cg, align 4, !noalias !122
  store i32 %i.gh, ptr %i.ch, align 4, !noalias !122
  %i.gu = add i64 %.sroa.014.0.us, %i.ez          ; 2 uses
  %i.gv = icmp ult i64 %i.ez, %i.gu
  br i1 %i.gv, label %.lr.ph89.i.us, label %_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhECs2mu2Cb9JdUH_5ravif.exit.us

.lr.ph89.i.us:                                    ; preds = %bb.z
  %i.gw = add i64 %i.gd, 8
  %.98.neg91.i.us = select i1 %i.gl, i64 27, i64 29
  %i.gx = add i64 %i.gw, %.98.neg91.i.us
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = and i32 %i.gy, 31
  %notmask.i.us = shl nsw i32 -1, %i.gz
  %i.ha = xor i32 %notmask.i.us, -1
  %.98.i.us = select i1 %i.gl, i64 5, i64 3       ; 2 uses
  %i.hb = sub i64 %i.gd, %.98.i.us
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = add i32 %i.hc, 6
  %i.he = and i32 %i.hd, 31
  %i.hf = shl nuw i32 1, %i.he                    ; 2 uses
  %i.hg = trunc nuw nsw i64 %.98.i.us to i32      ; 2 uses
  %i.hh = shl nuw nsw i32 1, %i.hg
  %i.hi = lshr exact i32 %i.hh, 1
  %i.hj = sub i32 0, %i.hf
  %i.hk = sub i32 %i.ha, %i.hf
  %i.hl = shl nuw nsw i32 1, %..i49.us
  %i.hm = lshr exact i32 %i.hl, 1
  %i.hn = trunc i64 %i.gd to i32
  %i.ho = and i32 %i.hn, 31
  %notmask93.i.us = shl nsw i32 -1, %i.ho
  %i.hp = xor i32 %notmask93.i.us, -1
  %i.hq = sub i64 3, %i.ez
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %.lr.ph89.i.us
  %indvars.iv.i.us = phi i64 [ %i.hq, %.lr.ph89.i.us ], [ %indvars.iv.next.i.us, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 8 uses
  %.sroa.01.087.i.us = phi i64 [ %i.ez, %.lr.ph89.i.us ], [ %i.hr, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 4 uses
  %i.hr = add i64 %.sroa.01.087.i.us, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !122
  store i64 %.sroa.01.087.i.us, ptr %i.d, align 8, !noalias !122
  %i.hs = sub i64 %i.du, %.sroa.01.087.i.us       ; 2 uses
  %..i101.i.us = call noundef i64 @llvm.smin.i64(i64 %i.hs, i64 7) ; 6 uses
  br i1 %i.er, label %.lr.ph78.i.us, label %._crit_edge79.i.us

.lr.ph78.i.us:                                    ; preds = %bb.aa
  %i.ht = sub i64 3, %.sroa.01.087.i.us           ; 4 uses
  %i.hu = icmp sgt i64 %i.ht, 0
  %..i105.i.us = call i64 @llvm.smax.i64(i64 %i.ht, i64 0) ; 4 uses
  %i.hv = sub i64 %..i105.i.us, %i.ht             ; 3 uses
  %i.hw = sub i64 %..i101.i.us, %i.ht             ; 4 uses
  %i.hx = icmp uge i64 %..i101.i.us, %..i105.i.us
  %i.hy = icmp ult i64 %..i101.i.us, 8
  %or.cond99.i.us = and i1 %i.hx, %i.hy
  %i.hz = icmp ult i64 %i.hw, %i.hv
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i101.i.us
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i105.i.us
  %i.ic = icmp slt i64 %i.hs, 7
  %exitcond142.not.i.us = icmp eq i64 %indvars.iv.i.us, 1
  %exitcond142.1.not.i.us = icmp eq i64 %indvars.iv.i.us, 2
  %exitcond142.2.not.i.us = icmp eq i64 %indvars.iv.i.us, 3
  %exitcond142.3.not.i.us = icmp eq i64 %indvars.iv.i.us, 4
  %exitcond142.4.not.i.us = icmp eq i64 %indvars.iv.i.us, 5
  %exitcond142.5.not.i.us = icmp eq i64 %indvars.iv.i.us, 6
  %exitcond142.6.not.i.us = icmp eq i64 %indvars.iv.i.us, 7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %.lr.ph78.i.us
  %.sroa.069.076.i.us = phi i64 [ %i.ep, %.lr.ph78.i.us ], [ %i.id, %bb.aj ] ; 6 uses
  %i.id = add i64 %.sroa.069.076.i.us, 1          ; 2 uses
  %i.ie = icmp slt i64 %.sroa.069.076.i.us, %.sroa.04.0.us290
  br i1 %i.ie, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.if = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.dv)
          to label %.noexc56.us unwind label %.loopexit.split-lp.loopexit.split.us ; 2 uses

.noexc56.us:                                      ; preds = %bb.ac
  %i.ig = icmp slt i64 %.sroa.069.076.i.us, %i.ek
  br i1 %i.ig, label %.noexc57.us.invoke, label %bb.ad

bb.ad:                                            ; preds = %.noexc56.us
  %..i104.i.us = call noundef i64 @llvm.smin.i64(i64 %i.es, i64 %i.if)
  br label %.noexc57.us.invoke

bb.ae:                                            ; preds = %bb.ab
  %i.ih = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.dv)
          to label %.noexc57.us unwind label %.loopexit.split-lp.loopexit.split.us

.noexc57.us:                                      ; preds = %bb.ae
  %..i103.i.us = call noundef i64 @llvm.smax.i64(i64 %i.et, i64 %i.ih)
  br label %.noexc57.us.invoke

.noexc57.us.invoke:                               ; preds = %.noexc56.us, %bb.ad, %.noexc57.us
  %i.ii = phi ptr [ %i.dn, %.noexc57.us ], [ %i.dn, %bb.ad ], [ %i.dm, %.noexc56.us ]
  %i.ij = phi i64 [ %..i103.i.us, %.noexc57.us ], [ %..i104.i.us, %bb.ad ], [ %i.if, %.noexc56.us ]
  %i.ik = invoke { ptr, i64 } @_RNvMs5_NtCsko5zPvjVG7R_7v_frame5planeINtB5_5PlanehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ii, i64 noundef %i.ij)
          to label %.noexc58.us unwind label %.loopexit.split-lp.loopexit.split.us ; 2 uses

.noexc58.us:                                      ; preds = %.noexc57.us.invoke
  %.sroa.031.0.i.us = extractvalue { ptr, i64 } %i.ik, 0 ; 5 uses
  %.sroa.10.0.i.us = extractvalue { ptr, i64 } %i.ik, 1 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0.i.us) ]
  %.not95.i.us = icmp eq i64 %.sroa.10.0.i.us, 0
  br i1 %.not95.i.us, label %.split179.us.invoke, label %bb.af

bb.af:                                            ; preds = %.noexc58.us
  %i.il = load i8, ptr %.sroa.031.0.i.us, align 1, !noundef !4
  %i.im = zext i8 %i.il to i32
  %i.in = icmp ult i64 %i.dw, %.sroa.10.0.i.us
  br i1 %i.in, label %bb.ag, label %.split179.us.invoke

bb.ag:                                            ; preds = %bb.af
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.031.0.i.us, i64 %i.dw
  %i.ip = load i8, ptr %i.io, align 1, !noundef !4
  %i.iq = zext i8 %i.ip to i32
  br i1 %i.hu, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %bb.ag
  %i.ir = load i32, ptr %i.e, align 4, !noalias !122, !noundef !4 ; 2 uses
  br i1 %exitcond142.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.1.i.us

.lr.ph.1.i.us:                                    ; preds = %.lr.ph.preheader.i.us
  %i.is = load i32, ptr %i.cc, align 4, !noalias !122, !noundef !4
  %i.it = add i32 %i.is, %i.ir                    ; 2 uses
  br i1 %exitcond142.1.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.2.i.us

.lr.ph.2.i.us:                                    ; preds = %.lr.ph.1.i.us
  %i.iu = load i32, ptr %i.cd, align 4, !noalias !122, !noundef !4
  %i.iv = add i32 %i.iu, %i.it                    ; 2 uses
  br i1 %exitcond142.2.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.3.i.us

.lr.ph.3.i.us:                                    ; preds = %.lr.ph.2.i.us
  %i.iw = load i32, ptr %i.ce, align 4, !noalias !122, !noundef !4
  %i.ix = add i32 %i.iw, %i.iv                    ; 2 uses
  br i1 %exitcond142.3.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.4.i.us

.lr.ph.4.i.us:                                    ; preds = %.lr.ph.3.i.us
  %i.iy = load i32, ptr %i.cf, align 4, !noalias !122, !noundef !4
  %i.iz = add i32 %i.iy, %i.ix                    ; 2 uses
  br i1 %exitcond142.4.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.5.i.us

end_hunk_0
begin_hunk_1_@_RINvMsc_NtCsdEEMmLUVy6d_5rav1e3lrfNtB6_16RestorationState16lrf_filter_framehECs2mu2Cb9JdUH_5ravif:bb.a
  %i.nh = add nuw nsw i64 %.sroa.513.0.copyload.i.us, 7 ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ne
  %i.nj = load i32, ptr %i.ni, align 4, !noalias !122, !noundef !4
  %i.nk = load i32, ptr %i.ng, align 4, !noundef !4
  %i.nl = mul i32 %i.nk, %i.nj
  %i.nm = add i32 %i.nl, %i.nd                    ; 2 uses
  %exitcond144.not.i.us.6 = icmp eq i64 %i.nh, %.sroa.714.0.copyload.i.us
  br i1 %exitcond144.not.i.us.6, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.7

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.7: ; preds = %bb.as
  %i.nn = add nuw nsw i64 %i.nh, %.sroa.411.0.copyload.i.us ; 3 uses
  %i.no = icmp ult i64 %i.nn, 7
  br i1 %i.no, label %bb.at, label %.split179.us.invoke

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.7
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.copyload.i.us, i64 %i.nh
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.nn
  %i.nr = load i32, ptr %i.nq, align 4, !noalias !122, !noundef !4
  %i.ns = load i32, ptr %i.np, align 4, !noundef !4
  %i.nt = mul i32 %i.ns, %i.nr
  %i.nu = add i32 %i.nt, %i.nm
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us: ; preds = %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %.noexc53.us
  %.sroa.059.0.lcssa.i.us = phi i32 [ 0, %.noexc53.us ], [ %i.lk, %bb.am ], [ %i.lt, %bb.an ], [ %i.mc, %bb.ao ], [ %i.ml, %bb.ap ], [ %i.mu, %bb.aq ], [ %i.nd, %bb.ar ], [ %i.nm, %bb.as ], [ %i.nu, %bb.at ]
  %i.nv = add i32 %.sroa.059.0.lcssa.i.us, %i.hm
  %i.nw = ashr i32 %i.nv, %..i49.us
  %i.nx = invoke noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.nw, i32 noundef 0, i32 noundef %i.hp)
          to label %.noexc54.us unwind label %.loopexit.split.us

.noexc54.us:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us
  %i.ny = trunc i32 %i.nx to i8
  store i8 %i.ny, ptr %i.kz, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.nz = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !128, !noalias !129, !noundef !4 ; 3 uses
  %i.oa = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !130, !noalias !131, !noundef !4
  %i.ob = icmp ult i64 %i.nz, %i.oa
  br i1 %i.ob, label %.lr.ph84.ithread-pre-split.us, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us

.lr.ph84.ithread-pre-split.us:                    ; preds = %.noexc54.us
  %.pr.us = load i64, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !alias.scope !123, !noalias !122 ; 2 uses
  %i.oc = add nuw i64 %i.nz, 1
  store i64 %i.oc, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !132, !noalias !122
  %i.od = icmp eq i64 %.pr.us, 0
  br i1 %i.od, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %.lr.ph.us

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us: ; preds = %.noexc54.us, %.noexc50.us, %.lr.ph84.ithread-pre-split.us, %.lr.ph84.i.preheader.us, %._crit_edge79.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !122
  %indvars.iv.next.i.us = add i64 %indvars.iv.i.us, -1
  %exitcond145.not.i.us = icmp eq i64 %i.hr, %i.gu
  br i1 %exitcond145.not.i.us, label %_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhECs2mu2Cb9JdUH_5ravif.exit.us, label %bb.aa

_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhECs2mu2Cb9JdUH_5ravif.exit.us: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.us

.lr.ph84.i.preheader.us:                          ; preds = %._crit_edge79.i.us
  store i64 %i.ew, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !132, !noalias !122
  br i1 %i.ex, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %.lr.ph.us

.backedge.us:                                     ; preds = %bb.y, %_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhECs2mu2Cb9JdUH_5ravif.exit.us, %bb.q, %bb.r
  %exitcond.not = icmp eq i64 %i.ey, %i.di
  br i1 %exitcond.not, label %..loopexit81_crit_edge.us, label %bb.p

..loopexit81_crit_edge.us:                        ; preds = %.backedge.us
  %exitcond261.not = icmp eq i64 %.sroa.021.0150.us, %i.aq
  br i1 %exitcond261.not, label %.loopexit84, label %bb.o

.loopexit.split-lp.loopexit.split-lp.loopexit.split.us: ; preds = %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us, %bb.s, %bb.p
  %lpad.loopexit82.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

default.unreachable:                              ; preds = %bb.q
  unreachable

.loopexit.split-lp.loopexit.split.us:             ; preds = %.noexc57.us.invoke, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread._crit_edge.i.us, %bb.ai, %bb.ae, %bb.ac
  %lpad.loopexit78.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split.us:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %bb.al, %.lr.ph.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.au:                                            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val9.i.i.i37 = load i64, ptr %i.oe, align 8, !alias.scope !136, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i38 = icmp eq i64 %.val9.i.i.i37, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i38, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i40, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val8.i.i.i39 = load ptr, ptr %i.q, align 8, !alias.scope !136, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i39, i64 noundef %.val9.i.i.i37, i64 noundef 64) #27, !noalias !137
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i40

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i40: ; preds = %bb.av, %bb.au
  %i.of = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %.val9.i.1.i.i41 = load i64, ptr %i.of, align 8, !alias.scope !136, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.1.i.i42 = icmp eq i64 %.val9.i.1.i.i41, 0
  br i1 %.not.i.i.i.i.i.i.i.1.i.i42, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i44, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i40
  %i.og = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %.val8.i.1.i.i43 = load ptr, ptr %i.og, align 8, !alias.scope !136, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.1.i.i43, i64 noundef %.val9.i.1.i.i41, i64 noundef 64) #27, !noalias !137
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i44

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i44: ; preds = %bb.aw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i40
  %i.oh = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %.val9.i.2.i.i45 = load i64, ptr %i.oh, align 8, !alias.scope !136, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.2.i.i46 = icmp eq i64 %.val9.i.2.i.i45, 0
  br i1 %.not.i.i.i.i.i.i.i.2.i.i46, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5frame5FramehEECs2mu2Cb9JdUH_5ravif.exit48, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i44
  %i.oi = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %.val8.i.2.i.i47 = load ptr, ptr %i.oi, align 8, !alias.scope !136, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.2.i.i47, i64 noundef %.val9.i.2.i.i45, i64 noundef 64) #27, !noalias !137
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5frame5FramehEECs2mu2Cb9JdUH_5ravif.exit48

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5frame5FramehEECs2mu2Cb9JdUH_5ravif.exit48: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i44, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split183.us.invoke, %.split179.us.invoke, %.split152.us.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split.us, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit78.us, %.loopexit.split-lp.loopexit.split.us ], [ %lpad.loopexit82.us, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdEEMmLUVy6d_5rav1e3lrf19IntegralImageBufferECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(48) %i.p) #24
          to label %.body unwind label %bb.ay

.split179.us.invoke:                              ; preds = %.lr.ph.6.i.us, %.noexc66.us, %bb.af, %.noexc58.us, %bb.ak, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.2, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.3, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.4, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.5, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.6, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.7
  %i.oj = phi i64 [ %i.nn, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.7 ], [ %i.kx, %bb.ak ], [ %i.ld, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ %i.ll, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.1 ], [ %i.lu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.2 ], [ %i.md, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.3 ], [ %i.mm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.4 ], [ %i.mv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.5 ], [ %i.ne, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.6 ], [ 7, %.lr.ph.6.i.us ], [ 0, %.noexc58.us ], [ %i.dw, %bb.af ], [ 71, %.noexc66.us ]
  %i.ok = phi i64 [ 7, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ %i.kw, %bb.ak ], [ 7, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.7 ], [ 7, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.6 ], [ 7, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.5 ], [ 7, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.4 ], [ 7, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.3 ], [ 7, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.2 ], [ 7, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.1 ], [ 7, %.lr.ph.6.i.us ], [ 0, %.noexc58.us ], [ %.sroa.10.0.i.us, %bb.af ], [ 71, %.noexc66.us ]
  %i.ol = phi ptr [ @18, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ @62, %bb.ak ], [ @18, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.7 ], [ @18, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.6 ], [ @18, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.5 ], [ @18, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.4 ], [ @18, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.3 ], [ @18, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.2 ], [ @18, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.1 ], [ @25, %.lr.ph.6.i.us ], [ @20, %.noexc58.us ], [ @21, %bb.af ], [ @22, %.noexc66.us ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oj, i64 noundef %i.ok, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ol) #28
          to label %.split179.us.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split179.us.cont:                                ; preds = %.split179.us.invoke
  unreachable

.split183.us:                                     ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us
  %i.om = add i64 %i.kr, 7
  br label %.split183.us.invoke

.split183.us.invoke:                              ; preds = %bb.ah, %._crit_edge.i.us, %.split183.us
  %i.on = phi i64 [ %i.kr, %.split183.us ], [ %..i105.i.us, %._crit_edge.i.us ], [ %i.hv, %bb.ah ]
  %i.oo = phi i64 [ %i.om, %.split183.us ], [ %..i101.i.us, %._crit_edge.i.us ], [ %i.hw, %bb.ah ]
  %i.op = phi i64 [ 71, %.split183.us ], [ 7, %._crit_edge.i.us ], [ %.sroa.10.0.i.us, %bb.ah ]
  %i.oq = phi ptr [ @19, %.split183.us ], [ @24, %._crit_edge.i.us ], [ @23, %bb.ah ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.on, i64 noundef %i.oo, i64 noundef %i.op, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oq) #28
          to label %.split183.us.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split183.us.cont:                                ; preds = %.split183.us.invoke
  unreachable

.split152.us.invoke:                              ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.or = phi ptr [ @83, %bb.v ], [ @79, %bb.t ], [ @82, %bb.u ], [ @84, %bb.w ]
  %i.os = phi i64 [ 92, %bb.v ], [ 51, %bb.t ], [ 51, %bb.u ], [ 103, %bb.w ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.or, i64 noundef %i.os, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #28
          to label %.split152.us.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split152.us.cont:                                ; preds = %.split152.us.invoke
  unreachable

bb.ay:                                            ; preds = %.loopexit.split-lp
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsc_NtCsdEEMmLUVy6d_5rav1e3lrfNtB6_16RestorationState16lrf_filter_frametECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %0, ptr noalias nofree noundef align 8 dereferenceable(288) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(816) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [28 x i8], align 4                ; 13 uses
  %i.f = alloca [28 x i8], align 4                ; 17 uses
  %i.g = alloca [284 x i8], align 4               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [288 x i8], align 8               ; 13 uses
  %i.l = alloca [48 x i8], align 16               ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 10 uses
  %i.q = alloca [288 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.r = invoke { ptr, i64 } @_RNvXsm_CscdqOssW2O4q_11aligned_vecINtB5_4ABoxStINtB5_10ConstAlignKj40_EENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
          to label %bb.c unwind label %bb.b, !noalias !207 ; 2 uses

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i, %bb.k, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.b ], [ %.pn, %bb.k ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %storemerge29.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ]
  %i.s = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEEECs2mu2Cb9JdUH_5ravif(ptr nonnull align 8 %i.k, i64 %storemerge29.lcssa.i.i.i) #24, !noalias !208
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = extractvalue { ptr, i64 } %i.r, 0
  %i.v = extractvalue { ptr, i64 } %i.r, 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.u, ptr %i.k, align 8, !alias.scope !206, !noalias !205
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.v, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !alias.scope !206, !noalias !205
  %.sroa.526.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.w, i64 80, i1 false), !noalias !208
  %i.x = invoke { ptr, i64 } @_RNvXsm_CscdqOssW2O4q_11aligned_vecINtB5_4ABoxStINtB5_10ConstAlignKj40_EENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.t)
          to label %bb.d unwind label %bb.b, !noalias !207 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.z = extractvalue { ptr, i64 } %i.x, 0
  %i.aa = extractvalue { ptr, i64 } %i.x, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.z, ptr %i.ac, align 8, !alias.scope !206, !noalias !205
  %.sroa.425.0..sroa_idx.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i64 %i.aa, ptr %.sroa.425.0..sroa_idx.1.i.i.i, align 8, !alias.scope !206, !noalias !205
  %.sroa.526.0..sroa_idx.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx.1.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ab, i64 80, i1 false), !noalias !208
  %i.ad = invoke { ptr, i64 } @_RNvXsm_CscdqOssW2O4q_11aligned_vecINtB5_4ABoxStINtB5_10ConstAlignKj40_EENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.y)
          to label %_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit unwind label %bb.b, !noalias !207 ; 2 uses

_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.d
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store ptr %i.ae, ptr %i.ah, align 8, !alias.scope !206, !noalias !205
  %.sroa.425.0..sroa_idx.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  store i64 %i.af, ptr %.sroa.425.0..sroa_idx.2.i.i.i, align 8, !alias.scope !206, !noalias !205
  %.sroa.526.0..sroa_idx.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx.2.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ag, i64 80, i1 false), !noalias !208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.q, ptr noundef nonnull align 8 dereferenceable(288) %i.k, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !205
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 688
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 560
  %i.al = load i32, ptr %i.ak, align 8, !range !5, !noundef !4
  %i.am = icmp ne i32 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 584
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %i.ap = add i64 %i.ao, 7
  %i.aq = lshr i64 %i.ap, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !209
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !211
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef range(i64 28224, 69697) 28224, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc35 unwind label %bb.l

.noexc35:                                         ; preds = %_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit
  %i.ar = load i64, ptr %i.i, align 8, !range !6, !noalias !211, !noundef !4
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !7, !noalias !211, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.as, label %bb.e, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i, !prof !8

bb.e:                                             ; preds = %.noexc35
  %i.aw = load i64, ptr %i.av, align 8, !noalias !211
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #25
          to label %.noexc36 unwind label %bb.l

.noexc36:                                         ; preds = %bb.e
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i: ; preds = %.noexc35
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !211, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !211
  store i64 %i.au, ptr %i.j, align 8, !alias.scope !210, !noalias !209
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !210, !noalias !209
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 28224, ptr %i.az, align 8, !alias.scope !210, !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !212
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 28224, 69697) 28224, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %bb.g, !noalias !209

.noexc.i:                                         ; preds = %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i
  %i.ba = load i64, ptr %i.h, align 8, !range !6, !noalias !212, !noundef !4
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !7, !noalias !212, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.f, label %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit, !prof !8

bb.f:                                             ; preds = %.noexc.i
  %i.bf = load i64, ptr %i.be, align 8, !noalias !212
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.bf) #25
          to label %.noexc1.i unwind label %bb.g, !noalias !209

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %.body unwind label %bb.h, !noalias !209

bb.h:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !209
  unreachable

_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit: ; preds = %.noexc.i
  %i.bi = load ptr, ptr %i.be, align 8, !noalias !212, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.bd, ptr %i.bj, align 8, !alias.scope !209
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !209
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 28224, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !209
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 576
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 621
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 496
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.03.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.03.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.n

.body:                                            ; preds = %bb.l, %bb.g, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.cq, %bb.l ], [ %i.bg, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val9.i.i.i = load i64, ptr %i.ci, align 8, !alias.scope !216, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.body
  %.val8.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !216, !nonnull !4, !noundef !4
  %i.cj = shl nuw nsw i64 %.val9.i.i.i, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %i.cj, i64 noundef 64) #27, !noalias !217
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i.i: ; preds = %bb.i, %.body
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %.val9.i.1.i.i = load i64, ptr %i.ck, align 8, !alias.scope !216, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.1.i.i = icmp eq i64 %.val9.i.1.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.1.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %.val8.i.1.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !216, !nonnull !4, !noundef !4
  %i.cm = shl nuw nsw i64 %.val9.i.1.i.i, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.1.i.i, i64 noundef %i.cm, i64 noundef 64) #27, !noalias !217
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i: ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %.val9.i.2.i.i = load i64, ptr %i.cn, align 8, !alias.scope !216, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.2.i.i = icmp eq i64 %.val9.i.2.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.2.i.i, label %common.resume, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %.val8.i.2.i.i = load ptr, ptr %i.co, align 8, !alias.scope !216, !nonnull !4, !noundef !4
  %i.cp = shl nuw nsw i64 %.val9.i.2.i.i, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.2.i.i, i64 noundef %i.cp, i64 noundef 64) #27, !noalias !217
  br label %common.resume

bb.l:                                             ; preds = %bb.e, %_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit, %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit84:                                      ; preds = %..loopexit81_crit_edge.us, %bb.n
  %i.cr = icmp samesign ult i64 %.sroa.019.0188, 2
  %i.cs = select i1 %i.am, i1 %i.cr, i1 false
  br i1 %i.cs, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit84
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdEEMmLUVy6d_5rav1e3lrf19IntegralImageBufferECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(48) %i.p)
          to label %bb.au unwind label %bb.l

bb.n:                                             ; preds = %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit, %.loopexit84
  %.sroa.019.0188 = phi i64 [ 0, %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit ], [ %i.ct, %.loopexit84 ] ; 6 uses
  %i.ct = add nuw nsw i64 %.sroa.019.0188, 1
  %i.cu = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.019.0188 ; 3 uses
  %i.cv = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %.sroa.019.0188 ; 11 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !4
  %i.da = and i64 %i.cx, 63                       ; 2 uses
  %i.db = shl nuw i64 1, %i.da
  %i.dc = lshr i64 %i.db, 1
  %i.dd = add i64 %i.dc, %i.bl
  %i.de = lshr i64 %i.dd, %i.da                   ; 3 uses
  %i.df = and i64 %i.cz, 63                       ; 5 uses
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = lshr i64 %i.dg, 1
  %i.di = add i64 %i.dh, %i.ao
  %i.dj = lshr i64 %i.di, %i.df                   ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !4 ; 3 uses
  %.not189 = icmp eq i64 %i.dl, 0
  %i.dm = lshr i64 64, %i.df
  %i.dn = lshr i64 56, %i.df
  %i.do = add i64 %i.dl, -1
  %i.dp = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %.sroa.019.0188 ; 3 uses
  %i.dq = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %.sroa.019.0188 ; 3 uses
  %4 = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.cv, i64 0
  %5 = getelementptr inbounds nuw i8, <2 x ptr> %4, <2 x i64> <i64 16, i64 0>
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dx = add i64 %i.de, 3
  %i.dy = add i64 %i.dj, -1                       ; 2 uses
  %i.dz = add i64 %i.de, -1                       ; 3 uses
  br i1 %.not189, label %.loopexit84, label %.split.us

.split.us:                                        ; preds = %bb.n
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !4 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %..loopexit81_crit_edge.us, %.split.us
  %.sroa.021.0150.us = phi i64 [ 0, %.split.us ], [ %i.ec, %..loopexit81_crit_edge.us ] ; 5 uses
  %i.ec = add nuw nsw i64 %.sroa.021.0150.us, 1
  %i.ed = icmp eq i64 %.sroa.021.0150.us, 0
  br i1 %i.ed, label %.lr.ph149.us.thread, label %.lr.ph149.us

.lr.ph149.us:                                     ; preds = %bb.o
  %i.ee = shl nuw i64 %.sroa.021.0150.us, 6
  %i.ef = add i64 %i.ee, -8
  %i.eg = lshr i64 %i.ef, %i.df
  %.fr = freeze i64 %i.eg                         ; 6 uses
  %i.eh = sub i64 %i.dj, %.fr
  %..i.us = call noundef i64 @llvm.umin.i64(i64 %i.eh, i64 %i.dm)
  %i.ei = sub i64 0, %.fr
  %i.ej = sub i64 %i.dj, %.fr
  %i.ek = icmp slt i64 %.fr, 0
  %.sroa.020.0.i.us = call i64 @llvm.smax.i64(i64 range(i64 0, -71) %.fr, i64 0)
  %spec.select = select i1 %i.ek, i64 %i.ei, i64 0
  br label %.lr.ph149.us.thread

.lr.ph149.us.thread:                              ; preds = %.lr.ph149.us, %bb.o
  %.sroa.020.0.i.us291 = phi i64 [ 0, %bb.o ], [ %.sroa.020.0.i.us, %.lr.ph149.us ]
  %i.el = phi i64 [ %i.dj, %bb.o ], [ %i.ej, %.lr.ph149.us ]
  %.sroa.04.0.us290 = phi i64 [ 0, %bb.o ], [ %.fr, %.lr.ph149.us ] ; 12 uses
  %.sroa.010.0.us289 = phi i64 [ %i.dn, %bb.o ], [ %..i.us, %.lr.ph149.us ] ; 5 uses
  %i.em = phi i64 [ 0, %bb.o ], [ %spec.select, %.lr.ph149.us ] ; 6 uses
  %i.en = add nuw i64 %.sroa.04.0.us290, %.sroa.010.0.us289 ; 4 uses
  %i.eo = icmp sgt i64 %i.en, %i.dj
  %i.ep = add i64 %.sroa.04.0.us290, %i.em
  %i.eq = sub i64 %i.dj, %i.ep
  %i.er = sub i64 %.sroa.010.0.us289, %i.em
  %.sroa.021.0.i.us = select i1 %i.eo, i64 %i.eq, i64 %i.er ; 2 uses
  %..i.i.us = call i64 @llvm.smax.i64(i64 %.sroa.021.0.i.us, i64 0) ; 2 uses
  %i.es = add i64 %.sroa.04.0.us290, -3           ; 2 uses
  %i.et = add nuw i64 %i.en, 4                    ; 2 uses
  %i.eu = icmp slt i64 %i.es, %i.et
  %i.ev = add nuw i64 %i.en, 1
  %i.ew = add i64 %.sroa.04.0.us290, -2
  %i.ex = add i64 %..i.i.us, %i.em                ; 2 uses
  %i.ey = icmp ult i64 %i.em, %i.ex
  %i.ez = add nuw i64 %i.em, 1
  %i.fa = icmp slt i64 %.sroa.021.0.i.us, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph149.us.thread, %.backedge.us
  %.sroa.023.0148.us = phi i64 [ 0, %.lr.ph149.us.thread ], [ %i.fb, %.backedge.us ] ; 4 uses
  %i.fb = add nuw i64 %.sroa.023.0148.us, 1       ; 2 uses
  %i.fc = mul i64 %i.eb, %.sroa.023.0148.us       ; 12 uses
  %i.fd = icmp eq i64 %.sroa.023.0148.us, %i.do
  %i.fe = sub i64 %i.de, %i.fc                    ; 2 uses
  %.sroa.014.0.us = select i1 %i.fd, i64 %i.fe, i64 %i.eb ; 4 uses
  %i.ff = invoke noundef nonnull ptr @_RNvMsb_NtCsdEEMmLUVy6d_5rav1e3lrfNtB5_16RestorationPlane26restoration_unit_by_stripe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cu, i64 noundef %.sroa.021.0150.us, i64 noundef %.sroa.023.0148.us)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.fg = load i8, ptr %i.ff, align 1, !range !9, !noundef !4
  switch i8 %i.fg, label %default.unreachable [
    i8 0, label %.backedge.us
    i8 1, label %bb.z
    i8 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %.sroa.017.0.copyload.us = load i16, ptr %i.fj, align 1
  %i.fk = load i8, ptr %i.bm, align 1, !range !10, !noundef !4
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.s, label %.backedge.us

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.dp, ptr %i.o, align 8
  store i64 %i.fc, ptr %i.bn, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.dq, ptr %i.n, align 8
  store i64 %i.fc, ptr %i.bp, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bq, align 8
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef 392, i64 noundef %i.fe, i64 noundef %i.el, i64 noundef %.sroa.014.0.us, i64 noundef %.sroa.010.0.us289, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.dp, ptr %i.m, align 8
  store i64 %i.fc, ptr %i.br, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.fm = load i64, ptr %i.dr, align 8, !alias.scope !219, !noalias !220, !noundef !4 ; 2 uses
  %i.fn = load ptr, ptr %i.cv, align 8, !alias.scope !219, !noalias !220, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.fo = load i64, ptr %i.ds, align 8, !alias.scope !224, !noalias !225, !noundef !4
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = load i64, ptr %i.dt, align 8, !alias.scope !224, !noalias !225
  %i.fr = icmp eq i64 %i.fq, 0
  %or.cond.i.i.us = select i1 %i.fp, i1 true, i1 %i.fr, !prof !11
  br i1 %or.cond.i.i.us, label %.noexc.us, label %bb.t, !prof !11

bb.t:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  %i.fs = load i64, ptr %i.du, align 8, !alias.scope !224, !noalias !225, !noundef !4 ; 3 uses
  %i.ft = sub i64 0, %i.fs
  %.not.i.i.us = icmp slt i64 %i.fc, %i.ft
  br i1 %.not.i.i.us, label %.split152.us.invoke, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.fu = load i64, ptr %i.dv, align 8, !alias.scope !224, !noalias !225, !noundef !4 ; 2 uses
  %i.fv = sub i64 0, %i.fu
  %.not5.i.i.us = icmp slt i64 %.sroa.04.0.us290, %i.fv
  br i1 %.not5.i.i.us, label %.split152.us.invoke, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.fw = add i64 %.sroa.014.0.us, %i.fc
  %i.fx = add i64 %i.fw, %i.fs
  %.not6.i.i.us = icmp sgt i64 %i.fx, %i.fm
  br i1 %.not6.i.i.us, label %.split152.us.invoke, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.fy = add i64 %i.fu, %.sroa.04.0.us290        ; 2 uses
  %i.fz = add i64 %i.fy, %.sroa.010.0.us289
  %i.ga = load i64, ptr %i.dw, align 8, !alias.scope !224, !noalias !225, !noundef !4
  %.not7.i.i.us = icmp sgt i64 %i.fz, %i.ga
  br i1 %.not7.i.i.us, label %.split152.us.invoke, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  %i.gb = mul i64 %i.fy, %i.fm
  %i.gc = getelementptr [2 x i8], ptr %i.fn, i64 %i.gb
  %i.gd = getelementptr [2 x i8], ptr %i.gc, i64 %i.fs
  %i.ge = getelementptr [2 x i8], ptr %i.gd, i64 %i.fc
  store ptr %i.ge, ptr %i.bt, align 8, !alias.scope !226, !noalias !227
  store ptr %i.dr, ptr %i.l, align 16, !alias.scope !226, !noalias !227
  store i64 %i.fc, ptr %i.bu, align 16, !alias.scope !228, !noalias !229
  store i64 %.sroa.04.0.us290, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !228, !noalias !229
  store i64 %.sroa.014.0.us, ptr %.sroa.13.0..sroa_idx, align 16, !alias.scope !228, !noalias !229
  store i64 %.sroa.010.0.us289, ptr %.sroa.18.0..sroa_idx, align 8, !alias.scope !228, !noalias !229
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

.noexc.us:                                        ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  store <2 x ptr> %5, ptr %i.l, align 16, !alias.scope !230, !noalias !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bu, i8 0, i64 32, i1 false), !alias.scope !230, !noalias !231
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us: ; preds = %.noexc.us, %bb.x
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterttECs2mu2Cb9JdUH_5ravif(i8 noundef %i.fi, i16 noundef %.sroa.017.0.copyload.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, i64 noundef 392, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.y:                                             ; preds = %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge.us

bb.z:                                             ; preds = %bb.q
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %.sroa.028.0.copyload.us = load i48, ptr %i.gf, align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.extract.trunc.i.us = trunc i48 %.sroa.028.0.copyload.us to i8
  %.sroa.2.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 8
  %.sroa.2.0.extract.trunc.i.us = trunc i48 %.sroa.2.0.extract.shift.i.us to i8
  %.sroa.3.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 16
  %.sroa.3.0.extract.trunc.i.us = trunc i48 %.sroa.3.0.extract.shift.i.us to i8
  %.sroa.4.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 24
  %.sroa.4.0.extract.trunc.i.us = trunc i48 %.sroa.4.0.extract.shift.i.us to i8
  %.sroa.5.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 32
  %.sroa.5.0.extract.trunc.i.us = trunc i48 %.sroa.5.0.extract.shift.i.us to i8
  %i.gg = load i64, ptr %i.bv, align 8, !noalias !232, !noundef !4 ; 4 uses
  %i.gh = sext i8 %.sroa.0.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gi = sext i8 %.sroa.2.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gj = sext i8 %.sroa.3.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gk = sext i8 %.sroa.4.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gl = sext i8 %.sroa.5.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gm = ashr i48 %.sroa.028.0.copyload.us, 40
  %i.gn = trunc nsw i48 %i.gm to i32              ; 3 uses
  %i.go = icmp eq i64 %i.gg, 12                   ; 3 uses
  %..i49.us = select i1 %i.go, i32 9, i32 11      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(284) %i.g, i8 0, i64 284, i1 false), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !232
  %i.gp = add nsw i32 %i.gi, %i.gh
  %i.gq = add nsw i32 %i.gp, %i.gj
  %i.gr = shl nsw i32 %i.gq, 1
  %i.gs = sub nsw i32 128, %i.gr
  store i32 %i.gh, ptr %i.f, align 4, !noalias !232
  store i32 %i.gi, ptr %i.bw, align 4, !noalias !232
  store i32 %i.gj, ptr %i.bx, align 4, !noalias !232
  store i32 %i.gs, ptr %i.by, align 4, !noalias !232
  store i32 %i.gj, ptr %i.bz, align 4, !noalias !232
  store i32 %i.gi, ptr %i.ca, align 4, !noalias !232
  store i32 %i.gh, ptr %i.cb, align 4, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !232
  %i.gt = add nsw i32 %i.gk, %i.gn
  %i.gu = add nsw i32 %i.gt, %i.gl
  %i.gv = shl nsw i32 %i.gu, 1
  %i.gw = sub nsw i32 128, %i.gv
  store i32 %i.gk, ptr %i.e, align 4, !noalias !232
  store i32 %i.gl, ptr %i.cc, align 4, !noalias !232
  store i32 %i.gn, ptr %i.cd, align 4, !noalias !232
  store i32 %i.gw, ptr %i.ce, align 4, !noalias !232
  store i32 %i.gn, ptr %i.cf, align 4, !noalias !232
  store i32 %i.gl, ptr %i.cg, align 4, !noalias !232
  store i32 %i.gk, ptr %i.ch, align 4, !noalias !232
  %i.gx = add i64 %.sroa.014.0.us, %i.fc          ; 2 uses
  %i.gy = icmp ult i64 %i.fc, %i.gx
  br i1 %i.gy, label %.lr.ph89.i.us, label %_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertECs2mu2Cb9JdUH_5ravif.exit.us

.lr.ph89.i.us:                                    ; preds = %bb.z
  %i.gz = add i64 %i.gg, 8
  %.98.neg91.i.us = select i1 %i.go, i64 27, i64 29
  %i.ha = add i64 %i.gz, %.98.neg91.i.us
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = and i32 %i.hb, 31
  %notmask.i.us = shl nsw i32 -1, %i.hc
  %i.hd = xor i32 %notmask.i.us, -1
  %.98.i.us = select i1 %i.go, i64 5, i64 3       ; 2 uses
  %i.he = sub i64 %i.gg, %.98.i.us
  %i.hf = trunc i64 %i.he to i32
  %i.hg = add i32 %i.hf, 6
  %i.hh = and i32 %i.hg, 31
  %i.hi = shl nuw i32 1, %i.hh                    ; 2 uses
  %i.hj = trunc nuw nsw i64 %.98.i.us to i32      ; 2 uses
  %i.hk = shl nuw nsw i32 1, %i.hj
  %i.hl = lshr exact i32 %i.hk, 1
  %i.hm = sub i32 0, %i.hi
  %i.hn = sub i32 %i.hd, %i.hi
  %i.ho = shl nuw nsw i32 1, %..i49.us
  %i.hp = lshr exact i32 %i.ho, 1
  %i.hq = trunc i64 %i.gg to i32
  %i.hr = and i32 %i.hq, 31
  %notmask93.i.us = shl nsw i32 -1, %i.hr
  %i.hs = xor i32 %notmask93.i.us, -1
  %i.ht = sub i64 3, %i.fc
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %.lr.ph89.i.us
  %indvars.iv.i.us = phi i64 [ %i.ht, %.lr.ph89.i.us ], [ %indvars.iv.next.i.us, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 8 uses
  %.sroa.01.087.i.us = phi i64 [ %i.fc, %.lr.ph89.i.us ], [ %i.hu, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 4 uses
  %i.hu = add i64 %.sroa.01.087.i.us, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !232
  store i64 %.sroa.01.087.i.us, ptr %i.d, align 8, !noalias !232
  %i.hv = sub i64 %i.dx, %.sroa.01.087.i.us       ; 2 uses
  %..i101.i.us = call noundef i64 @llvm.smin.i64(i64 %i.hv, i64 7) ; 6 uses
  br i1 %i.eu, label %.lr.ph78.i.us, label %._crit_edge79.i.us

.lr.ph78.i.us:                                    ; preds = %bb.aa
  %i.hw = sub i64 3, %.sroa.01.087.i.us           ; 4 uses
  %i.hx = icmp sgt i64 %i.hw, 0
  %..i105.i.us = call i64 @llvm.smax.i64(i64 %i.hw, i64 0) ; 4 uses
  %i.hy = sub i64 %..i105.i.us, %i.hw             ; 3 uses
  %i.hz = sub i64 %..i101.i.us, %i.hw             ; 4 uses
  %i.ia = icmp uge i64 %..i101.i.us, %..i105.i.us
  %i.ib = icmp ult i64 %..i101.i.us, 8
  %or.cond99.i.us = and i1 %i.ia, %i.ib
  %i.ic = icmp ult i64 %i.hz, %i.hy
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i101.i.us
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i105.i.us
  %i.if = icmp slt i64 %i.hv, 7
  %exitcond142.not.i.us = icmp eq i64 %indvars.iv.i.us, 1
  %exitcond142.1.not.i.us = icmp eq i64 %indvars.iv.i.us, 2
  %exitcond142.2.not.i.us = icmp eq i64 %indvars.iv.i.us, 3
  %exitcond142.3.not.i.us = icmp eq i64 %indvars.iv.i.us, 4
  %exitcond142.4.not.i.us = icmp eq i64 %indvars.iv.i.us, 5
  %exitcond142.5.not.i.us = icmp eq i64 %indvars.iv.i.us, 6
  %exitcond142.6.not.i.us = icmp eq i64 %indvars.iv.i.us, 7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %.lr.ph78.i.us
  %.sroa.069.076.i.us = phi i64 [ %i.es, %.lr.ph78.i.us ], [ %i.ig, %bb.aj ] ; 6 uses
  %i.ig = add i64 %.sroa.069.076.i.us, 1          ; 2 uses
  %i.ih = icmp slt i64 %.sroa.069.076.i.us, %.sroa.04.0.us290
  br i1 %i.ih, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ii = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.dy)
          to label %.noexc56.us unwind label %.loopexit.split-lp.loopexit.split.us ; 2 uses

.noexc56.us:                                      ; preds = %bb.ac
  %i.ij = icmp slt i64 %.sroa.069.076.i.us, %i.en
  br i1 %i.ij, label %.noexc57.us.invoke, label %bb.ad

bb.ad:                                            ; preds = %.noexc56.us
  %..i104.i.us = call noundef i64 @llvm.smin.i64(i64 %i.ev, i64 %i.ii)
  br label %.noexc57.us.invoke

bb.ae:                                            ; preds = %bb.ab
  %i.ik = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.dy)
          to label %.noexc57.us unwind label %.loopexit.split-lp.loopexit.split.us

.noexc57.us:                                      ; preds = %bb.ae
  %..i103.i.us = call noundef i64 @llvm.smax.i64(i64 %i.ew, i64 %i.ik)
  br label %.noexc57.us.invoke

.noexc57.us.invoke:                               ; preds = %.noexc56.us, %bb.ad, %.noexc57.us
  %i.il = phi ptr [ %i.dq, %.noexc57.us ], [ %i.dq, %bb.ad ], [ %i.dp, %.noexc56.us ]
  %i.im = phi i64 [ %..i103.i.us, %.noexc57.us ], [ %..i104.i.us, %bb.ad ], [ %i.ii, %.noexc56.us ]
  %i.in = invoke { ptr, i64 } @_RNvMs5_NtCsko5zPvjVG7R_7v_frame5planeINtB5_5PlanetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.il, i64 noundef %i.im)
          to label %.noexc58.us unwind label %.loopexit.split-lp.loopexit.split.us ; 2 uses

.noexc58.us:                                      ; preds = %.noexc57.us.invoke
  %.sroa.031.0.i.us = extractvalue { ptr, i64 } %i.in, 0 ; 5 uses
  %.sroa.10.0.i.us = extractvalue { ptr, i64 } %i.in, 1 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0.i.us) ]
  %.not95.i.us = icmp eq i64 %.sroa.10.0.i.us, 0
  br i1 %.not95.i.us, label %.split179.us.invoke, label %bb.af

bb.af:                                            ; preds = %.noexc58.us
  %i.io = load i16, ptr %.sroa.031.0.i.us, align 2, !noundef !4
  %i.ip = zext i16 %i.io to i32
  %i.iq = icmp ult i64 %i.dz, %.sroa.10.0.i.us
  br i1 %i.iq, label %bb.ag, label %.split179.us.invoke

bb.ag:                                            ; preds = %bb.af
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.i.us, i64 %i.dz
  %i.is = load i16, ptr %i.ir, align 2, !noundef !4
  %i.it = zext i16 %i.is to i32
  br i1 %i.hx, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %bb.ag
  %i.iu = load i32, ptr %i.e, align 4, !noalias !232, !noundef !4 ; 2 uses
  br i1 %exitcond142.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.1.i.us

.lr.ph.1.i.us:                                    ; preds = %.lr.ph.preheader.i.us
  %i.iv = load i32, ptr %i.cc, align 4, !noalias !232, !noundef !4
  %i.iw = add i32 %i.iv, %i.iu                    ; 2 uses
  br i1 %exitcond142.1.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.2.i.us

.lr.ph.2.i.us:                                    ; preds = %.lr.ph.1.i.us
  %i.ix = load i32, ptr %i.cd, align 4, !noalias !232, !noundef !4
  %i.iy = add i32 %i.ix, %i.iw                    ; 2 uses
  br i1 %exitcond142.2.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.3.i.us

.lr.ph.3.i.us:                                    ; preds = %.lr.ph.2.i.us
  %i.iz = load i32, ptr %i.ce, align 4, !noalias !232, !noundef !4
  %i.ja = add i32 %i.iz, %i.iy                    ; 2 uses
  br i1 %exitcond142.3.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.4.i.us

.lr.ph.4.i.us:                                    ; preds = %.lr.ph.3.i.us
  %i.jb = load i32, ptr %i.cf, align 4, !noalias !232, !noundef !4
  %i.jc = add i32 %i.jb, %i.ja                    ; 2 uses
  br i1 %exitcond142.4.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.5.i.us

end_hunk_1
