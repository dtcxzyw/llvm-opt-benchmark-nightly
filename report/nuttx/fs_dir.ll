Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fs_dir?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.inode_ops_u = type { ptr }
%struct.dirent = type { i32, i8, [33 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"%s%s/\00", align 1
@g_dir_fileops = internal constant %struct.file_operations { ptr @dir_open, ptr @dir_close, ptr @dir_read, ptr null, ptr @dir_seek, ptr @dir_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@g_dir_inode = internal global { ptr, ptr, ptr, i32, i16, [2 x i8], %union.inode_ops_u, i32, [4 x i8], i64, ptr, [1 x i8], [7 x i8] } { ptr null, ptr null, ptr null, i32 1, i16 0, [2 x i8] zeroinitializer, %union.inode_ops_u { ptr @g_dir_fileops }, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, [1 x i8] zeroinitializer, [7 x i8] zeroinitializer }, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"
@switch.table.dir_read = private unnamed_addr constant [10 x i8] [i8 2, i8 6, i8 4, i8 3, i8 5, i8 7, i8 9, i8 poison, i8 poison, i8 1], align 1

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @dir_allocate(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = tail call ptr @lib_get_tempbuffer(i64 noundef 256) #11 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i16, ptr %i.f, align 4
  %i.h = and i16 %i.g, 15
  %i.i = icmp eq i16 %i.h, 3
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call i32 %i.n(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %i.a) #11, !inline_history !7 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %open_mountpoint.exit, label %bb.g

open_mountpoint.exit:                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.a, align 8
  store ptr %i.c, ptr %i.u, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.0.i.ph = phi i32 [ %i.s, %bb.f ], [ -38, %bb.d ], [ -38, %bb.e ], [ -38, %bb.c ]
  call void @lib_put_tempbuffer(ptr noundef nonnull %i.d) #11
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.v = tail call noalias dereferenceable_or_null(24) ptr @zalloc(i64 noundef 24) #12 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %open_pseudodir.exit

open_pseudodir.exit:                              ; preds = %bb.h
  store ptr %i.v, ptr %i.a, align 8
  store ptr %i.c, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.y, ptr %i.z, align 8
  tail call void @inode_addref(ptr noundef %i.y) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @lib_put_tempbuffer(ptr noundef nonnull %i.d) #11
  br label %bb.m

bb.j:                                             ; preds = %open_pseudodir.exit, %open_mountpoint.exit
  %i.aa = call i32 @inode_getpath(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 256) #11 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = call i32 (ptr, ptr, ...) @nx_asprintf(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str, ptr noundef nonnull %i.d, ptr noundef %1) #11 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr null, ptr %i.ag, align 8
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  store ptr @g_dir_inode, ptr %i.b, align 8
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8
  call void @inode_addref(ptr noundef nonnull @g_dir_inode) #11
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k
  call void @lib_put_tempbuffer(ptr noundef nonnull %i.d) #11
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a, %bb.i, %bb.g
  %.0 = phi i32 [ -12, %bb.i ], [ %.0.i.ph, %bb.g ], [ -12, %bb.a ], [ %i.ad, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noredzone optsize
declare dso_local ptr @lib_get_tempbuffer(i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local void @lib_put_tempbuffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @inode_getpath(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @nx_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local void @inode_addref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone optsize allocsize(0)
declare dso_local noalias ptr @zalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @dir_open(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @dir_allocate(ptr noundef %0, ptr noundef %i.d) #13
  ret i32 %i.e
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @dir_close(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i16, ptr %i.f, align 4
  %i.h = and i16 %i.g, 15
  %i.i = icmp eq i16 %i.h, 3
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @inode_release(ptr noundef nonnull %i.p) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @free(ptr noundef nonnull %i.b) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ], [ 0, %bb.f ]
  tail call void @inode_release(ptr noundef nonnull %i.c) #11
  tail call void @free(ptr noundef %i.e) #13
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal range(i64 -2147483648, 41) i64 @dir_read(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq ptr %1, null
  %i.e = icmp ult i64 %2, 40
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i16, ptr %i.f, align 4
  %i.h = and i16 %i.g, 15
  %i.i = icmp eq i16 %i.h, 3
  br i1 %i.i, label %read_pseudodir.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 33) #11 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i8 0, ptr %i.p, align 4
  %i.q = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.u = load i16, ptr %i.t, align 4
  %i.v = and i16 %i.u, 15
  %switch.tableidx = add nsw i16 %i.v, -1         ; 3 uses
  %i.w = icmp ult i16 %switch.tableidx, 10
  %switch.shifted = lshr i16 639, %switch.tableidx
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond26 = select i1 %i.w, i1 %switch.lobit, i1 false
  br i1 %or.cond26, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.e
  %i.x = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dir_read, i64 %i.x
  %switch.load = load i8, ptr %switch.gep, align 1
  store i8 %switch.load, ptr %i.p, align 4
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %switch.lookup, %bb.d
  %i.y = phi ptr [ %.pre, %switch.lookup ], [ %i.q, %bb.e ], [ %i.q, %bb.d ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %.not39.i = icmp eq ptr %i.aa, null
  br i1 %.not39.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i8 4, ptr %i.p, align 4
  %.pre.i = load ptr, ptr %i.j, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi ptr [ %.pre.i, %bb.h ], [ %i.y, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i32, ptr %i.af, align 8
  store i32 %i.ag, ptr %1, align 4
  tail call void @inode_lock() #11
  %i.ah = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  store ptr %i.aj, ptr %i.j, align 8
  %.not40.i = icmp eq ptr %i.aj, null
  br i1 %.not40.i, label %read_pseudodir.exit.thread20, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 8 ; 0 uses
  br label %read_pseudodir.exit.thread20

read_pseudodir.exit.thread20:                     ; preds = %bb.i, %bb.j
  tail call void @inode_unlock() #11
  tail call void @inode_release(ptr noundef nonnull %i.ah) #11
  br label %bb.m

read_pseudodir.exit:                              ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 %i.ap(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #11
  %.fr = freeze i32 %i.aq                         ; 3 uses
  %i.ar = icmp slt i32 %.fr, 0
  br i1 %i.ar, label %bb.k, label %bb.m

bb.k:                                             ; preds = %read_pseudodir.exit
  %i.as = icmp eq i32 %.fr, -2
  br i1 %i.as, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.c, %bb.k
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
end_hunk_0
