Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/elfload?download=true
inline.NumInlined: 167
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VdsoImageInfo = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.PGBRange = type { i64, i64 }
%union.CPUTailQ = type { %struct.QTailQLink }
%struct.QTailQLink = type { ptr, ptr }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.ImageSource = type { ptr, i32, i32 }
%struct.image_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8, i64, i64, i64, i16, ptr, i64, i64, i64, ptr, i32 }
%struct.target_elf_prstatus = type { %struct.target_elf_siginfo, i16, i64, i64, i32, i32, i32, i32, %struct.target_timeval, %struct.target_timeval, %struct.target_timeval, %struct.target_timeval, %struct.target_elf_gregset_t, i32 }
%struct.target_elf_siginfo = type { i32, i32, i32 }
%struct.target_timeval = type { i64, i64 }
%struct.target_elf_gregset_t = type { %struct.target_user_regs_struct }
%struct.target_user_regs_struct = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.target_elf_prpsinfo = type { i8, i8, i8, i8, i64, i32, i32, i32, i32, i32, i32, [16 x i8], [80 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.CountAndSizeRegions = type { i32, i64 }
%struct.FillRegionPhdr = type { ptr, i64 }

@.str = private unnamed_addr constant [24 x i8] c"../linux-user/elfload.c\00", align 1
@__func__.get_elf_hwcap2 = private unnamed_addr constant [15 x i8] c"get_elf_hwcap2\00", align 1
@__func__.arch_parse_elf_property = private unnamed_addr constant [24 x i8] c"arch_parse_elf_property\00", align 1
@__func__.linux_probe_guest_base = private unnamed_addr constant [23 x i8] c"linux_probe_guest_base\00", align 1
@get_vdso_image_info.vdso_relocs = internal constant [43 x i32] [i32 80, i32 88, i32 136, i32 144, i32 192, i32 200, i32 248, i32 256, i32 304, i32 312, i32 2024, i32 2088, i32 2152, i32 2216, i32 2280, i32 2344, i32 2408, i32 2472, i32 2536, i32 2600, i32 2664, i32 2728, i32 2792, i32 2856, i32 2920, i32 408, i32 424, i32 440, i32 456, i32 504, i32 536, i32 648, i32 672, i32 696, i32 720, i32 744, i32 768, i32 792, i32 816, i32 840, i32 864, i32 888, i32 912], align 16
@get_vdso_image_info.vdso_image = internal constant <{ [2953 x i8], [15 x i8] }> <{ [2953 x i8] c"\7FELF\02\01\01\00\00\00\00\00\00\00\00\00\03\00>\00\01\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\D8\07\00\00\00\00\00\00\00\00\00\00@\008\00\05\00@\00\0F\00\0E\00\06\00\00\00\04\00\00\00@\00\00\00\00\00\00\00@\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\18\01\00\00\00\00\00\00\18\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00\01\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\98\0B\00\00\00\00\00\00\98\0B\00\00\00\00\00\00\00\10\00\00\00\00\00\00\02\00\00\00\04\00\00\00\80\01\00\00\00\00\00\00\80\01\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00P\E5td\04\00\00\00\00\05\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\05\00\00\00\00\00\00\14\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00X\01\00\00\00\00\00\00X\01\00\00\00\00\00\00X\01\00\00\00\00\00\00$\00\00\00\00\00\00\00$\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\14\00\00\00\03\00\00\00GNU\00&]\92\B5\D0\01\E6\8F\C8\15\C0qk]k\D21$\FE7\00\00\00\00\0E\00\00\00\00\00\00\00X\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\A0\03\00\00\00\00\00\00\F5\FE\FFo\00\00\00\00\E8\03\00\00\00\00\00\00\05\00\00\00\00\00\00\008\04\00\00\00\00\00\00\06\00\00\00\00\00\00\00\80\02\00\00\00\00\00\00\0A\00\00\00\00\00\00\00r\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\FC\FF\FFo\00\00\00\00\C8\04\00\00\00\00\00\00\FD\FF\FFo\00\00\00\00\02\00\00\00\00\00\00\00\F0\FF\FFo\00\00\00\00\AA\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\22\00\0B\00D\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00*\00\00\00\12\00\0B\00T\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00\1D\00\00\00\22\00\0B\00L\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00\16\00\00\00\12\00\0B\00L\05\00\00\00\00\00\00\08\00\00\00\00\00\00\001\00\00\00\22\00\0B\00T\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00>\00\00\00\12\00\0B\00\\\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00E\00\00\00\22\00\0B\00\\\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00\01\00\00\00\12\00\0B\00D\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00h\00\00\00\11\00\F1\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00J\00\00\00\12\00\0B\00d\05\00\00\00\00\00\00\1D\00\00\00\00\00\00\00Q\00\00\00\22\00\0B\00d\05\00\00\00\00\00\00\1D\00\00\00\00\00\00\00\03\00\00\00\0C\00\00\00\06\00\00\00\05\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\02\00\00\00\0A\00\00\00\00\00\00\00\0B\00\00\00\01\00\00\00\07\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00\8948\05Fe\00\A1\01\00\00\00\07\00\00\00\09\00\00\00~U\DDq\00\CA\1B\B0\DA\10\9A\9ER\8F0h\86K\85\E6\0D\8E\1E\82\94x\9E|\19\A3Cn\8A*\C6&&\B0bemX\87\FF\00__vdso_clock_gettime\00__vdso_clock_getres\00__vdso_gettimeofday\00__vdso_time\00__vdso_getcpu\00linux-vdso.so.1\00LINUX_2.6\00\00\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\00\00\00\00\00\00\01\00\01\00\01\00\01\00\A1\BF\EE\0D\14\00\00\00\1C\00\00\00X\00\00\00\00\00\00\00\01\00\00\00\02\00\01\00\F6u\AE\03\14\00\00\00\00\00\00\00h\00\00\00\00\00\00\00\01\1B\03;\14\00\00\00\01\00\00\00D\00\00\000\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\0C\00\00\00=\00\00\00\00\00\00\00\B8\E4\00\00\00\0F\05\C3\B8\E5\00\00\00\0F\05\C3\B8`\00\00\00\0F\05\C3\B8\C9\00\00\00\0F\05\C31\C9H\85\FFt\09\89\C8%\FF\0F\00\00\89\07H\85\F6t\05\C1\E9\0C\89\0E1\C0\C3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\02\00\80\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\00\00\00\00\00\09\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00d\00\00\00\22\00\0B\00D\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00\1D\00\00\00\11\00\F1\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00'\00\00\00\12\00\0B\00T\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00P\00\00\00\22\00\0B\00L\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00;\00\00\00\12\00\0B\00d\05\00\00\00\00\00\00\1D\00\00\00\00\00\00\00I\00\00\00\12\00\0B\00L\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00.\00\00\00\22\00\0B\00T\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00y\00\00\00\22\00\0B\00\\\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00B\00\00\00\22\00\0B\00d\05\00\00\00\00\00\00\1D\00\00\00\00\00\00\00]\00\00\00\12\00\0B\00D\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00r\00\00\00\12\00\0B\00\\\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00_DYNAMIC\00__GNU_EH_FRAME_HDR\00LINUX_2.6\00__vdso_gettimeofday\00__vdso_getcpu\00__vdso_clock_getres\00__vdso_clock_gettime\00__vdso_time\00\00.symtab\00.strtab\00.shstrtab\00.note\00.dynamic\00.dynsym\00.gnu.hash\00.dynstr\00.gnu.version\00.gnu.version_d\00.eh_frame_hdr\00.eh_frame\00.text\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B\00\00\00\07\00\00\00\02\00\00\00\00\00\00\00X\01\00\00\00\00\00\00X\01\00\00\00\00\00\00$\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!\00\00\00\06\00\00\00\03\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\06\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00*\00\00\00\0B\00\00\00\02\00\00\00\00\00\00\00\80\02\00\00\00\00\00\00\80\02\00\00\00\00\00\00 \01\00\00\00\00\00\00\06\00\00\00\01\00\00\00\08\00\00\00\00\00\00\00\18\00\00\00\00\00\00\006\00\00\00\05\00\00\00\02\00\00\00\00\00\00\00\A0\03\00\00\00\00\00\00\A0\03\00\00\00\00\00\00D\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\002\00\00\00\F6\FF\FFo\02\00\00\00\00\00\00\00\E8\03\00\00\00\00\00\00\E8\03\00\00\00\00\00\00P\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00<\00\00\00\03\00\00\00\02\00\00\00\00\00\00\008\04\00\00\00\00\00\008\04\00\00\00\00\00\00r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00D\00\00\00\FF\FF\FFo\02\00\00\00\00\00\00\00\AA\04\00\00\00\00\00\00\AA\04\00\00\00\00\00\00\18\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00Q\00\00\00\FD\FF\FFo\02\00\00\00\00\00\00\00\C8\04\00\00\00\00\00\00\C8\04\00\00\00\00\00\008\00\00\00\00\00\00\00\06\00\00\00\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00`\00\00\00\01\00\00\00\02\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\05\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00n\00\00\00\01\00\00\00\02\00\00\00\00\00\00\00\18\05\00\00\00\00\00\00\18\05\00\00\00\00\00\00,\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00x\00\00\00\01\00\00\00\06\00\00\00\00\00\00\00D\05\00\00\00\00\00\00D\05\00\00\00\00\00\00=\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\05\00\00\00\00\00\00P\01\00\00\00\00\00\00\0D\00\00\00\03\00\00\00\08\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\09\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D8\06\00\00\00\00\00\00~\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00V\07\00\00\00\00\00\00~\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [15 x i8] zeroinitializer }>, align 16
@get_vdso_image_info.vdso_image_info = internal constant %struct.VdsoImageInfo { ptr @get_vdso_image_info.vdso_image, ptr @get_vdso_image_info.vdso_relocs, i32 2968, i32 43, i32 0, i32 0, i32 0, i32 0 }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"/usr/lib/libc.so.1\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"/usr/lib/ld.so.1\00", align 1
@__const.load_elf_image.range = private unnamed_addr constant %struct.PGBRange { i64 -1, i64 0 }, align 8
@__func__.load_elf_image = private unnamed_addr constant [15 x i8] c"load_elf_image\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Invalid ELF image for this architecture\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Multiple PT_INTERP entries\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Invalid PT_INTERP entry\00", align 1
@elf_et_dyn_base = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"Error mapping file\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@__func__.zero_bss = private unnamed_addr constant [9 x i8] c"zero_bss\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Error enabling write access for bss\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Error restoring bss first permissions\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Error mapping bss\00", align 1
@guest_base = external local_unnamed_addr global i64, align 8
@syminfos = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@guest_stack_size = external local_unnamed_addr global i64, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"mmap stack\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"VFS: argc is wrong\00", align 1
@__func__.load_elf_interp = private unnamed_addr constant [16 x i8] c"load_elf_interp\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Error reading file header\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"<internal-vdso>\00", align 1
@thread_cpu = external thread_local local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [44 x i8] c"info->auxv_len == u_auxv - info->saved_auxv\00", align 1
@__PRETTY_FUNCTION__.create_elf_tables = private unnamed_addr constant [132 x i8] c"abi_ulong create_elf_tables(abi_ulong, int, int, struct elf64_hdr *, struct image_info *, struct image_info *, struct image_info *)\00", align 1
@cpus_queue = external local_unnamed_addr global %union.CPUTailQ, align 8
@.str.18 = private unnamed_addr constant [5 x i8] c"CORE\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"%Y%m%d-%H%M%S\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"qemu_%s_%s_%d.core\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @info_is_fdpic(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 524288
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local noundef i64 @get_elf_hwcap2(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 156, ptr noundef nonnull @__func__.get_elf_hwcap2, ptr noundef null) #23
  unreachable
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noalias noundef ptr @get_elf_base_platform(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret ptr null
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @arch_parse_elf_property(i32 noundef %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 171, ptr noundef nonnull @__func__.arch_parse_elf_property, ptr noundef null) #23
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @linux_probe_guest_base(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  tail call void @probe_guest_base(ptr noundef %0, ptr noundef %1, ptr noundef null) #24
  %i.a = tail call zeroext i1 @init_guest_commpage() #24
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 774, ptr noundef nonnull @__func__.linux_probe_guest_base, ptr noundef null) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @probe_guest_base(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @init_guest_commpage() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @get_vdso_image_info(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  ret ptr @get_vdso_image_info.vdso_image_info
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @get_elf_eflags(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.elf64_hdr, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = tail call i64 @lseek64(i32 noundef %0, i64 noundef 0, i32 noundef 0) #24 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %elf_check_ident.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false), !annotation !8
  %i.c = call i64 @read(i32 noundef %0, ptr noundef nonnull %1, i64 noundef 64) #24
  %i.d = and i64 %i.c, 4294967232
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %elf_check_ident.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @lseek64(i32 noundef %0, i64 noundef %i.a, i32 noundef 0) #24
  %i.g = icmp ne i64 %i.f, -1
  %i.h = load <4 x i8>, ptr %1, align 8
  %.fr = freeze <4 x i8> %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i8, ptr %i.i, align 4
  %.fr47 = freeze i8 %i.j
  %i.k = icmp eq i8 %.fr47, 2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.m = load i8, ptr %i.l, align 1
  %.fr44 = freeze i8 %i.m
  %i.n = icmp eq i8 %.fr44, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.p = load i8, ptr %i.o, align 2
  %.fr51 = freeze i8 %i.p
  %i.q = icmp eq i8 %.fr51, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.s = load i16, ptr %i.r, align 2
  %.fr45 = freeze i16 %i.s
  %i.t = icmp eq i16 %.fr45, 62
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.v = load i16, ptr %i.u, align 4
  %.fr49 = freeze i16 %i.v
  %i.w = icmp eq i16 %.fr49, 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.y = load i16, ptr %i.x, align 2
  %i.z = icmp eq i16 %i.y, 56
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.aa = icmp eq i32 %.fr.scalar, 1179403647
  %op.rdx = and i1 %i.aa, %i.k
  %op.rdx39 = and i1 %i.t, %i.w
  %2 = and i1 %op.rdx, %i.n
  %op.rdx41 = and i1 %2, %i.q
  %3 = and i1 %op.rdx41, %op.rdx39
  %i.ab = select i1 %3, i1 %i.g, i1 false
  %op.rdx43 = select i1 %i.ab, i1 %i.z, i1 false
  br i1 %op.rdx43, label %elf_check_ehdr.exit, label %elf_check_ident.exit.thread

elf_check_ehdr.exit:                              ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = and i16 %i.ad, -2
  %spec.select.i = icmp eq i16 %i.ae, 2
  br i1 %spec.select.i, label %bb.d, label %elf_check_ident.exit.thread

bb.d:                                             ; preds = %elf_check_ehdr.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load i32, ptr %i.af, align 8
  br label %elf_check_ident.exit.thread

elf_check_ident.exit.thread:                      ; preds = %elf_check_ehdr.exit, %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ag, %bb.d ], [ 0, %elf_check_ehdr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @load_elf_binary(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %2 = alloca %struct.ImageSource, align 8        ; 6 uses
  %3 = alloca %struct.elf64_hdr, align 8          ; 4 uses
  %4 = alloca %struct.elf64_hdr, align 8          ; 4 uses
  %5 = alloca %struct.ImageSource, align 8        ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %6 = alloca %struct.elf64_hdr, align 8          ; 5 uses
  %7 = alloca %struct.image_info, align 8         ; 9 uses
  %8 = alloca %struct.image_info, align 8         ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %7, i8 noundef 0, i64 noundef 264, i1 noundef false) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1024
  call fastcc void @load_elf_image(ptr noundef %i.e, ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef %6, ptr noundef nonnull %i.c)
  %i.g = load i64, ptr @guest_stack_size, align 8
  %spec.store.select.i = call i64 @llvm.umax.i64(i64 %i.g, i64 131072) ; 2 uses
  %i.h = tail call i32 @getpagesize() #25
  %i.i = call i32 @llvm.umax.i32(i32 %i.h, i32 4096)
  %spec.select1.i = sext i32 %i.i to i64          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.k = load i8, ptr %i.j, align 8, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  %spec.select.i = select i1 %i.l, i32 7, i32 3
  %i.m = add i64 %spec.store.select.i, %spec.select1.i
  %i.n = call i64 @target_mmap(i64 noundef 0, i64 noundef %i.m, i32 noundef %spec.select.i, i32 noundef 34, i32 noundef -1, i64 noundef 0) #24 ; 3 uses
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.b, label %setup_arg_pages.exit

bb.b:                                             ; preds = %bb.a
  call void @perror(ptr noundef nonnull @.str.13) #26
  call void @exit(i32 noundef -1) #27
  unreachable

setup_arg_pages.exit:                             ; preds = %bb.a
  %i.p = call i32 @target_mprotect(i64 noundef %i.n, i64 noundef %spec.select1.i, i32 noundef 0) #24 ; 0 uses
  %i.q = add i64 %i.n, %spec.select1.i            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  store i64 %i.q, ptr %i.r, align 8
  %i.s = add i64 %spec.store.select.i, -8
  %i.t = add i64 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 10 uses
  store i64 %i.t, ptr %i.u, align 16
  %i.v = call noalias dereferenceable_or_null(4096) ptr @g_malloc0(i64 noundef 4096) #28 ; 4 uses
  %i.w = load i64, ptr %i.u, align 16
  %i.x = load i64, ptr %i.r, align 8
  %i.y = call fastcc i64 @copy_elf_strings(i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef %i.v, i64 noundef %i.w, i64 noundef %i.x) ; 2 uses
  store i64 %i.y, ptr %i.u, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ad = load ptr, ptr %i.ac, align 16
  %i.ae = load i64, ptr %i.u, align 16
  %i.af = load i64, ptr %i.r, align 8
  %i.ag = call fastcc i64 @copy_elf_strings(i32 noundef %i.ab, ptr noundef %i.ad, ptr noundef %i.v, i64 noundef %i.ae, i64 noundef %i.af) ; 2 uses
  store i64 %i.ag, ptr %i.u, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.u, align 16
  %i.an = load i64, ptr %i.r, align 8
  %i.ao = call fastcc i64 @copy_elf_strings(i32 noundef %i.aj, ptr noundef %i.al, ptr noundef %i.v, i64 noundef %i.am, i64 noundef %i.an) ; 2 uses
  store i64 %i.ao, ptr %i.u, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8
  call void @g_free(ptr noundef %i.v) #24
  %i.aq = load i64, ptr %i.u, align 16
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %setup_arg_pages.exit
  %i.ar = load ptr, ptr @stderr, align 8
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = call ptr @strerror(i32 noundef 7) #24
  %i.au = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ar, i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %i.as, ptr noundef %i.at) #24 ; 0 uses
  call void @exit(i32 noundef -1) #27
  unreachable

bb.d:                                             ; preds = %setup_arg_pages.exit
  %i.av = load ptr, ptr %i.c, align 8             ; 8 uses
  %.not67 = icmp eq ptr %i.av, null               ; 3 uses
  br i1 %.not67, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8
  %i.aw = call ptr @path(ptr noundef nonnull %i.av) #24
  %i.ax = call i32 (ptr, i32, ...) @open64(ptr noundef %i.aw, i32 noundef 0) #24 ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = tail call ptr @__errno_location() #25
  %i.ba = load i32, ptr %i.az, align 4
  call void @error_setg_file_open_internal(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, i32 noundef 1277, ptr noundef nonnull @__func__.load_elf_interp, i32 noundef %i.ba, ptr noundef nonnull %i.av) #24
  %i.bb = load ptr, ptr %i.b, align 8
  call void @error_report_err(ptr noundef %i.bb) #24
  call void @exit(i32 noundef -1) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bc = call i64 @read(i32 noundef %i.ax, ptr noundef nonnull %0, i64 noundef 1024) #24
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.h, label %load_elf_interp.exit

bb.h:                                             ; preds = %bb.g
  %i.bf = tail call ptr @__errno_location() #25
  %i.bg = load i32, ptr %i.bf, align 4
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, i32 noundef 1284, ptr noundef nonnull @__func__.load_elf_interp, i32 noundef %i.bg, ptr noundef nonnull @.str.15) #24
  %i.bh = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_reportf_err(ptr noundef %i.bh, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.av) #24
  call void @exit(i32 noundef -1) #27
  unreachable

load_elf_interp.exit:                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.ax, ptr %i.bi, align 4
  store ptr %0, ptr %5, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bd, ptr %i.bj, align 8
  call fastcc void @load_elf_image(ptr noundef nonnull %i.av, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = icmp ugt i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.i, label %bb.k

bb.i:                                             ; preds = %load_elf_interp.exit
  %i.bp = load i64, ptr %7, align 8
  %i.bq = sub i64 %i.bp, %i.bn
  %i.br = icmp ult i64 %i.bq, 16777216
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.bl, ptr %i.bm, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %load_elf_interp.exit
  %i.bs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(19) @.str.2) #29
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(17) @.str.3) #29
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
end_hunk_0
