Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/essen?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@debug = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"ESSENTIAL: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @essential(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !8      ; 4 uses
  %i.c = tail call ptr (ptr, ...) @sf_active(ptr noundef %i.a) #5 ; 0 uses
  %i.d = load i32, ptr @cube, align 8, !tbaa !11
  %i.e = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.d) #5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18
  %i.j = load i32, ptr %i.a, align 8, !tbaa !19
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx = shl nsw i64 %i.l, 2
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.033 = phi ptr [ %i.e, %.lr.ph ], [ %.1, %bb.h ] ; 3 uses
  %.02832 = phi ptr [ %i.g, %.lr.ph ], [ %i.ah, %bb.h ] ; 8 uses
  %i.p = load i32, ptr %.02832, align 4, !tbaa !4
  %i.q = and i32 %i.p, 17408
  %or.cond.not = icmp eq i32 %i.q, 1024
  br i1 %or.cond.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr (ptr, ptr, ...) @sf_join(ptr noundef nonnull %i.a, ptr noundef %i.b) #5 ; 2 uses
  %i.s = tail call ptr @cb_consensus(ptr noundef %i.r, ptr noundef nonnull %.02832) ; 2 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %i.r) #5
  %i.t = tail call ptr (ptr, ptr, ...) @cube2list(ptr noundef %i.s, ptr noundef %i.b) #5 ; 3 uses
  %i.u = tail call i32 (ptr, ptr, ...) @cube_is_covered(ptr noundef %i.t, ptr noundef nonnull %.02832) #5
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %.not15.i = icmp eq ptr %i.v, null
  br i1 %.not15.i, label %essen_cube.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.v) #5
  br label %essen_cube.exit

essen_cube.exit:                                  ; preds = %bb.c, %bb.d
  tail call void @free(ptr noundef nonnull %i.t) #5
  %.not.i.not = icmp eq i32 %i.u, 0
  tail call void (ptr, ...) @sf_free(ptr noundef %i.s) #5
  br i1 %.not.i.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %essen_cube.exit
  %i.w = load i32, ptr @debug, align 4, !tbaa !4
  %i.x = and i32 %i.w, 2
  %.not31 = icmp eq i32 %i.x, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr (ptr, ...) @pc1(ptr noundef nonnull %.02832) #5
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %i.y) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.033, ptr noundef nonnull %.02832) #5
  %i.ab = load i32, ptr %.02832, align 4, !tbaa !4
  %i.ac = and i32 %i.ab, -8193
  store i32 %i.ac, ptr %.02832, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.o, align 8, !tbaa !21
  %i.ae = add nsw i32 %i.ad, -1
  store i32 %i.ae, ptr %i.o, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %essen_cube.exit, %bb.g
  %.1 = phi ptr [ %.033, %bb.b ], [ %i.aa, %bb.g ], [ %.033, %essen_cube.exit ] ; 2 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !19
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %.02832, i64 %i.ag ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.m
  br i1 %i.ai, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.1, %bb.h ] ; 2 uses
  %i.aj = tail call ptr (ptr, ...) @sf_inactive(ptr noundef nonnull %i.a) #5
  store ptr %i.aj, ptr %0, align 8, !tbaa !8
  %i.ak = tail call ptr (ptr, ptr, ...) @sf_join(ptr noundef %i.b, ptr noundef %.0.lcssa) #5
  store ptr %i.ak, ptr %1, align 8, !tbaa !8
  tail call void (ptr, ...) @sf_free(ptr noundef %i.b) #5
  ret ptr %.0.lcssa
}

declare ptr @sf_active(...) local_unnamed_addr #1

declare ptr @sf_new(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare ptr @pc1(...) local_unnamed_addr #1

declare ptr @sf_addset(...) local_unnamed_addr #1

declare ptr @sf_inactive(...) local_unnamed_addr #1

declare ptr @sf_join(...) local_unnamed_addr #1

declare void @sf_free(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @essen_cube(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @sf_join(ptr noundef %0, ptr noundef %1) #5 ; 2 uses
  %i.b = tail call ptr @cb_consensus(ptr noundef %i.a, ptr noundef %2) ; 2 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %i.a) #5
  %i.c = tail call ptr (ptr, ptr, ...) @cube2list(ptr noundef %i.b, ptr noundef %1) #5 ; 3 uses
  %i.d = tail call i32 (ptr, ptr, ...) @cube_is_covered(ptr noundef %i.c, ptr noundef %2) #5
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.e) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.c) #5
  %.not = icmp eq i32 %i.d, 0
  %i.f = zext i1 %.not to i32
  tail call void (ptr, ...) @sf_free(ptr noundef %i.b) #5
  ret i32 %i.f
}

declare ptr @cube2list(...) local_unnamed_addr #1

