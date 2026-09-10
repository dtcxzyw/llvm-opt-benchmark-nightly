Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/misc?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.code = type { i8, i8, i16 }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }

@malloc_ptr = internal unnamed_addr global i64 0, align 8
@free_mem_ptr = hidden local_unnamed_addr global i64 0, align 8
@free_mem_end_ptr = hidden local_unnamed_addr global i64 0, align 8
@malloc_count = internal unnamed_addr global i32 0, align 4
@zlib_inflate_table.lbase = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 16
@zlib_inflate_table.lext = internal unnamed_addr constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 201, i16 196], align 16
@zlib_inflate_table.dbase = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 16
@zlib_inflate_table.dext = internal unnamed_addr constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 16
@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@zlib_inflate.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@early_serial_base = external hidden local_unnamed_addr global i32, align 4
@lines = internal unnamed_addr global i32 0, section ".data", align 4
@cols = internal unnamed_addr global i32 0, section ".data", align 4
@boot_params_ptr = hidden local_unnamed_addr global ptr null, align 8
@vidmem = internal unnamed_addr global ptr null, align 8
@pio_ops = hidden local_unnamed_addr global %struct.port_io_ops zeroinitializer, align 8
@vidport = internal unnamed_addr global i32 0, align 4
@kernel_text_size = hidden local_unnamed_addr constant i64 20971520, align 8
@kernel_inittext_offset = hidden local_unnamed_addr constant i64 38207488, align 8
@kernel_inittext_size = hidden local_unnamed_addr constant i64 577536, align 8
@kernel_total_size = hidden local_unnamed_addr constant i64 42065920, align 8
@boot_heap = internal global [65536 x i8] zeroinitializer, align 4
@input_data = external hidden global [0 x i8], align 1
@input_len = external hidden local_unnamed_addr global i32, align 4
@output_len = external hidden local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"early console in extract_kernel\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"input_data: 0x\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"input_len: 0x\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"output: 0x\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"output_len: 0x\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"kernel_total_size: 0x\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"needed_size: 0x\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"trampoline_32bit: 0x\00", align 1
@trampoline_32bit = external hidden local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [53 x i8] c"Destination physical address inappropriately aligned\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"Destination virtual address inappropriately aligned\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Destination address too large\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"Destination virtual address is beyond the kernel mapping area\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"\0ADecompressing Linux... \00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"done.\0ABooting the kernel (entry_offset: 0x\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c").\0A\00", align 1
@spurious_nmi_count = hidden local_unnamed_addr global i32 0, align 4
@.str.31 = private unnamed_addr constant [30 x i8] c"Spurious early NMIs ignored: \00", align 1
@zlib_fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16
@zlib_fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 16
@.str.32 = private unnamed_addr constant [45 x i8] c"Out of memory while allocating output buffer\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"Out of memory while allocating z_stream\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"Out of memory while allocating workspace\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Not a gzip file\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"header error\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"uncompression error\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Kernel is not a valid ELF file\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Parsing ELF... \00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"Failed to allocate space for phdrs\00", align 1
@.str.44 = private unnamed_addr constant [48 x i8] c"Alignment of LOAD segment isn't multiple of 2MB\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"No relocation needed... \00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Performing relocations... \00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"32-bit relocation outside of kernel!\0A\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"64-bit relocation outside of kernel!\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"mem_encrypt=on\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"mem_encrypt=off\00", align 1
@sanitize_boot_params.scratch = internal unnamed_addr global %struct.boot_params zeroinitializer, align 1

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none)
define hidden ptr @malloc(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @malloc_ptr, align 8       ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %i.c = load i64, ptr @free_mem_ptr, align 8
  %spec.select = select i1 %.not, i64 %i.c, i64 %i.b
  %i.d = add i64 %spec.select, 7
  %i.e = and i64 %i.d, -8                         ; 2 uses
  %i.f = zext nneg i32 %0 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = freeze i64 %i.g                          ; 2 uses
  store i64 %i.h, ptr @malloc_ptr, align 8
  %i.i = load i64, ptr @free_mem_end_ptr, align 8
  %i.j = add i64 %i.i, -1
  %or.cond.not = icmp ult i64 %i.j, %i.h
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %i.e to ptr
  %i.l = load i32, ptr @malloc_count, align 4
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr @malloc_count, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none)
define hidden void @free(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @malloc_count, align 4
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr @malloc_count, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @free_mem_ptr, align 8
  store i64 %i.c, ptr @malloc_ptr, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse noredzone nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define hidden range(i32 -1, 2) i32 @zlib_inflate_table(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #2 {
.preheader247:
  %i.a = alloca [16 x i16], align 16              ; 25 uses
  %i.b = alloca [16 x i16], align 16              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 18 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 22 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 26 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %.not281 = icmp eq i32 %2, 0                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br i1 %.not281, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %.preheader247
  %i.r = load i32, ptr %4, align 4
  br label %bb.a

.lr.ph.preheader:                                 ; preds = %.preheader247
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = icmp ult i32 %2, 4
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 2
  %i.y = add i16 %i.x, 1
  store i16 %i.y, ptr %i.w, align 2
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = add i16 %i.ae, 1
  store i16 %i.af, ptr %i.ad, align 2
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = add i16 %i.al, 1
  store i16 %i.am, ptr %i.ak, align 2
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = add i16 %i.as, 1
  store i16 %i.at, ptr %i.ar, align 2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !12

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod392 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod392)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aw ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = add i16 %i.ay, 1
  store i16 %i.az, ptr %i.ax, align 2
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.pre = load i16, ptr %i.q, align 2             ; 2 uses
  %i.ba = load i32, ptr %4, align 4               ; 2 uses
  %.not228 = icmp eq i16 %.pre, 0
  br i1 %.not228, label %bb.a, label %bb.p

bb.a:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bb = phi i32 [ %i.r, %._crit_edge.thread ], [ %i.ba, %._crit_edge ] ; 14 uses
  %i.bc = load i16, ptr %i.p, align 4
  %.not228.1 = icmp eq i16 %i.bc, 0
  br i1 %.not228.1, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.bd = load i16, ptr %i.o, align 2
  %.not228.2 = icmp eq i16 %i.bd, 0
  br i1 %.not228.2, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.be = load i16, ptr %i.n, align 8
  %.not228.3 = icmp eq i16 %i.be, 0
  br i1 %.not228.3, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.bf = load i16, ptr %i.m, align 2
  %.not228.4 = icmp eq i16 %i.bf, 0
  br i1 %.not228.4, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.bg = load i16, ptr %i.l, align 4
  %.not228.5 = icmp eq i16 %i.bg, 0
  br i1 %.not228.5, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.bh = load i16, ptr %i.k, align 2
  %.not228.6 = icmp eq i16 %i.bh, 0
  br i1 %.not228.6, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bi = load i16, ptr %i.j, align 16
  %.not228.7 = icmp eq i16 %i.bi, 0
  br i1 %.not228.7, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.bj = load i16, ptr %i.i, align 2
  %.not228.8 = icmp eq i16 %i.bj, 0
  br i1 %.not228.8, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bk = load i16, ptr %i.h, align 4
  %.not228.9 = icmp eq i16 %i.bk, 0
  br i1 %.not228.9, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bl = load i16, ptr %i.g, align 2
  %.not228.10 = icmp eq i16 %i.bl, 0
  br i1 %.not228.10, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bm = load i16, ptr %i.f, align 8
  %.not228.11 = icmp eq i16 %i.bm, 0
  br i1 %.not228.11, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bn = load i16, ptr %i.e, align 2
  %.not228.12 = icmp eq i16 %i.bn, 0
  br i1 %.not228.12, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bo = load i16, ptr %i.d, align 4
  %.not228.13 = icmp eq i16 %i.bo, 0
  br i1 %.not228.13, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bp = load i16, ptr %i.c, align 2             ; 2 uses
  %.not228.14 = icmp eq i16 %i.bp, 0
  br i1 %.not228.14, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n
  %i.bq = icmp ne i32 %i.bb, 0
  %spec.select339 = zext i1 %i.bq to i32
  br label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %3, align 8               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.bs, ptr %3, align 8
  store i8 64, ptr %i.br, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i16 0, ptr %.sroa.15.0..sroa_idx, align 2
  %i.bt = load ptr, ptr %3, align 8               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store ptr %i.bu, ptr %3, align 8
  store i8 64, ptr %i.bt, align 2
  %.sroa.11.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 1, ptr %.sroa.11.0..sroa_idx17, align 1
  %.sroa.15.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i16 0, ptr %.sroa.15.0..sroa_idx23, align 2
  br label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %._crit_edge
  %.ph = phi i32 [ %i.bb, %bb.m ], [ %i.bb, %bb.l ], [ %i.bb, %bb.k ], [ %i.bb, %bb.j ], [ %i.bb, %bb.i ], [ %i.bb, %bb.h ], [ %i.bb, %bb.g ], [ %i.bb, %bb.f ], [ %i.bb, %bb.e ], [ %i.bb, %bb.d ], [ %i.bb, %bb.c ], [ %i.bb, %bb.b ], [ %i.bb, %bb.a ], [ %i.ba, %._crit_edge ]
  %.ph337 = phi i16 [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.pre, %._crit_edge ] ; 2 uses
  %.0210259.lcssa.ph = phi i32 [ 2, %bb.m ], [ 3, %bb.l ], [ 4, %bb.k ], [ 5, %bb.j ], [ 6, %bb.i ], [ 7, %bb.h ], [ 8, %bb.g ], [ 9, %bb.f ], [ 10, %bb.e ], [ 11, %bb.d ], [ 12, %bb.c ], [ 13, %bb.b ], [ 14, %bb.a ], [ 15, %._crit_edge ] ; 3 uses
  %.pr = load i16, ptr %i.c, align 2              ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.ph, i32 %.0210259.lcssa.ph) ; 2 uses
  %.not229 = icmp eq i16 %.pr, 0
  br i1 %.not229, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.bv = load i16, ptr %i.d, align 4
  %.not229.1 = icmp eq i16 %i.bv, 0
  br i1 %.not229.1, label %bb.r, label %.thread343

