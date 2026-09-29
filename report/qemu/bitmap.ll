Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/bitmap?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@bitmap_find_next_zero_area:bb.a
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
  %i.c = and i64 %2, 63                           ; 7 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %3, 65
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.b, align 8
  store i64 %i.e, ptr %0, align 8
  br label %bitmap_copy.exit

bb.d:                                             ; preds = %bb.b
  %i.f = add i64 %3, 63
  %i.g = lshr i64 %i.f, 3
  %i.h = and i64 %i.g, 2305843009213693944
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull readonly align 1 %i.b, i64 noundef range(i64 0, 2305843009213693945) %i.h, i1 noundef false) #10
  br label %bitmap_copy.exit

bb.e:                                             ; preds = %bb.a
  %notmask = shl nsw i64 -1, %i.c                 ; 3 uses
  %i.i = icmp ugt i64 %3, 63
  %i.j = sub nuw nsw i64 64, %i.c                 ; 5 uses
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.k = add i64 %3, -64                          ; 2 uses
  %i.l = lshr i64 %i.k, 6
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 576
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %4 = add i64 %3, -64
  %i.n = lshr i64 %4, 3
  %i.o = and i64 %i.n, 2305843009213693944        ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.p, i64 8
  %i.q = shl nuw nsw i64 %i.a, 3
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 %i.o
  %scevgep59 = getelementptr i8, ptr %i.s, i64 16
  %bound0 = icmp ult ptr %0, %scevgep59
  %bound1 = icmp ult ptr %i.b, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 576460752303423486       ; 4 uses
  %i.t = shl i64 %n.vec, 6
  %i.u = sub i64 %3, %i.t                         ; 2 uses
  %i.v = shl nuw nsw i64 %n.vec, 3                ; 2 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %i.v       ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %notmask, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert60 = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat61 = shufflevector <2 x i64> %broadcast.splatinsert60, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat63 = shufflevector <2 x i64> %broadcast.splatinsert62, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.y ; 2 uses
  %next.gep64 = getelementptr i8, ptr %0, i64 %i.y ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !45
  %i.z = and <2 x i64> %wide.load, %broadcast.splat
  %i.aa = lshr <2 x i64> %i.z, %broadcast.splat61 ; 2 uses
  store <2 x i64> %i.aa, ptr %next.gep64, align 8, !alias.scope !46, !noalias !45
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load65 = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !45
  %i.ac = shl <2 x i64> %wide.load65, %broadcast.splat63
  %i.ad = or disjoint <2 x i64> %i.ac, %i.aa
  store <2 x i64> %i.ad, ptr %next.gep64, align 8, !alias.scope !46, !noalias !45
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68

.lr.ph.preheader68:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.048.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.03947.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  %.04046.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.048 = phi i64 [ %i.an, %.lr.ph ], [ %.048.ph, %.lr.ph.preheader68 ]
  %.03947 = phi ptr [ %i.ai, %.lr.ph ], [ %.03947.ph, %.lr.ph.preheader68 ] ; 2 uses
  %.04046 = phi ptr [ %i.am, %.lr.ph ], [ %.04046.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.af = load i64, ptr %.03947, align 8
  %i.ag = and i64 %i.af, %notmask
  %i.ah = lshr i64 %i.ag, %i.c                    ; 2 uses
  store i64 %i.ah, ptr %.04046, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.03947, i64 8 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = shl i64 %i.aj, %i.j
  %i.al = or disjoint i64 %i.ak, %i.ah
  store i64 %i.al, ptr %.04046, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.04046, i64 8 ; 2 uses
  %i.an = add i64 %.048, -64                      ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 63
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.e
  %.040.lcssa = phi ptr [ %0, %bb.e ], [ %i.x, %middle.block ], [ %i.am, %.lr.ph ] ; 3 uses
  %.039.lcssa = phi ptr [ %i.b, %bb.e ], [ %i.w, %middle.block ], [ %i.ai, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i64 [ %3, %bb.e ], [ %i.u, %middle.block ], [ %i.an, %.lr.ph ] ; 4 uses
  %i.ap = icmp samesign ugt i64 %.0.lcssa, %i.j
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.aq = load i64, ptr %.039.lcssa, align 8
  %i.ar = and i64 %i.aq, %notmask
  %i.as = lshr i64 %i.ar, %i.c                    ; 2 uses
  store i64 %i.as, ptr %.040.lcssa, align 8
  %i.at = sub nuw nsw i64 %.0.lcssa, %i.j
  %notmask45 = shl nsw i64 -1, %i.at
  %i.au = xor i64 %notmask45, -1
  %i.av = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, %i.au
  %i.ay = shl i64 %i.ax, %i.j
  %i.az = or disjoint i64 %i.ay, %i.as
  store i64 %i.az, ptr %.040.lcssa, align 8
  br label %bitmap_copy.exit

bb.g:                                             ; preds = %._crit_edge
  %.not43 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not43, label %bitmap_copy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %notmask44 = shl nsw i64 -1, %.0.lcssa
  %i.ba = xor i64 %notmask44, -1
  %i.bb = load i64, ptr %.039.lcssa, align 8
  %i.bc = lshr i64 %i.bb, %i.c
  %i.bd = and i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %.040.lcssa, align 8
  br label %bitmap_copy.exit

bitmap_copy.exit:                                 ; preds = %bb.d, %bb.c, %bb.f, %bb.h, %bb.g
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
  %i.i = sub nuw nsw i64 64, %i.c                 ; 8 uses
  %notmask = shl nsw i64 -1, %i.i                 ; 3 uses
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
  %i.t = and i64 %i.s, %notmask
  %i.u = lshr i64 %i.t, %i.i                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = add i64 %3, -64                          ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i64 [ %i.l, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.052.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.04251.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.04350.unr = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.lcssa68.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.lcssa67.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.lcssa66.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %i.y = icmp ult i64 %i.n, 64
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.z = phi i64 [ %i.an, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.052 = phi i64 [ %i.aq, %.lr.ph ], [ %.052.unr, %.lr.ph.prol.loopexit ]
  %.04251 = phi ptr [ %i.ap, %.lr.ph ], [ %.04251.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.04350 = phi ptr [ %i.ao, %.lr.ph ], [ %.04350.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.aa = load i64, ptr %.04251, align 8
  %i.ab = shl i64 %i.aa, %i.c
  %i.ac = or i64 %i.z, %i.ab
  store i64 %i.ac, ptr %.04350, align 8
  %i.ad = load i64, ptr %.04251, align 8
  %i.ae = and i64 %i.ad, %notmask
  %i.af = lshr i64 %i.ae, %i.i                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.04350, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.04251, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = shl i64 %i.ai, %i.c
  %i.ak = or disjoint i64 %i.af, %i.aj
  store i64 %i.ak, ptr %i.ag, align 8
end_hunk_0
