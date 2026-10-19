Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/relocs_64?download=true
inline.NumInlined: 68
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.Elf64_Ehdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf64_Shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }

@sym_regex_realmode = internal constant [4 x ptr] [ptr null, ptr @.str.1, ptr @.str.2, ptr @.str.1], align 16
@sym_regex = internal unnamed_addr global ptr null, align 8
@sym_regex_kernel = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr null, ptr null], align 16
@sym_regex_c = internal global [4 x %struct.re_pattern_buffer] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"^pa_\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"^real_mode_seg$\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"^(xen_irq_disable_direct_reloc$|xen_save_fl_direct_reloc$|xen_elfnote_.+_offset$|VDSO|__kcfi_typeid_|__crc_)\00", align 1
@.str.4 = private unnamed_addr constant [431 x i8] c"^(__init_(begin|end)|__x86_cpu_dev_(start|end)|__alt_instructions(_end)?|(__iommu_table|__apicdrivers|__smp_locks)(_end)?|__(start|end)_pci_.*|__(start|stop)___ksymtab(_gpl)?|__(start|stop)___kcrctab(_gpl)?|__(start|stop)___param|__(start|stop)___modver|__(start|stop)___bug_table|__tracedata_(start|end)|__(start|stop)_notes|__end_rodata|__end_rodata_aligned|__initramfs_start|(jiffies|jiffies_64)|__end_rodata_hpage_align|_end)$\00", align 1
@ehdr = internal global %struct.Elf64_Ehdr zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Cannot read ELF header: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"No ELF magic\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Not a %d bit executable\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Not a LSB ELF executable\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Unknown ELF version\0A\00", align 1
@shnum = internal unnamed_addr global i64 0, align 8
@shstrndx = internal unnamed_addr global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Unsupported ELF header type\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Not for %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Bad ELF header size\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Bad program header entry\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Bad section header entry\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Seek to %lu failed: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"Cannot read initial ELF section header: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"String table index out of bounds\0A\00", align 1
@secs = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [40 x i8] c"Unable to allocate %ld section headers\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"Cannot read ELF section headers %d/%ld: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"malloc of %lu bytes for strtab failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Cannot read symbol table: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"malloc of %lu bytes for xsymtab failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"Cannot read extended symbol table: %s\0A\00", align 1
@shxsymtabndx = internal unnamed_addr global i32 0, align 4
@.str.26 = private unnamed_addr constant [39 x i8] c"malloc of %lu bytes for symtab failed\0A\00", align 1
@shsymtabndx = internal unnamed_addr global i32 0, align 4
@.str.27 = private unnamed_addr constant [39 x i8] c"malloc of %lu bytes for relocs failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"%5d %016lx %5ld %10s %10s %12s %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"<noname>\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"ABSOLUTE\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1
@sym_type.type_name = internal unnamed_addr constant [7 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], align 16
@.str.35 = private unnamed_addr constant [11 x i8] c"STT_NOTYPE\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"STT_OBJECT\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"STT_FUNC\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"STT_SECTION\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"STT_FILE\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"STT_COMMON\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"STT_TLS\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"unknown sym type name\00", align 1
@sym_bind.bind_name = internal unnamed_addr constant [3 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45], align 16
@.str.43 = private unnamed_addr constant [10 x i8] c"STB_LOCAL\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"STB_GLOBAL\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"STB_WEAK\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"unknown sym bind name\00", align 1
@sym_visibility.visibility_name = internal unnamed_addr constant [4 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], align 16
@.str.47 = private unnamed_addr constant [12 x i8] c"STV_DEFAULT\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"STV_INTERNAL\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"STV_HIDDEN\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"STV_PROTECTED\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"%016lx %016lx %10s %016lx  %s\0A\00", align 1
@rel_type.type_name = internal unnamed_addr constant [43 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.71, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.72], align 16
@.str.55 = private unnamed_addr constant [14 x i8] c"R_X86_64_NONE\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"R_X86_64_64\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"R_X86_64_PC32\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"R_X86_64_GOT32\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"R_X86_64_PLT32\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"R_X86_64_COPY\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"R_X86_64_GLOB_DAT\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"R_X86_64_JUMP_SLOT\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"R_X86_64_RELATIVE\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"R_X86_64_GOTPCREL\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"R_X86_64_32\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"R_X86_64_32S\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"R_X86_64_16\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"R_X86_64_PC16\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"R_X86_64_8\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"R_X86_64_PC8\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"R_X86_64_PC64\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"R_X86_64_REX_GOTPCRELX\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"unknown type rel type name\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"%s\09%s\09%s\09%s\0A\00", align 1
@.str.76 = private unnamed_addr constant [43 x i8] c"--realmode not valid for a 64-bit ELF file\00", align 1
@relocs32.0 = internal unnamed_addr global ptr null, align 8
@relocs32.1 = internal unnamed_addr global i64 0, align 8
@relocs32.2 = internal unnamed_addr global i64 0, align 8
@relocs64.0 = internal unnamed_addr global ptr null, align 8
@relocs64.1 = internal unnamed_addr global i64 0, align 8
@relocs64.2 = internal unnamed_addr global i64 0, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.80 = private unnamed_addr constant [36 x i8] c"Invalid absolute %s relocation: %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"Relocation offset doesn't fit in 32 bits\0A\00", align 1
@.str.82 = private unnamed_addr constant [38 x i8] c"Unsupported relocation type: %s (%d)\0A\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"realloc of %ld entries for relocs failed\0A\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"\09.long 0x%08x\0A\00", align 1
@str = private unnamed_addr constant [17 x i8] c"Absolute symbols\00", align 1
@str.1 = private unnamed_addr constant [61 x i8] c" Num:    Value Size  Type       Bind        Visibility  Name\00", align 1
@str.2 = private unnamed_addr constant [38 x i8] c"WARNING: Absolute relocations present\00", align 1
@str.3 = private unnamed_addr constant [48 x i8] c"Offset     Info     Type     Sym.Value Sym.Name\00", align 1
@str.4 = private unnamed_addr constant [47 x i8] c"reloc section\09reloc type\09symbol\09symbol section\00", align 1
@str.5 = private unnamed_addr constant [27 x i8] c".section \22.data.reloc\22,\22a\22\00", align 1
@str.6 = private unnamed_addr constant [10 x i8] c".balign 4\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @process_64(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.Elf64_Shdr, align 8         ; 9 uses
  %7 = alloca %struct.Elf64_Shdr, align 8         ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not.i.a = icmp eq i32 %1, 0                   ; 3 uses
  %sym_regex_kernel.sym_regex_realmode.i = select i1 %.not.i.a, ptr @sym_regex_kernel, ptr @sym_regex_realmode
  store ptr %sym_regex_kernel.sym_regex_realmode.i, ptr @sym_regex, align 8, !tbaa !12
  br i1 %.not.i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @regcomp(ptr noundef nonnull @sym_regex_c, ptr noundef nonnull @.str.3, i32 noundef 9) #16 ; 2 uses
  %.not12.i = icmp eq i32 %i.b, 0
  br i1 %.not12.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load ptr, ptr @sym_regex, align 8, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.b
  %.lcssa15.i = phi ptr [ @sym_regex_c, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @sym_regex_c, i64 64), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @sym_regex_c, i64 128), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @sym_regex_c, i64 192), %bb.i ]
  %.lcssa.i = phi i32 [ %i.b, %bb.b ], [ %i.g, %bb.e ], [ %i.k, %bb.g ], [ %i.o, %bb.i ]
  %i.c = call i64 @regerror(i32 noundef %.lcssa.i, ptr noundef nonnull %.lcssa15.i, ptr noundef nonnull %i.a, i64 noundef 128) #16 ; 0 uses
  call void (ptr, ...) @die(ptr noundef nonnull @.str, ptr noundef nonnull %i.a) #17
  unreachable

