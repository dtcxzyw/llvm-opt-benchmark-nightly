Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/bitstream?download=true
inline.NumInlined: 15
inline.NumDeleted: 2
begin_hunk_0_@stream_wtell:bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !16
  %i.j = add i64 %i.h, %i.i
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stream_rewind(ptr nofree noundef captures(none) initializes((0, 24)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stream_rseek(ptr nofree noundef captures(none) initializes((0, 24)) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %1, 63                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = lshr i64 %1, 6
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !14
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.f, align 8, !tbaa !14
  %i.h = load i64, ptr %i.e, align 8, !tbaa !17
  %i.i = lshr i64 %i.h, %i.a
  %i.j = sub nuw nsw i64 64, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %storemerge = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.k, align 8, !tbaa !18
  store i64 %storemerge, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stream_wseek(ptr nofree noundef captures(none) initializes((0, 24)) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %1, 63                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = lshr i64 %1, 6
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !14
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !17
  %notmask = shl nsw i64 -1, %i.a
  %i.h = xor i64 %notmask, -1
  %i.i = and i64 %i.g, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.j, align 8, !tbaa !18
  store i64 %i.a, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stream_skip(ptr nofree noundef captures(none) initializes((8, 16)) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 3
  %i.i = load i64, ptr %0, align 8, !tbaa !16
  %i.j = sub i64 %i.h, %i.i
  %i.k = add i64 %i.j, %1                         ; 2 uses
  %i.l = and i64 %i.k, 63                         ; 3 uses
  %i.m = lshr i64 %i.k, 6
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m ; 3 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !14
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %stream_rseek.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.a, align 8, !tbaa !14
  %i.p = load i64, ptr %i.n, align 8, !tbaa !17
  %i.q = lshr i64 %i.p, %i.l
  %i.r = sub nuw nsw i64 64, %i.l
  br label %stream_rseek.exit

stream_rseek.exit:                                ; preds = %bb.a, %bb.b
  %.sink.i = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %storemerge.i = phi i64 [ %i.r, %bb.b ], [ 0, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i, ptr %i.s, align 8, !tbaa !18
  store i64 %storemerge.i, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stream_pad(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16
  %i.b = add i64 %i.a, %1                         ; 3 uses
  %i.c = icmp ugt i64 %i.b, 63
  br i1 %i.c, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %.pre = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 2 uses
  store i64 %.pre, ptr %.promoted, align 8, !tbaa !17
  store i64 0, ptr %i.d, align 8, !tbaa !18
  %i.g = add i64 %i.b, -64                        ; 3 uses
  %i.h = icmp ugt i64 %i.g, 63
  br i1 %i.h, label %.lr.ph.peel.newph, label %._crit_edge

.lr.ph.peel.newph:                                ; preds = %.lr.ph, %.lr.ph.peel.newph
  %i.i = phi ptr [ %i.j, %.lr.ph.peel.newph ], [ %i.f, %.lr.ph ] ; 2 uses
  %.09 = phi i64 [ %i.k, %.lr.ph.peel.newph ], [ %i.g, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !17
  store i64 0, ptr %i.d, align 8, !tbaa !18
  %i.k = add i64 %.09, -64                        ; 3 uses
  %i.l = icmp ugt i64 %i.k, 63
  br i1 %i.l, label %.lr.ph.peel.newph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph.peel.newph, %.lr.ph
  %.lcssa14 = phi ptr [ %i.f, %.lr.ph ], [ %i.j, %.lr.ph.peel.newph ]
  %.lcssa = phi i64 [ %i.g, %.lr.ph ], [ %i.k, %.lr.ph.peel.newph ]
  store ptr %.lcssa14, ptr %i.e, align 8, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i64 [ %.lcssa, %._crit_edge ], [ %i.b, %bb.a ]
  store i64 %.0.lcssa, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @stream_align(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = and i64 %i.i, 56                         ; 3 uses
  %i.k = lshr i64 %i.i, 6
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 3 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !14
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %stream_skip.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.b, align 8, !tbaa !14
  %i.n = load i64, ptr %i.l, align 8, !tbaa !17
  %i.o = lshr i64 %i.n, %i.j
  %i.p = sub nuw nsw i64 64, %i.j
  br label %stream_skip.exit

stream_skip.exit:                                 ; preds = %bb.b, %bb.c
  %.sink.i.i = phi i64 [ %i.o, %bb.c ], [ 0, %bb.b ]
  %storemerge.i.i = phi i64 [ %i.p, %bb.c ], [ 0, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.i, ptr %i.q, align 8, !tbaa !18
  store i64 %storemerge.i.i, ptr %0, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %stream_skip.exit, %bb.a
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 0, 64) i64 @stream_flush(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.b = sub i64 0, %i.a
  %i.c = and i64 %i.b, 63                         ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.c, %i.a                       ; 3 uses
  %i.e = icmp ugt i64 %i.d, 63
  br i1 %i.e, label %.lr.ph.i, label %stream_pad.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted.i = load ptr, ptr %i.g, align 8, !tbaa !14 ; 3 uses
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr i8, ptr %.promoted.i, i64 8 ; 6 uses
  store i64 %.pre.i, ptr %.promoted.i, align 8, !tbaa !17
  store i64 0, ptr %i.f, align 8, !tbaa !18
  %i.i = add i64 %i.d, -64                        ; 5 uses
  %i.j = icmp ugt i64 %i.i, 63
  br i1 %i.j, label %.peel.next.preheader, label %._crit_edge.i

.peel.next.preheader:                             ; preds = %.lr.ph.i
  %i.k = add i64 %i.a, %i.c
  %i.l = add i64 %i.k, -128                       ; 2 uses
  %i.m = lshr i64 %i.l, 6
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 1216
  br i1 %min.iters.check, label %.peel.next.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.peel.next.preheader
  %1 = add i64 %i.a, %i.c
  %2 = add i64 %1, -128
  %i.o = lshr i64 %2, 3
  %i.p = and i64 %i.o, 2305843009213693944
  %i.q = getelementptr i8, ptr %.promoted.i, i64 %i.p
  %scevgep = getelementptr i8, ptr %i.q, i64 16
  %scevgep15 = getelementptr i8, ptr %0, i64 16
  %bound0 = icmp ult ptr %i.h, %scevgep15
  %bound1 = icmp ult ptr %i.f, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.peel.next.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 576460752303423484       ; 4 uses
  %i.r = shl nuw nsw i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %i.h, i64 %i.r     ; 2 uses
  %i.t = shl i64 %n.vec, 6
  %i.u = sub i64 %i.i, %i.t                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> zeroinitializer, ptr %next.gep, align 8, !tbaa !17, !alias.scope !26, !noalias !27
  store <2 x i64> zeroinitializer, ptr %i.w, align 8, !tbaa !17, !alias.scope !26, !noalias !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  store i64 0, ptr %i.f, align 8, !tbaa !18, !alias.scope !27
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.peel.next.preheader17

.peel.next.preheader17:                           ; preds = %vector.memcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.peel.next.preheader ], [ %i.s, %middle.block ]
  %.09.i.ph = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %.peel.next.preheader ], [ %i.u, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader17, %.peel.next
  %i.y = phi ptr [ %i.z, %.peel.next ], [ %.ph, %.peel.next.preheader17 ] ; 2 uses
  %.09.i = phi i64 [ %i.aa, %.peel.next ], [ %.09.i.ph, %.peel.next.preheader17 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !tbaa !17
  store i64 0, ptr %i.f, align 8, !tbaa !18
  %i.aa = add i64 %.09.i, -64                     ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 63
  br i1 %i.ab, label %.peel.next, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %.peel.next, %middle.block, %.lr.ph.i
  %.lcssa5 = phi ptr [ %i.h, %.lr.ph.i ], [ %i.s, %middle.block ], [ %i.z, %.peel.next ]
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.u, %middle.block ], [ %i.aa, %.peel.next ]
  store ptr %.lcssa5, ptr %i.g, align 8, !tbaa !14
  br label %stream_pad.exit

stream_pad.exit:                                  ; preds = %bb.b, %._crit_edge.i
  %.0.lcssa.i = phi i64 [ %.lcssa, %._crit_edge.i ], [ %i.d, %bb.b ]
  store i64 %.0.lcssa.i, ptr %0, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %stream_pad.exit, %bb.a
  ret i64 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stream_copy(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ugt i64 %2, 64
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %stream_write_bits.exit
  %.019 = phi i64 [ %2, %.lr.ph ], [ %i.ag, %stream_write_bits.exit ]
  %i.f = load i64, ptr %1, align 8, !tbaa !16     ; 5 uses
  %i.g = icmp ult i64 %i.f, 64
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !tbaa !18
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.c, align 8, !tbaa !14
  %i.k = load i64, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %i.l = shl i64 %i.k, %i.f
  %i.m = add i64 %i.l, %i.h                       ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !18
  br label %stream_read_bits.exit

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 64, %i.f
  %i.o = lshr i64 %i.k, %i.n
  store i64 %i.o, ptr %i.b, align 8, !tbaa !18
  br label %stream_read_bits.exit

bb.f:                                             ; preds = %bb.b
  %i.p = add i64 %i.f, -64
  store i64 %i.p, ptr %1, align 8, !tbaa !16
  br label %stream_read_bits.exit

stream_read_bits.exit:                            ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ poison, %bb.f ] ; 2 uses
  %i.q = load i64, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.r = shl i64 %.0.i, %i.q
  %i.s = load i64, ptr %i.d, align 8, !tbaa !18
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %i.u = add i64 %i.q, 64                         ; 2 uses
  store i64 %i.u, ptr %0, align 8, !tbaa !16
  %i.v = icmp ult i64 %i.q, -64
  br i1 %i.v, label %bb.g, label %stream_write_bits.exit

bb.g:                                             ; preds = %stream_read_bits.exit
  %i.w = lshr i64 %.0.i, 1
  store i64 %i.q, ptr %0, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.e, align 8, !tbaa !14
  store i64 %i.t, ptr %i.x, align 8, !tbaa !17
  %i.z = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.aa = sub i64 63, %i.z
  %i.ab = lshr i64 %i.w, %i.aa
  br label %stream_write_bits.exit

stream_write_bits.exit:                           ; preds = %stream_read_bits.exit, %bb.g
  %i.ac = phi i64 [ %i.ab, %bb.g ], [ %i.t, %stream_read_bits.exit ]
  %i.ad = phi i64 [ %i.z, %bb.g ], [ %i.u, %stream_read_bits.exit ]
  %notmask.i = shl nsw i64 -1, %i.ad
  %i.ae = xor i64 %notmask.i, -1
  %i.af = and i64 %i.ac, %i.ae
  store i64 %i.af, ptr %i.d, align 8, !tbaa !18
  %i.ag = add i64 %.019, -64                      ; 3 uses
  %i.ah = icmp ugt i64 %i.ag, 64
  br i1 %i.ah, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %stream_write_bits.exit, %bb.a
  %.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.ag, %stream_write_bits.exit ] ; 10 uses
  %.not = icmp eq i64 %.0.lcssa, 0
  br i1 %.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18 ; 3 uses
  %i.ak = load i64, ptr %1, align 8, !tbaa !16    ; 4 uses
  %i.al = icmp ult i64 %i.ak, %.0.lcssa
  br i1 %i.al, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !14
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.aq = shl i64 %i.ap, %i.ak
  %i.ar = add i64 %i.aq, %i.aj                    ; 2 uses
  %i.as = add nuw nsw i64 %i.ak, 64               ; 2 uses
  %i.at = sub nuw nsw i64 %i.as, %.0.lcssa        ; 2 uses
  store i64 %i.at, ptr %1, align 8, !tbaa !16
  %.not.i13 = icmp eq i64 %i.as, %.0.lcssa
  br i1 %.not.i13, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.ai, align 8, !tbaa !18
  br label %stream_read_bits.exit14

bb.k:                                             ; preds = %bb.i
  %i.au = sub nuw nsw i64 64, %i.at
  %i.av = lshr i64 %i.ap, %i.au
  store i64 %i.av, ptr %i.ai, align 8, !tbaa !18
  %i.aw = add nsw i64 %.0.lcssa, -1
  %i.ax = shl i64 2, %i.aw
  %i.ay = add i64 %i.ax, -1
  %i.az = and i64 %i.ar, %i.ay
  br label %stream_read_bits.exit14

bb.l:                                             ; preds = %bb.h
  %i.ba = sub nuw i64 %i.ak, %.0.lcssa
  store i64 %i.ba, ptr %1, align 8, !tbaa !16
  %i.bb = lshr i64 %i.aj, %.0.lcssa
  store i64 %i.bb, ptr %i.ai, align 8, !tbaa !18
  %notmask.i11 = shl nsw i64 -1, %.0.lcssa
  %i.bc = xor i64 %notmask.i11, -1
  %i.bd = and i64 %i.aj, %i.bc
  br label %stream_read_bits.exit14

stream_read_bits.exit14:                          ; preds = %bb.j, %bb.k, %bb.l
  %.0.i12 = phi i64 [ %i.az, %bb.k ], [ %i.ar, %bb.j ], [ %i.bd, %bb.l ] ; 2 uses
  %i.be = load i64, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.bf = shl i64 %.0.i12, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !18
  %i.bi = add i64 %i.bh, %i.bf                    ; 2 uses
  %i.bj = add i64 %i.be, %.0.lcssa                ; 4 uses
end_hunk_0
