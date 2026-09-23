Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fs_epoll?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.inode_ops_u = type { ptr }
%struct.sigset_s = type { [2 x i32] }

@g_epoll_ops = internal constant %struct.file_operations { ptr @epoll_do_open, ptr @epoll_do_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @epoll_do_poll, ptr null, ptr null, ptr null }, align 8
@g_epoll_inode = internal global { ptr, ptr, ptr, i32, i16, [2 x i8], %union.inode_ops_u, i32, [4 x i8], i64, ptr, [1 x i8], [7 x i8] } { ptr null, ptr null, ptr null, i32 1, i16 1, [2 x i8] zeroinitializer, %union.inode_ops_u { ptr @g_epoll_ops }, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, [1 x i8] zeroinitializer, [7 x i8] zeroinitializer }, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, -2147483648) i32 @epoll_create(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @epoll_do_create(i32 noundef %0, i32 noundef 0) #10
  ret i32 %i.a
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @epoll_do_create(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %0, i32 1) ; 2 uses
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = mul nuw nsw i64 %i.b, 88
  %i.d = add nuw nsw i64 %i.c, 152
  %i.e = tail call noalias ptr @zalloc(i64 noundef %i.d) #11 ; 16 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #12, !srcloc !7
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.h, label %.sink.split

bb.c:                                             ; preds = %bb.a
  store i32 %i.a, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.j = tail call i32 @nxmutex_init(ptr noundef nonnull %i.i) #13 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.l = tail call i32 @nxsem_init(ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %2 = getelementptr inbounds nuw i8, ptr %i.e, <4 x i64> <i64 72, i64 72, i64 88, i64 88>
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store <4 x ptr> %2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 3 uses
  store ptr %i.o, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 3 uses
  store ptr %i.q, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 4 uses
  store ptr %i.s, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %i.u = phi ptr [ %i.s, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.m, i64 %indvars.iv ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.w, align 8
  store ptr %i.s, ptr %i.v, align 8
  store ptr %i.v, ptr %i.u, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !9

bb.e:                                             ; preds = %bb.d
  store ptr %i.v, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = tail call i32 @file_allocate_from_inode(ptr noundef nonnull @g_epoll_inode, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %i.e, i32 noundef 0) #13 ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call i32 @nxsem_destroy(ptr noundef nonnull %i.i) #13 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.e) #10
  %i.ad = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #12, !srcloc !7
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sub nsw i32 0, %i.aa
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.g
  %.sink = phi i32 [ %i.af, %bb.g ], [ 12, %bb.b ]
  %i.ag = tail call ptr @__errno() #13
  store i32 %.sink, ptr %i.ag, align 4
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e, %bb.f, %bb.b
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.b ], [ %i.aa, %bb.e ], [ -1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, -2147483648) i32 @epoll_create1(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @epoll_do_create(i32 noundef 8, i32 noundef %0) #10
  ret i32 %i.a
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @epoll_close(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @close(i32 noundef %0) #13 ; 0 uses
  ret void
}

; Function Attrs: noredzone optsize
declare dso_local i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, 1) i32 @epoll_ctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call fastcc ptr @epoll_head_from_fd(i32 noundef %0, ptr noundef %i.a) #10 ; 31 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #12, !srcloc !7
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.ba, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @__errno() #13
  store i32 9, ptr %i.f, align 4
  br label %bb.ba

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = call i32 @nxsem_wait(ptr noundef nonnull %i.g) #13 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.ay, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %1, label %.loopexit296 [
    i32 1, label %bb.f
    i32 2, label %bb.w
    i32 3, label %bb.ai
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0271.in = phi ptr [ %i.j, %bb.f ], [ %.0271, %bb.h ]
  %.0271 = load ptr, ptr %.0271.in, align 8       ; 3 uses
  %.not293 = icmp eq ptr %.0271, %i.j
  br i1 %.not293, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %.0271, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, %2
  br i1 %i.m, label %.loopexit296, label %bb.g, !llvm.loop !10

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.1.in = phi ptr [ %i.n, %bb.i ], [ %.1, %bb.k ]
  %.1 = load ptr, ptr %.1.in, align 8             ; 3 uses
  %.not294 = icmp eq ptr %.1, %i.n
  br i1 %.not294, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, %2
  br i1 %i.q, label %.loopexit296, label %bb.j, !llvm.loop !11

bb.l:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.2.in = phi ptr [ %i.r, %bb.l ], [ %.2, %bb.n ]
  %.2 = load ptr, ptr %.2.in, align 8             ; 3 uses
  %.not295 = icmp eq ptr %.2, %i.r
  br i1 %.not295, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, %2
  br i1 %i.u, label %.loopexit296, label %bb.m, !llvm.loop !12

bb.o:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.w, %i.v
  br i1 %i.x, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.y = load i32, ptr %i.b, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 176
  %i.ab = add nsw i64 %i.aa, 16
  %i.ac = call noalias ptr @zalloc(i64 noundef %i.ab) #11 ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.loopexit296, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = load i32, ptr %i.b, align 8
  %i.af = shl nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr %i.ag, ptr %i.ac, align 8
  store ptr %i.ac, ptr %i.ai, align 8
  store ptr %i.ac, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.al = load i32, ptr %i.b, align 8
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %.pre = load ptr, ptr %i.an, align 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %i.ao = phi ptr [ %.pre, %.lr.ph ], [ %i.ap, %bb.r ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [88 x i8], ptr %i.ak, i64 %indvars.iv ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ao, ptr %i.aq, align 8
  store ptr %i.v, ptr %i.ap, align 8
  store ptr %i.ap, ptr %i.ao, align 8
  store ptr %i.ap, ptr %i.an, align 8
end_hunk_0
