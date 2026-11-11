Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/win_dump-x86?download=true
inline.NumInlined: 29
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.CPUTailQ = type { %struct.QTailQLink }
%struct.QTailQLink = type { ptr, ptr }
%union.WinContext = type { %struct.WinContext64 }
%struct.WinContext64 = type { [6 x i64], i32, i32, i16, i16, i16, i16, i16, i16, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.anon.19, [26 x %struct.WinM128A], i64, i64, i64, i64, i64, i64 }
%struct.anon.19 = type { i16, i16, i8, i8, i16, i32, i16, i16, i32, i16, i16, i32, i32, [8 x %struct.WinM128A], [16 x %struct.WinM128A], [96 x i8] }
%struct.WinM128A = type { i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"../dump/win_dump-x86.c\00", align 1
@__func__.win_dump_available = private unnamed_addr constant [19 x i8] c"win_dump_available\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"win-dump: not available during migration\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"win-dump: no vmcoreinfo note from the guest\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"win-dump: invalid vmcoreinfo note size\00", align 1
@cpus_queue = external local_unnamed_addr global %union.CPUTailQ, align 8
@__func__.create_win_dump = private unnamed_addr constant [16 x i8] c"create_win_dump\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"win-dump: failed to write header\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"vmcoreinfo\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/qemu/qemu/include/hw/misc/vmcoreinfo.h\00", align 1
@__func__.VMCOREINFO = private unnamed_addr constant [11 x i8] c"VMCOREINFO\00", align 1
@__const.check_header.Signature = private unnamed_addr constant [5 x i8] c"PAGE\00", align 1
@__func__.check_header = private unnamed_addr constant [13 x i8] c"check_header\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"win-dump: invalid header, expected '%.4s', got '%.4s'\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"win-dump: invalid header, expected 'DUMP' or 'DU64', got '%.4s'\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"x86_64-cpu\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"../target/i386/cpu-qom.h\00", align 1
@__func__.X86_CPU = private unnamed_addr constant [8 x i8] c"X86_CPU\00", align 1
@__const.check_kdbg.OwnerTag = private unnamed_addr constant [5 x i8] c"KDBG\00", align 1
@__func__.check_kdbg = private unnamed_addr constant [11 x i8] c"check_kdbg\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"win-dump: failed to read OwnerTag\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"win-dump: invalid KDBG OwnerTag, expected '%.4s', got '%.4s'\00", align 1
@__func__.patch_mm_pfn_database = private unnamed_addr constant [22 x i8] c"patch_mm_pfn_database\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"win-dump: failed to read MmPfnDatabase\00", align 1
@__func__.patch_bugcheck_data = private unnamed_addr constant [20 x i8] c"patch_bugcheck_data\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"win-dump: failed to read KiBugcheckData\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"win-dump: failed to read bugcheck data\00", align 1
@__func__.patch_and_save_context = private unnamed_addr constant [23 x i8] c"patch_and_save_context\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"win-dump: failed to read KiProcessorBlock\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"win-dump: failed to read OffsetPrcbContext\00", align 1
@.str.21 = private unnamed_addr constant [84 x i8] c"win-dump: number of QEMU CPUs is bigger than NumberProcessors (%u) in guest Windows\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"win-dump: failed to read CPU #%d PRCB location\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"win-dump: failed to read CPU #%d ContextFrame location\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"win-dump: failed to save CPU #%d context\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"win-dump: failed to write CPU #%d context\00", align 1
@tcg_allowed = external local_unnamed_addr global i8, align 1
@__func__.write_run = private unnamed_addr constant [10 x i8] c"write_run\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"win-dump: failed to map physical range 0x%016lx-0x%016lx\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"win-dump: failed to save memory\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"win-dump: failed to restore CPU #%d context\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @win_dump_available(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [5 x i8], align 1                   ; 6 uses
  %2 = alloca ptr, align 8                        ; 7 uses
  %i.a = tail call ptr @object_resolve_path_type(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %vmcoreinfo_find.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 21, ptr noundef nonnull @__func__.VMCOREINFO) #7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store ptr null, ptr %2, align 8
  %3 = tail call zeroext i1 @migration_guest_ram_loading() #7
  br i1 %3, label %bb.c, label %bb.d

vmcoreinfo_find.exit:                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.c = tail call zeroext i1 @migration_guest_ram_loading() #7
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %vmcoreinfo_find.exit, %bb.b
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 416, ptr noundef nonnull @__func__.win_dump_available, ptr noundef nonnull @.str.1) #7
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.e = load i8, ptr %i.d, align 8, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 162
  %i.h = load i16, ptr %i.g, align 2
  %.not17 = icmp eq i16 %i.h, 1
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %vmcoreinfo_find.exit, %bb.f, %bb.e, %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 423, ptr noundef nonnull @__func__.win_dump_available, ptr noundef nonnull @.str.2) #7
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  switch i32 %i.j, label %bb.i [
    i32 8216, label %bb.j
    i32 4120, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 430, ptr noundef nonnull @__func__.win_dump_available, ptr noundef nonnull @.str.3) #7
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = tail call noalias ptr @g_malloc(i64 noundef %i.k) #8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.n = load i64, ptr %i.m, align 8
  tail call void @physical_memory_read(i64 noundef %i.n, ptr noundef %i.l, i64 noundef %i.k) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 1 dereferenceable(5) @__const.check_header.Signature, i64 5, i1 false)
  %4 = load i32, ptr %i.o, align 1
  %5 = load i32, ptr %1, align 1
  %6 = icmp ne i32 %4, %5
  %7 = zext i1 %6 to i32
  %.not.i18 = icmp eq i32 %7, 0
  br i1 %.not.i18, label %9, label %8

8:                                                ; preds = %bb.j
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %2, ptr noundef nonnull @.str, i32 noundef 184, ptr noundef nonnull @__func__.check_header, ptr noundef nonnull @.str.8, ptr noundef nonnull %1, ptr noundef nonnull %i.o) #7
  br label %bb.k

