Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_pe_hook_data = type { i32, i32, i16, i16, %struct.pe_image_file_hdr, %struct.pe_image_optional_hdr32, [16 x %struct.pe_image_data_dir], i32, %struct.pe_image_optional_hdr64, [16 x %struct.pe_image_data_dir], [16 x %struct.pe_image_data_dir], i32, i32, i32, i32 }
%struct.pe_image_file_hdr = type { i32, i16, i16, i32, i32, i32, i16, i16 }
%struct.pe_image_optional_hdr32 = type { i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.pe_image_optional_hdr64 = type { i16, i8, i8, i32, i32, i32, i32, i32, i64, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i64, i64, i64, i64, i32, i32 }
%struct.pe_image_data_dir = type { i32, i32 }
%struct.cli_exe_info = type { ptr, i32, i32, i16, i32, i32, %struct.cli_hashset, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pe_image_file_hdr, %union.anon, [16 x %struct.pe_image_data_dir] }
%struct.cli_hashset = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%union.anon = type { %struct.pe_image_optional_hdr64 }
%struct.vinfo_list = type { [16 x i32], i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [81 x i8] c"findres: Assumption Violated: Looking for version info when peinfo->offset != 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cli_scanpe: ctx == NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Heuristics.Broken.Executable\00", align 1
@.str.3 = private unnamed_addr constant [114 x i8] c"cli_scanpe: PE header appears broken - won't attempt .mdb / .imp / PE-specific BC rule matching or exe unpacking\0A\00", align 1
@.str.4 = private unnamed_addr constant [134 x i8] c"cli_scanpe: An error occurred when parsing the PE header - won't attempt .mdb / .imp / PE-specific BC rule matching or exe unpacking\0A\00", align 1
@.str.5 = private unnamed_addr constant [113 x i8] c"cli_scanpe: JSON creation timed out - won't attempt .mdb / .imp / PE-specific BC rule matching or exe unpacking\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"cli_scanpe: scan_pe_mdb failed: %s!\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"------------------------------------\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"cli_scanpe: can't allocate memory for bc_ctx\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"cli_scanpe: NULL argument supplied\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"GetProcAddress\00\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Heuristics.W32.Parite.B\00", align 1
@__const.cli_scanpe.kzs = private unnamed_addr constant [12 x i8] c"\00\01\02\03\00\04\05\00\06\00\07\08", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"cli_scanpe: in kriz\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"cli_scanpe: kriz: using #%d as size counter\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"cli_scanpe: kriz: using #%d as pointer\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Heuristics.W32.Kriz\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"cli_scanpe: kriz: loop out of bounds, corrupted sample?\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"\E8,a\00\00\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Heuristics.W32.Magistr.A.dam\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Heuristics.W32.Magistr.A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"\E8\04r\00\00\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Heuristics.W32.Magistr.B.dam\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Heuristics.W32.Magistr.B\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"cli_scanpe: Polipos: Checking %d xsect jump(s)\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Heuristics.W32.Polipos.A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Heuristics.Trojan.Swizzor.Gen\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"cli_scanpe: UPX/FSG/MEW: empty section found - assuming compression\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"HasEmptySection\00", align 1
@.str.28 = private unnamed_addr constant [67 x i8] c"cli_scanpe: MEW: found MEW characteristics %08X + %08X + 5 = %08X\0A\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"cli_scanpe: MEW: Win9x compatibility was set!\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"cli_scanpe: MEW: Win9x compatibility was NOT set!\0A\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"cli_scanpe: MEW: ESI is not in proper section\0A\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"cli_scanpe: MEW: mew section is empty\0A\00", align 1
@.str.33 = private unnamed_addr constant [97 x i8] c"cli_scanpe: MEW: section size (%08x) + diff size (%08x) exceeds max size of unsigned int (%08x)\0A\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c"cli_scanpe: MEW: offdiff (%08x) exceeds section size + diff size (%08x)\0A\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"cli_scanpe: MEW: ssize %08x dsize %08x offdiff: %08x\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"cli_scanpe: MEW\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"cli_scanpe: MEW: Size mismatch: %08x\0A\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"cli_scanpe: MEW: Can't read %u bytes [read: %zu]\0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"cli_scanpe: MEW: %zu (%08zx) bytes read\0A\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"cli_scanpe: MEW: lzma proc out of bounds!\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Packer\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"MEW\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"cli_scanpe: MEW: Can't create file %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [62 x i8] c"cli_scanpe: MEW: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"***** Scanning rebuilt PE file *****\0A\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"cli_scanpe: MEW: Unpacking failed\0A\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"cli_scanpe: Upack characteristics found.\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"cli_scanpe: Upack: var set\0A\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"cli_scanpe: Upack: var NOT set\0A\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"cli_scanpe: Upack\00", align 1
@.str.51 = private unnamed_addr constant [76 x i8] c"cli_scanpe: Upack: probably malformed pe-header, skipping to next unpacker\0A\00", align 1
@.str.52 = private unnamed_addr constant [53 x i8] c"cli_scanpe: Upack: Can't read raw data of section 0\0A\00", align 1
@.str.53 = private unnamed_addr constant [53 x i8] c"cli_scanpe: Upack: Can't read raw data of section 1\0A\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"Upack\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"cli_scanpe: Upack: Can't create file %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [64 x i8] c"cli_scanpe: Upack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"cli_scanpe: Upack: Unpacking failed\0A\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"cli_scanpe: FSG\00", align 1
@.str.59 = private unnamed_addr constant [55 x i8] c"cli_scanpe: FSG: Size mismatch (ssize: %d, dsize: %d)\0A\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"cli_scanpe: FSG: xchg out of bounds (%x), giving up\0A\00", align 1
@.str.61 = private unnamed_addr constant [47 x i8] c"cli_scanpe: Can't read raw data of section %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"cli_scanpe: FSG: New ESP out of bounds\0A\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"cli_scanpe: FSG: New ESP (%x) is wrong\0A\00", align 1
@.str.64 = private unnamed_addr constant [42 x i8] c"cli_scanpe: FSG: New stack out of bounds\0A\00", align 1
@.str.65 = private unnamed_addr constant [66 x i8] c"cli_scanpe: FSG: Bad destination buffer (edi is %x should be %x)\0A\00", align 1
@.str.66 = private unnamed_addr constant [54 x i8] c"cli_scanpe: FSG: Source buffer out of section bounds\0A\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"cli_scanpe: FSG: Array of functions out of bounds\0A\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"cli_scanpe: FSG: found old EP @%x\0A\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"FSG\00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"cli_scanpe: FSG: Can't create file %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [62 x i8] c"cli_scanpe: FSG: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"cli_scanpe: FSG: Successfully decompressed\0A\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"cli_scanpe: FSG: Unpacking failed\0A\00", align 1
@.str.74 = private unnamed_addr constant [51 x i8] c"cli_scanpe: FSG: Support data out of padding area\0A\00", align 1
@.str.75 = private unnamed_addr constant [51 x i8] c"cli_scanpe: Can't read %d bytes from padding area\0A\00", align 1
@.str.76 = private unnamed_addr constant [55 x i8] c"cli_scanpe: FSG: Bad destination (is %x should be %x)\0A\00", align 1
@.str.77 = private unnamed_addr constant [52 x i8] c"cli_scanpe: FSG: Original section %d is misaligned\0A\00", align 1
@.str.78 = private unnamed_addr constant [55 x i8] c"cli_scanpe: FSG: Original section %d is out of bounds\0A\00", align 1
@.str.79 = private unnamed_addr constant [62 x i8] c"cli_scanpe: FSG: Unable to allocate memory for sections %llu\0A\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"cli_scanpe: FSG: Can't read raw data of section %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"cli_scanpe: UPX\00", align 1
@.str.82 = private unnamed_addr constant [72 x i8] c"cli_scanpe: UPX: Size mismatch or dsize too big (ssize: %d, dsize: %d)\0A\00", align 1
@.str.83 = private unnamed_addr constant [52 x i8] c"cli_scanpe: UPX: Can't read raw data of section %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"\11\DB\11\C9\01\DBu\07\8B\1E\83\EE\FC\11\DB\11\C9\11\C9u A\01\DB\00", align 1
@.str.85 = private unnamed_addr constant [59 x i8] c"cli_scanpe: UPX: Looks like a NRV2B decompression routine\0A\00", align 1
@.str.86 = private unnamed_addr constant [25 x i8] c"\83\F0\FFtx\D1\F8\89\C5\EB\0B\01\DBu\07\8B\1E\83\EE\FC\11\DB\11\C9\00", align 1
@.str.87 = private unnamed_addr constant [59 x i8] c"cli_scanpe: UPX: Looks like a NRV2D decompression routine\0A\00", align 1
@.str.88 = private unnamed_addr constant [25 x i8] c"\EBR1\C9\83\E8\03r\11\C1\E0\08\8A\06F\83\F0\FFtu\D1\F8\89\C5\00", align 1
@.str.89 = private unnamed_addr constant [59 x i8] c"cli_scanpe: UPX: Looks like a NRV2E decompression routine\0A\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"cli_scanpe: UPX: UPX1 seems skewed by %d bytes\0A\00", align 1
@.str.91 = private unnamed_addr constant [44 x i8] c"cli_scanpe: UPX: Successfully decompressed\0A\00", align 1
@.str.92 = private unnamed_addr constant [48 x i8] c"cli_scanpe: UPX: Preferred decompressor failed\0A\00", align 1
@.str.93 = private unnamed_addr constant [44 x i8] c"cli_scanpe: UPX: NRV2B decompressor failed\0A\00", align 1
@.str.94 = private unnamed_addr constant [55 x i8] c"cli_scanpe: UPX: Successfully decompressed with NRV2B\0A\00", align 1
@.str.95 = private unnamed_addr constant [44 x i8] c"cli_scanpe: UPX: NRV2D decompressor failed\0A\00", align 1
@.str.96 = private unnamed_addr constant [55 x i8] c"cli_scanpe: UPX: Successfully decompressed with NRV2D\0A\00", align 1
@.str.97 = private unnamed_addr constant [44 x i8] c"cli_scanpe: UPX: NRV2E decompressor failed\0A\00", align 1
@.str.98 = private unnamed_addr constant [55 x i8] c"cli_scanpe: UPX: Successfully decompressed with NRV2E\0A\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"V\83\C3\04SP\C7\03\03\00\02\00\90\90\90\90\90UWV\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"V\83\C3\04SP\C7\03\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"\90\90\90UWVS\83\00", align 1
@.str.102 = private unnamed_addr constant [43 x i8] c"cli_scanpe: UPX: All decompressors failed\0A\00", align 1
@.str.103 = private unnamed_addr constant [43 x i8] c"cli_scanpe: UPX/FSG: Can't create file %s\0A\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"UPX\00", align 1
@.str.105 = private unnamed_addr constant [43 x i8] c"cli_scanpe: UPX/FSG: Can't write %d bytes\0A\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"cli_scanpe: UPX/FSG: lseek() failed\0A\00", align 1
@.str.107 = private unnamed_addr constant [52 x i8] c"cli_scanpe: UPX/FSG: Decompressed data saved in %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [40 x i8] c"***** Scanning decompressed file *****\0A\00", align 1
@.str.109 = private unnamed_addr constant [48 x i8] c"cli_scanpe: Petite: v2.%d compression detected\0A\00", align 1
@.str.110 = private unnamed_addr constant [65 x i8] c"cli_scanpe: Petite: level zero compression is not supported yet\0A\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"cli_scanpe: Petite\00", align 1
@.str.112 = private unnamed_addr constant [45 x i8] c"cli_scanpe: Petite: Can't allocate %d bytes\0A\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"Petite\00", align 1
@.str.114 = private unnamed_addr constant [42 x i8] c"cli_scanpe: Petite: Can't create file %s\0A\00", align 1
@.str.115 = private unnamed_addr constant [53 x i8] c"Petite: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"Petite: Unpacking failed\0A\00", align 1
@.str.118 = private unnamed_addr constant [19 x i8] c"cli_scanpe: PEspin\00", align 1
@.str.119 = private unnamed_addr constant [64 x i8] c"cli_scanpe: PESping: Unable to allocate memory for spinned %lu\0A\00", align 1
@.str.120 = private unnamed_addr constant [42 x i8] c"cli_scanpe: PESpin: Can't read %lu bytes\0A\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"PEspin\00", align 1
@.str.122 = private unnamed_addr constant [42 x i8] c"cli_scanpe: PESpin: Can't create file %s\0A\00", align 1
@.str.123 = private unnamed_addr constant [65 x i8] c"cli_scanpe: PEspin: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.124 = private unnamed_addr constant [35 x i8] c"cli_scanpe: PESpin: Size exceeded\0A\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"cli_scanpe: PEspin: Unpacking failed\0A\00", align 1
@.str.134 = private unnamed_addr constant [59 x i8] c"cli_scanpe: yC: Unable to allocate memory for spinned %lu\0A\00", align 1
@.str.135 = private unnamed_addr constant [38 x i8] c"cli_scanpe: yC: Can't read %lu bytes\0A\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"yC\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"%d,%d,%d,%d\0A\00", align 1
@.str.138 = private unnamed_addr constant [38 x i8] c"cli_scanpe: yC: Can't create file %s\0A\00", align 1
@.str.139 = private unnamed_addr constant [61 x i8] c"cli_scanpe: yC: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.140 = private unnamed_addr constant [34 x i8] c"cli_scanpe: yC: Unpacking failed\0A\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"cli_scanpe: WWPack\00", align 1
@.str.144 = private unnamed_addr constant [54 x i8] c"cli_scanpe: WWPack: Can't read %d bytes from headers\0A\00", align 1
@.str.145 = private unnamed_addr constant [51 x i8] c"cli_scanpe: WWpack: Probably hacked/damaged file.\0A\00", align 1
@.str.146 = private unnamed_addr constant [58 x i8] c"cli_scanpe: WWPack: Can't read %d bytes from wwpack sect\0A\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"WWPack\00", align 1
@.str.148 = private unnamed_addr constant [42 x i8] c"cli_scanpe: WWPack: Can't create file %s\0A\00", align 1
@.str.149 = private unnamed_addr constant [65 x i8] c"cli_scanpe: WWPack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.150 = private unnamed_addr constant [38 x i8] c"cli_scanpe: WWPack: Unpacking failed\0A\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"cli_scanpe: Aspack\00", align 1
@.str.154 = private unnamed_addr constant [58 x i8] c"cli_scanpe: Aspack: Probably hacked/damaged Aspack file.\0A\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"Aspack\00", align 1
@.str.156 = private unnamed_addr constant [42 x i8] c"cli_scanpe: Aspack: Can't create file %s\0A\00", align 1
@.str.157 = private unnamed_addr constant [65 x i8] c"cli_scanpe: Aspack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.158 = private unnamed_addr constant [38 x i8] c"cli_scanpe: Aspack: Unpacking failed\0A\00", align 1
@.str.160 = private unnamed_addr constant [53 x i8] c"cli_scanpe: NsPack: Found *start_of_stuff @delta-%x\0A\00", align 1
@.str.161 = private unnamed_addr constant [19 x i8] c"cli_scanpe: NsPack\00", align 1
@.str.162 = private unnamed_addr constant [59 x i8] c"cli_scanpe: NsPack: Unable to allocate memory for dest %u\0A\00", align 1
@.str.163 = private unnamed_addr constant [32 x i8] c"cli_scanpe: NsPack: OEP = %08x\0A\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"NsPack\00", align 1
@.str.165 = private unnamed_addr constant [42 x i8] c"cli_scanpe: NsPack: Can't create file %s\0A\00", align 1
@.str.166 = private unnamed_addr constant [65 x i8] c"cli_scanpe: NsPack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.167 = private unnamed_addr constant [38 x i8] c"cli_scanpe: NsPack: Unpacking failed\0A\00", align 1
@.str.168 = private unnamed_addr constant [75 x i8] c"cli_scanpe: bytecode PE hook: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.169 = private unnamed_addr constant [33 x i8] c"cli_peheader: ctx can't be NULL\0A\00", align 1
@.str.170 = private unnamed_addr constant [40 x i8] c"cli_peheader: Can't read DOS signature\0A\00", align 1
@.str.171 = private unnamed_addr constant [37 x i8] c"cli_peheader: Invalid DOS signature\0A\00", align 1
@.str.172 = private unnamed_addr constant [59 x i8] c"cli_peheader: Unable to read e_lfanew - truncated header?\0A\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"e_lfanew == %d\0A\00", align 1
@.str.174 = private unnamed_addr constant [45 x i8] c"cli_peheader: Not a PE file - e_lfanew == 0\0A\00", align 1
@.str.175 = private unnamed_addr constant [38 x i8] c"cli_peheader: Can't read file header\0A\00", align 1
@.str.176 = private unnamed_addr constant [55 x i8] c"cli_peheader: Invalid PE signature (probably NE file)\0A\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"DLL\00", align 1
@.str.179 = private unnamed_addr constant [16 x i8] c"File type: DLL\0A\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"EXE\00", align 1
@.str.181 = private unnamed_addr constant [23 x i8] c"File type: Executable\0A\00", align 1
@.str.182 = private unnamed_addr constant [59 x i8] c"cli_peheader: Assumption Violated: PE is not a DLL or EXE\0A\00", align 1
@.str.183 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.184 = private unnamed_addr constant [12 x i8] c"Target Host\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"80386\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"80486\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"80586\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"R3000 MIPS BE\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"R3000 MIPS LE\00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"R4000 MIPS LE\00", align 1
@.str.191 = private unnamed_addr constant [15 x i8] c"R10000 MIPS LE\00", align 1
@.str.192 = private unnamed_addr constant [12 x i8] c"WCE MIPS LE\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"DEC Alpha AXP\00", align 1
@.str.194 = private unnamed_addr constant [15 x i8] c"Hitachi SH3 LE\00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c"Hitachi SH3-DSP\00", align 1
@.str.196 = private unnamed_addr constant [17 x i8] c"Hitachi SH3-E LE\00", align 1
@.str.197 = private unnamed_addr constant [15 x i8] c"Hitachi SH4 LE\00", align 1
@.str.198 = private unnamed_addr constant [12 x i8] c"Hitachi SH5\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"ARM LE\00", align 1
@.str.200 = private unnamed_addr constant [21 x i8] c"ARM Thumb/Thumb-2 LE\00", align 1
@.str.201 = private unnamed_addr constant [15 x i8] c"ARM Thumb-2 LE\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"AM33\00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c"PowerPC LE\00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"PowerPC FP\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"IA64\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"MIPS16\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"M68k\00", align 1
@.str.208 = private unnamed_addr constant [20 x i8] c"DEC Alpha AXP 64bit\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"MIPS+FPU\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"MIPS16+FPU\00", align 1
@.str.211 = private unnamed_addr constant [17 x i8] c"Infineon TriCore\00", align 1
end_hunk_0
begin_hunk_1_@snprintf
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @add_section_info(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %get_pe_property.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.a) #22
  %.not8.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i, label %bb.c, label %get_pe_property.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @json_object_new_object() #22   ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !55
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %get_pe_property.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.i = call i32 @json_object_object_add(ptr noundef %i.h, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.g) #22 ; 0 uses
  br label %get_pe_property.exit.i

get_pe_property.exit.thread.i:                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %get_section_json.exit.thread

get_pe_property.exit.i:                           ; preds = %bb.d, %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %get_section_json.exit.thread, label %bb.e

bb.e:                                             ; preds = %get_pe_property.exit.i
  %i.k = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.363, ptr noundef nonnull %i.b) #22
  %.not7.i = icmp eq i32 %i.k, 0
  br i1 %.not7.i, label %bb.f, label %get_section_json.exit

bb.f:                                             ; preds = %bb.e
  %i.l = call ptr @json_object_new_array() #22    ; 3 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !55
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %get_section_json.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = call i32 @json_object_object_add(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.363, ptr noundef nonnull %i.l) #22 ; 0 uses
  br label %get_section_json.exit

get_section_json.exit.thread:                     ; preds = %get_pe_property.exit.i, %bb.f, %get_pe_property.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.x

get_section_json.exit:                            ; preds = %bb.e, %bb.g
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.x, label %bb.h

bb.h:                                             ; preds = %get_section_json.exit
  %i.o = call ptr @json_object_new_object() #22   ; 8 uses
  %.not40 = icmp eq ptr %i.o, null
  br i1 %.not40, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = call ptr @json_object_new_int(i32 noundef %i.q) #22 ; 2 uses
  %.not41 = icmp eq ptr %i.r, null
  br i1 %.not41, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.356, ptr noundef nonnull %i.r) #22 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11
  %i.v = call ptr @json_object_new_int(i32 noundef %i.u) #22 ; 2 uses
  %.not42 = icmp eq ptr %i.v, null
  br i1 %.not42, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.357, ptr noundef nonnull %i.v) #22 ; 0 uses
  %i.x = load i32, ptr %1, align 4, !tbaa !10
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 16, ptr noundef nonnull @.str.358, i32 noundef %i.x) #22 ; 0 uses
  %i.z = call ptr @json_object_new_string(ptr noundef nonnull %i.c) #22 ; 2 uses
  %.not43 = icmp eq ptr %i.z, null
  br i1 %.not43, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.359, ptr noundef nonnull %i.z) #22 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !64
  %i.ad = lshr i32 %i.ac, 29
  %.lobit = and i32 %i.ad, 1
  %i.ae = call ptr @json_object_new_boolean(i32 noundef %.lobit) #22 ; 2 uses
  %.not44 = icmp eq ptr %i.ae, null
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.360, ptr noundef nonnull %i.ae) #22 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !64
  %.lobit45 = lshr i32 %i.ag, 31
  %i.ah = call ptr @json_object_new_boolean(i32 noundef %.lobit45) #22 ; 2 uses
  %.not46 = icmp eq ptr %i.ah, null
  br i1 %.not46, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.361, ptr noundef nonnull %i.ah) #22 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !138
  %.not47 = icmp sgt i32 %i.ak, -1
  br i1 %.not47, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i32, ptr %i.al, align 4, !tbaa !105
  %.not48 = icmp sgt i32 %i.am, -1
  br i1 %.not48, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.an = load i32, ptr %i.p, align 4, !tbaa !8
  %.not49 = icmp eq i32 %i.an, 0
  br i1 %.not49, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !112
  %.not50 = icmp sgt i32 %i.ap, -1
  br i1 %.not50, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !106
  %.lobit51 = lshr i32 %i.ar, 31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.p
  %i.as = phi i32 [ 1, %bb.s ], [ 1, %bb.q ], [ 1, %bb.p ], [ %.lobit51, %bb.t ]
  %i.at = call ptr @json_object_new_boolean(i32 noundef %i.as) #22 ; 2 uses
  %.not52 = icmp eq ptr %i.at, null
  br i1 %.not52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.362, ptr noundef nonnull %i.at) #22 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.av = call i32 @json_object_array_add(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #22 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %get_section_json.exit.thread, %bb.k, %bb.j, %bb.i, %bb.h, %get_section_json.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @versioninfo_cb(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.364, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  store i32 %4, ptr %i.d, align 4, !tbaa !12
  %i.e = load i32, ptr %i.a, align 4, !tbaa !140
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !140
  %i.g = icmp eq i32 %i.f, 16
  %. = zext i1 %i.g to i32
  ret i32 %.
}