declare i32 @cube_is_covered(...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @cb_consensus(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %i.c = shl nsw i32 %i.b, 1
  %i.d = load i32, ptr @cube, align 8, !tbaa !11
  %i.e = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.c, i32 noundef %i.d) #5 ; 2 uses
  %i.f = load i32, ptr @cube, align 8, !tbaa !11  ; 3 uses
  %i.g = icmp slt i32 %i.f, 33
  %i.h = add nsw i32 %i.f, -1
  %i.i = lshr i32 %i.h, 3
  %i.j = and i32 %i.i, 536870908
  %i.k = add nuw nsw i32 %i.j, 8
  %narrow = select i1 %i.g, i32 8, i32 %i.k
  %i.l = zext nneg i32 %narrow to i64
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #6
  %i.n = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.m, i32 noundef %i.f) #5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !18
  %i.r = load i32, ptr %0, align 8, !tbaa !19
  %i.s = mul nsw i32 %i.r, %i.q                   ; 2 uses
  %i.t = sext i32 %i.s to i64
  %.idx = shl nsw i64 %i.t, 2
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %i.v = icmp sgt i32 %i.s, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.030 = phi ptr [ %.1, %bb.e ], [ %i.e, %bb.a ] ; 4 uses
  %.02429 = phi ptr [ %i.ab, %bb.e ], [ %i.p, %bb.a ] ; 5 uses
  %.not28 = icmp eq ptr %.02429, %1
  br i1 %.not28, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.w = tail call i32 (ptr, ptr, ...) @cdist01(ptr noundef %.02429, ptr noundef %1) #5
  switch i32 %i.w, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.x = tail call ptr @cb_consensus_dist0(ptr noundef %.030, ptr noundef %.02429, ptr noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @consensus(ptr noundef %i.n, ptr noundef %.02429, ptr noundef %1) #5
  %i.y = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.030, ptr noundef %i.n) #5
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %.030, %bb.b ], [ %i.x, %bb.c ], [ %i.y, %bb.d ], [ %.030, %.lr.ph ] ; 2 uses
  %i.z = load i32, ptr %0, align 8, !tbaa !19
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %.02429, i64 %i.aa ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.u
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.1, %bb.e ]
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.n) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  ret ptr %.0.lcssa
}

declare ptr @set_clear(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i32 @cdist01(...) local_unnamed_addr #1

declare void @consensus(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @cb_consensus_dist0(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !22 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 6 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 3 uses
  %i.i = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %1, ptr noundef %2) #5
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @cube, align 8, !tbaa !11  ; 3 uses
  %i.k = icmp slt i32 %i.j, 33
  %i.l = add nsw i32 %i.j, -1
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 536870908
  %i.o = add nuw nsw i32 %i.n, 8
  %narrow = select i1 %i.k, i32 8, i32 %i.o
  %i.p = zext nneg i32 %narrow to i64
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #6
  %i.r = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.q, i32 noundef %i.j) #5 ; 13 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 5 uses
  %i.t = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.u = and i32 %i.t, 1023
  %i.v = load i32, ptr %i.d, align 4, !tbaa !4
  %i.w = and i32 %i.v, -1024
  %i.x = or disjoint i32 %i.w, %i.u
  store i32 %i.x, ptr %i.d, align 4, !tbaa !4
  %i.y = and i32 %i.t, 1023                       ; 2 uses
  %i.z = zext nneg i32 %i.y to i64                ; 5 uses
  %i.aa = icmp ne i32 %i.y, 0
  %.neg = sext i1 %i.aa to i64
  %i.ab = add nuw nsw i64 %i.z, 1
  %i.ac = add nsw i64 %i.ab, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.ad = sub i64 %i.e, %i.b
  %diff.check = icmp ugt i64 %i.ad, -32
  %i.ae = sub i64 %i.e, %i.a
  %diff.check98 = icmp ugt i64 %i.ae, -32
  %conflict.rdx = or i1 %diff.check, %diff.check98
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, -8                      ; 3 uses
  %i.af = sub nsw i64 %i.z, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = sub i64 %i.z, %index                    ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -12
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !tbaa !4
  %wide.load99 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -12
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -28
  %wide.load100 = load <4 x i32>, ptr %i.al, align 4, !tbaa !4
  %wide.load101 = load <4 x i32>, ptr %i.am, align 4, !tbaa !4
  %i.an = xor <4 x i32> %wide.load100, splat (i32 -1)
  %i.ao = xor <4 x i32> %wide.load101, splat (i32 -1)
  %i.ap = and <4 x i32> %wide.load, %i.an
  %i.aq = and <4 x i32> %wide.load99, %i.ao
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ag ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -12
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -28
  store <4 x i32> %i.ap, ptr %i.as, align 4, !tbaa !4
  store <4 x i32> %i.aq, ptr %i.at, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit168, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.z, %vector.memcheck ], [ %i.z, %bb.b ], [ %i.af, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = xor i32 %i.ay, -1
  %i.ba = and i32 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bc = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bc, label %scalar.ph, label %.loopexit168, !llvm.loop !26

.loopexit168:                                     ; preds = %scalar.ph, %middle.block
  %i.bd = load i32, ptr %1, align 4, !tbaa !4     ; 2 uses
  %i.be = and i32 %i.bd, 1023
  %i.bf = load i32, ptr %i.g, align 4, !tbaa !4
  %i.bg = and i32 %i.bf, -1024
  %i.bh = or disjoint i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.g, align 4, !tbaa !4
  %i.bi = and i32 %i.bd, 1023                     ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 5 uses
  %i.bk = icmp ne i32 %i.bi, 0
  %.neg169 = sext i1 %i.bk to i64
  %i.bl = add nuw nsw i64 %i.bj, 1
  %i.bm = add nsw i64 %i.bl, %.neg169             ; 3 uses
  %min.iters.check107 = icmp ult i64 %i.bm, 12
  br i1 %min.iters.check107, label %scalar.ph106.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.loopexit168
  %i.bn = sub i64 %i.h, %i.b
  %diff.check103 = icmp ugt i64 %i.bn, -32
  %i.bo = sub i64 %i.h, %i.a
  %diff.check104 = icmp ugt i64 %i.bo, -32
  %conflict.rdx105 = or i1 %diff.check103, %diff.check104
  br i1 %conflict.rdx105, label %scalar.ph106.preheader, label %vector.ph108

vector.ph108:                                     ; preds = %vector.memcheck102
  %n.vec109 = and i64 %i.bm, -8                   ; 3 uses
  %i.bp = sub nsw i64 %i.bj, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body110 ] ; 2 uses
  %i.bq = sub i64 %i.bj, %index111                ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -12
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -28
  %wide.load112 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !4
  %wide.load113 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bq ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -12
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -28
  %wide.load114 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !4
  %wide.load115 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !4
  %i.bx = and <4 x i32> %wide.load114, %wide.load112
  %i.by = and <4 x i32> %wide.load115, %wide.load113
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bq ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -12
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -28
  store <4 x i32> %i.bx, ptr %i.ca, align 4, !tbaa !4
  store <4 x i32> %i.by, ptr %i.cb, align 4, !tbaa !4
  %index.next116 = add nuw i64 %index111, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.cc, label %middle.block117, label %vector.body110, !llvm.loop !27