9:                                                ; preds = %bb.j
  %10 = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 3 uses
  %11 = load i32, ptr %10, align 1
  %12 = icmp ne i32 %11, 1347245380
  %13 = zext i1 %12 to i32
  %.not11.i = icmp eq i32 %13, 0
  br i1 %.not11.i, label %check_header.exit.thread, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %10, align 1
  %16 = icmp ne i32 %15, 875976004
  %17 = zext i1 %16 to i32
  %.not13.i = icmp eq i32 %17, 0
  br i1 %.not13.i, label %check_header.exit.thread, label %18

18:                                               ; preds = %14
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %2, ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @__func__.check_header, ptr noundef nonnull @.str.11, ptr noundef nonnull %10) #7
  br label %bb.k

check_header.exit.thread:                         ; preds = %14, %9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.l

bb.k:                                             ; preds = %18, %8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.p = load ptr, ptr %2, align 8
  call void @error_propagate(ptr noundef %0, ptr noundef %i.p) #7
  br label %bb.l

bb.l:                                             ; preds = %check_header.exit.thread, %bb.k, %bb.i, %bb.g, %bb.c
  %.019 = phi ptr [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.i ], [ %i.l, %check_header.exit.thread ], [ %i.l, %bb.k ]
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.i ], [ true, %check_header.exit.thread ], [ false, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @g_free(ptr noundef %.019) #7
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @migration_guest_ram_loading() local_unnamed_addr #2

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #3

declare void @physical_memory_read(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @create_win_dump(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i16, align 2                      ; 5 uses
  %2 = alloca %union.WinContext, align 16         ; 45 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 11 uses
  %i.m = alloca [5 x i8], align 1                 ; 10 uses
  %i.n = alloca [4 x i8], align 4                 ; 12 uses
  %3 = alloca [5 x i8], align 1                   ; 7 uses
  %4 = alloca ptr, align 8                        ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8              ; 27 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 9 uses
  %i.r = load atomic ptr, ptr @cpus_queue monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !13
  %i.s = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.r, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 17072 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr null, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.w = load i64, ptr %i.v, align 8
  switch i64 %i.w, label %bb.b [
    i64 4120, label %bb.c
    i64 8216, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 458, ptr noundef nonnull @__func__.create_win_dump, ptr noundef nonnull @.str.3) #7
  br label %bb.bv

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @__const.check_header.Signature, i64 5, i1 false)
  %5 = load i32, ptr %i.q, align 1
  %6 = load i32, ptr %3, align 1
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  %.not.i = icmp eq i32 %8, 0
  br i1 %.not.i, label %bb.d, label %9

9:                                                ; preds = %bb.c
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 184, ptr noundef nonnull @__func__.check_header, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, ptr noundef nonnull %i.q) #7
  br label %18

bb.d:                                             ; preds = %bb.c
  %10 = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 3 uses
  %11 = load i32, ptr %10, align 1
  %12 = icmp ne i32 %11, 1347245380
  %13 = zext i1 %12 to i32
  %.not11.i.not = icmp eq i32 %13, 0              ; 3 uses
  br i1 %.not11.i.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %14 = load i32, ptr %10, align 1
  %15 = icmp ne i32 %14, 875976004
  %16 = zext i1 %15 to i32
  %.not13.i = icmp eq i32 %16, 0
  br i1 %.not13.i, label %bb.f, label %17

17:                                               ; preds = %bb.e
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @__func__.check_header, ptr noundef nonnull @.str.11, ptr noundef nonnull %10) #7
  br label %18

18:                                               ; preds = %17, %9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %19 = load ptr, ptr %4, align 8
  call void @error_propagate(ptr noundef %1, ptr noundef %19) #7
  br label %bb.bv

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %20 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.x = load i64, ptr %20, align 1
  store i64 %i.x, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.m, ptr noundef nonnull align 1 dereferenceable(5) @__const.check_kdbg.OwnerTag, i64 5, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.z = load i64, ptr %i.y, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %21 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.aa = load i32, ptr %21, align 1
  %i.ab = zext i32 %i.aa to i64
  store i64 %i.ab, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.m, ptr noundef nonnull align 1 dereferenceable(5) @__const.check_kdbg.OwnerTag, i64 5, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = zext i32 %i.ad to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %22 = phi i64 [ 8192, %bb.f ], [ 4096, %bb.g ]  ; 2 uses
  %i.af = phi i64 [ %i.z, %bb.f ], [ %i.ae, %bb.g ] ; 3 uses
  store i32 0, ptr %i.n, align 4, !annotation !14
  %i.ag = load atomic ptr, ptr @cpus_queue monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !15
  %i.ah = add i64 %i.af, 16
  %i.ai = call i32 @cpu_memory_rw_debug(ptr noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull %i.n, i64 noundef 4, i1 noundef zeroext false) #7
  %.not20.i = icmp eq i32 %i.ai, 0
  br i1 %.not20.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.al = load i32, ptr %i.n, align 4
  %i.am = load i32, ptr %i.m, align 1
  %i.an = icmp ne i32 %i.al, %i.am
  %i.ao = zext i1 %i.an to i32
  %.not17.us30.i = icmp eq i32 %i.ao, 0           ; 2 uses
  br i1 %.not11.i.not, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %.not17.us30.i, label %check_kdbg.exit.a, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %.lr.ph.split.us.i
  %i.ap = load i64, ptr %i.ak, align 1            ; 2 uses
  %i.aq = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !15
  %i.ar = add i64 %i.ap, 16
  %i.as = call i32 @cpu_memory_rw_debug(ptr noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull %i.n, i64 noundef 4, i1 noundef zeroext false) #7
  %.not.us.i = icmp eq i32 %i.as, 0
  br i1 %.not.us.i, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %.lr.ph32.preheader.i
  %i.at = load i32, ptr %i.n, align 4
  %i.au = load i32, ptr %i.m, align 1
  %i.av = icmp ne i32 %i.at, %i.au
  %i.aw = zext i1 %i.av to i32
  %.not17.us.i = icmp eq i32 %i.aw, 0
  br i1 %.not17.us.i, label %check_kdbg.exit.a, label %.split24.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %.not17.us30.i, label %check_kdbg.exit.thread, label %.lr.ph28.preheader.i

