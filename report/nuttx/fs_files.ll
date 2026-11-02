Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fs_files?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"/fs/inode/fs_files.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"filep\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"fds\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -24, -2147483648) i32 @fdlist_dup3(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq i32 %1, %2
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 3
  %.not = icmp samesign ult i32 %2, %i.h
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i32 %2, 3
  %i.j = add nuw nsw i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call fastcc i32 @fdlist_extend(ptr noundef nonnull %0, i64 noundef %i.k) #13 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = call i32 @fdlist_get2(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.a, align 8              ; 2 uses
  call fastcc void @fdlist_install(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.p, i32 noundef %3) #13
  %i.q = call i32 @file_put(ptr noundef %i.p) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ %2, %bb.f ], [ -22, %bb.a ], [ -9, %bb.b ], [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2041) i32 @fdlist_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 3
  ret i32 %i.d
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc range(i32 -24, 1) i32 @fdlist_extend(ptr nofree noundef captures(address) %0, i64 noundef range(i64 -2147483647, 2147483648) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1               ; 4 uses
  %i.d = zext i8 %i.c to i64                      ; 3 uses
  %.not = icmp ugt i64 %1, %i.d
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = zext i8 %i.c to i32                      ; 3 uses
  %i.f = icmp ugt i8 %i.c, 31
  br i1 %i.f, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nsw i64 %1, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #14 ; 8 uses
  %.not52 = icmp eq ptr %i.h, null
  br i1 %.not52, label %bb.d, label %.preheader64, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @.str.2) #15
  unreachable

.preheader64:                                     ; preds = %bb.c, %bb.e
  %indvars.iv77.in = phi i32 [ %indvars.iv77, %bb.e ], [ %i.e, %bb.c ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.d, %bb.c ] ; 5 uses
  %i.i = tail call noalias dereferenceable_or_null(128) ptr @zalloc(i64 noundef 128) #16 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store ptr %i.i, ptr %i.j, align 8
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.preheader64
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %.not59.not68 = icmp samesign ugt i32 %i.l, %i.e
  br i1 %.not59.not68, label %.lr.ph70.preheader, label %._crit_edge71

.lr.ph70.preheader:                               ; preds = %.preheader
  %i.m = zext nneg i8 %i.c to i64
  br label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %.lr.ph70
  %indvars.iv82 = phi i64 [ %indvars.iv, %.lr.ph70.preheader ], [ %indvars.iv.next83, %.lr.ph70 ]
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -1 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next83
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @free(ptr noundef %i.o) #13
  %.not59.not = icmp sgt i64 %indvars.iv.next83, %i.m
  br i1 %.not59.not, label %.lr.ph70, label %._crit_edge71, !llvm.loop !12

._crit_edge71:                                    ; preds = %.lr.ph70, %.preheader
  tail call void @free(ptr noundef nonnull %i.h) #13
  br label %bb.m

bb.e:                                             ; preds = %.preheader64
  %indvars.iv77 = add i32 %indvars.iv77.in, 1     ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %1
  br i1 %exitcond.not, label %bb.f, label %.preheader64, !llvm.loop !13

bb.f:                                             ; preds = %bb.e
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #12, !srcloc !9
  %i.q = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !10
  %i.r = load i8, ptr %i.b, align 1
  %i.s = zext i8 %i.r to i64                      ; 2 uses
  %.not54 = icmp samesign ugt i64 %1, %i.s
  br i1 %.not54, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = and i64 %i.q, 512
  %.not62 = icmp eq i64 %i.t, 0
  br i1 %.not62, label %up_irq_restore.exit61, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !11
  br label %up_irq_restore.exit61

up_irq_restore.exit61:                            ; preds = %bb.g, %bb.h
  %.not5866 = icmp samesign ult i32 %i.p, %i.e
  br i1 %.not5866, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %up_irq_restore.exit61
  %wide.trip.count = zext i32 %indvars.iv77 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv74 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next75, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv74
  %i.v = load ptr, ptr %i.u, align 8
  call void @free(ptr noundef %i.v) #13
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond80.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %up_irq_restore.exit61
  call void @free(ptr noundef nonnull %i.h) #13
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not55 = icmp eq ptr %i.x, null
  br i1 %.not55, label %memcpy.inline.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = shl nuw nsw i64 %i.s, 3
  %i.z = call ptr @memcpy(ptr noundef nonnull %i.h, ptr noundef nonnull %i.x, i64 noundef range(i64 0, 2041) %i.y) #13 ; 0 uses
  %.pre = load ptr, ptr %i.w, align 8
  br label %memcpy.inline.exit