bb.d:                                             ; preds = %._crit_edge.i, %bb.a
  %i.d = phi ptr [ %.pre.i, %._crit_edge.i ], [ @sym_regex_realmode, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %.not11.1.i = icmp eq ptr %i.f, null
  br i1 %.not11.1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @regcomp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @sym_regex_c, i64 64), ptr noundef nonnull %i.f, i32 noundef 9) #16 ; 2 uses
  %.not12.1.i = icmp eq i32 %i.g, 0
  br i1 %.not12.1.i, label %._crit_edge17.i, label %bb.c

._crit_edge17.i:                                  ; preds = %bb.e
  %.pre18.i = load ptr, ptr @sym_regex, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge17.i, %bb.d
  %i.h = phi ptr [ %.pre18.i, %._crit_edge17.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %.not11.2.i = icmp eq ptr %i.j, null
  br i1 %.not11.2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @regcomp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @sym_regex_c, i64 128), ptr noundef nonnull %i.j, i32 noundef 9) #16 ; 2 uses
  %.not12.2.i = icmp eq i32 %i.k, 0
  br i1 %.not12.2.i, label %._crit_edge19.i, label %bb.c

._crit_edge19.i:                                  ; preds = %bb.g
  %.pre20.i = load ptr, ptr @sym_regex, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge19.i, %bb.f
  %i.l = phi ptr [ %.pre20.i, %._crit_edge19.i ], [ %i.h, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %.not11.3.i = icmp eq ptr %i.n, null
  br i1 %.not11.3.i, label %regex_init.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @regcomp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @sym_regex_c, i64 192), ptr noundef nonnull %i.n, i32 noundef 9) #16 ; 2 uses
  %.not12.3.i = icmp eq i32 %i.o, 0
  br i1 %.not12.3.i, label %regex_init.exit, label %bb.c