.lr.ph28.preheader.i:                             ; preds = %.lr.ph.split.i
  %i.ax = load i32, ptr %i.aj, align 1
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !15
  %i.ba = add nuw nsw i64 %i.ay, 16
  %i.bb = call i32 @cpu_memory_rw_debug(ptr noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull %i.n, i64 noundef 4, i1 noundef zeroext false) #7
  %.not.i.a = icmp eq i32 %i.bb, 0
  br i1 %.not.i.a, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph28.preheader.i, %.lr.ph32.preheader.i, %bb.h
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @__func__.check_kdbg, ptr noundef nonnull @.str.14) #7
  br label %check_kdbg.exit.thread74

bb.j:                                             ; preds = %.lr.ph28.preheader.i
  %i.bc = load i32, ptr %i.n, align 4
  %i.bd = load i32, ptr %i.m, align 1
  %i.be = icmp ne i32 %i.bc, %i.bd
  %i.bf = zext i1 %i.be to i32
  %.not17.i = icmp eq i32 %i.bf, 0
  br i1 %.not17.i, label %check_kdbg.exit.thread, label %.split24.us.i

.split24.us.i:                                    ; preds = %bb.j, %bb.i
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @__func__.check_kdbg, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #7
  br label %check_kdbg.exit.thread74

check_kdbg.exit.a:                                ; preds = %bb.i, %.lr.ph.split.us.i
  %.us-phi.ph.i = phi i64 [ %i.af, %.lr.ph.split.us.i ], [ %i.ap, %bb.i ]
  %23 = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  store i64 %.us-phi.ph.i, ptr %23, align 1
  br label %check_kdbg.exit.thread74

check_kdbg.exit.thread74:                         ; preds = %._crit_edge.i, %.split24.us.i, %check_kdbg.exit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  %i.bg = load ptr, ptr %4, align 8               ; 2 uses
  %.not5475 = icmp eq ptr %i.bg, null
  br i1 %.not5475, label %bb.l, label %bb.k

check_kdbg.exit.thread:                           ; preds = %.lr.ph.split.i, %bb.j
  %.us-phi.i = phi i64 [ %i.af, %.lr.ph.split.i ], [ %i.ay, %bb.j ]
  %i.bh = trunc i64 %.us-phi.i to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store i32 %i.bh, ptr %i.bi, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  %i.bj = load ptr, ptr %4, align 8               ; 2 uses
  %.not5472 = icmp eq ptr %i.bj, null
  br i1 %.not5472, label %.thread73, label %bb.k

.thread73:                                        ; preds = %check_kdbg.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  store ptr null, ptr %i.l, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 4024
  br label %bb.n

bb.k:                                             ; preds = %check_kdbg.exit.thread, %check_kdbg.exit.thread74
  %24 = phi ptr [ %i.bj, %check_kdbg.exit.thread ], [ %i.bg, %check_kdbg.exit.thread74 ]
  call void @error_propagate(ptr noundef %1, ptr noundef nonnull %24) #7
  br label %bb.bu

bb.l:                                             ; preds = %check_kdbg.exit.thread74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  store ptr null, ptr %i.l, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 4024 ; 3 uses
  br i1 %.not11.i.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.bn = load i64, ptr %i.bm, align 1
  %i.bo = shl i64 %i.bn, 12
  %i.bp = add i64 %i.bo, 8192
  store i64 %i.bp, ptr %i.bl, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 164
  store i32 0, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 4020
  store i32 0, ptr %i.br, align 1
  %i.bs = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.bu = load i64, ptr %i.bt, align 1
  br label %bb.o

bb.n:                                             ; preds = %.thread73, %bb.l
  %i.bv = phi ptr [ %i.bk, %.thread73 ], [ %i.bl, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.bx = load i32, ptr %i.bw, align 1
  %i.by = shl i32 %i.bx, 12
  %i.bz = add i32 %i.by, 4096
  store i32 %i.bz, ptr %i.bv, align 1
  %i.ca = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.cc = load i32, ptr %i.cb, align 1
  %i.cd = zext i32 %i.cc to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %25 = phi ptr [ %i.bl, %bb.m ], [ %i.bv, %bb.n ] ; 2 uses
  %26 = phi i1 [ true, %bb.m ], [ false, %bb.n ]  ; 19 uses
  %i.ce = phi ptr [ %i.bs, %bb.m ], [ %i.ca, %bb.n ]
  %i.cf = phi i64 [ 8, %bb.m ], [ 4, %bb.n ]
  %.v.i.i = phi i64 [ 24, %bb.m ], [ 20, %bb.n ]
  %i.cg = phi i64 [ %i.bu, %bb.m ], [ %i.cd, %bb.n ]
  %i.ch = add i64 %i.cg, 192
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 %.v.i.i
  %i.cj = call i32 @cpu_memory_rw_debug(ptr noundef %i.ce, i64 noundef %i.ch, ptr noundef nonnull %i.ci, i64 noundef %i.cf, i1 noundef zeroext false) #7
  %.not.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i, label %patch_mm_pfn_database.exit.thread.i, label %patch_mm_pfn_database.exit.i

patch_mm_pfn_database.exit.i:                     ; preds = %bb.o
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.l, ptr noundef nonnull @.str, i32 noundef 118, ptr noundef nonnull @__func__.patch_mm_pfn_database, ptr noundef nonnull @.str.16) #7
  %.pre.i = load ptr, ptr %i.l, align 8           ; 2 uses
  %.not.i58 = icmp eq ptr %.pre.i, null
  br i1 %.not.i58, label %patch_mm_pfn_database.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %patch_mm_pfn_database.exit.i
  call void @warn_report_err(ptr noundef nonnull %.pre.i) #7
  store ptr null, ptr %i.l, align 8
  br label %patch_mm_pfn_database.exit.thread.i

patch_mm_pfn_database.exit.thread.i:              ; preds = %bb.p, %patch_mm_pfn_database.exit.i, %bb.o
  %i.ck = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !17
  br i1 %26, label %bb.q, label %bb.r

bb.q:                                             ; preds = %patch_mm_pfn_database.exit.thread.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.cm = load i64, ptr %i.cl, align 1
  br label %bb.s