declare i32 @cli_hashset_init(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @cli_hashset_addkey(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_utf16toascii(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_str2hex(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @cli_check_auth_header(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %2 = alloca %struct.cli_exe_info, align 8       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %i.g = and i32 %i.f, 131072
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !148
  %i.l = and i64 %i.k, 8
  %.not179 = icmp eq i64 %i.l, 0
  br i1 %.not179, label %bb.c, label %bb.aq

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq ptr %1, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @cli_exe_info_init(ptr noundef nonnull %2, i32 noundef 0) #22
  %i.n = call i32 @cli_peheader(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0)
  %.not180 = icmp eq i32 %i.n, 0
  br i1 %.not180, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0145 = phi ptr [ %2, %bb.d ], [ %1, %bb.c ]   ; 7 uses
  %.0145.sroa.phi299 = getelementptr inbounds nuw i8, ptr %.0145, i64 284
  %.0145.sroa.phi296 = getelementptr inbounds nuw i8, ptr %.0145, i64 280
  %.0145.sroa.phi = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %.0145.sroa.phi291 = getelementptr inbounds nuw i8, ptr %.0145, i64 84
  %.0145.sroa.phi289 = getelementptr inbounds nuw i8, ptr %.0145, i64 88
  %i.o = load i32, ptr %.0145.sroa.phi296, align 8, !tbaa !23 ; 4 uses
  %i.p = load i32, ptr %.0145.sroa.phi299, align 4, !tbaa !107 ; 4 uses
  %i.q = icmp ult i32 %i.p, 8
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = call zeroext i1 @cli_hm_have_size(ptr noundef %i.t, i32 noundef 1, i32 noundef 2) #22
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.y = call zeroext i1 @cli_hm_have_size(ptr noundef %i.x, i32 noundef 2, i32 noundef 2) #22
  br i1 %i.y, label %bb.h, label %.thread216.thread235

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28  ; 5 uses
  %i.ab = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #24 ; 12 uses
  %.not181 = icmp eq ptr %i.ab, null
  br i1 %.not181, label %.thread216.thread235, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %.0145.sroa.phi289, align 8, !tbaa !98 ; 2 uses
  %i.ad = add i32 %i.ac, 88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !150
  %i.af = add i32 %i.ac, 92                       ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i32, ptr %.0145.sroa.phi291, align 4, !tbaa !59
  %.not182 = icmp eq i32 %i.ah, 0
  %. = select i1 %.not182, i32 60, i32 76         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !152
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %., ptr %i.aj, align 4, !tbaa !150
  %i.ak = add nuw nsw i32 %., 8
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, %i.ag            ; 7 uses
  %i.an = load i32, ptr %.0145.sroa.phi, align 8, !tbaa !27
  %i.ao = zext i32 %i.an to i64
  %i.ap = icmp samesign ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %.thread216.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not183 = icmp eq i32 %i.o, 0
  br i1 %.not183, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add i32 %i.p, %i.o
  %i.ar = zext i32 %i.aq to i64
  %.not184 = icmp eq i64 %i.aa, %i.ar
  br i1 %.not184, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.321) #22
  br label %.thread216.thread

bb.m:                                             ; preds = %bb.k
  %i.as = zext i32 %i.o to i64                    ; 6 uses
  %i.at = icmp samesign ult i64 %i.am, %i.as
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = trunc nuw i64 %i.am to i32              ; 2 uses
  %i.av = sub nuw i32 %i.o, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !150
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ay = icmp samesign ugt i64 %i.am, %i.as
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.322) #22
  br label %.thread216.thread

bb.q:                                             ; preds = %bb.o, %bb.n
  %.0136 = phi i32 [ 3, %bb.n ], [ 2, %bb.o ]     ; 2 uses
  %or.cond239.not = icmp samesign ugt i64 %i.aa, %i.as
  br i1 %or.cond239.not, label %bb.r, label %.thread216.thread

bb.r:                                             ; preds = %bb.q
  %i.az = sub nuw nsw i64 %i.aa, %i.as            ; 2 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.az, i64 8) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.bc = call ptr %i.bb(ptr noundef nonnull %i.c, i64 noundef range(i64 0, 8589934855) %i.as, i64 noundef %spec.select.i, i32 noundef 0) #22, !inline_history !89 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %.thread216.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0, ptr nonnull align 1 %i.bc, i64 %spec.select.i, i1 false)
  %.not185 = icmp samesign ugt i64 %i.az, 7
  br i1 %.not185, label %bb.s, label %.thread216.thread

bb.s:                                             ; preds = %fmap_readn.exit
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.4..4..4. = load i16, ptr %.4..4..4..sroa_idx, align 4, !tbaa !36
  %.not186 = icmp eq i16 %.4..4..4., 512
  br i1 %.not186, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.323) #22
  br label %.thread216.thread

bb.u:                                             ; preds = %bb.s
  %.6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 6
  %.6..6..6. = load i16, ptr %.6..6..6..sroa_idx, align 2, !tbaa !36
  %.not187 = icmp eq i16 %.6..6..6., 2
  br i1 %.not187, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.324) #22
  br label %.thread216.thread

