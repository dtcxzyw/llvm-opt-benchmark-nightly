Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/aset?download=true
inline.NumInlined: 21
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@AllocSetAllocFromNewBlock:bb.a
  %i.av = icmp ult i64 %.071, %i.au
  %i.aw = shl i64 %.071, 1
  br i1 %i.av, label %bb.c, label %bb.d, !llvm.loop !13

bb.d:                                             ; preds = %bb.c
  %i.ax = tail call noalias ptr @malloc(i64 noundef %.071) #15 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null                 ; 2 uses
  %i.az = icmp ugt i64 %.071, 1048576
  %i.ba = and i1 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph89, label %._crit_edge90

.lr.ph89:                                         ; preds = %bb.d, %bb.e
  %.187 = phi i64 [ %i.bb, %bb.e ], [ %.071, %bb.d ] ; 2 uses
  %i.bb = lshr i64 %.187, 1                       ; 4 uses
  %i.bc = icmp ult i64 %i.bb, %i.au
  br i1 %i.bc, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph89
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bb) #15 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null                 ; 2 uses
  %i.bf = icmp ugt i64 %.187, 2097153
  %i.bg = and i1 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph89, label %._crit_edge90, !llvm.loop !14

._crit_edge90:                                    ; preds = %bb.e, %bb.d
  %.073.lcssa = phi ptr [ %i.ax, %bb.d ], [ %i.bd, %bb.e ] ; 10 uses
  %.1.lcssa = phi i64 [ %.071, %bb.d ], [ %i.bb, %bb.e ] ; 2 uses
  %.lcssa = phi i1 [ %i.ay, %bb.d ], [ %i.be, %bb.e ]
  br i1 %.lcssa, label %.thread, label %bb.f

.thread:                                          ; preds = %.lr.ph89, %._crit_edge90
  %i.bh = tail call ptr @MemoryContextAllocationFailure(ptr noundef %0, i64 noundef %1, i32 noundef %2) #14
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge90
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = add i64 %i.bj, %.1.lcssa
  store i64 %i.bk, ptr %i.bi, align 8
  store ptr %0, ptr %.073.lcssa, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 24 ; 3 uses
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 %.1.lcssa
  %i.bo = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 32
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 8
  store ptr null, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 16
  store ptr %i.bq, ptr %i.br, align 8
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %.073.lcssa, ptr %i.bs, align 8
  %.pre = load ptr, ptr %i.bm, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bt = phi ptr [ %.pre, %bb.g ], [ %i.bl, %bb.f ] ; 4 uses
  store ptr %.073.lcssa, ptr %i.a, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.at
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  store ptr %i.bv, ptr %i.bm, align 8
  %i.bw = sext i32 %3 to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = ptrtoint ptr %.073.lcssa to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = shl i64 %i.bz, 34
  %i.cb = shl nsw i64 %i.bw, 5
  %i.cc = or i64 %i.cb, %i.ca
  %i.cd = or disjoint i64 %i.cc, 3
  store i64 %i.cd, ptr %i.bt, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %.074 = phi ptr [ %i.bh, %.thread ], [ %i.ce, %bb.h ]
  ret ptr %.074
}

; Function Attrs: nounwind uwtable
define dso_local void @AllocSetFree(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 4 uses
  %.val = load i64, ptr %i.a, align 8             ; 3 uses
  %i.b = and i64 %.val, 16
  %.not37 = icmp eq i64 %i.b, 0
  br i1 %.not37, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 497
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %0, i64 -24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not33 = icmp eq ptr %i.h, %i.j
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1125, ptr noundef nonnull @__func__.AllocSetFree) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not34 = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds i8, ptr %0, i64 -32
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.p, ptr %i.r, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not35 = icmp eq ptr %i.p, null
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.c to i64
  %.neg = sub i64 %i.w, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %.neg, %i.y
  store i64 %i.z, ptr %i.x, align 8
  tail call void @free(ptr noundef nonnull %i.c) #14
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.aa = lshr i64 %.val, 34
  %i.ab = and i64 %i.aa, 1073741822
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = lshr i64 %.val, 5
  %i.ag = and i64 %i.af, 1073741823
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  store ptr %i.aj, ptr %0, align 8
  store ptr %i.a, ptr %i.ai, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @AllocSetRealloc(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %.val = load i64, ptr %i.a, align 8             ; 3 uses
  %i.b = and i64 %.val, 16
  %.not79 = icmp eq i64 %i.b, 0
  br i1 %.not79, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %.not72 = icmp eq ptr %i.d, null
  br i1 %.not72, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 497
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %0, i64 -24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16
  %i.j = load ptr, ptr %i.i, align 8
  %.not73 = icmp eq ptr %i.h, %i.j
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1267, ptr noundef nonnull @__func__.AllocSetRealloc) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = icmp ugt i64 %1, 1073741823
  br i1 %i.m, label %bb.g, label %MemoryContextCheckSize.exit, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.n = trunc i32 %2 to i1
  %i.o = icmp sgt i64 %1, -1
  %or.cond.i = and i1 %i.o, %i.n
  br i1 %or.cond.i, label %MemoryContextCheckSize.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @MemoryContextSizeFailure(ptr noundef nonnull %i.d, i64 noundef %1, i32 noundef %2) #17
  unreachable