bb.r:                                             ; preds = %patch_mm_pfn_database.exit.thread.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.co = load i32, ptr %i.cn, align 1
  %i.cp = zext i32 %i.co to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cq = phi i64 [ 8, %bb.q ], [ 4, %bb.r ]
  %..i.i.i = phi ptr [ %i.k, %bb.q ], [ %i.j, %bb.r ]
  %i.cr = phi i64 [ %i.cm, %bb.q ], [ %i.cp, %bb.r ]
  %i.cs = add i64 %i.cr, 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  store i32 0, ptr %i.j, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  store i64 0, ptr %i.k, align 8, !annotation !14
  %i.ct = call i32 @cpu_memory_rw_debug(ptr noundef %i.ck, i64 noundef %i.cs, ptr noundef nonnull %..i.i.i, i64 noundef %i.cq, i1 noundef zeroext false) #7
  %i.cu = load i64, ptr %i.k, align 8
  %i.cv = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  %.not.i12.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i12.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.l, ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @__func__.patch_bugcheck_data, ptr noundef nonnull @.str.17) #7
  br label %patch_bugcheck_data.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cw = zext i32 %i.cv to i64
  %i.cx = select i1 %26, i64 %i.cu, i64 %i.cw
  %i.cy = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.db = select i1 %26, ptr %i.cz, ptr %i.da     ; 2 uses
  %i.dc = select i1 %26, i64 40, i64 20
  %i.dd = call i32 @cpu_memory_rw_debug(ptr noundef %i.cy, i64 noundef %i.cx, ptr noundef nonnull %i.db, i64 noundef %i.dc, i1 noundef zeroext false) #7
  %.not19.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not19.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.l, ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @__func__.patch_bugcheck_data, ptr noundef nonnull @.str.18) #7
  br label %patch_bugcheck_data.exit.i

bb.w:                                             ; preds = %bb.u
  br i1 %26, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.de = load i32, ptr %i.cz, align 1
  %.not21.i.i = icmp eq i32 %i.de, 0
  br i1 %.not21.i.i, label %bb.z, label %patch_bugcheck_data.exit.i

bb.y:                                             ; preds = %bb.w
  %i.df = load i32, ptr %i.da, align 1
  %.not20.i.i = icmp eq i32 %i.df, 0
  br i1 %.not20.i.i, label %bb.z, label %patch_bugcheck_data.exit.i

bb.z:                                             ; preds = %bb.y, %bb.x
  store i32 353, ptr %i.db, align 4
  br label %patch_bugcheck_data.exit.i

patch_bugcheck_data.exit.i:                       ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.t
  %i.dg = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not11.i = icmp eq ptr %i.dg, null
  br i1 %.not11.i, label %patch_header.exit, label %bb.aa

bb.aa:                                            ; preds = %patch_bugcheck_data.exit.i
  call void @warn_report_err(ptr noundef nonnull %i.dg) #7
  br label %patch_header.exit

patch_header.exit:                                ; preds = %patch_bugcheck_data.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  %.in.v = select i1 %26, i64 76, i64 60
  %.in = getelementptr inbounds nuw i8, ptr %i.p, i64 %.in.v
  %i.dh = load i32, ptr %.in, align 1
  %i.di = zext i32 %i.dh to i64
  %i.dj = call noalias ptr @g_malloc_n(i64 noundef %i.di, i64 noundef 1248) #9 ; 3 uses
  br i1 %26, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %patch_header.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.dl = load i64, ptr %i.dk, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %patch_header.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.dn = load i32, ptr %i.dm, align 1
  %i.do = zext i32 %i.dn to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dp = phi i64 [ 8, %bb.ab ], [ 4, %bb.ac ]    ; 4 uses
  %..i.i = phi ptr [ %i.h, %bb.ab ], [ %i.g, %bb.ac ]
  %i.dq = phi i64 [ %i.dl, %bb.ab ], [ %i.do, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  store i16 0, ptr %i.i, align 2, !annotation !14
  %i.dr = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !19
  %i.ds = add i64 %i.dq, 536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store i32 0, ptr %i.g, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store i64 0, ptr %i.h, align 8, !annotation !14
  %i.dt = call i32 @cpu_memory_rw_debug(ptr noundef %i.dr, i64 noundef %i.ds, ptr noundef nonnull %..i.i, i64 noundef %i.dp, i1 noundef zeroext false) #7
  %i.du = load i64, ptr %i.h, align 8
  %i.dv = load i32, ptr %i.g, align 4
  %i.dw = zext i32 %i.dv to i64
  %i.dx = select i1 %26, i64 %i.du, i64 %i.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  %.not.i59 = icmp eq i32 %i.dt, 0
  br i1 %.not.i59, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 260, ptr noundef nonnull @__func__.patch_and_save_context, ptr noundef nonnull @.str.19) #7
  br label %patch_and_save_context.exit

bb.af:                                            ; preds = %bb.ad
  %i.dy = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  %i.dz = add i64 %i.dq, 824
  %i.ea = call i32 @cpu_memory_rw_debug(ptr noundef %i.dy, i64 noundef %i.dz, ptr noundef nonnull %i.i, i64 noundef 2, i1 noundef zeroext false) #7
  %.not137.i = icmp eq i32 %i.ea, 0
  br i1 %.not137.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 267, ptr noundef nonnull @__func__.patch_and_save_context, ptr noundef nonnull @.str.20) #7
  br label %patch_and_save_context.exit