bb.r:                                             ; preds = %bb.q
  %i.bw = load i16, ptr %i.e, align 2
  %.not229.2 = icmp eq i16 %i.bw, 0
  br i1 %.not229.2, label %bb.s, label %.thread343

end_hunk_0
begin_hunk_1_@inflate_fast:bb.a
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ab, %.prol.preheader
  %.1266.prol = phi ptr [ %i.ol, %.prol.preheader ], [ %.7308, %bb.ab ] ; 2 uses
  %.1264.prol = phi i64 [ %i.om, %.prol.preheader ], [ %i.ok, %bb.ab ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ab ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.1266.prol, i64 2 ; 3 uses
  store i16 %.0261, ptr %.1266.prol, align 2
  %i.om = add i64 %.1264.prol, -1                 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ab
  %.lcssa598.unr = phi ptr [ poison, %bb.ab ], [ %i.ol, %.prol.preheader ]
  %.1266.unr = phi ptr [ %.7308, %bb.ab ], [ %i.ol, %.prol.preheader ]
  %.1264.unr = phi i64 [ %i.ok, %bb.ab ], [ %i.om, %.prol.preheader ]
  %i.on = add nsw i32 %i.oj, -1
  %i.oo = icmp ult i32 %i.on, 7
  br i1 %i.oo, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.1266 = phi ptr [ %i.ow, %.new ], [ %.1266.unr, %.prol.loopexit ] ; 9 uses
  %.1264 = phi i64 [ %i.ox, %.new ], [ %.1264.unr, %.prol.loopexit ]
  %i.op = getelementptr inbounds nuw i8, ptr %.1266, i64 2
  store i16 %.0261, ptr %.1266, align 2
  %i.oq = getelementptr inbounds nuw i8, ptr %.1266, i64 4
  store i16 %.0261, ptr %i.op, align 2
  %i.or = getelementptr inbounds nuw i8, ptr %.1266, i64 6
  store i16 %.0261, ptr %i.oq, align 2
  %i.os = getelementptr inbounds nuw i8, ptr %.1266, i64 8
  store i16 %.0261, ptr %i.or, align 2
  %i.ot = getelementptr inbounds nuw i8, ptr %.1266, i64 10
  store i16 %.0261, ptr %i.os, align 2
  %i.ou = getelementptr inbounds nuw i8, ptr %.1266, i64 12
  store i16 %.0261, ptr %i.ot, align 2
  %i.ov = getelementptr inbounds nuw i8, ptr %.1266, i64 14
  store i16 %.0261, ptr %i.ou, align 2
  %i.ow = getelementptr inbounds nuw i8, ptr %.1266, i64 16 ; 2 uses
  store i16 %.0261, ptr %i.ov, align 2
  %i.ox = add i64 %.1264, -8                      ; 2 uses
  %.not346.7 = icmp eq i64 %i.ox, 0
  br i1 %.not346.7, label %.loopexit, label %.new, !llvm.loop !31

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %.prol.loopexit620, %.new621
  %.8309 = phi ptr [ %i.oe, %.new621 ], [ %.lcssa599.unr, %.prol.loopexit620 ], [ %.lcssa598.unr, %.prol.loopexit ], [ %i.ow, %.new ] ; 3 uses
  %.7274 = phi ptr [ %i.oc, %.new621 ], [ %.lcssa600.unr, %.prol.loopexit620 ], [ %.6273, %.new ], [ %.6273, %.prol.loopexit ]
  %i.oy = and i32 %.3278, 1
  %.not348 = icmp eq i32 %i.oy, 0
  br i1 %.not348, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %i.oz = load i8, ptr %.7274, align 1
  %i.pa = getelementptr inbounds nuw i8, ptr %.8309, i64 1
  store i8 %i.oz, ptr %.8309, align 1
  br label %bb.ah

.lr.ph411:                                        ; preds = %bb.k, %bb.ad
  %i.pb = phi i32 [ %i.pq, %bb.ad ], [ %i.dm, %bb.k ] ; 2 uses
  %i.pc = phi i32 [ %i.pp, %bb.ad ], [ %i.dl, %bb.k ] ; 2 uses
  %i.pd = phi i64 [ %i.po, %bb.ad ], [ %i.dk, %bb.k ] ; 3 uses
  %.sroa.10.1409 = phi i16 [ %.sroa.10.1, %bb.ad ], [ %.sroa.10.1407, %bb.k ]
  %i.pe = and i32 %i.pb, 64
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.ad, label %.loopexit362.sink.split.sink.split

bb.ad:                                            ; preds = %.lr.ph411
  %i.pg = zext i16 %.sroa.10.1409 to i64
  %notmask343 = shl nsw i32 -1, %i.pb
  %i.ph = xor i32 %notmask343, -1
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = and i64 %i.pd, %i.pi
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.pj
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.pg ; 3 uses
  %.sroa.096.1 = load i8, ptr %i.pl, align 2
  %.sroa.8.1.in = getelementptr inbounds nuw i8, ptr %i.pl, i64 1
  %.sroa.8.1 = load i8, ptr %.sroa.8.1.in, align 1 ; 2 uses
  %.sroa.10.1.in = getelementptr inbounds nuw i8, ptr %i.pl, i64 2
  %.sroa.10.1 = load i16, ptr %.sroa.10.1.in, align 2 ; 2 uses
  %i.pm = zext i8 %.sroa.8.1 to i32
  %i.pn = zext nneg i8 %.sroa.8.1 to i64
  %i.po = lshr i64 %i.pd, %i.pn                   ; 2 uses
  %i.pp = sub i32 %i.pc, %i.pm                    ; 2 uses
  %i.pq = zext i8 %.sroa.096.1 to i32             ; 3 uses
  %i.pr = and i32 %i.pq, 16
  %.not342 = icmp eq i32 %i.pr, 0
  br i1 %.not342, label %.lr.ph411, label %._crit_edge412

bb.ae:                                            ; preds = %.lr.ph
  %i.ps = and i32 %i.by, 64
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.pu = zext i16 %.sroa.10.0400 to i64
  %notmask337 = shl nsw i32 -1, %i.by
  %i.pv = xor i32 %notmask337, -1
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = and i64 %i.bx, %i.pw
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.px
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.pu ; 3 uses
  %.sroa.096.0 = load i8, ptr %i.pz, align 2      ; 2 uses
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %i.pz, i64 1
  %.sroa.8.0 = load i8, ptr %.sroa.8.0.in, align 1 ; 2 uses
  %.sroa.10.0.in = getelementptr inbounds nuw i8, ptr %i.pz, i64 2
  %.sroa.10.0 = load i16, ptr %.sroa.10.0.in, align 2 ; 2 uses
  %i.qa = zext i8 %.sroa.8.0 to i32
  %i.qb = zext nneg i8 %.sroa.8.0 to i64
  %i.qc = lshr i64 %i.bx, %i.qb                   ; 2 uses
  %i.qd = sub i32 %i.bw, %i.qa                    ; 2 uses
  %i.qe = icmp eq i8 %.sroa.096.0, 0
  br i1 %i.qe, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %bb.ae
  %i.qf = and i32 %i.by, 32
  %.not336 = icmp eq i32 %i.qf, 0
  br i1 %.not336, label %.loopexit362.sink.split.sink.split, label %.loopexit362.sink.split

bb.ah:                                            ; preds = %.loopexit, %bb.ac, %._crit_edge, %._crit_edge422, %bb.w, %bb.v
  %.10 = phi ptr [ %i.bv, %._crit_edge ], [ %i.mn, %bb.w ], [ %i.mj, %bb.v ], [ %.6307.lcssa, %._crit_edge422 ], [ %i.pa, %bb.ac ], [ %.8309, %.loopexit ] ; 3 uses
  %.8299 = phi i64 [ %.lcssa368, %._crit_edge ], [ %i.el, %bb.w ], [ %i.el, %bb.v ], [ %i.el, %._crit_edge422 ], [ %i.el, %bb.ac ], [ %i.el, %.loopexit ] ; 2 uses
  %.8 = phi i32 [ %.lcssa365, %._crit_edge ], [ %i.em, %bb.w ], [ %i.em, %bb.v ], [ %i.em, %._crit_edge422 ], [ %i.em, %bb.ac ], [ %i.em, %.loopexit ] ; 2 uses
  %.6 = phi ptr [ %.1, %._crit_edge ], [ %.5, %bb.w ], [ %.5, %bb.v ], [ %.5, %._crit_edge422 ], [ %.5, %bb.ac ], [ %.5, %.loopexit ] ; 3 uses
  %i.qg = icmp ult ptr %.6, %i.g
  %i.qh = icmp ult ptr %.10, %i.p
  %i.qi = select i1 %i.qg, i1 %i.qh, i1 false
  br i1 %i.qi, label %bb.b, label %.loopexit362, !llvm.loop !32

.loopexit362.sink.split.sink.split:               ; preds = %bb.o, %.lr.ph411, %bb.ag
  %.str.sink = phi ptr [ @.str.2, %bb.ag ], [ @.str.1, %.lr.ph411 ], [ @.str, %bb.o ]
  %.9300.ph.ph = phi i64 [ %i.bx, %bb.ag ], [ %i.pd, %.lr.ph411 ], [ %i.el, %bb.o ]
  %.9.ph.ph = phi i32 [ %i.bw, %bb.ag ], [ %i.pc, %.lr.ph411 ], [ %i.em, %bb.o ]
  %.7.ph.ph = phi ptr [ %.1, %bb.ag ], [ %.4, %.lr.ph411 ], [ %.5, %bb.o ]
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.str.sink, ptr %i.qj, align 8
  br label %.loopexit362.sink.split

.loopexit362.sink.split:                          ; preds = %.loopexit362.sink.split.sink.split, %bb.ag
  %.sink = phi i32 [ 11, %bb.ag ], [ 27, %.loopexit362.sink.split.sink.split ]
  %.9300.ph = phi i64 [ %i.bx, %bb.ag ], [ %.9300.ph.ph, %.loopexit362.sink.split.sink.split ]
  %.9.ph = phi i32 [ %i.bw, %bb.ag ], [ %.9.ph.ph, %.loopexit362.sink.split.sink.split ]
  %.7.ph = phi ptr [ %.1, %bb.ag ], [ %.7.ph.ph, %.loopexit362.sink.split.sink.split ]
  store i32 %.sink, ptr %i.b, align 8
  br label %.loopexit362

.loopexit362:                                     ; preds = %bb.ah, %.loopexit362.sink.split
  %.11 = phi ptr [ %.0301, %.loopexit362.sink.split ], [ %.10, %bb.ah ] ; 2 uses
  %.9300 = phi i64 [ %.9300.ph, %.loopexit362.sink.split ], [ %.8299, %bb.ah ]
  %.9 = phi i32 [ %.9.ph, %.loopexit362.sink.split ], [ %.8, %bb.ah ] ; 2 uses
  %.7 = phi ptr [ %.7.ph, %.loopexit362.sink.split ], [ %.6, %bb.ah ]
  %i.qk = lshr i32 %.9, 3
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = sub nsw i64 0, %i.ql
  %i.qn = getelementptr inbounds i8, ptr %.7, i64 %i.qm ; 2 uses
  store ptr %i.qn, ptr %0, align 8
  store ptr %.11, ptr %i.h, align 8
  %i.qo = ptrtoint ptr %i.g to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = add i64 %i.qo, 5
  %i.qr = sub i64 %i.qq, %i.qp
  %i.qs = and i64 %i.qr, 4294967295
  store i64 %i.qs, ptr %i.d, align 8
  %i.qt = ptrtoint ptr %i.p to i64
  %i.qu = ptrtoint ptr %.11 to i64
  %i.qv = and i32 %.9, 7                          ; 2 uses
  %notmask354 = shl nsw i32 -1, %i.qv
  %i.qw = xor i32 %notmask354, -1
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = and i64 %.9300, %i.qx
  %i.qz = add i64 %i.qt, 257
  %i.ra = sub i64 %i.qz, %i.qu
  %i.rb = and i64 %i.ra, 4294967295
  store i64 %i.rb, ptr %i.l, align 8
  store i64 %i.qy, ptr %i.y, align 8
  store i32 %i.qv, ptr %i.aa, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(none)
define hidden noundef i32 @zlib_inflate_workspacesize() local_unnamed_addr #3 {
bb.a:
  ret i32 42312
}

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define hidden range(i32 -2, 1) i32 @zlib_inflateReset(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8              ; 16 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.h, align 8
  store i32 0, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 32768, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1352 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load i32, ptr %i.r, align 8
  %i.t = shl nuw i32 1, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 0, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define hidden range(i32 -2, 1) i32 @zlib_inflateInit2(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %zlib_inflateReset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = icmp slt i32 %1, 0
  %i.g = lshr i32 %1, 4
  %i.h = add nuw nsw i32 %i.g, 1
  %.sink = select i1 %i.f, i32 0, i32 %i.h
  %.0 = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sink, ptr %i.i, align 8
  %i.j = add nsw i32 %.0, -16
  %or.cond = icmp ult i32 %i.j, -8
  br i1 %or.cond, label %zlib_inflateReset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %.0, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 9544
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.e, align 8              ; 16 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %zlib_inflateReset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.s, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store i64 1, ptr %2, align 8
  store i32 0, ptr %i.o, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 32768, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 1352 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store ptr %i.y, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 0, ptr %i.ah, align 8
  br label %zlib_inflateReset.exit

zlib_inflateReset.exit:                           ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.018 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ 0, %bb.d ], [ -2, %bb.c ]
  ret i32 %.018
}