MemoryContextCheckSize.exit:                      ; preds = %bb.f, %bb.g
  %i.p = add nuw i64 %1, 7
  %i.q = and i64 %i.p, -8
  %i.r = add nuw i64 %i.q, 48                     ; 3 uses
  %i.s = tail call ptr @realloc(ptr noundef nonnull %i.c, i64 noundef %i.r) #18 ; 10 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %MemoryContextCheckSize.exit
  %i.u = tail call ptr @MemoryContextAllocationFailure(ptr noundef nonnull %i.d, i64 noundef %1, i32 noundef %2) #14
  br label %bb.x

bb.j:                                             ; preds = %MemoryContextCheckSize.exit
  %i.v = ptrtoint ptr %i.h to i64
  %i.w = ptrtoint ptr %i.c to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %.neg = add i64 %i.r, %i.w
  %i.z = sub i64 %.neg, %i.v
  %i.aa = add i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not74 = icmp eq ptr %i.ag, null
  br i1 %.not74, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.s, ptr %i.ah, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.s, ptr %i.ai, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not75 = icmp eq ptr %i.ak, null
  br i1 %.not75, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.s, ptr %i.al, align 8
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  %i.am = lshr i64 %.val, 34
  %i.an = and i64 %i.am, 1073741822
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.a, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8            ; 6 uses
  %i.ar = lshr i64 %.val, 5
  %i.as = and i64 %i.ar, 1073741823
  %i.at = shl i64 8, %i.as                        ; 2 uses
  %.not = icmp ult i64 %i.at, %1
  br i1 %.not, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 188
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp ugt i64 %1, %i.aw
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = tail call fastcc ptr @AllocSetAllocLarge(ptr noundef nonnull %i.aq, i64 noundef %1, i32 noundef %2)
  br label %AllocSetAlloc.exit

bb.r:                                             ; preds = %bb.p
  %i.az = icmp samesign ugt i64 %1, 8
  %i.ba = trunc nuw i64 %1 to i32
  %i.bb = add i32 %i.ba, -1
  %i.bc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bb, i1 true)
  %i.bd = sub nsw i32 29, %i.bc
  %.0.i.i = select i1 %i.az, i32 %i.bd, i32 0     ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.bf = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.bg, align 8
  br label %AllocSetAlloc.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.bk = zext nneg i32 %.0.i.i to i64
  %i.bl = shl i64 8, %i.bk                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 4 uses
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = add nuw i64 %i.bl, 8
  %i.bw = icmp ult i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.u, label %bb.v, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.bx = tail call fastcc ptr @AllocSetAllocFromNewBlock(ptr noundef nonnull %i.aq, i64 noundef %1, i32 noundef %2, i32 noundef %.0.i.i)
  br label %AllocSetAlloc.exit

bb.v:                                             ; preds = %bb.t
  %i.by = getelementptr i8, ptr %i.br, i64 %i.bl
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %i.bq, align 8
  %i.ca = ptrtoint ptr %i.bn to i64
  %i.cb = sub i64 %i.bt, %i.ca
  %i.cc = shl i64 %i.cb, 34
  %i.cd = shl nsw i64 %i.bf, 5
  %i.ce = or i64 %i.cd, %i.cc
  %i.cf = or disjoint i64 %i.ce, 3
  store i64 %i.cf, ptr %i.br, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  br label %AllocSetAlloc.exit.thread

AllocSetAlloc.exit:                               ; preds = %bb.q, %bb.u
  %.0.i = phi ptr [ %i.ay, %bb.q ], [ %i.bx, %bb.u ] ; 2 uses
  %i.ch = icmp eq ptr %.0.i, null
  br i1 %i.ch, label %bb.w, label %AllocSetAlloc.exit.thread

bb.w:                                             ; preds = %AllocSetAlloc.exit
  %i.ci = tail call ptr @MemoryContextAllocationFailure(ptr noundef nonnull %i.aq, i64 noundef %1, i32 noundef %2) #14
  br label %bb.x

AllocSetAlloc.exit.thread:                        ; preds = %bb.v, %bb.s, %AllocSetAlloc.exit
  %.0.i78 = phi ptr [ %.0.i, %AllocSetAlloc.exit ], [ %i.cg, %bb.v ], [ %i.bi, %bb.s ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i78, ptr nonnull align 8 %0, i64 %i.at, i1 false)
  tail call void @AllocSetFree(ptr noundef nonnull %0)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %AllocSetAlloc.exit.thread, %bb.o, %bb.i, %bb.m, %bb.n
  %.2 = phi ptr [ %0, %bb.o ], [ %i.ae, %bb.n ], [ %i.u, %bb.i ], [ %i.ae, %bb.m ], [ %i.ci, %bb.w ], [ %.0.i78, %AllocSetAlloc.exit.thread ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare ptr @MemoryContextAllocationFailure(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @AllocSetGetChunkContext(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.b = and i64 %.val, 16
  %.not = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds i8, ptr %0, i64 -48
  %i.d = lshr i64 %.val, 34
  %i.e = and i64 %i.d, 1073741822
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.f
  %.0 = select i1 %.not, ptr %i.g, ptr %i.c
  %i.h = load ptr, ptr %.0, align 8
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @AllocSetGetChunkSpace(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.b = and i64 %.val, 16
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %.val, 5
  %i.i = and i64 %i.h, 1073741823
  %i.j = shl i64 8, %i.i
  %i.k = add nuw i64 %i.j, 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @AllocSetIsEmpty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
end_hunk_0