bb.ah:                                            ; preds = %bb.af
  %i.eb = load atomic ptr, ptr @cpus_queue monotonic, align 8 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !21
  %.not138162.i = icmp eq ptr %i.eb, null
  br i1 %.not138162.i, label %patch_and_save_context.exit, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.ah
  %.in.v.i = select i1 %26, i64 52, i64 36
  %.in.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.in.v.i
  %..i145.i = select i1 %26, ptr %i.f, ptr %i.e
  %..i146.i = select i1 %26, ptr %i.d, ptr %i.c
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.96.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 140
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 144
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 148
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 156
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 168
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 172
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 180
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 188
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 192
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 196
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 204
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 52
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 58
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.712.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 62
  %.sroa.813.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.914.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 66
  %.sroa.1015.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 68
  %.sroa.1116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.1318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.1520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.1722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.sroa.1924.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 216
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 232
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 248
  %.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 256
  %.sroa.3431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 280
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 284
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ax, %.lr.ph.i60
  %.0164.i = phi ptr [ %i.eb, %.lr.ph.i60 ], [ %i.ji, %bb.ax ] ; 2 uses
  %.0135163.i = phi i32 [ 0, %.lr.ph.i60 ], [ %i.jg, %bb.ax ] ; 7 uses
  %i.ec = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %.0164.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7 ; 37 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16496 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1232) %2, i8 0, i64 1232, i1 false), !annotation !14
  %i.ee = load i32, ptr %.in.i, align 1           ; 2 uses
  %.not139.i = icmp ult i32 %.0135163.i, %i.ee
  br i1 %.not139.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.21, i32 noundef %i.ee) #7
  br label %.critedge.i

bb.ak:                                            ; preds = %bb.ai
  %i.ef = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !22
  %i.eg = sext i32 %.0135163.i to i64             ; 2 uses
  %i.eh = mul nsw i64 %i.dp, %i.eg
  %i.ei = add i64 %i.eh, %i.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i32 0, ptr %i.e, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i64 0, ptr %i.f, align 8, !annotation !14
  %i.ej = call i32 @cpu_memory_rw_debug(ptr noundef %i.ef, i64 noundef %i.ei, ptr noundef nonnull %..i145.i, i64 noundef %i.dp, i1 noundef zeroext false) #7
  %i.ek = load i64, ptr %i.f, align 8
  %i.el = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %.not140.i = icmp eq i32 %i.ej, 0
  br i1 %.not140.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 289, ptr noundef nonnull @__func__.patch_and_save_context, ptr noundef nonnull @.str.22, i32 noundef %.0135163.i) #7
  br label %.critedge.i

bb.am:                                            ; preds = %bb.ak
  %i.em = zext i32 %i.el to i64
  %i.en = select i1 %26, i64 %i.ek, i64 %i.em
  %i.eo = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !23
  %i.ep = load i16, ptr %i.i, align 2
  %i.eq = zext i16 %i.ep to i64
  %i.er = add i64 %i.en, %i.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i64 0, ptr %i.d, align 8, !annotation !14
  %i.es = call i32 @cpu_memory_rw_debug(ptr noundef %i.eo, i64 noundef %i.er, ptr noundef nonnull %..i146.i, i64 noundef %i.dp, i1 noundef zeroext false) #7
  %i.et = load i64, ptr %i.d, align 8
  %i.eu = load i32, ptr %i.c, align 4
  %i.ev = zext i32 %i.eu to i64
  %i.ew = select i1 %26, i64 %i.et, i64 %i.ev     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %.not141.i = icmp eq i32 %i.es, 0
  br i1 %.not141.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 297, ptr noundef nonnull @__func__.patch_and_save_context, ptr noundef nonnull @.str.23, i32 noundef %.0135163.i) #7
  br label %.critedge.i

bb.ao:                                            ; preds = %bb.am
  %i.ex = getelementptr inbounds [1248 x i8], ptr %i.dj, i64 %i.eg ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1232
  store i64 %i.ew, ptr %i.ey, align 16
  br i1 %26, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ec, i64 17440 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 16           ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ec, i64 16808
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 16832
  %i.fd = load i32, ptr %i.fc, align 16
  %i.fe = trunc i32 %i.fd to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ec, i64 16880
  %i.fg = load i32, ptr %i.ff, align 16
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = load i32, ptr %i.fb, align 8
  %i.fj = trunc i32 %i.fi to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ec, i64 16904
  %i.fl = load i32, ptr %i.fk, align 8
  %i.fm = trunc i32 %i.fl to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ec, i64 16928
  %i.fo = load i32, ptr %i.fn, align 16
  %i.fp = trunc i32 %i.fo to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ec, i64 16856
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = trunc i32 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ec, i64 16760
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = trunc i64 %i.fu to i32                  ; 2 uses
  %i.fw = load i8, ptr @tcg_allowed, align 1, !range !7, !noundef !8
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.aq, label %cpu_compute_eflags.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.fy = call i32 @cpu_cc_compute_all(ptr noundef nonnull %i.ed) #7
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ec, i64 16796
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = and i32 %i.ga, 1024
  %i.gc = or i32 %i.fy, %i.gb
  %i.gd = or i32 %i.gc, %i.fv
  %.pre.i61 = load i32, ptr %i.ez, align 16
  br label %cpu_compute_eflags.exit.i