; Function Attrs: nofree norecurse noredzone nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define hidden range(i32 -5, 3) i32 @zlib_inflate(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %zlib_inflateSyncPacket.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 68 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %zlib_inflateSyncPacket.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8                ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.e, label %zlib_inflateSyncPacket.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load i32, ptr %i.c, align 8              ; 2 uses
  %i.j = icmp eq i32 %i.i, 11
  br i1 %i.j, label %bb.f, label %.split1733

bb.f:                                             ; preds = %bb.e
  store i32 12, ptr %i.c, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %.split1733

.split1733:                                       ; preds = %bb.e, %bb.f
  %i.k = phi i32 [ %i.i, %bb.e ], [ 12, %bb.f ]
  %i.l = phi ptr [ %i.e, %bb.e ], [ %.pre, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 6 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 116 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 16 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1352 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 776 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ay = icmp eq i32 %1, 6
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  br label %bb.g

bb.g:                                             ; preds = %.thread, %.split1733
  %i.bc = phi i32 [ %i.k, %.split1733 ], [ %.pre2107, %.thread ]
  %.0741 = phi ptr [ %i.l, %.split1733 ], [ %.41782, %.thread ] ; 49 uses
  %.0738 = phi ptr [ %i.n, %.split1733 ], [ %.2740, %.thread ] ; 32 uses
  %.0695 = phi i32 [ %i.t, %.split1733 ], [ %.41736, %.thread ] ; 44 uses
  %.0693 = phi i32 [ %i.q, %.split1733 ], [ %.1694, %.thread ] ; 59 uses
  %.0650 = phi i64 [ %i.v, %.split1733 ], [ %.41691, %.thread ] ; 31 uses
  %.0641 = phi i32 [ %i.x, %.split1733 ], [ %.41, %.thread ] ; 41 uses
  %.0636 = phi i32 [ %i.q, %.split1733 ], [ %.3639, %.thread ] ; 54 uses
  %.0 = phi i32 [ 0, %.split1733 ], [ %.7, %.thread ] ; 29 uses
  switch i32 %i.bc, label %zlib_inflateSyncPacket.exit [
    i32 0, label %bb.h
    i32 9, label %.preheader875
    i32 10, label %bb.v
    i32 11, label %bb.y
    i32 12, label %bb.z
    i32 13, label %bb.ag
    i32 14, label %._crit_edge2120
    i32 15, label %.preheader890
    i32 16, label %.split
    i32 17, label %..split1469_crit_edge
    i32 18, label %bb.bl
    i32 19, label %._crit_edge2114
    i32 20, label %bb.by
    i32 21, label %._crit_edge2116
    i32 22, label %bb.ci
    i32 23, label %bb.cr
    i32 24, label %bb.ct
    i32 26, label %.loopexit862.loopexit2944
    i32 27, label %.loopexit862
    i32 28, label %zlib_inflateSyncPacket.exit.loopexit
  ]

._crit_edge2120:                                  ; preds = %bb.g
  %.pre2121 = load i32, ptr %i.ae, align 4
  br label %bb.an

._crit_edge2116:                                  ; preds = %bb.g
  %.pre2117 = load i32, ptr %i.ar, align 4
  br label %bb.ce

._crit_edge2114:                                  ; preds = %bb.g
  %.pre2115 = load i32, ptr %i.ar, align 4
  br label %bb.bw

..split1469_crit_edge:                            ; preds = %bb.g
  %.promoted1470.pre = load i32, ptr %i.ai, align 4
  br label %.split1469

.preheader890:                                    ; preds = %bb.g
  %i.bd = icmp ult i32 %.0641, 14
  br i1 %i.bd, label %.lr.ph1259.preheader, label %._crit_edge1260

.lr.ph1259.preheader:                             ; preds = %.preheader890
  %i.be = zext nneg i32 %.0641 to i64             ; 4 uses
  %i.bf = icmp eq i32 %.0695, 0
  br i1 %i.bf, label %.loopexit862.loopexit1748, label %bb.ar

.preheader875:                                    ; preds = %bb.g
  %i.bg = icmp ult i32 %.0641, 32
  br i1 %i.bg, label %.lr.ph1587.preheader, label %._crit_edge1588

.lr.ph1587.preheader:                             ; preds = %.preheader875
  %i.bh = zext nneg i32 %.0641 to i64             ; 5 uses
  %i.bi = icmp eq i32 %.0695, 0
  br i1 %i.bi, label %.loopexit862.loopexit1739, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.bj = load i32, ptr %i.y, align 8
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %.preheader871

.preheader871:                                    ; preds = %bb.h
  %i.bl = icmp ult i32 %.0641, 16
  br i1 %i.bl, label %.lr.ph1727.preheader, label %._crit_edge1728

.lr.ph1727.preheader:                             ; preds = %.preheader871
  %i.bm = zext nneg i32 %.0641 to i64             ; 4 uses
  %i.bn = icmp eq i32 %.0695, 0
  br i1 %i.bn, label %.loopexit862.loopexit1738, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 12, ptr %i.c, align 8
  br label %.thread

end_hunk_1
