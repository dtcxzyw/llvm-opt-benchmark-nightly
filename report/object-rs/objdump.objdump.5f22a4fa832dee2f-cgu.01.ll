Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.01?download=true
inline.NumInlined: 126
inline.NumDeleted: 103
begin_hunk_0
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseHTIzroA4w0_6object2pe12SectionFlagsNtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump }>, align 8
@22 = private unnamed_addr constant [4 x i8] c"Coff", align 1
@23 = private unnamed_addr constant [15 x i8] c"characteristics", align 1
@24 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseHTIzroA4w0_6object5xcoff12SectionFlagsNtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump }>, align 8
@25 = private unnamed_addr constant [5 x i8] c"Xcoff", align 1
@26 = private unnamed_addr constant [7 x i8] c"s_flags", align 1
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCseHTIzroA4w0_6object3elfNtB5_10SymbolInfoNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseHTIzroA4w0_6object3elf11SymbolOtherNtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump }>, align 8
@29 = private unnamed_addr constant [7 x i8] c"st_info", align 1
@30 = private unnamed_addr constant [8 x i8] c"st_other", align 1
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsbS_NtCseHTIzroA4w0_6object5machoNtB6_11SymbolFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseHTIzroA4w0_6object5macho10SymbolDescNtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump }>, align 8
@33 = private unnamed_addr constant [6 x i8] c"n_type", align 1
@34 = private unnamed_addr constant [6 x i8] c"n_desc", align 1
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs3E_NtCseHTIzroA4w0_6object2peNtB6_10SymbolTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@36 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseHTIzroA4w0_6object2pe11SymbolClassNtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump }>, align 8
@37 = private unnamed_addr constant [3 x i8] c"typ", align 1
@38 = private unnamed_addr constant [13 x i8] c"storage_class", align 1
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs4u_NtCseHTIzroA4w0_6object2peNtB6_11SymbolClassNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs57_NtCseHTIzroA4w0_6object2peNtB6_15ComdatSelectionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@41 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtCseHTIzroA4w0_6object4read12SectionIndexENtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump }>, align 8
@42 = private unnamed_addr constant [11 x i8] c"CoffSection", align 1
@43 = private unnamed_addr constant [9 x i8] c"selection", align 1
@44 = private unnamed_addr constant [19 x i8] c"associative_section", align 1
@45 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs26_NtCseHTIzroA4w0_6object5xcoffNtB6_10SymbolTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@46 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs2H_NtCseHTIzroA4w0_6object5xcoffNtB6_11SymbolClassNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtCseHTIzroA4w0_6object5xcoffNtB5_13CsectAuxSmtypNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@48 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3T_NtCseHTIzroA4w0_6object5xcoffNtB6_13CsectAuxClassNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@49 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtCseHTIzroA4w0_6object4read11SymbolIndexENtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump }>, align 8
@50 = private unnamed_addr constant [8 x i8] c"n_sclass", align 1
@51 = private unnamed_addr constant [7 x i8] c"x_smtyp", align 1
@52 = private unnamed_addr constant [8 x i8] c"x_smclas", align 1
@53 = private unnamed_addr constant [16 x i8] c"containing_csect", align 1
@54 = private unnamed_addr constant [25 x i8] c"Non UTF-8 PE section name", align 1
@55 = private unnamed_addr constant [29 x i8] c"Non UTF-8 Mach-O segment name", align 1
@56 = private unnamed_addr constant [7 x i8] c"Segment", align 1
@57 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump }>, align 8
@58 = private unnamed_addr constant [4 x i8] c"name", align 1
@59 = private unnamed_addr constant [9 x i8] c"<invalid>", align 1
@60 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @59, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt }>, align 8
@62 = private unnamed_addr constant [7 x i8] c"address", align 1
@63 = private unnamed_addr constant [4 x i8] c"size", align 1
@64 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCseHTIzroA4w0_6object6commonNtB5_11PermissionsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@65 = private unnamed_addr constant [11 x i8] c"permissions", align 1
@66 = private unnamed_addr constant [26 x i8] c"Non UTF-8 COFF COMDAT name", align 1
@67 = private unnamed_addr constant [27 x i8] c"Non UTF-8 COFF section name", align 1
@68 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@69 = private unnamed_addr constant [26 x i8] c"src/read/xcoff/segment.rs\00", align 1
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c"\19\00\00\00\00\00\00\00o\00\00\00\09\00\00\00" }>, align 8
@71 = private unnamed_addr constant [7 x i8] c"segment", align 1
@72 = private unnamed_addr constant [5 x i8] c"align", align 1
@73 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsE_NtCseHTIzroA4w0_6object6commonNtB5_11SectionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@74 = private unnamed_addr constant [4 x i8] c"kind", align 1
@75 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1O_NtCseHTIzroA4w0_6object6commonNtB6_12SectionFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@76 = private unnamed_addr constant [29 x i8] c"Non UTF-8 Mach-O section name", align 1
@_RNvNvXsE_NtCseHTIzroA4w0_6object6commonNtB7_11SectionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES = external local_unnamed_addr global { ptr, i64 }
@_RNvNvXsE_NtCseHTIzroA4w0_6object6commonNtB7_11SectionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET = external global [18 x i64]
@77 = private unnamed_addr constant [3 x i8] c"Any", align 1
@78 = private unnamed_addr constant [12 x i8] c"NoDuplicates", align 1
@79 = private unnamed_addr constant [8 x i8] c"SameSize", align 1
@80 = private unnamed_addr constant [10 x i8] c"ExactMatch", align 1
@81 = private unnamed_addr constant [7 x i8] c"Largest", align 1
@82 = private unnamed_addr constant [6 x i8] c"Newest", align 1
@83 = private unnamed_addr constant [4 x i8] c"Text", align 1
@84 = private unnamed_addr constant [4 x i8] c"Data", align 1
@85 = private unnamed_addr constant [4 x i8] c"File", align 1
@86 = private unnamed_addr constant [5 x i8] c"Label", align 1
@87 = private unnamed_addr constant [3 x i8] c"Tls", align 1
@88 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCs8aoZCP6pRcV_7objdump }>, align 8
@89 = private unnamed_addr constant [11 x i8] c"SymbolIndex", align 1
@90 = private unnamed_addr constant [6 x i8] c"Comdat", align 1
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsV_NtCseHTIzroA4w0_6object4readNtB5_11SymbolIndexNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@92 = private unnamed_addr constant [6 x i8] c"symbol", align 1
@93 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsM_NtCseHTIzroA4w0_6object6commonNtB5_10ComdatKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@94 = private unnamed_addr constant [23 x i8] c"src/read/macho/file.rs\00", align 1
@95 = private unnamed_addr constant [20 x i8] c"src/read/pe/file.rs\00", align 1
@96 = private unnamed_addr constant [25 x i8] c"src/read/xcoff/comdat.rs\00", align 1
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @94, [16 x i8] c"\16\00\00\00\00\00\00\00\84\02\00\00\09\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @95, [16 x i8] c"\13\00\00\00\00\00\00\00\F1\01\00\00\09\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @96, [16 x i8] c"\18\00\00\00\00\00\00\00U\00\00\00\09\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @94, [16 x i8] c"\16\00\00\00\00\00\00\00\93\02\00\00\09\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @95, [16 x i8] c"\13\00\00\00\00\00\00\00\00\02\00\00\09\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @96, [16 x i8] c"\18\00\00\00\00\00\00\00d\00\00\00\09\00\00\00" }>, align 8
@103 = private unnamed_addr constant [6 x i8] c"Symbol", align 1
@104 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtCseHTIzroA4w0_6object6commonNtB5_10SymbolKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@105 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs13_NtCseHTIzroA4w0_6object4readNtB6_13SymbolSectionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@106 = private unnamed_addr constant [7 x i8] c"section", align 1
@107 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs12_NtCseHTIzroA4w0_6object6commonNtB6_11SymbolScopeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@108 = private unnamed_addr constant [5 x i8] c"scope", align 1
@109 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt }>, align 8
@110 = private unnamed_addr constant [4 x i8] c"weak", align 1
@111 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1W_NtCseHTIzroA4w0_6object6commonINtB6_11SymbolFlagsNtNtB8_4read12SectionIndexNtBV_11SymbolIndexENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs8aoZCP6pRcV_7objdump }>, align 8
@switch.table._RNvXs12_NtCseHTIzroA4w0_6object6commonNtB6_11SymbolScopeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\07\0B\07\07", align 8
@switch.table._RNvXs12_NtCseHTIzroA4w0_6object6commonNtB6_11SymbolScopeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.60 = private unnamed_addr constant [4 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4], align 8
@switch.table._RNvXs6_NtNtCseHTIzroA4w0_6object4read3anyNtB5_7SectionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs8aoZCP6pRcV_7objdump = private unnamed_addr constant [14 x i16] [i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192], align 8
@switch.table._RNvXsM_NtCseHTIzroA4w0_6object6commonNtB5_10ComdatKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt = private unnamed_addr constant [7 x i8] c"\07\03\0C\08\0A\07\06", align 8
@switch.table._RNvXsM_NtCseHTIzroA4w0_6object6commonNtB5_10ComdatKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.61 = private unnamed_addr constant [7 x ptr] [ptr @1, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81, ptr @82], align 8
@switch.table._RNvXsU_NtCseHTIzroA4w0_6object6commonNtB5_10SymbolKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt = private unnamed_addr constant [7 x i8] c"\07\04\04\07\04\05\03", align 8
@switch.table._RNvXsU_NtCseHTIzroA4w0_6object6commonNtB5_10SymbolKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.62 = private unnamed_addr constant [7 x ptr] [ptr @1, ptr @83, ptr @84, ptr @10, ptr @85, ptr @86, ptr @87], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCseHTIzroA4w0_6object4read3anyNtB3_4File22parse_dyld_cache_imageNtNtB7_6endian10EndiannessECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 8 uses
  %i.b = alloca [152 x i8], align 8               ; 8 uses
  %.sroa.6.sroa.8 = alloca [128 x i8], align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.8)
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr i8, ptr %i.c, i64 57
  %.val = load i8, ptr %i.d, align 1, !range !7, !noundef !5
  switch i8 %.val, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 3, label %bb.c
    i8 4, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 5, label %bb.b
    i8 6, label %bb.c
    i8 7, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 8, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 9, label %bb.c
    i8 10, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 11, label %bb.c
    i8 12, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 13, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 14, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 15, label %bb.c
    i8 16, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 17, label %bb.c
    i8 18, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 19, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 20, label %bb.c
    i8 21, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 22, label %bb.b
    i8 23, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 24, label %bb.c
    i8 25, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 26, label %bb.c
    i8 27, label %bb.c
    i8 28, label %bb.c
    i8 29, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 30, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 31, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 32, label %bb.c
    i8 33, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 34, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
    i8 35, label %bb.c
    i8 36, label %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMNtNtNtCseHTIzroA4w0_6object4read5macho4fileINtB3_9MachOFileINtNtB9_5macho12MachHeader32NtNtB9_6endian10EndiannessEE22parse_dyld_cache_imageB1s_ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.g = load i64, ptr %i.a, align 8, !range !8, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtNtNtCseHTIzroA4w0_6object4read5macho4fileINtB3_9MachOFileINtNtB9_5macho12MachHeader64NtNtB9_6endian10EndiannessEE22parse_dyld_cache_imageB1s_ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.m = load i64, ptr %i.b, align 8, !range !8, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.d:                                             ; preds = %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.e:                                             ; preds = %_RNvMNtCseHTIzroA4w0_6object6commonNtB2_12Architecture12address_size.exit
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.636.0..sroa_idx, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.6.sroa.7.0 = phi i64 [ %i.l, %bb.e ], [ %i.r, %bb.h ]
  %.sroa.6.sroa.6.0 = phi ptr [ %i.j, %bb.e ], [ %i.p, %bb.h ]
  %.sroa.6.sroa.0.0 = phi i64 [ %i.g, %bb.e ], [ %i.m, %bb.h ]
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 5, %bb.h ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.sroa.0.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.sroa.6.0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.sroa.7.0, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6.sroa.8, i64 128, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.632.0..sroa_idx, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCseHTIzroA4w0_6object4read3anyNtB2_4File5parseCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 8 uses
  %i.b = alloca [96 x i8], align 8                ; 8 uses
  %i.c = alloca [96 x i8], align 8                ; 8 uses
  %i.d = alloca [96 x i8], align 8                ; 8 uses
  %i.e = alloca [120 x i8], align 8               ; 8 uses
  %i.f = alloca [120 x i8], align 8               ; 8 uses
  %i.g = alloca [152 x i8], align 8               ; 8 uses
  %i.h = alloca [152 x i8], align 8               ; 8 uses
  %i.i = alloca [296 x i8], align 8               ; 8 uses
  %i.j = alloca [296 x i8], align 8               ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.14.sroa.16 = alloca [272 x i8], align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvMs3_NtCseHTIzroA4w0_6object4readNtB6_8FileKind5parseRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.l = load ptr, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.q = load i8, ptr %i.m, align 8, !range !9, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  switch i8 %i.q, label %bb.d [
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 11, label %bb.k
    i8 12, label %bb.l
    i8 13, label %bb.m
    i8 14, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.s, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read4coff4fileNtB2_8CoffFile5parseCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.t = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  br i1 %i.u, label %bb.o, label %bb.p

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read4coff4fileINtB2_8CoffFileRShNtNtB8_2pe22AnonObjectHeaderBigobjE5parseCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.z = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  br i1 %i.aa, label %bb.r, label %bb.s

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB2_7ElfFileINtNtB8_3elf12FileHeader32NtNtB8_6endian10EndiannessEE5parseCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.af = load i64, ptr %i.j, align 8, !range !8, !noundef !5 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  br i1 %i.ag, label %bb.t, label %bb.u

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB2_7ElfFileINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEE5parseCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.al = load i64, ptr %i.i, align 8, !range !8, !noundef !5 ; 2 uses
  %i.am = icmp eq i64 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  br i1 %i.am, label %bb.v, label %bb.w

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho4fileINtB2_9MachOFileINtNtB8_5macho12MachHeader32NtNtB8_6endian10EndiannessEE5parseCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.ar = load i64, ptr %i.h, align 8, !range !8, !noundef !5 ; 2 uses
  %i.as = icmp eq i64 %i.ar, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  br i1 %i.as, label %bb.x, label %bb.y

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho4fileINtB2_9MachOFileINtNtB8_5macho12MachHeader64NtNtB8_6endian10EndiannessEE5parseCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.ax = load i64, ptr %i.g, align 8, !range !8, !noundef !5 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, -1
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  br i1 %i.ay, label %bb.z, label %bb.aa

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB2_6PeFileNtNtB8_2pe16ImageNtHeaders32E5parseCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.bd = load ptr, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  br i1 %i.be, label %bb.ab, label %bb.ac

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe4fileINtB2_6PeFileNtNtB8_2pe16ImageNtHeaders64E5parseCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.bj = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  br i1 %i.bk, label %bb.ad, label %bb.ae

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5xcoff4fileINtB2_9XcoffFileNtNtB8_5xcoff12FileHeader32E5parseCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.bp = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  br i1 %i.bq, label %bb.af, label %bb.ag

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5xcoff4fileINtB2_9XcoffFileNtNtB8_5xcoff12FileHeader64E5parseCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.bv = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ca = load i64, ptr %i.bz, align 8            ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai

bb.o:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_RNvXsc_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6ComdatNtNtB7_6traits12ObjectComdat8sectionsCs8aoZCP6pRcV_7objdump:bb.a
  store i32 %.sroa.7.sroa.8.0, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.7.sroa.9.0, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXsd_NtNtCseHTIzroA4w0_6object4read3anyNtB5_21ComdatSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !5
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.f
    i64 6, label %bb.f
    i64 7, label %bb.f
    i64 8, label %bb.f
    i64 9, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call { i64, i64 } @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatNtB5_25CoffComdatSectionIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call { i64, i64 } @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read4coff6comdatINtB5_25CoffComdatSectionIteratorRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call { i64, i64 } @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read3elf6comdatINtB5_24ElfComdatSectionIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call { i64, i64 } @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read3elf6comdatINtB5_24ElfComdatSectionIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.11.0 = phi i64 [ %i.e, %bb.b ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ %i.q, %bb.e ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ %i.p, %bb.e ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.11.0, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtNtCseHTIzroA4w0_6object4read3anyNtB5_14SymbolIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = load i64, ptr %1, align 8, !range !10, !noundef !5 ; 2 uses
  switch i64 %i.i, label %default.unreachable275 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
  ]

default.unreachable275:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_18CoffSymbolIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.k = load ptr, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %.not91 = icmp eq ptr %i.k, null
  br i1 %.not91, label %bb.m, label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_18CoffSymbolIteratorRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.m = load ptr, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.not90 = icmp eq ptr %i.m, null
  br i1 %.not90, label %bb.q, label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !128, !noalias !131, !noundef !5 ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8, !alias.scope !128, !noalias !131, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !133, !noundef !5
  %i.t = icmp ult i64 %i.p, %i.s
  br i1 %i.t, label %bb.r, label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !134, !noalias !137, !noundef !5 ; 4 uses
  %i.x = load ptr, ptr %i.u, align 8, !alias.scope !134, !noalias !137, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !139, !noundef !5
  %i.aa = icmp ult i64 %i.w, %i.z
  br i1 %i.aa, label %bb.s, label %bb.n

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtB5_19MachOSymbolIteratorINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab)
  %i.ac = load ptr, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %.not87 = icmp eq ptr %i.ac, null
  br i1 %.not87, label %bb.u, label %bb.t

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtB5_19MachOSymbolIteratorINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.ae = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.not86 = icmp eq ptr %i.ae, null
  br i1 %.not86, label %bb.w, label %bb.v

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_18CoffSymbolIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af)
  %i.ag = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %.not85 = icmp eq ptr %i.ag, null
  br i1 %.not85, label %bb.y, label %bb.x

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs5_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_18CoffSymbolIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ah)
  %i.ai = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.not84 = icmp eq ptr %i.ai, null
  br i1 %.not84, label %bb.aa, label %bb.z

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_19XcoffSymbolIteratorNtNtBb_5xcoff12FileHeader32ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
  %i.ak = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.not83 = icmp eq ptr %i.ak, null
  br i1 %.not83, label %bb.ac, label %bb.ab

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_19XcoffSymbolIteratorNtNtBb_5xcoff12FileHeader64ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
  %i.am = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.ae, label %bb.ad

