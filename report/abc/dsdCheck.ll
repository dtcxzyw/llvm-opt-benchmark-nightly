Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dsdCheck?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pCache = internal unnamed_addr global ptr null, align 8

; Function Attrs: nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @Dsd_CheckCacheAllocate(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %calloc = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 3 uses
  store ptr %calloc, ptr @pCache, align 8, !tbaa !10
  %i.a = add i32 %0, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.a
  %.012.i = phi i32 [ %i.a, %bb.a ], [ %i.b, %.critedge.i.backedge ] ; 2 uses
  %i.b = add i32 %.012.i, 1                       ; 7 uses
  %.not.i = trunc i32 %i.b to i1
  br i1 %.not.i, label %.preheader.i, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i
  %.not15.i = icmp ult i32 %i.b, 9
  br i1 %.not15.i, label %Dsd_CheckCacheClear.exit.a, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add nuw nsw i32 %.01116.i, 2             ; 3 uses
  %i.d = mul nuw nsw i32 %i.c, %i.c
  %.not.i.a = icmp ugt i32 %i.d, %i.b
  br i1 %.not.i.a, label %Dsd_CheckCacheClear.exit.a, label %.lr.ph.i, !llvm.loop !17

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.01116.i = phi i32 [ %i.c, %bb.b ], [ 3, %.preheader.i ] ; 2 uses
  %i.e = urem i32 %i.b, %.01116.i
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge.i.backedge, label %bb.b

Dsd_CheckCacheClear.exit.a:                       ; preds = %.preheader.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store i32 %i.b, ptr %i.g, align 8, !tbaa !13
  %i.h = zext nneg i32 %i.b to i64
  %i.i = mul nuw nsw i64 %i.h, 40
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #9 ; 2 uses
  store ptr %i.j, ptr %calloc, align 8, !tbaa !14
  %1 = icmp ult i32 %.012.i, 2147483647
  br i1 %1, label %.lr.ph.i7, label %Dsd_CheckCacheClear.exit

.lr.ph.i7:                                        ; preds = %Dsd_CheckCacheClear.exit.a
  store ptr null, ptr %i.j, align 8, !tbaa !16
  br label %Dsd_CheckCacheClear.exit

Dsd_CheckCacheClear.exit:                         ; preds = %Dsd_CheckCacheClear.exit.a, %.lr.ph.i7
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Dsd_CheckCacheDeallocate() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @pCache, align 8, !tbaa !10 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #10
  store ptr null, ptr @pCache, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Dsd_CheckCacheClear() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @pCache, align 8, !tbaa !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14
  store ptr null, ptr %i.e, align 8, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Dsd_CheckRootFunctionIdentity(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 5 uses
  %i.c = icmp eq ptr %3, %i.b
  %i.d = icmp eq ptr %4, %i.b
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, %2
  %i.f = zext i1 %i.e to i32
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = xor i64 %i.g, 1
  %i.i = inttoptr i64 %i.h to ptr                 ; 6 uses
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %2 to i64
  %i.l = xor i64 %i.k, 1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = tail call i32 @Cudd_bddLeq(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %i.m) #10
  br label %bb.av

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %1, %i.b
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @Cudd_bddLeq(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %2) #10
  br label %bb.av

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %2, %i.i
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = ptrtoint ptr %1 to i64
  %i.s = xor i64 %i.r, 1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call i32 @Cudd_bddLeq(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %i.t) #10
  br label %bb.av

bb.i:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, %i.b
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i32 @Cudd_bddLeq(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %1) #10
  br label %bb.av

bb.k:                                             ; preds = %bb.i
  %i.x = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.y = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.z = add i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 12582917
  %i.ab = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = mul i64 %i.ac, 4256249
  %i.ae = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.af = add i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, 741457
  %i.ah = load ptr, ptr @pCache, align 8, !tbaa !10 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !13
  %i.ak = sext i32 %i.aj to i64
  %i.al = urem i64 %i.ag, %i.ak
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.an = and i64 %i.al, 4294967295               ; 2 uses
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.an ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.at = icmp eq ptr %i.as, %2
  br i1 %i.at, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16
  %i.aw = icmp eq ptr %i.av, %3
  br i1 %i.aw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16
  %i.az = icmp eq ptr %i.ay, %4
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !36
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !16
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = trunc i64 %i.bf to i32
  br label %bb.av

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bh = and i64 %i.x, -2
  %i.bi = inttoptr i64 %i.bh to ptr               ; 5 uses
  %i.bj = and i64 %i.y, -2
  %i.bk = inttoptr i64 %i.bj to ptr               ; 5 uses
  %i.bl = and i64 %i.ab, -2
  %i.bm = inttoptr i64 %i.bl to ptr               ; 5 uses
  %i.bn = and i64 %i.ae, -2
  %i.bo = inttoptr i64 %i.bn to ptr               ; 5 uses
  %i.bp = load i32, ptr %i.bi, align 8, !tbaa !37 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 2147483647
  br i1 %i.bq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38
  %i.bt = zext i32 %i.bp to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !39
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bw = phi i32 [ %i.bv, %bb.q ], [ 2147483647, %bb.p ] ; 2 uses
  %i.bx = load i32, ptr %i.bk, align 8, !tbaa !37 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 2147483647
  br i1 %i.by, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !38
  %i.cb = zext i32 %i.bx to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !39
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ce = phi i32 [ %i.cd, %bb.s ], [ 2147483647, %bb.r ] ; 2 uses
  %i.cf = load i32, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 2147483647
  br i1 %i.cg, label %bb.v, label %bb.u
end_hunk_0
