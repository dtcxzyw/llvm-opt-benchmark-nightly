Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/explode?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @explode_init(ptr nofree noundef writeonly captures(none) initializes((16, 32), (9776, 9783)) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9780
  store i8 0, ptr %i.b, align 4, !tbaa !13
  %i.c = zext i16 %1 to i32                       ; 2 uses
  %i.d = and i32 %i.c, 2                          ; 2 uses
  %.not.not = icmp eq i32 %i.d, 0
  %.lobit = lshr exact i32 %i.d, 1
  %spec.select = trunc nuw nsw i32 %.lobit to i8
  %spec.select19 = select i1 %.not.not, i32 4095, i32 8191
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9781
  store i8 %spec.select, ptr %i.e, align 1, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %spec.select19, ptr %i.f, align 8, !tbaa !15
  %i.g = and i32 %i.c, 4                          ; 3 uses
  %.not14.not = icmp eq i32 %i.g, 0
  %.lobit20 = lshr exact i32 %i.g, 2
  %.sink18 = xor i32 %.lobit20, 1
  %.lobit21 = lshr exact i32 %i.g, 2
  %.sink17 = trunc nuw nsw i32 %.lobit21 to i8
  %.sink16 = select i1 %.not14.not, i32 2, i32 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9776
  store i32 %.sink18, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9782
  store i8 %.sink17, ptr %i.i, align 2, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink16, ptr %i.j, align 4, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @explode(ptr nofree noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9776 ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  switch i32 %i.b, label %bb.hs [
    i32 0, label %bb.b
    i32 1, label %bb.j
    i32 2, label %bb.s
    i32 3, label %bb.ab
    i32 4, label %._crit_edge
    i32 5, label %._crit_edge487
    i32 10, label %bb.bg
    i32 6, label %._crit_edge490
    i32 7, label %._crit_edge493
    i32 8, label %._crit_edge496
    i32 9, label %._crit_edge499
    i32 11, label %bb.hn
  ]

._crit_edge499:                                   ; preds = %bb.a
  %.phi.trans.insert500 = getelementptr inbounds nuw i8, ptr %0, i64 9780
  %.pre501 = load i8, ptr %.phi.trans.insert500, align 4, !tbaa !13
  br label %bb.hf

._crit_edge496:                                   ; preds = %bb.a
  %.phi.trans.insert497 = getelementptr inbounds nuw i8, ptr %0, i64 9780
  %.pre498 = load i8, ptr %.phi.trans.insert497, align 4, !tbaa !13
  br label %bb.em

._crit_edge493:                                   ; preds = %bb.a
  %.phi.trans.insert494 = getelementptr inbounds nuw i8, ptr %0, i64 9780
  %.pre495 = load i8, ptr %.phi.trans.insert494, align 4, !tbaa !13
  br label %bb.br

._crit_edge490:                                   ; preds = %bb.a
  %.phi.trans.insert491 = getelementptr inbounds nuw i8, ptr %0, i64 9780
  %.pre492 = load i8, ptr %.phi.trans.insert491, align 4, !tbaa !13
  br label %bb.bj

._crit_edge487:                                   ; preds = %bb.a
  %.phi.trans.insert488 = getelementptr inbounds nuw i8, ptr %0, i64 9780
  %.pre489 = load i8, ptr %.phi.trans.insert488, align 4, !tbaa !13
  br label %bb.ba

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 9780
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !13
  br label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1572 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22   ; 5 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.hs, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19   ; 4 uses
  %.not400 = icmp eq i32 %i.f, 0
  br i1 %.not400, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1584
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0359.in.in = phi ptr [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  %.0359.in = load i8, ptr %.0359.in.in, align 1, !tbaa !20
  %.0359 = zext i8 %.0359.in to i32
  %reass.sub = sub i32 %.0359, %i.f
  %i.i = add i32 %reass.sub, 2                    ; 3 uses
  %i.j = icmp ugt i32 %i.i, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.l = zext i32 %i.f to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !23     ; 4 uses
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = zext i32 %i.d to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.n, i64 %i.o, i1 false)
  %i.p = add i32 %i.f, %i.d
  store i32 %i.p, ptr %i.e, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store ptr %i.q, ptr %0, align 8, !tbaa !23
  store i32 0, ptr %i.c, align 4, !tbaa !22
  br label %bb.hs

bb.h:                                             ; preds = %bb.f
  %i.r = zext i32 %i.i to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.n, i64 %i.r, i1 false)
  %i.s = sub nuw i32 %i.d, %i.i
  store i32 %i.s, ptr %i.c, align 4, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  store ptr %i.t, ptr %0, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = tail call fastcc i32 @unpack_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.u, i32 noundef 256)
  %.not401 = icmp eq i32 %i.v, 0
  br i1 %.not401, label %bb.i, label %bb.hs

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.e, align 8, !tbaa !19
  %i.w = load i32, ptr %i.a, align 8, !tbaa !16
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.a, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1572 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22   ; 5 uses
  %.not402 = icmp eq i32 %i.z, 0
  br i1 %.not402, label %bb.hs, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !19 ; 4 uses
  %.not403 = icmp eq i32 %i.ab, 0
  br i1 %.not403, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1584
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1360.in.in = phi ptr [ %i.ad, %bb.m ], [ %i.ac, %bb.l ]
  %.1360.in = load i8, ptr %.1360.in.in, align 1, !tbaa !20 ; 2 uses
  %i.ae = icmp ugt i8 %.1360.in, 63
  br i1 %i.ae, label %bb.hs, label %bb.o

bb.o:                                             ; preds = %bb.n
  %narrow = add nuw nsw i8 %.1360.in, 2
  %i.af = zext nneg i8 %narrow to i32
  %i.ag = sub i32 %i.af, %i.ab                    ; 3 uses
  %i.ah = icmp ugt i32 %i.ag, %i.z
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.aj = zext i32 %i.ab to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !23    ; 4 uses
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.am = zext i32 %i.z to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 1 %i.al, i64 %i.am, i1 false)
  %i.an = add i32 %i.ab, %i.z
  store i32 %i.an, ptr %i.aa, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  store ptr %i.ao, ptr %0, align 8, !tbaa !23
  store i32 0, ptr %i.y, align 4, !tbaa !22
  br label %bb.hs

bb.q:                                             ; preds = %bb.o
  %i.ap = zext i32 %i.ag to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 1 %i.al, i64 %i.ap, i1 false)
  %i.aq = sub nuw i32 %i.z, %i.ag
  store i32 %i.aq, ptr %i.y, align 4, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ap
  store ptr %i.ar, ptr %0, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.at = tail call fastcc i32 @unpack_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i32 noundef 64)
  %.not404 = icmp eq i32 %i.at, 0
  br i1 %.not404, label %bb.r, label %bb.hs

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.aa, align 8, !tbaa !19
  %i.au = load i32, ptr %i.a, align 8, !tbaa !16
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.a, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1572 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !22 ; 5 uses
  %.not405 = icmp eq i32 %i.ax, 0
  br i1 %.not405, label %bb.hs, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !19 ; 4 uses
  %.not406 = icmp eq i32 %i.az, 0
  br i1 %.not406, label %bb.u, label %bb.v
end_hunk_0