cpu_compute_eflags.exit.i:                        ; preds = %bb.aq, %bb.ap
  %i.ge = phi i32 [ %.pre.i61, %bb.aq ], [ %i.fa, %bb.ap ]
  %.0.i.i = phi i32 [ %i.gd, %bb.aq ], [ %i.fv, %bb.ap ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ec, i64 29952
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ec, i64 29968
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ec, i64 30000
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ec, i64 16512
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ec, i64 16528
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ec, i64 16544
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ec, i64 16560
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ec, i64 16576
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ec, i64 16592
  %i.go = getelementptr inbounds nuw i8, ptr %i.ec, i64 16608
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ec, i64 16752
  %i.gq = load i64, ptr %i.gp, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  store i32 1048607, ptr %.sroa.2.0..sroa_idx.i, align 16
  store i32 %i.fa, ptr %.sroa.38.0..sroa_idx.i, align 4
  store i16 %i.fe, ptr %.sroa.49.0..sroa_idx.i, align 8
  store i16 %i.fh, ptr %.sroa.510.0..sroa_idx.i, align 2
  store i16 %i.fj, ptr %.sroa.611.0..sroa_idx.i, align 4
  store i16 %i.fm, ptr %.sroa.712.0..sroa_idx.i, align 2
  store i16 %i.fp, ptr %.sroa.813.0..sroa_idx.i, align 16
  store i16 %i.fs, ptr %.sroa.914.0..sroa_idx.i, align 2
  store i32 %.0.i.i, ptr %.sroa.1015.0..sroa_idx.i, align 4
  %i.gr = load <2 x i64>, ptr %i.gf, align 16
  store <2 x i64> %i.gr, ptr %.sroa.1116.0..sroa_idx.i, align 8
  %i.gs = load <2 x i64>, ptr %i.gg, align 16
  store <2 x i64> %i.gs, ptr %.sroa.1318.0..sroa_idx.i, align 8
  %i.gt = load <2 x i64>, ptr %i.gh, align 16
  store <2 x i64> %i.gt, ptr %.sroa.1520.0..sroa_idx.i, align 8
  %i.gu = load <2 x i64>, ptr %i.ed, align 16
  store <2 x i64> %i.gu, ptr %.sroa.1722.0..sroa_idx.i, align 8
  %i.gv = load <2 x i64>, ptr %i.gi, align 16
  store <2 x i64> %i.gv, ptr %.sroa.1924.0..sroa_idx.i, align 8
  %i.gw = load <2 x i64>, ptr %i.gj, align 16
  store <2 x i64> %i.gw, ptr %.sroa.12.0..sroa_idx.i, align 8
  %i.gx = load <2 x i64>, ptr %i.gk, align 16
  store <2 x i64> %i.gx, ptr %.sroa.16.0..sroa_idx.i, align 8
  %i.gy = load <2 x i64>, ptr %i.gl, align 16
  store <2 x i64> %i.gy, ptr %.sroa.20.0..sroa_idx.i, align 8
  %i.gz = load <2 x i64>, ptr %i.gm, align 16
  store <2 x i64> %i.gz, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.ha = load <2 x i64>, ptr %i.gn, align 16
  store <2 x i64> %i.ha, ptr %.sroa.29.0..sroa_idx.i, align 8
  %i.hb = load <2 x i64>, ptr %i.go, align 16
  store <2 x i64> %i.hb, ptr %.sroa.31.0..sroa_idx.i, align 8
  store i64 %i.gq, ptr %.sroa.33.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.34.0..sroa_idx.i, i8 0, i64 24, i1 false)
  store i32 %i.ge, ptr %.sroa.3431.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(948) %.sroa.35.0..sroa_idx.i, i8 0, i64 948, i1 false)
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ec, i64 29952
  %i.hd = load <4 x i64>, ptr %i.hc, align 16
  %i.he = trunc <4 x i64> %i.hd to <4 x i32>
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ec, i64 30000
  %i.hg = load <2 x i64>, ptr %i.hf, align 16
  %i.hh = trunc <2 x i64> %i.hg to <2 x i32>
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ec, i64 16808
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ec, i64 16928
  %i.hk = load i32, ptr %i.hj, align 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ec, i64 16904
  %i.hm = load i32, ptr %i.hl, align 8
  %i.hn = load i32, ptr %i.hi, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ec, i64 16880
  %i.hp = load i32, ptr %i.ho, align 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ec, i64 16544
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ec, i64 16512
  %i.hs = load <2 x i64>, ptr %i.hq, align 16
  %i.ht = shufflevector <2 x i64> %i.hs, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hu = load <2 x i64>, ptr %i.hr, align 16
  %i.hv = shufflevector <2 x i64> %i.hu, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hw = shufflevector <2 x i64> %i.ht, <2 x i64> %i.hv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hx = trunc <4 x i64> %i.hw to <4 x i32>
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ec, i64 16504
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = load i64, ptr %i.ed, align 16
  %i.ic = trunc i64 %i.ib to i32
  %i.id = getelementptr inbounds nuw i8, ptr %i.ec, i64 16536
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = trunc i64 %i.ie to i32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ec, i64 16752
  %i.ih = load i64, ptr %i.ig, align 16
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ec, i64 16832
  %i.ik = load i32, ptr %i.ij, align 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.ec, i64 16760
  %i.im = load i64, ptr %i.il, align 8
  %i.in = trunc i64 %i.im to i32                  ; 2 uses
  %i.io = load i8, ptr @tcg_allowed, align 1, !range !7, !noundef !8
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.as, label %cpu_compute_eflags.exit148.i

bb.as:                                            ; preds = %bb.ar
  %i.iq = call i32 @cpu_cc_compute_all(ptr noundef nonnull %i.ed) #7
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ec, i64 16796
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = and i32 %i.is, 1024
  %i.iu = or i32 %i.iq, %i.it
  %i.iv = or i32 %i.iu, %i.in
  br label %cpu_compute_eflags.exit148.i

cpu_compute_eflags.exit148.i:                     ; preds = %bb.as, %bb.ar
  %.0.i147.i = phi i32 [ %i.iv, %bb.as ], [ %i.in, %bb.ar ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ec, i64 16528
  %i.ix = load i64, ptr %i.iw, align 16
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ec, i64 16856
  %i.ja = load i32, ptr %i.iz, align 8
  store i32 65559, ptr %2, align 16
  store <4 x i32> %i.he, ptr %.sroa.3.0..sroa_idx.i, align 4
  store <2 x i32> %i.hh, ptr %.sroa.7.0..sroa_idx.i, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %.sroa.9.0..sroa_idx.i, i8 0, i64 112, i1 false)
  store i32 %i.hk, ptr %.sroa.96.0..sroa_idx.i, align 4
  store i32 %i.hm, ptr %.sroa.10.0..sroa_idx.i, align 16
  store i32 %i.hn, ptr %.sroa.11.0..sroa_idx.i, align 4
  store i32 %i.hp, ptr %.sroa.12.0..sroa_idx.i, align 8
  store <4 x i32> %i.hx, ptr %.sroa.13.0..sroa_idx.i, align 4
  store i32 %i.ia, ptr %.sroa.17.0..sroa_idx.i, align 4
  store i32 %i.ic, ptr %.sroa.18.0..sroa_idx.i, align 16
  store i32 %i.if, ptr %.sroa.19.0..sroa_idx.i, align 4
  store i32 %i.ii, ptr %.sroa.20.0..sroa_idx.i, align 8
  store i32 %i.ik, ptr %.sroa.21.0..sroa_idx.i, align 4
  store i32 %.0.i147.i, ptr %.sroa.22.0..sroa_idx.i, align 16
  store i32 %i.iy, ptr %.sroa.23.0..sroa_idx.i, align 4
  store i32 %i.ja, ptr %.sroa.24.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %.sroa.25.0..sroa_idx.i, i8 0, i64 516, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %cpu_compute_eflags.exit148.i, %cpu_compute_eflags.exit.i
  %i.jb = phi i64 [ 720, %cpu_compute_eflags.exit148.i ], [ 1232, %cpu_compute_eflags.exit.i ] ; 2 uses
  %i.jc = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !24
  %i.jd = call i32 @cpu_memory_rw_debug(ptr noundef %i.jc, i64 noundef %i.ew, ptr noundef nonnull %i.ex, i64 noundef %i.jb, i1 noundef zeroext false) #7
  %.not142.i = icmp eq i32 %i.jd, 0
  br i1 %.not142.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 379, ptr noundef nonnull @__func__.patch_and_save_context, ptr noundef nonnull @.str.24, i32 noundef %.0135163.i) #7
  br label %.critedge.i