regex_init.exit:                                  ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = tail call i64 @fread(ptr noundef nonnull @ehdr, i64 noundef 64, i64 noundef 1, ptr noundef %0)
  %.not.i12 = icmp eq i64 %i.p, 1
  br i1 %.not.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %regex_init.exit
  %i.q = tail call ptr @__errno_location() #18
  %i.r = load i32, ptr %i.q, align 4, !tbaa !15
  %i.s = tail call ptr @strerror(i32 noundef %i.r) #16
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5, ptr noundef %i.s) #17
  unreachable

bb.k:                                             ; preds = %regex_init.exit
  %lhsv.i = load i32, ptr @ehdr, align 8
  %.not7.i = icmp eq i32 %lhsv.i, 1179403647
  br i1 %.not7.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.7) #17
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 4), align 4, !tbaa !55
  %.not8.i = icmp eq i8 %i.t, 2
  br i1 %.not8.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.8, i32 noundef 64) #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 5), align 1, !tbaa !55
  %.not9.i = icmp eq i8 %i.u, 1
  br i1 %.not9.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.9) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 6), align 2, !tbaa !55
  %.not10.i = icmp eq i8 %i.v, 1
  br i1 %.not10.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.10) #17
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.w = load i16, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 16), align 8, !tbaa !57
  %i.x = load i16, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 18), align 2, !tbaa !58
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 20), align 4, !tbaa !59
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 40), align 8, !tbaa !60
  %i.aa = load i16, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 52), align 4, !tbaa !61
  %i.ab = load i16, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 54), align 2, !tbaa !62
  %i.ac = load i16, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 58), align 2, !tbaa !63
  %i.ad = load i16, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 60), align 4, !tbaa !64 ; 2 uses
  %i.ae = load i16, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 62), align 2, !tbaa !65 ; 2 uses
  %i.af = zext i16 %i.ad to i64                   ; 2 uses
  store i64 %i.af, ptr @shnum, align 8, !tbaa !18
  %i.ag = zext i16 %i.ae to i32                   ; 2 uses
  store i32 %i.ag, ptr @shstrndx, align 4, !tbaa !15
  %i.ah = add i16 %i.w, -4
  %or.cond.i = icmp ult i16 %i.ah, -2
  br i1 %or.cond.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.11) #17
  unreachable

bb.u:                                             ; preds = %bb.s
  %.not11.i13 = icmp eq i16 %i.x, 62
  br i1 %.not11.i13, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #17
  unreachable

bb.w:                                             ; preds = %bb.u
  %.not12.i14 = icmp eq i32 %i.y, 1
  br i1 %.not12.i14, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.10) #17
  unreachable

bb.y:                                             ; preds = %bb.w
  %.not13.i = icmp eq i16 %i.aa, 64
  br i1 %.not13.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.14) #17
  unreachable

bb.aa:                                            ; preds = %bb.y
  %.not14.i = icmp eq i16 %i.ab, 56
  br i1 %.not14.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.15) #17
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %.not15.i = icmp eq i16 %i.ac, 64
  br i1 %.not15.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.16) #17
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ai = icmp eq i16 %i.ad, 0
  %i.aj = icmp eq i16 %i.ae, -1
  %or.cond4.i = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond4.i, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ak = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.z, i32 noundef 0)
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @ehdr, i64 40), align 8, !tbaa !60
  %i.an = tail call ptr @__errno_location() #18
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15
  %i.ap = tail call ptr @strerror(i32 noundef %i.ao) #16
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.17, i64 noundef %i.am, ptr noundef %i.ap) #17
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.aq = call i64 @fread(ptr noundef nonnull %7, i64 noundef 64, i64 noundef 1, ptr noundef %0)
  %.not16.i = icmp eq i64 %i.aq, 1
  br i1 %.not16.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ar = tail call ptr @__errno_location() #18
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !15
  %i.at = tail call ptr @strerror(i32 noundef %i.as) #16
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18, ptr noundef %i.at) #17
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.au = load i64, ptr @shnum, align 8, !tbaa !18 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !66 ; 2 uses
  store i64 %i.ax, ptr @shnum, align 8, !tbaa !18
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ay = phi i64 [ %i.ax, %bb.ak ], [ %i.au, %bb.aj ]
  %i.az = load i32, ptr @shstrndx, align 4, !tbaa !15 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 65535
end_hunk_0