memcpy.inline.exit:                               ; preds = %bb.j, %bb.i
  %i.aa = phi ptr [ %.pre, %bb.j ], [ null, %bb.i ] ; 3 uses
  store ptr %i.h, ptr %i.w, align 8
  %i.ab = trunc i64 %1 to i8
  store i8 %i.ab, ptr %i.b, align 1
  %i.ac = and i64 %i.q, 512
  %.not63 = icmp eq i64 %i.ac, 0
  br i1 %.not63, label %up_irq_restore.exit, label %bb.k

bb.k:                                             ; preds = %memcpy.inline.exit
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !11
  br label %up_irq_restore.exit

up_irq_restore.exit:                              ; preds = %memcpy.inline.exit, %bb.k
  %.not56 = icmp eq ptr %i.aa, null
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not57 = icmp eq ptr %i.aa, %i.ad
  %or.cond60 = select i1 %.not56, i1 true, i1 %.not57
  br i1 %or.cond60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %up_irq_restore.exit
  call void @free(ptr noundef nonnull %i.aa) #13
  br label %bb.m

bb.m:                                             ; preds = %up_irq_restore.exit, %bb.l, %bb.b, %bb.a, %._crit_edge, %._crit_edge71
  %.046 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.a ], [ -24, %bb.b ], [ -23, %._crit_edge71 ], [ 0, %bb.l ], [ 0, %up_irq_restore.exit ]
  ret i32 %.046
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -22, 1) i32 @fdlist_get2(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3
  %.not = icmp samesign ult i32 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i32 %1, 3
  %i.h = and i32 %1, 7
  tail call fastcc void @fdlist_get_by_index(ptr noundef nonnull %0, i32 noundef %i.g, i32 noundef %i.h, ptr noundef %2, ptr noundef %3) #13
  %i.i = load ptr, ptr %2, align 8
  %i.j = icmp eq ptr %i.i, null
  %. = select i1 %i.j, i32 -9, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -9, %bb.b ], [ -22, %bb.a ], [ %., %bb.d ], [ -9, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc void @fdlist_install(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = sdiv i32 %1, 8
  %i.c = srem i32 %1, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #12, !srcloc !9
  %i.d = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = sext i32 %i.c to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  store ptr %2, ptr %i.k, align 8
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %file_ref.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 838, ptr noundef nonnull @.str.1) #15
  unreachable

file_ref.exit:                                    ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = lshr i32 %3, 19
  %i.q = trunc i32 %i.p to i8
  %i.r = and i8 %i.q, 1
  store i8 %i.r, ptr %i.o, align 8
  %i.s = and i64 %i.d, 512
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %up_irq_restore.exit, label %bb.c

bb.c:                                             ; preds = %file_ref.exit
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !11
  br label %up_irq_restore.exit

up_irq_restore.exit:                              ; preds = %file_ref.exit, %bb.c
  %i.t = call i32 @file_put(ptr noundef %i.l) #13 ; 0 uses
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @file_put(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = atomicrmw volatile sub ptr %i.b, i32 1 acq_rel, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @file_close(ptr noundef nonnull %0) #17
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @fdlist_init(ptr noundef initializes((1, 2)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.b, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @fdlist_free(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %.not19 = icmp eq i8 %i.b, 0
  br i1 %.not19, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = zext i8 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.lr.ph
  %indvars.iv = phi i64 [ %i.d, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %indvars.iv.next.tr = trunc nsw i64 %indvars.iv.next to i32
  %i.e = shl nsw i32 %indvars.iv.next.tr, 3
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.016 = phi i32 [ 7, %.preheader ], [ %i.h, %bb.b ] ; 3 uses
  %i.f = add nuw nsw i32 %.016, %i.e
  %i.g = tail call i32 @fdlist_close(ptr noundef %0, i32 noundef %i.f) #13 ; 0 uses
  %i.h = add nsw i32 %.016, -1
end_hunk_0