bb.w:                                             ; preds = %bb.u
  %.0..0..0. = load i32, ptr %.sroa.0, align 8, !tbaa !36
  %.not188 = icmp eq i32 %.0..0..0., %i.p
  br i1 %.not188, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.325) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bd = add nuw nsw i64 %i.as, 8
  %i.be = add i32 %i.p, -8
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.bg = call i32 @asn1_check_mscat(ptr noundef %i.bf, ptr noundef nonnull %i.c, i64 noundef %i.bd, i32 noundef %i.be, ptr noundef nonnull %i.ab, i32 noundef %.0136, ptr noundef nonnull %0) #22 ; 3 uses
  %i.bh = and i32 %i.bg, -33
  %or.cond = icmp eq i32 %i.bh, 1
  br i1 %or.cond, label %.thread216.thread, label %bb.ab

bb.z:                                             ; preds = %bb.j
  %i.bi = icmp ult i64 %i.am, %i.aa
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bj = sub nuw i64 %i.aa, %i.am
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = trunc nuw i64 %i.am to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !152
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !150
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.1137 = phi i32 [ %.0136, %bb.y ], [ 3, %bb.aa ], [ 2, %bb.z ] ; 4 uses
  %.0132 = phi i32 [ %i.bg, %bb.y ], [ 26, %bb.aa ], [ 26, %bb.z ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !149
  %i.bs = call zeroext i1 @cli_hm_have_size(ptr noundef %i.br, i32 noundef 1, i32 noundef 2) #22
  br i1 %i.bs, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.bt = call ptr @cl_hash_init(ptr noundef nonnull @.str.326) #22 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.thread216.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ac
  %wide.trip.count = zext nneg i32 %.1137 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.af
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.af ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !150 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %.preheader
  %i.bz = load i32, ptr %i.bv, align 4, !tbaa !152
  %i.ca = zext i32 %i.bz to i64
  %i.cb = zext i32 %i.bx to i64
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !34
  %i.cd = call ptr %i.cc(ptr noundef %i.c, i64 noundef range(i64 0, 8589934855) %i.ca, i64 noundef %i.cb, i32 noundef 0) #22, !inline_history !35 ; 2 uses
  %.not189 = icmp eq ptr %i.cd, null
  br i1 %.not189, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = load i32, ptr %i.bw, align 4, !tbaa !150
  %i.cf = zext i32 %i.ce to i64
  %i.cg = call i32 @cl_update_hash(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.cd, i64 noundef %i.cf) #22 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.preheader, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.preheader

bb.ag:                                            ; preds = %bb.ad
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  %.not190 = icmp eq i32 %.1137, %i.ch
  br i1 %.not190, label %.thread, label %.thread211

.thread:                                          ; preds = %bb.af, %bb.ag
  %i.ci = call i32 @cl_finish_hash(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !149
  %i.cm = call i32 @cli_hm_scan(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef null, ptr noundef %i.cl, i32 noundef 1) #22
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.thread278, %.thread
  %.lcssa244 = phi ptr [ @.str.326, %.thread ], [ @.str.327, %.thread278 ] ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.328, ptr noundef nonnull %.lcssa244) #22
  %i.co = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa244) #25
  %i.cp = add i64 %i.co, 28                       ; 2 uses
  %i.cq = call noalias ptr @malloc(i64 noundef %i.cp) #23 ; 4 uses
  %.not191 = icmp eq ptr %i.cq, null
  br i1 %.not191, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.329) #22
  br label %.thread216.thread