bb.av:                                            ; preds = %bb.at
  %i.je = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !25
  %i.jf = call i32 @cpu_memory_rw_debug(ptr noundef %i.je, i64 noundef %i.ew, ptr noundef nonnull %2, i64 noundef %i.jb, i1 noundef zeroext true) #7
  %.not143.i = icmp eq i32 %i.jf, 0
  br i1 %.not143.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 385, ptr noundef nonnull @__func__.patch_and_save_context, ptr noundef nonnull @.str.25, i32 noundef %.0135163.i) #7
  br label %.critedge.i

bb.ax:                                            ; preds = %bb.av
  %i.jg = add nuw i32 %.0135163.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.jh = getelementptr inbounds nuw i8, ptr %.0164.i, i64 552
  %i.ji = load atomic ptr, ptr %i.jh monotonic, align 8 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !26
  %.not138.i = icmp eq ptr %i.ji, null
  br i1 %.not138.i, label %patch_and_save_context.exit, label %bb.ai, !llvm.loop !9

.critedge.i:                                      ; preds = %bb.aw, %bb.au, %bb.an, %bb.al, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %patch_and_save_context.exit

patch_and_save_context.exit:                      ; preds = %bb.ax, %bb.ae, %bb.ag, %bb.ah, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  %i.jj = load ptr, ptr %4, align 8               ; 2 uses
  %.not55 = icmp eq ptr %i.jj, null
  br i1 %.not55, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %patch_and_save_context.exit
  call void @error_propagate(ptr noundef %1, ptr noundef nonnull %i.jj) #7
  br label %restore_context.exit

bb.az:                                            ; preds = %patch_and_save_context.exit
  br i1 %26, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jk = load i64, ptr %25, align 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.jl = load i32, ptr %25, align 1
  %i.jm = zext i32 %i.jl to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.jn = phi i64 [ %i.jk, %bb.ba ], [ %i.jm, %bb.bb ]
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.jn, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 8
  %i.jr = call i64 @qemu_write_full(i32 noundef %i.jq, ptr noundef nonnull %i.q, i64 noundef %22) #7 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  store i64 %i.jr, ptr %i.js, align 8
  %.not56 = icmp eq i64 %i.jr, %22
  br i1 %.not56, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jt = tail call ptr @__errno_location() #10
  %i.ju = load i32, ptr %i.jt, align 4
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @__func__.create_win_dump, i32 noundef %i.ju, ptr noundef nonnull @.str.4) #7
  br label %bb.bq

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8
  %.in.v.i62 = select i1 %26, i64 136, i64 100
  %.in.i63 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.in.v.i62 ; 2 uses
  %i.jv = load i32, ptr %.in.i63, align 1
  %.not28.i = icmp eq i32 %i.jv, 0
  br i1 %.not28.i, label %write_runs.exit, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.be
  %i.jw = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.jx = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  br label %bb.bg

bb.bf:                                            ; preds = %write_run.exit.i
  %i.jy = add nuw i32 %.027.i, 1                  ; 2 uses
  %i.jz = load i32, ptr %.in.i63, align 1
  %i.ka = icmp ult i32 %i.jy, %i.jz
  br i1 %i.ka, label %bb.bg, label %write_runs.exit, !llvm.loop !10

bb.bg:                                            ; preds = %bb.bf, %.lr.ph.i64
  %.027.i = phi i32 [ 0, %.lr.ph.i64 ], [ %i.jy, %bb.bf ] ; 2 uses
  %i.kb = sext i32 %.027.i to i64                 ; 4 uses
  br i1 %26, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kc = getelementptr inbounds [16 x i8], ptr %i.jx, i64 %i.kb
  %i.kd = load i64, ptr %i.kc, align 1
  %i.ke = getelementptr [16 x i8], ptr %i.q, i64 %i.kb
  %i.kf = getelementptr i8, ptr %i.ke, i64 160
  %i.kg = load i64, ptr %i.kf, align 1
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.kb
  %i.ki = load i32, ptr %i.kh, align 1
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr [8 x i8], ptr %i.q, i64 %i.kb
  %i.kl = getelementptr i8, ptr %i.kk, i64 112
  %i.km = load i32, ptr %i.kl, align 1
  %i.kn = zext i32 %i.km to i64
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ko = phi i64 [ %i.kd, %bb.bh ], [ %i.kj, %bb.bi ]
  %i.kp = phi i64 [ %i.kg, %bb.bh ], [ %i.kn, %bb.bi ]
  %i.kq = load i32, ptr %i.jp, align 8
  %i.kr = shl i64 %i.kp, 12                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not37.i.i = icmp eq i64 %i.kr, 0
  br i1 %.not37.i.i, label %write_run.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bj
  %i.ks = shl i64 %i.ko, 12
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bn, %.lr.ph.preheader.i.i
  %.040.i.i = phi i64 [ %i.le, %bb.bn ], [ 0, %.lr.ph.preheader.i.i ]
  %.02439.i.i = phi i64 [ %i.ld, %bb.bn ], [ %i.kr, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02538.i.i = phi i64 [ %i.lc, %bb.bn ], [ %i.ks, %.lr.ph.preheader.i.i ] ; 5 uses
  store i64 %.02439.i.i, ptr %i.a, align 8
  %i.kt = call ptr @physical_memory_map(i64 noundef %.02538.i.i, ptr noundef nonnull %i.a, i1 noundef zeroext false) #7 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.kt, null
  br i1 %.not29.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i.i
  %i.ku = add i64 %.02439.i.i, -1
  %i.kv = add i64 %i.ku, %.02538.i.i
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, i32 noundef 61, ptr noundef nonnull @__func__.write_run, ptr noundef nonnull @.str.26, i64 noundef %.02538.i.i, i64 noundef %i.kv) #7
  br label %write_run.exit.i