bb.l:                                             ; preds = %bb.b
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4165.0.copyload = load ptr, ptr %.sroa.4165.0..sroa_idx, align 8
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5166.0.copyload = load i64, ptr %.sroa.5166.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.d, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.q, %bb.m
  store i64 -1, ptr %0, align 8
  br label %bb.af

bb.o:                                             ; preds = %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.s, %bb.r, %bb.p, %bb.l
  %.sroa.13.sroa.14.0 = phi i64 [ %.sroa.5166.0.copyload, %bb.l ], [ %.sroa.5152.0.copyload, %bb.p ], [ %i.p, %bb.r ], [ %i.w, %bb.s ], [ %.sroa.5192.0.copyload, %bb.t ], [ %.sroa.5207.0.copyload, %bb.v ], [ %.sroa.5222.0.copyload, %bb.x ], [ %.sroa.5237.0.copyload, %bb.z ], [ %.sroa.0242.sroa.5.0.copyload, %bb.ab ], [ %.sroa.0248.sroa.5.0.copyload, %bb.ad ]
  %.sroa.13.sroa.13.0 = phi ptr [ %.sroa.4165.0.copyload, %bb.l ], [ %.sroa.4151.0.copyload, %bb.p ], [ %i.ao, %bb.r ], [ %i.at, %bb.s ], [ %.sroa.4191.0.copyload, %bb.t ], [ %.sroa.4206.0.copyload, %bb.v ], [ %.sroa.4221.0.copyload, %bb.x ], [ %.sroa.4236.0.copyload, %bb.z ], [ %.sroa.0242.sroa.4.0.copyload, %bb.ab ], [ %.sroa.0248.sroa.4.0.copyload, %bb.ad ]
  %.sroa.13.sroa.0.0 = phi ptr [ %i.k, %bb.l ], [ %i.m, %bb.p ], [ %i.q, %bb.r ], [ %i.x, %bb.s ], [ %i.ac, %bb.t ], [ %i.ae, %bb.v ], [ %i.ag, %bb.x ], [ %i.ai, %bb.z ], [ %i.ak, %bb.ab ], [ %i.am, %bb.ad ]
  %.sroa.14.0 = phi i64 [ undef, %bb.l ], [ undef, %bb.p ], [ %.sroa.6110.24.insert.ext, %bb.r ], [ %.sroa.6177.24.insert.ext, %bb.s ], [ undef, %bb.t ], [ undef, %bb.v ], [ undef, %bb.x ], [ undef, %bb.z ], [ %.sroa.4243.0.copyload, %bb.ab ], [ %.sroa.4249.0.copyload, %bb.ad ]
  store i64 %i.i, ptr %0, align 8
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.13.sroa.0.0, ptr %.sroa.4256.0..sroa_idx, align 8
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.sroa.13.0, ptr %.sroa.5257.0..sroa_idx, align 8
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.sroa.14.0, ptr %.sroa.6258.0..sroa_idx, align 8
  %.sroa.7259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.14.0, ptr %.sroa.7259.0..sroa_idx, align 8
  br label %bb.af