middle.block117:                                  ; preds = %vector.body110
  %cmp.n118 = icmp eq i64 %i.bm, %n.vec109
  br i1 %cmp.n118, label %.loopexit167, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %vector.memcheck102, %.loopexit168, %middle.block117
  %indvars.iv85.ph = phi i64 [ %i.bj, %vector.memcheck102 ], [ %i.bj, %.loopexit168 ], [ %i.bp, %middle.block117 ]
  br label %scalar.ph106

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %scalar.ph106 ], [ %indvars.iv85.ph, %scalar.ph106.preheader ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv85
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv85
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = and i32 %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv85
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !4
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -1
  %i.cj = icmp samesign ugt i64 %indvars.iv85, 1
  br i1 %i.cj, label %scalar.ph106, label %.loopexit167, !llvm.loop !28

.loopexit167:                                     ; preds = %scalar.ph106, %middle.block117
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 3 uses
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.loopexit167
  %i.cn = sext i32 %i.ck to i64
  %i.co = sub i64 %i.s, %i.a
  %diff.check121 = icmp ugt i64 %i.co, -32
  %i.cp = sub i64 %i.s, %i.h
  %diff.check124 = icmp ugt i64 %i.cp, -32
  %invariant.op = or i1 %diff.check121, %diff.check124
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv91 = phi i64 [ %i.cn, %.lr.ph.preheader ], [ %indvars.iv.next92, %bb.d ] ; 2 uses
  %.06882 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.d ]
  %.07180 = phi ptr [ %0, %.lr.ph.preheader ], [ %.172, %bb.d ] ; 2 uses
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !31
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %indvars.iv91
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !20 ; 4 uses
  %i.ct = ptrtoaddr ptr %i.cs to i64
  %i.cu = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef nonnull %i.d, ptr noundef %i.cs) #5
  %.not76 = icmp eq i32 %i.cu, 0
  br i1 %.not76, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.cv = load i32, ptr %2, align 4, !tbaa !4     ; 2 uses
  %i.cw = and i32 %i.cv, 1023
  %i.cx = load i32, ptr %i.r, align 4, !tbaa !4
  %i.cy = and i32 %i.cx, -1024
  %i.cz = or disjoint i32 %i.cy, %i.cw
  store i32 %i.cz, ptr %i.r, align 4, !tbaa !4
  %i.da = and i32 %i.cv, 1023                     ; 2 uses
  %i.db = zext nneg i32 %i.da to i64              ; 5 uses
  %i.dc = icmp ne i32 %i.da, 0
  %.neg170 = sext i1 %i.dc to i64
  %i.dd = add nuw nsw i64 %i.db, 1
  %i.de = add nsw i64 %i.dd, %.neg170             ; 3 uses
  %min.iters.check127 = icmp ult i64 %i.de, 8
  br i1 %min.iters.check127, label %scalar.ph126.preheader, label %vector.memcheck120

vector.memcheck120:                               ; preds = %bb.c
  %i.df = sub i64 %i.s, %i.ct
  %diff.check122 = icmp ugt i64 %i.df, -32
  %conflict.rdx125.reass = or i1 %diff.check122, %invariant.op
  br i1 %conflict.rdx125.reass, label %scalar.ph126.preheader, label %vector.ph128

end_hunk_0