bb.bl:                                            ; preds = %.lr.ph.i.i
  %i.kw = load i64, ptr %i.a, align 8
  %i.kx = call i64 @qemu_write_full(i32 noundef %i.kq, ptr noundef nonnull %i.kt, i64 noundef %i.kw) #7 ; 4 uses
  %i.ky = tail call ptr @__errno_location() #10
  %i.kz = load i32, ptr %i.ky, align 4
  %i.la = load i64, ptr %i.a, align 8
  call void @physical_memory_unmap(ptr noundef nonnull %i.kt, i64 noundef %.02538.i.i, i1 noundef zeroext false, i64 noundef %i.la) #7
  %i.lb = load i64, ptr %i.a, align 8
  %.not30.i.i = icmp eq i64 %i.kx, %i.lb
  br i1 %.not30.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, i32 noundef 69, ptr noundef nonnull @__func__.write_run, i32 noundef %i.kz, ptr noundef nonnull @.str.27) #7
  br label %write_run.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.lc = add i64 %i.kx, %.02538.i.i
  %i.ld = sub i64 %.02439.i.i, %i.kx              ; 2 uses
  %i.le = add i64 %i.kx, %.040.i.i                ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.ld, 0
  br i1 %.not.i.i66, label %write_run.exit.i, label %.lr.ph.i.i, !llvm.loop !11

write_run.exit.i:                                 ; preds = %bb.bn, %bb.bm, %bb.bk, %bb.bj
  %.026.i.i = phi i64 [ 0, %bb.bm ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ %i.le, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.lf = load i64, ptr %i.js, align 8
  %i.lg = add i64 %i.lf, %.026.i.i
  store i64 %i.lg, ptr %i.js, align 8
  %i.lh = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i65 = icmp eq ptr %i.lh, null
  br i1 %.not.i65, label %bb.bf, label %bb.bo

bb.bo:                                            ; preds = %write_run.exit.i
  call void @error_propagate(ptr noundef nonnull %4, ptr noundef nonnull %i.lh) #7
  br label %write_runs.exit

write_runs.exit:                                  ; preds = %bb.bf, %bb.be, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.li = load ptr, ptr %4, align 8               ; 2 uses
  %.not57 = icmp eq ptr %i.li, null
  br i1 %.not57, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %write_runs.exit
  call void @error_propagate(ptr noundef %1, ptr noundef nonnull %i.li) #7
  br label %bb.bq

bb.bq:                                            ; preds = %write_runs.exit, %bb.bp, %bb.bd
  %.in.v.i67 = select i1 %26, i64 52, i64 36
  %.in.i68 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.in.v.i67 ; 2 uses
  %i.lj = load i32, ptr %.in.i68, align 1
  %.not13.i.a = icmp eq i32 %i.lj, 0
  br i1 %.not13.i.a, label %restore_context.exit, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %bb.bq
  %i.lk = select i1 %26, i64 1232, i64 720
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %.lr.ph.i69
  %.012.i = phi i32 [ 0, %.lr.ph.i69 ], [ %i.lr, %bb.bt ] ; 3 uses
  %i.ll = load atomic ptr, ptr @cpus_queue monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !28
  %i.lm = sext i32 %.012.i to i64
  %i.ln = getelementptr inbounds [1248 x i8], ptr %i.dj, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1232
  %i.lp = load i64, ptr %i.lo, align 16
  %i.lq = call i32 @cpu_memory_rw_debug(ptr noundef %i.ll, i64 noundef %i.lp, ptr noundef %i.ln, i64 noundef %i.lk, i1 noundef zeroext true) #7
  %.not.i70 = icmp eq i32 %i.lq, 0
  br i1 %.not.i70, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.28, i32 noundef %.012.i) #7
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.lr = add nuw i32 %.012.i, 1                  ; 2 uses
  %i.ls = load i32, ptr %.in.i68, align 1
  %i.lt = icmp ult i32 %i.lr, %i.ls
  br i1 %i.lt, label %bb.br, label %restore_context.exit, !llvm.loop !12

restore_context.exit:                             ; preds = %bb.bt, %bb.bq, %bb.ay
  call void @g_free(ptr noundef %i.dj) #7
  br label %bb.bu

bb.bu:                                            ; preds = %restore_context.exit, %bb.k
  store i64 %i.u, ptr %i.t, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %18, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @qemu_write_full(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare ptr @object_resolve_path_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @cpu_memory_rw_debug(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @warn_report_err(ptr noundef) local_unnamed_addr #2

declare void @warn_report(ptr noundef, ...) local_unnamed_addr #2

declare i32 @cpu_cc_compute_all(ptr noundef) local_unnamed_addr #2

declare ptr @physical_memory_map(i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @physical_memory_unmap(ptr noundef, i64 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !27}
!10 = distinct !{!10, !27}
!11 = distinct !{!11, !27}
!12 = distinct !{!12, !27}
!13 = !{i64 2151774186}
!14 = !{!"auto-init"}
!15 = !{i64 2151726843}
!16 = !{i64 2151711576}
!17 = !{i64 2151716513}
!18 = !{i64 2151721229}
!19 = !{i64 2151731895}
!20 = !{i64 2151736505}
!21 = !{i64 2151741321}
!22 = !{i64 2151750160}
!23 = !{i64 2151754741}
!24 = !{i64 2151759618}
!25 = !{i64 2151764190}
!26 = !{i64 2151745572}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{i64 2151768871}
end_hunk_0
