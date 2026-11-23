Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/bitmap?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@bitmap_copy_and_clear_atomic:bb.a
  %i.ab = atomicrmw xchg ptr %i.aa, i64 0 seq_cst, align 8
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.0912, i64 56
  %i.ae = atomicrmw xchg ptr %i.ad, i64 0 seq_cst, align 8
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.013, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0912, i64 64
  %i.ah = add nsw i64 %.01011, -512
  %i.ai = icmp sgt i64 %.01011, 512
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @bitmap_find_next_zero_area(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @find_next_zero_bit(ptr noundef %0, i64 noundef %1, i64 noundef %2) #10
  %i.b = add i64 %i.a, %4
  %i.c = xor i64 %4, -1                           ; 2 uses
  %i.d = and i64 %i.b, %i.c                       ; 2 uses
  %i.e = add i64 %i.d, %3                         ; 3 uses
  %i.f = icmp ugt i64 %i.e, %1
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %i.o, 1
  %i.h = tail call i64 @find_next_zero_bit(ptr noundef %0, i64 noundef %1, i64 noundef %i.g) #10
  %i.i = add i64 %i.h, %4
  %i.j = and i64 %i.i, %i.c                       ; 2 uses
  %i.k = add i64 %i.j, %3                         ; 3 uses
  %i.l = icmp ugt i64 %i.k, %1
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.k, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.o = tail call i64 @find_next_bit(ptr noundef %0, i64 noundef %i.m, i64 noundef %i.n) #10 ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.0 = phi i64 [ %i.e, %bb.a ], [ %i.n, %.lr.ph ], [ %i.k, %bb.b ]
  ret i64 %.0
}

