Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/prof_stack_range?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"/proc/%d/task/%d/maps\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @je_prof_thread_stack_range(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 10 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = tail call i32 @getpid() #7
  %i.e = tail call i32 @gettid() #7
  %i.f = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.c, i64 noundef 64, ptr noundef nonnull @.str, i32 noundef %i.d, i32 noundef %i.e) #7 ; 0 uses
  store i64 0, ptr %2, align 8, !tbaa !16
  store i64 0, ptr %1, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.g = ptrtoint ptr %i.a to i64
  br label %.outer

.outer:                                           ; preds = %bb.g, %bb.a
  %.058.i.ph = phi i32 [ %i.j, %bb.g ], [ -1, %bb.a ] ; 8 uses
  %.054.i.ph = phi i64 [ %i.n, %bb.g ], [ 0, %bb.a ]
  %.051.i.ph = phi i1 [ false, %bb.g ], [ true, %bb.a ]
  %.051.i.ph.a = phi ptr [ %i.a, %bb.g ], [ null, %bb.a ]
  %i.h = icmp slt i32 %.058.i.ph, 0
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.054.i = phi i64 [ %.054.i.ph, %.outer ], [ %.054.i.be, %.backedge ] ; 7 uses
  %.051.i = phi i1 [ %.051.i.ph, %.outer ], [ %.051.i.be, %.backedge ]
  %.051.i.a = phi ptr [ %.051.i.ph.a, %.outer ], [ %.051.i.be.a, %.backedge ] ; 5 uses
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = call i64 (i64, ...) @syscall(i64 noundef 2, ptr noundef nonnull %i.c, i32 noundef 0) #7
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__errno_location() #8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  br label %prof_mapping_containing_addr.exit

bb.e:                                             ; preds = %bb.c
  %i.n = call i64 @je_malloc_read_fd(i32 noundef %i.j, ptr noundef nonnull %i.a, i64 noundef 4096) #7 ; 3 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__errno_location() #8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  br label %.thread.i

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %.thread.i, label %.outer

bb.h:                                             ; preds = %bb.b
  br i1 %.051.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.s = call i64 @je_malloc_read_fd(i32 noundef %.058.i.ph, ptr noundef nonnull %i.a, i64 noundef 4096) #7 ; 5 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @__errno_location() #8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  br label %.thread.i

bb.k:                                             ; preds = %bb.i
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = call ptr @memchr(ptr noundef nonnull %i.a, i32 noundef 10, i64 noundef %i.s) #9 ; 2 uses
  %.not80.i = icmp eq ptr %i.x, null
  br i1 %.not80.i, label %.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %.neg81.i = add i64 %i.s, %i.g
  %i.aa = sub i64 %.neg81.i, %i.z
  br label %.backedge

bb.n:                                             ; preds = %bb.h
  %i.ab = icmp slt i64 %.054.i, 34
  br i1 %i.ab, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.051.i.a, i64 %.054.i, i1 false)
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 %.054.i
  %i.ad = sub i64 4096, %.054.i
  %i.ae = call i64 @je_malloc_read_fd(i32 noundef %.058.i.ph, ptr noundef nonnull %i.ac, i64 noundef %i.ad) #7 ; 3 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call ptr @__errno_location() #8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !17
  br label %.thread.i

bb.q:                                             ; preds = %bb.o
  %i.ai = icmp eq i64 %i.ae, 0
  %i.aj = add nsw i64 %i.ae, %.054.i
  br i1 %i.ai, label %.thread.i, label %.backedge

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %.051.i.a, ptr %i.b, align 8, !tbaa !14
  %i.ak = call fastcc i64 @strtoull_hex(ptr noundef nonnull %.051.i.a, ptr noundef nonnull %i.b) ; 2 uses
  %.not.i = icmp ult i64 %0, %i.ak
  br i1 %.not.i, label %.thread89.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !14
  %i.an = call fastcc i64 @strtoull_hex(ptr noundef nonnull %i.am, ptr noundef null) ; 2 uses
  %.not78.i = icmp ult i64 %0, %i.an
  br i1 %.not78.i, label %bb.t, label %.thread89.i

.thread89.i:                                      ; preds = %bb.s, %bb.r
  %i.ao = call ptr @memchr(ptr noundef nonnull %.051.i.a, i32 noundef 10, i64 noundef %.054.i) #9 ; 2 uses
  %.not79.i = icmp eq ptr %i.ao, null             ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.051.i.a to i64
  %.neg.i = sub i64 %i.ar, %i.aq
  %i.as = select i1 %.not79.i, i64 0, i64 %.neg.i
  %.256.i = add i64 %i.as, %.054.i
  %.152.i = select i1 %.not79.i, ptr null, ptr %i.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.backedge

.backedge:                                        ; preds = %.thread89.i, %bb.q, %bb.m, %bb.l
  %.054.i.be = phi i64 [ %i.aj, %bb.q ], [ %.256.i, %.thread89.i ], [ %i.aa, %bb.m ], [ %i.s, %bb.l ]
  %.051.i.be = phi i1 [ false, %bb.q ], [ %.not79.i, %.thread89.i ], [ false, %bb.m ], [ true, %bb.l ]
  %.051.i.be.a = phi ptr [ %i.a, %bb.q ], [ %.152.i, %.thread89.i ], [ %i.y, %bb.m ], [ null, %bb.l ]
  br label %bb.b

bb.t:                                             ; preds = %bb.s
  store i64 %i.ak, ptr %1, align 8, !tbaa !16
  store i64 %i.an, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.thread.i