bb.aj:                                            ; preds = %bb.ah
  %i.cr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.cq, i64 noundef %i.cp, ptr noundef nonnull @.str.330, ptr noundef nonnull %.lcssa244) #22 ; 0 uses
  %i.cs = call i32 @cli_trust_this_layer(ptr noundef nonnull %0, ptr noundef nonnull %i.cq) #22 ; 0 uses
  call void @free(ptr noundef nonnull %i.cq) #22
  br label %.thread216.thread

bb.ak:                                            ; preds = %bb.ab, %.thread
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 136
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !149
  %i.cw = call zeroext i1 @cli_hm_have_size(ptr noundef %i.cv, i32 noundef 2, i32 noundef 2) #22
  br i1 %i.cw, label %bb.al, label %.thread216.thread

bb.al:                                            ; preds = %bb.ak
  %i.cx = call ptr @cl_hash_init(ptr noundef nonnull @.str.327) #22 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %.thread216.thread, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %bb.al
  %wide.trip.count.1 = zext nneg i32 %.1137 to i64
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.ao, %.preheader.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader.preheader.1 ], [ %indvars.iv.next.1, %bb.ao ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !150 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.preheader.1
  %i.dd = load i32, ptr %i.cz, align 4, !tbaa !152
  %i.de = zext i32 %i.dd to i64
  %i.df = zext i32 %i.db to i64
  %i.dg = load ptr, ptr %i.bo, align 8, !tbaa !34
  %i.dh = call ptr %i.dg(ptr noundef %i.c, i64 noundef range(i64 0, 8589934855) %i.de, i64 noundef %i.df, i32 noundef 0) #22, !inline_history !35 ; 2 uses
  %.not189.1 = icmp eq ptr %i.dh, null
  br i1 %.not189.1, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.di = load i32, ptr %i.da, align 4, !tbaa !150
  %i.dj = zext i32 %i.di to i64
  %i.dk = call i32 @cl_update_hash(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.dh, i64 noundef %i.dj) #22 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.preheader.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.thread278, label %.preheader.1

bb.ap:                                            ; preds = %bb.am
  %i.dl = trunc nuw nsw i64 %indvars.iv.1 to i32
  %.not190.1 = icmp eq i32 %.1137, %i.dl
  br i1 %.not190.1, label %.thread278, label %.thread211

.thread278:                                       ; preds = %bb.ao, %bb.ap
  %i.dm = call i32 @cl_finish_hash(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.dn = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 136
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !149
  %i.dq = call i32 @cli_hm_scan(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef null, ptr noundef %i.dp, i32 noundef 2) #22
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.ah, label %.thread216.thread

.thread211:                                       ; preds = %bb.ag, %bb.ap
  %.2141 = phi ptr [ %i.cx, %bb.ap ], [ %i.bt, %bb.ag ]
  call void @cl_hash_destroy(ptr noundef nonnull %.2141) #22
  br label %.thread216.thread

.thread216.thread:                                ; preds = %bb.ak, %.thread278, %bb.ac, %bb.al, %.thread211, %bb.ai, %bb.aj, %bb.r, %bb.q, %bb.l, %fmap_readn.exit, %bb.t, %bb.v, %bb.y, %bb.p, %bb.i
  %.3135222230 = phi i32 [ 26, %bb.p ], [ 26, %bb.r ], [ 26, %bb.i ], [ 26, %bb.q ], [ 26, %bb.l ], [ 26, %fmap_readn.exit ], [ 26, %bb.t ], [ 26, %bb.v ], [ %i.bg, %bb.y ], [ 6, %bb.ak ], [ %.0132, %.thread211 ], [ %.0132, %bb.ai ], [ 33, %bb.aj ], [ 20, %bb.ac ], [ 20, %bb.al ], [ 6, %.thread278 ]
  call void @free(ptr noundef nonnull %i.ab) #22
  br label %.thread216.thread235

.thread216.thread235:                             ; preds = %bb.g, %bb.h, %.thread216.thread
  %.3135222231 = phi i32 [ %.3135222230, %.thread216.thread ], [ 20, %bb.h ], [ 22, %bb.g ] ; 2 uses
  %i.ds = icmp eq ptr %2, %.0145
  br i1 %i.ds, label %.sink.split, label %bb.aq

.sink.split:                                      ; preds = %.thread216.thread235, %bb.d
  %.0145.sink = phi ptr [ %2, %bb.d ], [ %.0145, %.thread216.thread235 ]
  %.0146.ph = phi i32 [ 26, %bb.d ], [ %.3135222231, %.thread216.thread235 ]
  call void @cli_exe_info_destroy(ptr noundef nonnull %.0145.sink) #22
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %.thread216.thread235, %bb.b, %bb.a
  %.0146 = phi i32 [ 6, %bb.a ], [ %.3135222231, %.thread216.thread235 ], [ 6, %bb.b ], [ %.0146.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 %.0146
}

declare zeroext i1 @cli_hm_have_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @asn1_check_mscat(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cl_hash_init(ptr noundef) local_unnamed_addr #3

declare i32 @cl_update_hash(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @cl_finish_hash(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cli_hm_scan(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

declare i32 @cli_trust_this_layer(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cl_hash_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @cli_genhash_pe(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.cli_exe_info, align 8       ; 19 uses
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = alloca [3 x i8], align 1                 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !153
  %i.e = icmp ne i32 %1, 0
  %i.f = icmp ne i32 %2, 1
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.331) #22
  br label %bb.ai

bb.d:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %1, 1
  br i1 %i.g, label %bb.ai, label %.thread

.thread:                                          ; preds = %bb.b, %bb.d
  call void @cli_exe_info_init(ptr noundef nonnull %4, i32 noundef 0) #22
  %i.h = call i32 @cli_peheader(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0)
  %.not79 = icmp eq i32 %i.h, 0
  br i1 %.not79, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  call void @cli_exe_info_destroy(ptr noundef nonnull %4) #22
  br label %bb.ai

bb.f:                                             ; preds = %.thread
  %i.i = load ptr, ptr %4, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !26
  %i.l = zext i16 %i.k to i64
  call void @cli_qsort(ptr noundef %i.i, i64 noundef %i.l, i64 noundef 36, ptr noundef nonnull @sort_sects) #22
  %i.m = zext i32 %2 to i64                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  store i8 1, ptr %i.n, align 1, !tbaa !86
  %i.o = call i64 @cli_hash_len(i32 noundef %2) #22 ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 4 uses
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.332, i32 noundef %2) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %4) #22
  br label %bb.ai

bb.h:                                             ; preds = %bb.f
  %i.r = and i64 %i.o, 2147483647
  %i.s = call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 1) #24 ; 8 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  store ptr %i.s, ptr %i.t, align 8, !tbaa !85
  %.not80 = icmp eq ptr %i.s, null
  br i1 %.not80, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.333) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %4) #22
  br label %bb.ai

bb.j:                                             ; preds = %bb.h
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load i16, ptr %i.j, align 8, !tbaa !26
  %i.v = zext i16 %i.u to i64                     ; 2 uses
  store i64 %i.v, ptr %3, align 8, !tbaa !156
  %i.w = call ptr @cli_max_calloc(i64 noundef %i.v, i64 noundef 24) #22 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !153
  %.not81 = icmp eq ptr %i.w, null
  br i1 %.not81, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @cli_exe_info_destroy(ptr noundef nonnull %4) #22
  call void @free(ptr noundef nonnull %i.s) #22
  br label %bb.ai

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = icmp eq i32 %1, 0
  br i1 %i.y, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %bb.m
  %i.z = load i16, ptr %i.j, align 8, !tbaa !26
  %.not89 = icmp eq i16 %i.z, 0
  br i1 %.not89, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.t
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %bb.t ], [ 0, %.lr.ph ] ; 6 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !56
  %i.ad = load ptr, ptr %4, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv92
  %i.af = call fastcc zeroext i1 @cli_hashsect(ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.b)
  br i1 %i.af, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.ag = load ptr, ptr %4, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw [36 x i8], ptr %i.ag, i64 %indvars.iv92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %.not84.us = icmp eq i32 %i.aj, 0
  %i.ak = trunc nuw nsw i64 %indvars.iv92 to i32  ; 2 uses
  br i1 %.not84.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.336, i32 noundef %i.ak) #22
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.337, i32 noundef %i.ak) #22
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph.split.us
  %i.al = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %.not85.us = icmp eq i8 %i.al, 0
  br i1 %.not85.us, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = call ptr @cli_str2hex(ptr noundef nonnull %i.s, i32 noundef %i.p) #22 ; 3 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw [36 x i8], ptr %i.an, i64 %indvars.iv92
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %.not86.us = icmp eq ptr %i.am, null            ; 2 uses
  %i.ar = select i1 %.not86.us, ptr @.str.335, ptr %i.am
  %i.as = trunc nuw nsw i64 %indvars.iv92 to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.334, i32 noundef %i.as, i32 noundef %i.aq, ptr noundef nonnull %i.ar) #22
  br i1 %.not86.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.am) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.p, %bb.o
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.at = load i16, ptr %i.j, align 8, !tbaa !26
  %i.au = zext i16 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next93, %i.au
  br i1 %i.av, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ab ], [ 0, %.lr.ph ] ; 9 uses
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !56
  %i.ax = load ptr, ptr %4, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw [36 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = call fastcc zeroext i1 @cli_hashsect(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.b)
  br i1 %i.az, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.lr.ph.split
  %i.ba = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %.not85 = icmp eq i8 %i.ba, 0
  br i1 %.not85, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = call ptr @cli_str2hex(ptr noundef nonnull %i.s, i32 noundef %i.p) #22 ; 3 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw [36 x i8], ptr %i.bc, i64 %indvars.iv
end_hunk_1
