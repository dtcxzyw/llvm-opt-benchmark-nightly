Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/initramfs?download=true
inline.NumInlined: 45
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wait_for_initramfs: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad wait_for_initramfs ; .previous"
    ".section\09\22.initcallrootfs.init\22, \22a\22\09\09"
    "__initcall__kmod_initramfs__664_792_populate_rootfsrootfs:\09\09\09"
    ".long\09populate_rootfs - .\09"
    ".previous\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"can't allocate buffers\00", align 1
@header_buf = internal unnamed_addr global ptr null, section ".init.data", align 8
@symlink_buf = internal unnamed_addr global ptr null, section ".init.data", align 8
@name_buf = internal unnamed_addr global ptr null, section ".init.data", align 8
@state = internal unnamed_addr global i32 0, section ".init.data", align 4
@this_header = internal unnamed_addr global i64 0, section ".init.data", align 8
@message = internal unnamed_addr global ptr null, section ".init.data", align 8
@my_inptr = internal global i64 0, section ".init.data", align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"decompressor failed\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\013compression method %s not configured\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"invalid magic at start of compressed archive\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"junk at the end of compressed archive\00", align 1
@__setup_str_retain_initrd_param = internal constant [14 x i8] c"retain_initrd\00", section ".init.rodata", align 1
@__setup_retain_initrd_param = internal global { ptr, ptr, i32, [4 x i8] } { ptr @__setup_str_retain_initrd_param, ptr @retain_initrd_param, i32 0, [4 x i8] zeroinitializer }, section ".init.setup", align 8
@__setup_str_initramfs_async_setup = internal constant [17 x i8] c"initramfs_async=\00", section ".init.rodata", align 1
@__setup_initramfs_async_setup = internal global { ptr, ptr, i32, [4 x i8] } { ptr @__setup_str_initramfs_async_setup, ptr @initramfs_async_setup, i32 0, [4 x i8] zeroinitializer }, section ".init.setup", align 8
@initrd_end = external dso_local local_unnamed_addr global i64, align 8
@initrd_start = external dso_local local_unnamed_addr global i64, align 8
@phys_initrd_size = external dso_local local_unnamed_addr global i64, align 8
@phys_initrd_start = external dso_local local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"\013INITRD: 0x%08llx+0x%08lx is not a memory region\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"\013INITRD: 0x%08llx+0x%08lx overlaps in-use memory region\0A\00", align 1
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8
@initrd_below_start_ok = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"\01c - disabling initrd\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"initrd\00", align 1
@initramfs_cookie = internal unnamed_addr global i64 0, align 8
@wait_for_initramfs.__already_done = internal unnamed_addr global i1 false, section ".data..once", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"\014wait_for_initramfs() called before rootfs_initcalls\0A\00", align 1
@__UNIQUE_ID_addressable_wait_for_initramfs_663 = internal global ptr @wait_for_initramfs, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_populate_rootfs_665 = internal global ptr @populate_rootfs, section ".discard.addressable", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@byte_count = internal unnamed_addr global i64 0, section ".init.data", align 8
@victim = internal unnamed_addr global ptr null, section ".init.data", align 8
@actions = internal unnamed_addr constant [8 x ptr] [ptr @do_start, ptr @do_collect, ptr @do_header, ptr @do_skip, ptr @do_name, ptr @do_copy, ptr @do_symlink, ptr @do_reset], section ".init.data", align 16
@collected = internal unnamed_addr global ptr null, section ".init.data", align 8
@collect = internal unnamed_addr global ptr null, section ".init.data", align 8
@remains = internal unnamed_addr global i64 0, section ".init.data", align 8
@next_state = internal unnamed_addr global i32 0, section ".init.data", align 4
@csum_present = internal unnamed_addr global i1 false, section ".init.data", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"incorrect cpio method used: use -H newc option\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"no cpio magic\00", align 1
@name_len = internal unnamed_addr global i64 0, section ".init.data", align 8
@body_len = internal unnamed_addr global i64 0, section ".init.data", align 8
@next_header = internal unnamed_addr global i64 0, section ".init.data", align 8
@mode = internal unnamed_addr global i16 0, section ".init.data", align 2
@.str.17 = private unnamed_addr constant [15 x i8] c"damaged header\00", align 1
@ino = internal unnamed_addr global i64 0, section ".init.data", align 8
@uid = internal unnamed_addr global i32 0, section ".init.data", align 4
@gid = internal unnamed_addr global i32 0, section ".init.data", align 4
@nlink = internal unnamed_addr global i64 0, section ".init.data", align 8
@mtime = internal unnamed_addr global i64 0, section ".init.data", align 8
@major = internal unnamed_addr global i64 0, section ".init.data", align 8
@minor = internal unnamed_addr global i64 0, section ".init.data", align 8
@rdev = internal unnamed_addr global i32 0, section ".init.data", align 4
@hdr_csum = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.18 = private unnamed_addr constant [40 x i8] c"\013initramfs name without nulterm: %.*s\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"malformed archive\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"TRAILER!!!\00", align 1
@wfile = internal unnamed_addr global ptr null, section ".init.data", align 8
@wfile_pos = internal global i64 0, section ".init.data", align 8
@io_csum = internal unnamed_addr global i32 0, section ".init.data", align 4
@head = internal global [32 x ptr] zeroinitializer, section ".init.data", align 16
@.str.21 = private unnamed_addr constant [31 x i8] c"can't allocate link hash entry\00", align 1
@hardlink_seen = internal unnamed_addr global i1 false, section ".init.data", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"can't allocate dir_entry buffer\00", align 1
@dir_list = internal global %struct.list_head { ptr @dir_list, ptr @dir_list }, section ".init.data", align 8
@.str.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"bad data checksum\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"\013initramfs symlink without nulterm: %.*s\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"broken padding\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"junk within compressed archive\00", align 1
@do_retain_initrd = internal unnamed_addr global i1 false, section ".init.data", align 4
@initramfs_async = internal global i8 1, section ".init.data", align 1
@initramfs_domain = internal global { %struct.list_head, i8, [7 x i8] } { %struct.list_head { ptr @initramfs_domain, ptr @initramfs_domain }, i8 0, [7 x i8] zeroinitializer }, align 8
@__initramfs_start = external dso_local global [0 x i8], align 1
@__initramfs_size = external dso_local local_unnamed_addr global i64, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"\016Unpacking initramfs...\0A\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"\010Initramfs unpacking failed: %s\0A\00", align 1
@firmware_kobj = external dso_local local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [37 x i8] c"\013Failed to create initrd sysfs file\00", align 1
@crashk_res = external dso_local local_unnamed_addr global %struct.resource, align 8
@bin_attr_initrd = internal global { { ptr, i16, [6 x i8] }, i64, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, i16, [6 x i8] } { ptr @.str.8, i16 288, [6 x i8] zeroinitializer }, i64 0, ptr null, ptr null, ptr @sysfs_bin_attr_simple_read, ptr null, ptr null, ptr null }, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_addressable_populate_rootfs_665, ptr @__UNIQUE_ID_addressable_wait_for_initramfs_663, ptr @__setup_initramfs_async_setup, ptr @__setup_retain_initrd_param], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local ptr @unpack_to_rootfs(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = tail call noalias align 4096 dereferenceable_or_null(12403) ptr @__kmalloc_large_noprof(i64 noundef 12403, i32 noundef 3264) #17 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @show_mem() #18, !srcloc !15
  tail call void (ptr, ...) @panic(ptr noundef @.str) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !annotation !12
  store ptr %i.b, ptr @header_buf, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 110
  store ptr %i.c, ptr @symlink_buf, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 8305
  store ptr %i.d, ptr @name_buf, align 8
  store i32 0, ptr @state, align 4
  store i64 0, ptr @this_header, align 8
  store ptr null, ptr @message, align 8
  %.not55 = icmp eq i64 %1, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.m
  %2 = phi i64 [ %3, %bb.m ], [ 0, %bb.c ]        ; 3 uses
  %.054 = phi ptr [ %.1, %bb.m ], [ %0, %bb.c ]   ; 7 uses
  %.03153 = phi i64 [ %.132, %bb.m ], [ %1, %bb.c ] ; 6 uses
  %i.e = load i8, ptr %.054, align 1              ; 2 uses
  %i.f = icmp eq i8 %i.e, 48
  %i.g = and i64 %2, 3
  %.not37 = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.f, i1 %.not37, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  store i32 0, ptr @state, align 4
  store i64 %.03153, ptr @byte_count, align 8
  store ptr %.054, ptr @victim, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.h = load i32, ptr @state, align 4
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr @actions, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i32 %i.k() #20, !inline_history !0
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %write_buffer.exit, !llvm.loop !1

write_buffer.exit:                                ; preds = %bb.e
  %i.m = load i64, ptr @byte_count, align 8       ; 2 uses
  %i.n = sub i64 %.03153, %i.m
  %i.o = getelementptr i8, ptr %.054, i64 %i.n
  %.pre = load i64, ptr @this_header, align 8
  %.pre.a = load ptr, ptr @message, align 8
  br label %bb.m, !llvm.loop !14

bb.f:                                             ; preds = %.lr.ph
  %.not38 = icmp eq i8 %i.e, 0
  br i1 %.not38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.054, i64 1
  %i.q = add i64 %.03153, -1
  %i.r = add i64 %2, 1                            ; 2 uses
  store i64 %i.r, ptr @this_header, align 8
  br label %bb.m, !llvm.loop !14

bb.h:                                             ; preds = %bb.f
  store i64 0, ptr @this_header, align 8
  %i.s = call ptr @decompress_method(ptr noundef %.054, i64 noundef %.03153, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not39 = icmp eq ptr %i.s, null
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = call i32 %i.s(ptr noundef %.054, i64 noundef %.03153, ptr noundef null, ptr noundef @flush_buffer, ptr noundef null, ptr noundef @my_inptr, ptr noundef @error) #20
  %.not41 = icmp ne i32 %i.t, 0
  %i.u = load ptr, ptr @message, align 8          ; 3 uses
  %.not.i43 = icmp eq ptr %i.u, null
  %or.cond50 = select i1 %.not41, i1 %.not.i43, i1 false
  br i1 %or.cond50, label %error.exit49.sink.split, label %error.exit

bb.j:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not40 = icmp eq ptr %i.v, null
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef nonnull %i.v) #21 ; 0 uses
  %i.x = load ptr, ptr @message, align 8          ; 2 uses
  %.not.i44 = icmp eq ptr %i.x, null
  br i1 %.not.i44, label %error.exit49.sink.split, label %error.exit49

bb.l:                                             ; preds = %bb.j
  %i.y = load ptr, ptr @message, align 8          ; 2 uses
  %.not.i46 = icmp eq ptr %i.y, null
  br i1 %.not.i46, label %error.exit49.sink.split, label %error.exit49

error.exit:                                       ; preds = %bb.i
  %i.z = load i32, ptr @state, align 4
  %.not42 = icmp ne i32 %i.z, 7
  %.not.i48 = icmp eq ptr %i.u, null
  %or.cond51 = select i1 %.not42, i1 %.not.i48, i1 false
  br i1 %or.cond51, label %error.exit49.sink.split, label %error.exit49

error.exit49.sink.split:                          ; preds = %error.exit, %bb.l, %bb.k, %bb.i
  %.str.1.sink = phi ptr [ @.str.3, %bb.l ], [ @.str.1, %bb.i ], [ @.str.1, %bb.k ], [ @.str.4, %error.exit ] ; 2 uses
  store ptr %.str.1.sink, ptr @message, align 8
  br label %error.exit49

error.exit49:                                     ; preds = %error.exit49.sink.split, %bb.k, %bb.l, %error.exit
  %i.aa = phi ptr [ %i.x, %bb.k ], [ %i.u, %error.exit ], [ %i.y, %bb.l ], [ %.str.1.sink, %error.exit49.sink.split ]
  %i.ab = load i64, ptr @my_inptr, align 8        ; 3 uses
  %i.ac = add i64 %i.ab, %2                       ; 2 uses
  store i64 %i.ac, ptr @this_header, align 8
  %i.ad = getelementptr i8, ptr %.054, i64 %i.ab
  %i.ae = sub i64 %.03153, %i.ab
  br label %bb.m

bb.m:                                             ; preds = %error.exit49, %bb.g, %write_buffer.exit
  %i.af = phi ptr [ %i.aa, %error.exit49 ], [ null, %bb.g ], [ %.pre.a, %write_buffer.exit ]
  %3 = phi i64 [ %i.ac, %error.exit49 ], [ %i.r, %bb.g ], [ %.pre, %write_buffer.exit ]
  %.132 = phi i64 [ %i.ae, %error.exit49 ], [ %i.q, %bb.g ], [ %i.m, %write_buffer.exit ] ; 2 uses
  %.1 = phi ptr [ %i.ad, %error.exit49 ], [ %i.p, %bb.g ], [ %i.o, %write_buffer.exit ]
  %.not36 = icmp eq ptr %i.af, null
  %i.ag = icmp ne i64 %.132, 0
  %i.ah = select i1 %.not36, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %bb.c
  call fastcc void @dir_utime() #22, !srcloc !16
  call fastcc void @free_hash() #22, !srcloc !17
  call void @kfree(ptr noundef nonnull %i.b) #20
  %i.ai = load ptr, ptr @message, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.ai
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @show_mem() unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  tail call void @__show_mem(i32 noundef 0, ptr noundef null, i32 noundef 3) #20
  ret void
}

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @decompress_method(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i64 @flush_buffer(ptr noundef %0, i64 noundef %1) #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @message, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader.outer, label %.critedge

.preheader.outer:                                 ; preds = %bb.a, %.preheader.outer.backedge
  %.018.ph = phi i64 [ %i.g, %.preheader.outer.backedge ], [ %1, %bb.a ] ; 3 uses
  %.0.ph = phi ptr [ %i.n, %.preheader.outer.backedge ], [ %0, %bb.a ] ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %error.exit
  store i64 %.018.ph, ptr @byte_count, align 8
  store ptr %.0.ph, ptr @victim, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %i.b = load i32, ptr @state, align 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @actions, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 %i.e() #20, !inline_history !0
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %write_buffer.exit, !llvm.loop !1

write_buffer.exit:                                ; preds = %bb.b
  %i.g = load i64, ptr @byte_count, align 8       ; 2 uses
  %i.h = sub i64 %.018.ph, %i.g                   ; 4 uses
  %i.i = icmp ult i64 %i.h, %.018.ph
  %i.j = load ptr, ptr @message, align 8
  %.not23 = icmp eq ptr %i.j, null
  %or.cond = select i1 %i.i, i1 %.not23, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %write_buffer.exit
  %i.k = getelementptr i8, ptr %.0.ph, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1
  switch i8 %i.l, label %error.exit [
    i8 48, label %bb.d
    i8 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.0.ph, i64 %i.h
  br label %.preheader.outer.backedge

.preheader.outer.backedge:                        ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.o, %bb.e ], [ %i.m, %bb.d ]
  %storemerge = phi i32 [ 7, %bb.e ], [ 0, %bb.d ]
  store i32 %storemerge, ptr @state, align 4
  br label %.preheader.outer, !llvm.loop !18

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.0.ph, i64 %i.h
  br label %.preheader.outer.backedge

error.exit:                                       ; preds = %bb.c
  store ptr @.str.27, ptr @message, align 8
  br label %.preheader, !llvm.loop !18

.critedge:                                        ; preds = %write_buffer.exit, %bb.a
  %.020 = phi i64 [ -1, %bb.a ], [ %1, %write_buffer.exit ]
  ret i64 %.020
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none)
define internal void @error(ptr noundef %0) #5 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @message, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @message, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @dir_utime() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %0 = alloca [2 x %struct.timespec64], align 16  ; 7 uses
  %i.a = load ptr, ptr @dir_list, align 8         ; 2 uses
  %.not15 = icmp eq ptr %i.a, @dir_list
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.016 = phi ptr [ %i.a, %.lr.ph ], [ %.014, %bb.b ] ; 6 uses
  %.014 = load ptr, ptr %.016, align 8            ; 4 uses
  %i.e = getelementptr i8, ptr %.016, i64 8       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %.014, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store volatile ptr %.014, ptr %i.f, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.016, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.e, align 8
  %i.h = getelementptr i8, ptr %.016, i64 24
  %i.i = getelementptr i8, ptr %.016, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store i64 %i.j, ptr %0, align 16
  store i64 0, ptr %i.b, align 8
  store i64 %i.j, ptr %i.c, align 16
  store i64 0, ptr %i.d, align 8
  %i.k = call i32 @init_utimes(ptr noundef %i.h, ptr noundef nonnull %0) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @kfree(ptr noundef %.016) #20
  %.not = icmp eq ptr %.014, @dir_list
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @free_hash() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.b9 = load i1, ptr @hardlink_seen, align 1
  br i1 %.b9, label %.preheader, label %._crit_edge11

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.010 = phi ptr [ %i.f, %._crit_edge ], [ @head, %bb.a ] ; 4 uses
  %i.a = load ptr, ptr %.010, align 8             ; 2 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.b = phi ptr [ %i.e, %.lr.ph ], [ %i.a, %.preheader ] ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %.010, align 8
  tail call void @kfree(ptr noundef nonnull %i.b) #20
  %i.e = load ptr, ptr %.010, align 8             ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.b.pre = load i1, ptr @hardlink_seen, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.b = phi i1 [ %.b.pre, %._crit_edge.loopexit ], [ true, %.preheader ]
  %i.f = getelementptr i8, ptr %.010, i64 8       ; 2 uses
  %i.g = icmp ult ptr %i.f, getelementptr inbounds nuw (i8, ptr @head, i64 256)
  %i.h = select i1 %.b, i1 %i.g, i1 false
  br i1 %i.h, label %.preheader, label %._crit_edge11, !llvm.loop !21

._crit_edge11:                                    ; preds = %._crit_edge, %bb.a
  store i1 false, ptr @hardlink_seen, align 1
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
end_hunk_0