.thread.i:                                        ; preds = %bb.q, %bb.k, %bb.g, %bb.t, %bb.p, %bb.j, %bb.f
  %.6.i = phi i32 [ %i.q, %bb.f ], [ 0, %bb.t ], [ %i.v, %bb.j ], [ %i.ah, %bb.p ], [ 2, %bb.g ], [ 2, %bb.k ], [ 2, %bb.q ]
  %.260.i = phi i32 [ %i.j, %bb.f ], [ %.058.i.ph, %bb.t ], [ %.058.i.ph, %bb.j ], [ %.058.i.ph, %bb.p ], [ %.058.i.ph, %bb.k ], [ %.058.i.ph, %bb.q ], [ %i.j, %bb.g ]
  %i.at = call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef range(i32 0, -2147483648) %.260.i) #7 ; 0 uses
  br label %prof_mapping_containing_addr.exit

prof_mapping_containing_addr.exit:                ; preds = %bb.d, %.thread.i
  %.066.i = phi i32 [ %i.m, %bb.d ], [ %.6.i, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 %.066.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @je_malloc_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @gettid() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i64 @je_malloc_read_fd(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i64 @strtoull_hex(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !18      ; 3 uses
  %i.b = sext i8 %i.a to i64
  %i.c = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.a, -97
  %or.cond5 = icmp ult i8 %i.d, 6
  br i1 %or.cond5, label %bb.c, label %bb.bk

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ -48, %bb.a ], [ -87, %bb.b ]
  %.2.ph = add nsw i64 %.sink, %i.b               ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18    ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = add i8 %i.f, -48
  %or.cond.1 = icmp ult i8 %i.h, 10
  br i1 %or.cond.1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i8 %i.f, -97
  %or.cond5.1 = icmp ult i8 %i.i, 6
  br i1 %or.cond5.1, label %bb.e, label %bb.bk

bb.e:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %.2.ph, 4
  %i.k = add nsw i32 %i.g, -87
  %i.l = zext nneg i32 %i.k to i64
  %i.m = add nuw nsw i64 %i.j, %i.l
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.n = shl nuw nsw i64 %.2.ph, 4
  %i.o = add nsw i32 %i.g, -48
  %i.p = zext nneg i32 %i.o to i64
  %i.q = or disjoint i64 %i.n, %i.p
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.ph.1 = phi i64 [ %i.m, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18    ; 3 uses
  %i.t = sext i8 %i.s to i32                      ; 2 uses
  %i.u = add i8 %i.s, -48
  %or.cond.2 = icmp ult i8 %i.u, 10
  br i1 %or.cond.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add i8 %i.s, -97
  %or.cond5.2 = icmp ult i8 %i.v, 6
  br i1 %or.cond5.2, label %bb.i, label %bb.bk

bb.i:                                             ; preds = %bb.h
  %i.w = shl nuw nsw i64 %.2.ph.1, 4
  %i.x = add nsw i32 %i.t, -87
  %i.y = zext nneg i32 %i.x to i64
  %i.z = add nuw nsw i64 %i.w, %i.y
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.aa = shl nuw nsw i64 %.2.ph.1, 4
  %i.ab = add nsw i32 %i.t, -48
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = or disjoint i64 %i.aa, %i.ac
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.ph.2 = phi i64 [ %i.z, %bb.i ], [ %i.ad, %bb.j ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18  ; 3 uses
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %i.ah = add i8 %i.af, -48
  %or.cond.3 = icmp ult i8 %i.ah, 10
  br i1 %or.cond.3, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add i8 %i.af, -97
  %or.cond5.3 = icmp ult i8 %i.ai, 6
  br i1 %or.cond5.3, label %bb.m, label %bb.bk

bb.m:                                             ; preds = %bb.l
  %i.aj = shl nuw nsw i64 %.2.ph.2, 4
  %i.ak = add nsw i32 %i.ag, -87
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.aj, %i.al
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.an = shl nuw nsw i64 %.2.ph.2, 4
  %i.ao = add nsw i32 %i.ag, -48
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = or disjoint i64 %i.an, %i.ap
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.ph.3 = phi i64 [ %i.am, %bb.m ], [ %i.aq, %bb.n ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18  ; 3 uses
  %i.at = sext i8 %i.as to i32                    ; 2 uses
  %i.au = add i8 %i.as, -48
  %or.cond.4 = icmp ult i8 %i.au, 10
  br i1 %or.cond.4, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = add i8 %i.as, -97
  %or.cond5.4 = icmp ult i8 %i.av, 6
  br i1 %or.cond5.4, label %bb.q, label %bb.bk

bb.q:                                             ; preds = %bb.p
  %i.aw = shl nuw nsw i64 %.2.ph.3, 4
  %i.ax = add nsw i32 %i.at, -87
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = add nuw nsw i64 %i.aw, %i.ay
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ba = shl nuw nsw i64 %.2.ph.3, 4
  %i.bb = add nsw i32 %i.at, -48
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = or disjoint i64 %i.ba, %i.bc
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.ph.4 = phi i64 [ %i.az, %bb.q ], [ %i.bd, %bb.r ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !18  ; 3 uses
  %i.bg = sext i8 %i.bf to i32                    ; 2 uses
  %i.bh = add i8 %i.bf, -48
  %or.cond.5 = icmp ult i8 %i.bh, 10
  br i1 %or.cond.5, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = add i8 %i.bf, -97
  %or.cond5.5 = icmp ult i8 %i.bi, 6
  br i1 %or.cond5.5, label %bb.u, label %bb.bk

bb.u:                                             ; preds = %bb.t
  %i.bj = shl nuw nsw i64 %.2.ph.4, 4
  %i.bk = add nsw i32 %i.bg, -87
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = add nuw nsw i64 %i.bj, %i.bl
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bn = shl nuw nsw i64 %.2.ph.4, 4
  %i.bo = add nsw i32 %i.bg, -48
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = or disjoint i64 %i.bn, %i.bp
end_hunk_0
