Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@sp_mont_norm:bb.a

.lr.ph74.i.i.prol.loopexit:                       ; preds = %.lr.ph74.i.i.prol, %.lr.ph74.i.i.preheader
  %indvars.iv90.i.i.unr = phi i64 [ %.2.lcssa.ph.in.i.i, %.lr.ph74.i.i.preheader ], [ %indvars.iv.next91.i.i.prol, %.lr.ph74.i.i.prol ]
  %.173.i.i.unr = phi i128 [ %.049.lcssa.ph.i.i, %.lr.ph74.i.i.preheader ], [ %i.bg, %.lr.ph74.i.i.prol ]
  %i.bh = icmp eq i64 %.2.lcssa.ph.in.i.i, %i.ba
  br i1 %i.bh, label %.preheader.i.i, label %.lr.ph74.i.i

.lr.ph74.i.i:                                     ; preds = %.lr.ph74.i.i.prol.loopexit, %.lr.ph74.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i.1, %.lr.ph74.i.i ], [ %indvars.iv90.i.i.unr, %.lr.ph74.i.i.prol.loopexit ] ; 3 uses
  %.173.i.i = phi i128 [ %i.bu, %.lr.ph74.i.i ], [ %.173.i.i.unr, %.lr.ph74.i.i.prol.loopexit ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv90.i.i ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !36
  %i.bk = zext i64 %i.bj to i128
  %i.bl = add nsw i128 %.173.i.i, %i.bk           ; 2 uses
  %i.bm = trunc i128 %i.bl to i64
  store i64 %i.bm, ptr %i.bi, align 8, !tbaa !36
  %i.bn = ashr i128 %i.bl, 64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv90.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !36
  %i.br = zext i64 %i.bq to i128
  %i.bs = add nsw i128 %i.bn, %i.br               ; 2 uses
  %i.bt = trunc i128 %i.bs to i64
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !36
  %i.bu = ashr i128 %i.bs, 64
  %indvars.iv.next91.i.i.1 = add nuw nsw i64 %indvars.iv90.i.i, 2 ; 2 uses
  %exitcond94.not.i.i.1 = icmp eq i64 %indvars.iv.next91.i.i.1, %zext.i
  br i1 %exitcond94.not.i.i.1, label %.preheader.i.i, label %.lr.ph74.i.i, !llvm.loop !18

.preheader.i.i:                                   ; preds = %.lr.ph74.i.i.prol.loopexit, %.lr.ph74.i.i, %.critedge2.i.i
  %.pre-phi.i = phi i64 [ %.2.lcssa.ph.in.i.i, %.critedge2.i.i ], [ %zext.i, %.lr.ph74.i.i ], [ %zext.i, %.lr.ph74.i.i.prol.loopexit ] ; 2 uses
  %i.bv = icmp sgt i64 %.pre-phi.i, 0
  br i1 %i.bv, label %.lr.ph, label %sp_set_bit.exit

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next96.i.i = add nsw i64 %indvars.iv95.i.i93, -1
  %i.bw = icmp sgt i64 %indvars.iv95.i.i93, 1
  br i1 %i.bw, label %.lr.ph, label %sp_set_bit.exit, !llvm.loop !19

.lr.ph:                                           ; preds = %.preheader.i.i, %bb.k
  %indvars.iv95.i.i93 = phi i64 [ %indvars.iv.next96.i.i, %bb.k ], [ %.pre-phi.i, %.preheader.i.i ] ; 4 uses
  %i.bx = getelementptr [8 x i8], ptr %0, i64 %indvars.iv95.i.i93
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !36
  %.not56.i.i = icmp eq i64 %i.by, 0
  br i1 %.not56.i.i, label %bb.k, label %.split.loop.exit.i.i, !llvm.loop !19

.split.loop.exit.i.i:                             ; preds = %.lr.ph
  %i.bz = trunc i64 %indvars.iv95.i.i93 to i16
  br label %sp_set_bit.exit

sp_set_bit.exit:                                  ; preds = %bb.k, %.preheader.i.i, %.split.loop.exit.i.i
  %.pr = phi i16 [ %i.bz, %.split.loop.exit.i.i ], [ 0, %.preheader.i.i ], [ 0, %bb.k ] ; 3 uses
  store i16 %.pr, ptr %0, align 8, !tbaa !40
  %i.ca = icmp ult i32 %.5.i, 65
  br i1 %i.ca, label %.split, label %bb.l

.split:                                           ; preds = %sp_set_bit.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !36
  %i.cd = load i64, ptr %i.x, align 8, !tbaa !36
  %i.ce = urem i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.x, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %sp_set_bit.exit, %.split
  %.not38 = icmp eq i16 %.pr, 0
  br i1 %.not38, label %.thread62, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = zext i16 %.pr to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next = add nsw i64 %indvars.iv94, -1
  %i.cg = icmp sgt i64 %indvars.iv94, 1
  br i1 %i.cg, label %bb.o, label %.split.loop.exit86, !llvm.loop !175

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv94 = phi i64 [ %i.cf, %bb.m ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.ch = getelementptr [8 x i8], ptr %0, i64 %indvars.iv94
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !36
  %.not39 = icmp eq i64 %i.ci, 0
  br i1 %.not39, label %bb.n, label %.split.loop.exit, !llvm.loop !175

.split.loop.exit:                                 ; preds = %bb.o
  %i.cj = trunc i64 %indvars.iv94 to i16
  br label %.split.loop.exit86

.split.loop.exit86:                               ; preds = %bb.n, %.split.loop.exit
  %.0.in.lcssa = phi i16 [ %i.cj, %.split.loop.exit ], [ 0, %bb.n ]
  store i16 %.0.in.lcssa, ptr %0, align 8, !tbaa !40
  br label %.thread62

.thread62:                                        ; preds = %bb.a, %bb.h, %bb.g, %.thread, %sp_count_bits.exit, %bb.l, %.split.loop.exit86
  %.36164 = phi i32 [ -98, %sp_count_bits.exit ], [ 0, %bb.l ], [ 0, %.split.loop.exit86 ], [ -98, %.thread ], [ -98, %bb.g ], [ -98, %bb.h ], [ -98, %bb.a ]
  ret i32 %.36164
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -268435456, 268435456) i32 @sp_unsigned_bin_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not25.i = icmp eq i16 %i.a, 0
  br i1 %.not25.i, label %sp_count_bits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext i16 %i.a to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.c = icmp sgt i64 %indvars.iv.i14, 1
  br i1 %i.c, label %bb.e, label %sp_count_bits.exit, !llvm.loop !2

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i14 = phi i64 [ %i.b, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i14, -1 ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i14
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.e
  %i.g = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.h = shl nuw nsw i32 %i.g, 6                  ; 2 uses
  %i.i = icmp ugt i64 %i.e, 4294967295
  br i1 %i.i, label %bb.f, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.j = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.k = trunc nuw nsw i64 %i.j to i32
  %reass.sub.i = add nuw nsw i32 %i.h, 64
  %i.l = sub nuw nsw i32 %reass.sub.i, %i.k
  br label %sp_count_bits.exit

bb.f:                                             ; preds = %.critedge.i
  %i.m = add nuw nsw i32 %i.h, 64                 ; 2 uses
  %i.n = icmp sgt i64 %i.e, -1
  br i1 %i.n, label %.lr.ph36.i, label %sp_count_bits.exit

.lr.ph36.i:                                       ; preds = %bb.f, %.lr.ph36.i
  %.035.i = phi i64 [ %i.p, %.lr.ph36.i ], [ %i.e, %bb.f ]
  %.234.i = phi i32 [ %i.o, %.lr.ph36.i ], [ %i.m, %bb.f ]
  %i.o = add nsw i32 %.234.i, -1                  ; 2 uses
  %i.p = shl nuw i64 %.035.i, 1                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  br i1 %i.q, label %.lr.ph36.i, label %sp_count_bits.exit, !llvm.loop !3

sp_count_bits.exit:                               ; preds = %bb.d, %.lr.ph36.i, %bb.b, %.lr.ph.preheader.i, %bb.f
  %.5.i = phi i32 [ %i.m, %bb.f ], [ %i.o, %.lr.ph36.i ], [ %i.l, %.lr.ph.preheader.i ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.r = add nsw i32 %.5.i, 7
  %i.s = ashr i32 %i.r, 3
  br label %bb.g

bb.g:                                             ; preds = %sp_count_bits.exit, %bb.a
  %.0 = phi i32 [ %i.s, %sp_count_bits.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_read_unsigned_bin(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 12 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.thread62, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  %i.d = icmp ne i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.thread62, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !39
  %i.g = zext i16 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 3
  %i.i = icmp ugt i32 %2, %i.h
  br i1 %i.i, label %.thread62, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %2, 7
  %i.k = lshr i32 %i.j, 3                         ; 5 uses
  %i.l = trunc nuw i32 %i.k to i16                ; 3 uses
  store i16 %i.l, ptr %0, align 8, !tbaa !40
  %i.m = add nsw i32 %2, -1                       ; 3 uses
  %i.n = icmp samesign ugt i32 %2, 7
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = zext nneg i32 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv69 = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next70, %bb.e ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv69 ; 8 uses
  %4 = load i8, ptr %3, align 1, !tbaa !41
  %5 = zext i8 %4 to i64
  %6 = getelementptr i8, ptr %3, i64 -1
  %7 = load i8, ptr %6, align 1, !tbaa !41
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 8
  %10 = or disjoint i64 %9, %5
  %11 = getelementptr i8, ptr %3, i64 -2
  %12 = load i8, ptr %11, align 1, !tbaa !41
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 16
  %15 = or disjoint i64 %10, %14
  %16 = getelementptr i8, ptr %3, i64 -3
  %17 = load i8, ptr %16, align 1, !tbaa !41
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %15, %19
  %21 = getelementptr i8, ptr %3, i64 -4
  %22 = load i8, ptr %21, align 1, !tbaa !41
  %23 = zext i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 32
  %25 = or disjoint i64 %20, %24
  %26 = getelementptr i8, ptr %3, i64 -5
  %27 = load i8, ptr %26, align 1, !tbaa !41
  %28 = zext i8 %27 to i64
  %29 = shl nuw nsw i64 %28, 40
  %30 = or i64 %25, %29
  %i.q = getelementptr i8, ptr %3, i64 -6
  %31 = load i8, ptr %i.q, align 1, !tbaa !41
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 48
  %34 = or i64 %30, %33
  %i.r = getelementptr i8, ptr %3, i64 -7
  %35 = load i8, ptr %i.r, align 1, !tbaa !41
  %36 = zext i8 %35 to i64
  %37 = shl nuw i64 %36, 56
  %38 = or i64 %34, %37
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store i64 %38, ptr %i.s, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, -8 ; 2 uses
  %i.t = icmp samesign ugt i64 %indvars.iv69, 14
  br i1 %i.t, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !176

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.u = trunc nsw i64 %indvars.iv.next70 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.059.lcssa = phi i32 [ %i.m, %bb.d ], [ %i.u, %._crit_edge.loopexit ] ; 2 uses
  %i.v = icmp sgt i32 %.059.lcssa, -1
  br i1 %i.v, label %bb.f, label %bb.n

bb.f:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.x = zext nneg i32 %i.k to i64
  %i.y = getelementptr [8 x i8], ptr %0, i64 %i.x
  store i64 0, ptr %i.y, align 8, !tbaa !36
  switch i32 %.059.lcssa, label %default.unreachable [
    i32 6, label %bb.g
    i32 5, label %bb.h
    i32 4, label %bb.i
    i32 3, label %bb.j
    i32 2, label %bb.k
    i32 1, label %bb.l
    i32 0, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !41
  %i.ab = add nsw i32 %2, -7
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !41
  %i.ag = add nsw i32 %2, -6
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  store i8 %i.af, ptr %i.ai, align 1, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !41
  %i.al = add nsw i32 %2, -5
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !41
  %i.aq = add nsw i32 %2, -4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ar
  store i8 %i.ap, ptr %i.as, align 1, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !41
  %i.av = add nsw i32 %2, -3
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !41
  %i.ba = add nsw i32 %2, -2
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bb
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !41
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.bd = load i8, ptr %1, align 1, !tbaa !41
  %i.be = zext i32 %i.m to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.be
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !41
  br label %bb.n

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.n:                                             ; preds = %bb.m, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i16 -1, ptr %i.a, align 2, !tbaa !46
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %sp_clamp_ct.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bg = zext nneg i32 %i.k to i64               ; 4 uses
  %xtraiter = and i64 %i.bg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %indvars.iv.next.i.prol = add nsw i64 %i.bg, -1
  %i.bh = getelementptr [8 x i8], ptr %0, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !36
  %i.bj = zext i64 %i.bi to i128
  %i.bk = add nuw nsw i128 %i.bj, 1208925819614629174706175
  %i.bl = lshr i128 %i.bk, 64
  %i.bm = trunc i128 %i.bl to i16
  %.0..0..0..0..0..0..i.prol = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.bn = and i16 %.0..0..0..0..0..0..i.prol, %i.bm
  store volatile i16 %i.bn, ptr %i.a, align 2, !tbaa !46
  %.0..0..0..0..0..0.1.i.prol = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.bo = add i16 %.0..0..0..0..0..0.1.i.prol, %i.l ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.bg, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %.01112.i.unr = phi i16 [ %i.l, %.lr.ph.i ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i16 [ poison, %.lr.ph.i ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %i.bp = icmp eq i32 %i.k, 1
  br i1 %i.bp, label %sp_clamp_ct.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 4 uses
  %.01112.i = phi i16 [ %i.cg, %.lr.ph.i.new ], [ %.01112.i.unr, %.prol.loopexit ]
  %i.bq = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !36
  %i.bs = zext i64 %i.br to i128
  %i.bt = add nuw nsw i128 %i.bs, 1208925819614629174706175
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc i128 %i.bu to i16
  %.0..0..0..0..0..0..i = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.bw = and i16 %.0..0..0..0..0..0..i, %i.bv
  store volatile i16 %i.bw, ptr %i.a, align 2, !tbaa !46
  %.0..0..0..0..0..0.1.i = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.bx = add i16 %.0..0..0..0..0..0.1.i, %.01112.i
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %i.by = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !36
  %i.cb = zext i64 %i.ca to i128
  %i.cc = add nuw nsw i128 %i.cb, 1208925819614629174706175
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = trunc i128 %i.cd to i16
  %.0..0..0..0..0..0..i.1 = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.cf = and i16 %.0..0..0..0..0..0..i.1, %i.ce
  store volatile i16 %i.cf, ptr %i.a, align 2, !tbaa !46
  %.0..0..0..0..0..0.1.i.1 = load volatile i16, ptr %i.a, align 2, !tbaa !46
  %i.cg = add i16 %.0..0..0..0..0..0.1.i.1, %i.bx ; 2 uses
  %i.ch = icmp sgt i64 %indvars.iv.i, 2
  br i1 %i.ch, label %.lr.ph.i.new, label %sp_clamp_ct.exit, !llvm.loop !20

sp_clamp_ct.exit:                                 ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.n
  %.011.lcssa.i = phi i16 [ 0, %bb.n ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.cg, %.lr.ph.i.new ]
  store i16 %.011.lcssa.i, ptr %0, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread62

.thread62:                                        ; preds = %bb.c, %bb.b, %bb.a, %sp_clamp_ct.exit
  %.164 = phi i32 [ 0, %sp_clamp_ct.exit ], [ -98, %bb.a ], [ -98, %bb.b ], [ -98, %bb.c ]
  ret i32 %.164
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_to_unsigned_bin(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %sp_unsigned_bin_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not25.i.i = icmp eq i16 %i.a, 0
  br i1 %.not25.i.i, label %sp_count_bits.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext i16 %i.a to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.c = icmp sgt i64 %indvars.iv.i.i13, 1
  br i1 %i.c, label %bb.e, label %sp_count_bits.exit.i, !llvm.loop !2

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i.i13 = phi i64 [ %i.b, %bb.c ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i13, -1 ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i.i13
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %.critedge.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %bb.e
  %i.g = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.h = shl nuw nsw i32 %i.g, 6                  ; 2 uses
  %i.i = icmp ugt i64 %i.e, 4294967295
  br i1 %i.i, label %bb.f, label %.lr.ph.preheader.i.i
end_hunk_0
begin_hunk_1_@sp_prime_miller_rabin:bb.a
  br i1 %.not39, label %_sp_cmp.exit72, label %sp_cmp_d.exit56.thread

sp_cmp_d.exit56.thread:                           ; preds = %bb.aj, %bb.ak
  %i.fa = load i16, ptr %3, align 8, !tbaa !40
  %or.cond104.not = icmp eq i16 %i.ex, %i.fa
  br i1 %or.cond104.not, label %.preheader.i.i, label %_sp_cmp.exit

.preheader.i.i:                                   ; preds = %sp_cmp_d.exit56.thread
  %.not = icmp eq i16 %i.ex, 0
  br i1 %.not, label %_sp_cmp.exit72, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader.i.i
  %i.fb = zext i16 %i.ex to i64
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i170, -1
  %i.fc = icmp sgt i64 %indvars.iv.i.i170, 1
  br i1 %i.fc, label %bb.am, label %_sp_cmp.exit72, !llvm.loop !1

bb.am:                                            ; preds = %.lr.ph171, %bb.al
  %indvars.iv.i.i170 = phi i64 [ %i.fb, %.lr.ph171 ], [ %indvars.iv.next.i.i, %bb.al ] ; 4 uses
  %i.fd = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i170
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !36
  %i.ff = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i.i170
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !36
  %or.cond105.not = icmp eq i64 %i.fe, %i.fg
  br i1 %or.cond105.not, label %bb.al, label %_sp_cmp.exit, !llvm.loop !1

_sp_cmp.exit:                                     ; preds = %bb.am, %sp_cmp_d.exit56.thread
  %.not41.not112 = icmp sgt i32 %.4.i, 1
  br i1 %.not41.not112, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_sp_cmp.exit
  %.not.i62 = icmp eq ptr %1, %0
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph, %sp_cmp_d.exit67.thread
  %i.fj = phi i16 [ %i.ex, %.lr.ph ], [ %i.gd, %sp_cmp_d.exit67.thread ] ; 5 uses
  %.0113 = phi i32 [ 1, %.lr.ph ], [ %i.gg, %sp_cmp_d.exit67.thread ]
  %i.fk = load i16, ptr %3, align 8, !tbaa !40
  %or.cond99.not = icmp eq i16 %i.fj, %i.fk
  br i1 %or.cond99.not, label %.preheader.i.i57, label %.loopexit107

.preheader.i.i57:                                 ; preds = %bb.an
  %.not182 = icmp eq i16 %i.fj, 0
  br i1 %.not182, label %.critedge, label %.lr.ph173

.lr.ph173:                                        ; preds = %.preheader.i.i57
  %i.fl = zext i16 %i.fj to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next.i.i59 = add nsw i64 %indvars.iv.i.i58172, -1
  %i.fm = icmp sgt i64 %indvars.iv.i.i58172, 1
  br i1 %i.fm, label %bb.ap, label %.critedge, !llvm.loop !1

bb.ap:                                            ; preds = %.lr.ph173, %bb.ao
  %indvars.iv.i.i58172 = phi i64 [ %i.fl, %.lr.ph173 ], [ %indvars.iv.next.i.i59, %bb.ao ] ; 4 uses
  %i.fn = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i58172
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !36
  %i.fp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i.i58172
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !36
  %or.cond100.not = icmp eq i64 %i.fo, %i.fq
  br i1 %or.cond100.not, label %bb.ao, label %.loopexit107, !llvm.loop !1

.loopexit107:                                     ; preds = %bb.ap, %bb.an
  br i1 %.not.i62, label %.thread.i63.thread, label %bb.aq

bb.aq:                                            ; preds = %.loopexit107
  %i.fr = zext i16 %i.fj to i32
  %i.fs = shl nuw nsw i32 %i.fr, 1
  %i.ft = load i16, ptr %i.fh, align 2, !tbaa !39
  %i.fu = zext i16 %i.ft to i32
  %i.fv = icmp samesign ugt i32 %i.fs, %i.fu
  br i1 %i.fv, label %.critedge, label %.thread.i63

.thread.i63.thread:                               ; preds = %.loopexit107
  %i.fw = icmp ugt i16 %i.fj, 64
  br i1 %i.fw, label %.critedge, label %bb.at

.thread.i63:                                      ; preds = %bb.aq
  %i.fx = tail call i32 @sp_sqr(ptr noundef nonnull readonly %1, ptr noundef nonnull %1) ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %.thread.i63
  %i.fz = load i16, ptr %1, align 8, !tbaa !40
  %i.ga = icmp ult i16 %i.fz, 129
  br i1 %i.ga, label %bb.as, label %.critedge

bb.as:                                            ; preds = %bb.ar
  %i.gb = tail call i32 @sp_div(ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %0, ptr noundef null, ptr noundef nonnull %1)
  br label %sp_sqrmod.exit

bb.at:                                            ; preds = %.thread.i63.thread
  %i.gc = tail call fastcc i32 @_sp_sqrmod(ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %0, ptr noundef nonnull %1)
  br label %sp_sqrmod.exit

sp_sqrmod.exit:                                   ; preds = %bb.as, %bb.at
  %.3.i = phi i32 [ %i.gb, %bb.as ], [ %i.gc, %bb.at ] ; 2 uses
  %.not43 = icmp eq i32 %.3.i, 0
  br i1 %.not43, label %sp_sqrmod.exit.thread91, label %.critedge

sp_sqrmod.exit.thread91:                          ; preds = %sp_sqrmod.exit
  %i.gd = load i16, ptr %1, align 8, !tbaa !40    ; 2 uses
  %or.cond101.not = icmp eq i16 %i.gd, 1
  br i1 %or.cond101.not, label %bb.au, label %sp_cmp_d.exit67.thread

bb.au:                                            ; preds = %sp_sqrmod.exit.thread91
  %i.ge = load i64, ptr %i.fi, align 8, !tbaa !36
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %_sp_cmp.exit72.sink.split, label %sp_cmp_d.exit67.thread

sp_cmp_d.exit67.thread:                           ; preds = %sp_sqrmod.exit.thread91, %bb.au
  %i.gg = add nuw nsw i32 %.0113, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gg, %.4.i
  br i1 %exitcond.not, label %.critedge, label %bb.an, !llvm.loop !200

.critedge:                                        ; preds = %.thread.i63.thread, %sp_sqrmod.exit, %sp_cmp_d.exit67.thread, %.thread.i63, %bb.ar, %bb.aq, %.preheader.i.i57, %bb.ao, %_sp_cmp.exit
  %.3.ph = phi i32 [ 0, %bb.ao ], [ 0, %_sp_cmp.exit ], [ -98, %bb.aq ], [ 0, %sp_cmp_d.exit67.thread ], [ -98, %bb.ar ], [ %.3.i, %sp_sqrmod.exit ], [ %i.fx, %.thread.i63 ], [ -98, %.thread.i63.thread ], [ 0, %.preheader.i.i57 ] ; 5 uses
  %.pr95 = load i32, ptr %2, align 4, !tbaa !50
  %i.gh = icmp eq i32 %.pr95, 1
  br i1 %i.gh, label %bb.av, label %_sp_cmp.exit72

bb.av:                                            ; preds = %.critedge
  %i.gi = load i16, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.gj = load i16, ptr %3, align 8, !tbaa !40
  %or.cond102.not = icmp eq i16 %i.gi, %i.gj
  br i1 %or.cond102.not, label %.preheader.i.i68, label %_sp_cmp.exit72.sink.split

.preheader.i.i68:                                 ; preds = %bb.av
  %.not183 = icmp eq i16 %i.gi, 0
  br i1 %.not183, label %_sp_cmp.exit72, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader.i.i68
  %i.gk = zext i16 %i.gi to i64
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ax
  %indvars.iv.next.i.i70 = add nsw i64 %indvars.iv.i.i69174, -1
  %i.gl = icmp sgt i64 %indvars.iv.i.i69174, 1
  br i1 %i.gl, label %bb.ax, label %_sp_cmp.exit72, !llvm.loop !1

bb.ax:                                            ; preds = %.lr.ph175, %bb.aw
  %indvars.iv.i.i69174 = phi i64 [ %i.gk, %.lr.ph175 ], [ %indvars.iv.next.i.i70, %bb.aw ] ; 4 uses
  %i.gm = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i69174
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !36
  %i.go = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i.i69174
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !36
  %or.cond103.not = icmp eq i64 %i.gn, %i.gp
  br i1 %or.cond103.not, label %bb.aw, label %_sp_cmp.exit72.sink.split, !llvm.loop !1

_sp_cmp.exit72.sink.split:                        ; preds = %bb.au, %bb.ax, %bb.av
  %.4.ph = phi i32 [ %.3.ph, %bb.ax ], [ %.3.ph, %bb.av ], [ 0, %bb.au ]
  store i32 0, ptr %2, align 4, !tbaa !50
  br label %_sp_cmp.exit72

_sp_cmp.exit72:                                   ; preds = %bb.al, %bb.aw, %.preheader.i.i, %.preheader.i.i68, %_sp_cmp.exit72.sink.split, %bb.ak, %bb.d, %sp_rshb.exit, %bb.a, %bb.c, %.critedge, %bb.ai
  %.4 = phi i32 [ %i.ev, %bb.ai ], [ -98, %sp_rshb.exit ], [ 0, %bb.ak ], [ %.4.ph, %_sp_cmp.exit72.sink.split ], [ %.3.ph, %.preheader.i.i68 ], [ %.3.ph, %.critedge ], [ -98, %bb.d ], [ -98, %bb.a ], [ -98, %bb.c ], [ 0, %.preheader.i.i ], [ %.3.ph, %bb.aw ], [ 0, %bb.al ]
  ret i32 %.4
}

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #17

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}
!llvm.errno.tbaa = !{!31}

!0 = distinct !{!0, !42}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{!3, !42}
!4 = distinct !{!4, !42}
!5 = distinct !{!5, !42}
!6 = distinct !{!6, !42}
!7 = distinct !{!7, !42}
!8 = distinct !{!8, !42}
!9 = distinct !{!9, !42}
!10 = distinct !{!10, !42}
!11 = distinct !{!11, !42}
!12 = distinct !{!12, !42}
!13 = distinct !{!13, !42}
!14 = distinct !{!14, !42}
!15 = distinct !{!15, !42}
!16 = distinct !{!16, !42}
!17 = distinct !{!17, !42}
!18 = distinct !{!18, !42}
!19 = distinct !{!19, !42}
!20 = distinct !{!20, !42}
!21 = distinct !{!21, !42}
!22 = distinct !{!22, !42}
!23 = distinct !{!23, !42}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !{!"omnipotent char", !27, i64 0}
!29 = !{!"int", !28, i64 0}
!30 = !{!"__libc_errno", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"short", !28, i64 0}
!33 = !{!"sp_int_minimal", !32, i64 0, !32, i64 2, !28, i64 8}
!34 = !{!33, !32, i64 0}
!35 = !{!"long", !28, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!33, !32, i64 2}
!38 = !{!"sp_int", !32, i64 0, !32, i64 2, !28, i64 8}
!39 = !{!38, !32, i64 2}
!40 = !{!38, !32, i64 0}
!41 = !{!28, !28, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!32, !32, i64 0}
!47 = !{!"any pointer", !28, i64 0}
!48 = !{!"p1 _ZTS6sp_int", !47, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!29, !29, i64 0}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, i1 false, !"LVerDomain"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !42, !43, !44}
!56 = distinct !{!56, !45}
!57 = distinct !{!57, !42, !43}
!58 = distinct !{!58, i1 false, !"LVerDomain"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !42, !43, !44}
!62 = distinct !{!62, !45}
!63 = distinct !{!63, !42, !43}
!64 = !{!53}
!65 = !{!54}
!66 = !{!59}
!67 = !{!60}
!68 = distinct !{!68, !42, !43, !44}
!69 = distinct !{!69, !42, !44, !43}
!70 = distinct !{!70, !42, !43, !44}
!71 = distinct !{!71, !42, !44, !43}
!72 = distinct !{!72, !42}
!73 = distinct !{!73, !42, !43, !44}
!74 = distinct !{!74, !45}
!75 = distinct !{!75, !42, !43}
!76 = distinct !{!76, !42, !43, !44}
!77 = distinct !{!77, !45}
!78 = distinct !{!78, !42, !43}
!79 = distinct !{!79, !42}
!80 = distinct !{!80, !42}
!81 = distinct !{!81, !42}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !42}
!84 = distinct !{!84, i1 false, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !42, !43, !44}
!88 = distinct !{!88, !42, !43}
!89 = !{!85}
!90 = !{!86}
!91 = distinct !{!91, !42}
!92 = distinct !{!92, !42, !43, !44}
!93 = distinct !{!93, !42, !44, !43}
!94 = distinct !{!94, !42}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = distinct !{!99, !42, !43, !44}
!100 = distinct !{!100, !42, !44, !43}
!101 = distinct !{!101, i1 false, !"LVerDomain"}
!102 = distinct !{!102, !101}
!103 = distinct !{!103, !101}
!104 = distinct !{!104, !42, !43, !44}
!105 = distinct !{!105, !42, !43}
!106 = !{!102}
!107 = !{!103}
!108 = distinct !{!108, !42, !43, !44}
!109 = distinct !{!109, !42, !43}
!110 = distinct !{!110, !42, !43, !44}
!111 = distinct !{!111, !42, !43}
!112 = distinct !{!112, !42}
!113 = distinct !{!113, !42}
!114 = distinct !{!114, !42}
!115 = distinct !{!115, !42}
!116 = distinct !{!116, !42}
!117 = distinct !{!117, !42, !43, !44}
!118 = distinct !{!118, !42, !44, !43}
!119 = distinct !{!119, !42}
!120 = distinct !{!120, !42}
!121 = distinct !{!121, !42}
!122 = distinct !{!122, !42}
!123 = distinct !{!123, !42}
!124 = distinct !{!124, !42, !43, !44}
!125 = distinct !{!125, !42, !44, !43}
!126 = distinct !{!126, !42, !43, !44}
!127 = distinct !{!127, !42, !44, !43}
!128 = distinct !{!128, !42}
!129 = distinct !{!129, !42, !43, !44}
!130 = distinct !{!130, !42, !44, !43}
!131 = distinct !{!131, !42, !43, !44}
!132 = distinct !{!132, !42, !44, !43}
!133 = distinct !{!133, !42, !43, !44}
!134 = distinct !{!134, !45}
!135 = distinct !{!135, !42, !43}
!136 = distinct !{!136, !42}
!137 = distinct !{!137, !42}
!138 = distinct !{!138, !42}
!139 = distinct !{!139, !42}
!140 = distinct !{!140, !42}
!141 = distinct !{!141, !42}
!142 = distinct !{!142, !42}
!143 = distinct !{!143, !42}
!144 = distinct !{!144, !45}
!145 = distinct !{!145, !42}
!146 = distinct !{!146, !45}
!147 = distinct !{!147, !42}
!148 = distinct !{!148, !42}
!149 = distinct !{!149, !42}
!150 = distinct !{!150, !42}
!151 = distinct !{!151, !42}
!152 = distinct !{!152, i1 false, !"LVerDomain"}
!153 = distinct !{!153, !152}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !42, !43, !44}
!156 = distinct !{!156, !42, !43}
!157 = distinct !{!157, !42}
!158 = !{!153}
!159 = !{!154}
!160 = distinct !{!160, !42}
!161 = distinct !{!161, !42, !43, !44}
!162 = distinct !{!162, !42, !43}
!163 = distinct !{!163, !42}
!164 = distinct !{!164, !42}
!165 = distinct !{!165, !42}
!166 = distinct !{!166, !42}
end_hunk_1