bb.p:                                             ; preds = %bb.c
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4151.0.copyload = load ptr, ptr %.sroa.4151.0..sroa_idx, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5152.0.copyload = load i64, ptr %.sroa.5152.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

bb.r:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.q, align 8, !noalias !133, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.p
  %i.ap = add nuw i64 %i.p, 1
  store i64 %i.ap, ptr %i.o, align 8, !alias.scope !128, !noalias !131
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !range !13, !alias.scope !128, !noalias !131, !noundef !5
  %.sroa.6110.24.insert.ext = zext nneg i8 %i.ar to i64
  br label %bb.o

bb.s:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.x, align 8, !noalias !139, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.w
  %i.au = add nuw i64 %i.w, 1
  store i64 %i.au, ptr %i.v, align 8, !alias.scope !134, !noalias !137
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i8, ptr %i.av, align 8, !range !13, !alias.scope !134, !noalias !137, !noundef !5
  %.sroa.6177.24.insert.ext = zext nneg i8 %i.aw to i64
  br label %bb.o

bb.t:                                             ; preds = %bb.f
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4191.0.copyload = load ptr, ptr %.sroa.4191.0..sroa_idx, align 8
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5192.0.copyload = load i64, ptr %.sroa.5192.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.u:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.v:                                             ; preds = %bb.g
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4206.0.copyload = load ptr, ptr %.sroa.4206.0..sroa_idx, align 8
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5207.0.copyload = load i64, ptr %.sroa.5207.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.w:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.x:                                             ; preds = %bb.h
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4221.0.copyload = load ptr, ptr %.sroa.4221.0..sroa_idx, align 8
  %.sroa.5222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5222.0.copyload = load i64, ptr %.sroa.5222.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.y:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.z:                                             ; preds = %bb.i
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4236.0.copyload = load ptr, ptr %.sroa.4236.0..sroa_idx, align 8
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5237.0.copyload = load i64, ptr %.sroa.5237.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.aa:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.ab:                                            ; preds = %bb.j
  %.sroa.0242.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0242.sroa.4.0.copyload = load ptr, ptr %.sroa.0242.sroa.4.0..sroa_idx, align 8
  %.sroa.0242.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0242.sroa.5.0.copyload = load i64, ptr %.sroa.0242.sroa.5.0..sroa_idx, align 8
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4243.0.copyload = load i64, ptr %.sroa.4243.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.ac:                                            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.ad:                                            ; preds = %bb.k
  %.sroa.0248.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0248.sroa.4.0.copyload = load ptr, ptr %.sroa.0248.sroa.4.0..sroa_idx, align 8
  %.sroa.0248.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0248.sroa.5.0.copyload = load i64, ptr %.sroa.0248.sroa.5.0..sroa_idx, align 8
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4249.0.copyload = load i64, ptr %.sroa.4249.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.ae:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.af:                                            ; preds = %bb.o, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsh_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 42 uses
  %i.f = alloca [1 x i8], align 1                 ; 31 uses
  %i.g = alloca [1 x i8], align 1                 ; 31 uses
  %i.h = alloca [16 x i8], align 8                ; 41 uses
  %i.i = alloca [1 x i8], align 1                 ; 31 uses
  %i.j = alloca [8 x i8], align 8                 ; 31 uses
  %i.k = alloca [8 x i8], align 8                 ; 22 uses
  %i.l = alloca [24 x i8], align 8                ; 15 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = load i64, ptr %0, align 8, !range !10, !alias.scope !140, !noalias !143, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 54 uses
  switch i64 %i.o, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
  ]

default.unreachable:                              ; preds = %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_10CoffSymbolRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read3elf6symbolINtB5_9ElfSymbolINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read3elf6symbolINtB5_9ElfSymbolINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit

bb.f:                                             ; preds = %bb.a
  call void @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtB5_11MachOSymbolINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit

bb.g:                                             ; preds = %bb.a
  call void @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtB5_11MachOSymbolINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit

bb.h:                                             ; preds = %bb.a
  call void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit

bb.i:                                             ; preds = %bb.a
  call void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit

bb.j:                                             ; preds = %bb.a
  call void @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader32ENtNtB9_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit

bb.k:                                             ; preds = %bb.a
end_hunk_1