declare i64 @find_next_zero_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @find_next_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @slow_bitmap_intersects(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %2, 6                           ; 4 uses
  %.not19 = icmp eq i64 %i.a, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.018 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.018
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, %i.c
  %.not16 = icmp eq i64 %i.f, 0
  br i1 %.not16, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i64 %.018, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = and i64 %2, 63
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.a
  %i.l = load i64, ptr %i.k, align 8
  %i.m = sub i64 0, %2
  %i.n = and i64 %i.m, 63
  %i.o = lshr i64 -1, %i.n
  %i.p = and i64 %i.j, %i.o
  %i.q = and i64 %i.p, %i.l
  %.not15 = icmp eq i64 %i.q, 0
  br i1 %.not15, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.d
  %.014 = phi i32 [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %.lr.ph ]
  ret i32 %.014
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define dso_local i64 @slow_bitmap_count_one(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 6                           ; 5 uses
  %.not16 = icmp eq i64 %i.a, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 256
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.a, 288230376151711740       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi18 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <2 x i64>, ptr %i.b, align 8
  %wide.load19 = load <2 x i64>, ptr %i.c, align 8
  %i.d = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.e = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load19)
  %i.f = add <2 x i64> %i.d, %vec.phi             ; 2 uses
  %i.g = add <2 x i64> %i.e, %vec.phi18           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01213.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %.014 = phi i64 [ %i.m, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader20 ]
  %.01213 = phi i64 [ %i.n, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader20 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01213
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.k)
  %i.m = add i64 %i.l, %.014                      ; 2 uses
  %i.n = add nuw nsw i64 %.01213, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %middle.block ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.o = and i64 %1, 63
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sub i64 0, %1
  %i.s = and i64 %i.r, 63
  %i.t = lshr i64 -1, %i.s
  %i.u = and i64 %i.q, %i.t
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.u)
  %i.w = add i64 %i.v, %.0.lcssa
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.w, %bb.b ], [ %.0.lcssa, %._crit_edge ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @bitmap_from_le(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %2, 63
  %i.b = lshr i64 %i.a, 3
  %i.c = and i64 %i.b, 2305843009213693944
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 0, 2305843009213693945) %i.c, i1 noundef false) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @bitmap_to_le(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %2, 63
  %i.b = lshr i64 %i.a, 3
  %i.c = and i64 %i.b, 2305843009213693944
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 0, 2305843009213693945) %i.c, i1 noundef false) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @bitmap_copy_with_src_offset(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %2, 6                           ; 2 uses
  %i.b = getelementptr [8 x i8], ptr %1, i64 %i.a ; 8 uses
  %i.c = and i64 %2, 63                           ; 6 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 63
  %i.e = sub nuw nsw i64 64, %i.c                 ; 5 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = add i64 %3, -64                          ; 3 uses
  %i.g = lshr i64 %i.f, 6
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 704
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.i = lshr i64 %i.f, 3
  %i.j = and i64 %i.i, 2305843009213693944        ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = shl nuw nsw i64 %i.a, 3
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 %i.j
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %bound0 = icmp ult ptr %0, %i.p
  %bound1 = icmp ult ptr %i.b, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 576460752303423486       ; 4 uses
  %i.q = shl i64 %n.vec, 6
  %i.r = sub i64 %3, %i.q                         ; 2 uses
  %i.s = shl nuw nsw i64 %n.vec, 3                ; 2 uses
  %i.t = getelementptr i8, ptr %i.b, i64 %i.s     ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %broadcast.splatinsert60.a = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat61.a = shufflevector <2 x i64> %broadcast.splatinsert60.a, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat63 = shufflevector <2 x i64> %broadcast.splatinsert62, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.v ; 2 uses
  %next.gep64 = getelementptr i8, ptr %0, i64 %i.v ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !45
  %i.w = lshr <2 x i64> %wide.load, %broadcast.splat61.a ; 2 uses
  store <2 x i64> %i.w, ptr %next.gep64, align 8, !alias.scope !46, !noalias !45
  %i.x = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load65 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !45
  %i.y = shl <2 x i64> %wide.load65, %broadcast.splat63
  %i.z = or disjoint <2 x i64> %i.y, %i.w
  store <2 x i64> %i.z, ptr %next.gep64, align 8, !alias.scope !46, !noalias !45
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68

.lr.ph.preheader68:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.048.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  %.03947.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  %.04046.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

4:                                                ; preds = %bb.a
  %5 = icmp ult i64 %3, 65
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load i64, ptr %i.b, align 8
  store i64 %7, ptr %0, align 8
  br label %bitmap_copy.exit

8:                                                ; preds = %4
  %9 = add i64 %3, 63
  %10 = lshr i64 %9, 3
  %11 = and i64 %10, 2305843009213693944
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull readonly align 1 %i.b, i64 noundef range(i64 0, 2305843009213693945) %11, i1 noundef false) #10
  br label %bitmap_copy.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.048 = phi i64 [ %i.ai, %.lr.ph ], [ %.048.ph, %.lr.ph.preheader68 ]
  %.03947 = phi ptr [ %i.ad, %.lr.ph ], [ %.03947.ph, %.lr.ph.preheader68 ] ; 2 uses
  %.04046 = phi ptr [ %i.ah, %.lr.ph ], [ %.04046.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.ab = load i64, ptr %.03947, align 8
  %i.ac = lshr i64 %i.ab, %i.c                    ; 2 uses
  store i64 %i.ac, ptr %.04046, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.03947, i64 8 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = shl i64 %i.ae, %i.e
  %i.ag = or disjoint i64 %i.af, %i.ac
  store i64 %i.ag, ptr %.04046, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.04046, i64 8 ; 2 uses
  %i.ai = add i64 %.048, -64                      ; 3 uses
  %i.aj = icmp ugt i64 %i.ai, 63
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.040.lcssa = phi ptr [ %0, %bb.b ], [ %i.u, %middle.block ], [ %i.ah, %.lr.ph ] ; 3 uses
  %.039.lcssa = phi ptr [ %i.b, %bb.b ], [ %i.t, %middle.block ], [ %i.ad, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i64 [ %3, %bb.b ], [ %i.r, %middle.block ], [ %i.ai, %.lr.ph ] ; 4 uses
  %i.ak = icmp samesign ugt i64 %.0.lcssa, %i.e
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.al = load i64, ptr %.039.lcssa, align 8
  %i.am = lshr i64 %i.al, %i.c                    ; 2 uses
  store i64 %i.am, ptr %.040.lcssa, align 8
  %i.an = sub nuw nsw i64 %.0.lcssa, %i.e
  %notmask45 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask45, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, %i.ao
  %i.as = shl i64 %i.ar, %i.e
  %i.at = or disjoint i64 %i.as, %i.am
  store i64 %i.at, ptr %.040.lcssa, align 8
  br label %bitmap_copy.exit

bb.d:                                             ; preds = %._crit_edge
  %.not43 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not43, label %bitmap_copy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %notmask44 = shl nsw i64 -1, %.0.lcssa
  %i.au = xor i64 %notmask44, -1
  %i.av = load i64, ptr %.039.lcssa, align 8
  %i.aw = lshr i64 %i.av, %i.c
  %i.ax = and i64 %i.aw, %i.au
  store i64 %i.ax, ptr %.040.lcssa, align 8
  br label %bitmap_copy.exit

bitmap_copy.exit:                                 ; preds = %8, %6, %bb.c, %bb.e, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @bitmap_copy_with_dst_offset(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %2, 6
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 8 uses
  %i.c = and i64 %2, 63                           ; 8 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %3, 65
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %1, align 8
  store i64 %i.e, ptr %i.b, align 8
  br label %bitmap_copy.exit

bb.d:                                             ; preds = %bb.b
  %i.f = add i64 %3, 63
  %i.g = lshr i64 %i.f, 3
  %i.h = and i64 %i.g, 2305843009213693944
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.b, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 0, 2305843009213693945) %i.h, i1 noundef false) #10
  br label %bitmap_copy.exit

bb.e:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i64 64, %i.c                 ; 6 uses
  %notmask46 = shl nsw i64 -1, %i.c
  %i.j = xor i64 %notmask46, -1
  %i.k = load i64, ptr %i.b, align 8
  %i.l = and i64 %i.k, %i.j                       ; 4 uses
  store i64 %i.l, ptr %i.b, align 8
  %i.m = icmp ugt i64 %3, 63
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.n = add i64 %3, -64                          ; 2 uses
  %i.o = and i64 %i.n, 64
  %lcmp.mod.not.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.p = load i64, ptr %1, align 8
  %i.q = shl i64 %i.p, %i.c
  %i.r = or i64 %i.l, %i.q
  store i64 %i.r, ptr %i.b, align 8
  %i.s = load i64, ptr %1, align 8
  %i.t = lshr i64 %i.s, %i.i                      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = add i64 %3, -64                          ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i64 [ %i.l, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.052.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.04251.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.04350.unr = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.lcssa68.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.lcssa67.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.lcssa66.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %i.x = icmp ult i64 %i.n, 64
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.y = phi i64 [ %i.ak, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.052 = phi i64 [ %i.an, %.lr.ph ], [ %.052.unr, %.lr.ph.prol.loopexit ]
  %.04251 = phi ptr [ %i.am, %.lr.ph ], [ %.04251.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.04350 = phi ptr [ %i.al, %.lr.ph ], [ %.04350.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.z = load i64, ptr %.04251, align 8
  %i.aa = shl i64 %i.z, %i.c
  %i.ab = or i64 %i.y, %i.aa
  store i64 %i.ab, ptr %.04350, align 8
  %i.ac = load i64, ptr %.04251, align 8
  %i.ad = lshr i64 %i.ac, %i.i                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.04350, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.04251, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = shl i64 %i.ag, %i.c
  %i.ai = or disjoint i64 %i.ad, %i.ah
  store i64 %i.ai, ptr %i.ae, align 8
  %i.aj = load i64, ptr %i.af, align 8
  %i.ak = lshr i64 %i.aj, %i.i                    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.04350, i64 16 ; 3 uses
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.04251, i64 16 ; 2 uses
  %i.an = add i64 %.052, -128                     ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 63
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.e
  %i.ap = phi i64 [ %i.l, %bb.e ], [ %.lcssa68.unr, %.lr.ph.prol.loopexit ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.043.lcssa = phi ptr [ %i.b, %bb.e ], [ %.lcssa67.unr, %.lr.ph.prol.loopexit ], [ %i.al, %.lr.ph ] ; 3 uses
  %.042.lcssa = phi ptr [ %1, %bb.e ], [ %.lcssa66.unr, %.lr.ph.prol.loopexit ], [ %i.am, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i64 [ %3, %bb.e ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.an, %.lr.ph ] ; 4 uses
  %i.aq = icmp samesign ugt i64 %.0.lcssa, %i.i
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ar = load i64, ptr %.042.lcssa, align 8
  %i.as = shl i64 %i.ar, %i.c
  %i.at = or i64 %i.ap, %i.as
  store i64 %i.at, ptr %.043.lcssa, align 8
  %i.au = sub nuw nsw i64 %.0.lcssa, %i.i
  %notmask49 = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask49, -1
  %i.aw = load i64, ptr %.042.lcssa, align 8
  %4 = lshr i64 %i.aw, %i.i
  %5 = and i64 %4, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.043.lcssa, i64 8
  store i64 %5, ptr %i.ax, align 8
  br label %bitmap_copy.exit

bb.g:                                             ; preds = %._crit_edge
  %.not47 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not47, label %bitmap_copy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %notmask48 = shl nsw i64 -1, %.0.lcssa
  %i.ay = xor i64 %notmask48, -1
  %i.az = load i64, ptr %.042.lcssa, align 8
  %i.ba = and i64 %i.az, %i.ay
  %i.bb = shl i64 %i.ba, %i.c
  %i.bc = or i64 %i.bb, %i.ap
  store i64 %i.bc, ptr %.043.lcssa, align 8
  br label %bitmap_copy.exit

bitmap_copy.exit:                                 ; preds = %bb.d, %bb.c, %bb.f, %bb.h, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { norecurse nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7, !8, !9}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !7, !8}
!18 = distinct !{!18, !7, !8, !9}
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7, !8, !9}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !7, !8}
!23 = distinct !{!23, !7, !8, !9}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !7, !8}
!26 = distinct !{!26, !7, !8, !9}
!27 = distinct !{!27, !7, !8}
!28 = distinct !{!28, !7, !11, !8, !9}
!29 = distinct !{!29, !7, !11, !9, !8}
!30 = !{i64 2150300639}
!31 = distinct !{!31, !7, !11, !8, !9}
!32 = distinct !{!32, !7, !11, !9, !8}
!33 = distinct !{!33, !10}
!34 = !{i64 2150304214}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7, !8, !9}
!39 = distinct !{!39, !7, !9, !8}
!40 = distinct !{!40, i1 false, !"LVerDomain"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !7, !8, !9}
!44 = distinct !{!44, !7, !8}
!45 = !{!41}
!46 = !{!42}
!47 = distinct !{!47, !7}
end_hunk_0
