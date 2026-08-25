Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/decode?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lxb_encoding_decode_windows_874:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.03652 = phi ptr [ %i.a, %.lr.ph ], [ %.036.be, %.backedge ] ; 5 uses
  %i.h = load i8, ptr %.03652, align 1, !tbaa !29 ; 3 uses
  %i.i = zext nneg i8 %i.h to i32
  %i.j = icmp sgt i8 %i.h, -1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.l = load i64, ptr %i.d, align 8, !tbaa !27
  %.not45 = icmp ult i64 %i.k, %i.l
  br i1 %.not45, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.03652, i64 1
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.03652, i64 1 ; 3 uses
  %i.o = zext i8 %i.h to i64
  %i.p = getelementptr [12 x i8], ptr @lxb_encoding_single_index_windows_874, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -1528
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44   ; 3 uses
  store i32 %i.r, ptr %i.b, align 8, !tbaa !30
  %i.s = icmp eq i32 %i.r, 2097151
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.x = add i64 %i.w, %i.v
  %i.y = load i64, ptr %i.d, align 8, !tbaa !27
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.v
  %i.ac = shl i64 %i.w, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.t, i64 %i.ac, i1 false)
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !26
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !25
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.c, align 8, !tbaa !25
  br label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.j
  %.036.be = phi ptr [ %.1, %bb.j ], [ %i.n, %bb.h ] ; 2 uses
  %.not46 = icmp ult ptr %.036.be, %2
  br i1 %.not46, label %bb.b, label %.loopexit, !llvm.loop !80

bb.i:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !27
  %.not = icmp ult i64 %i.ag, %i.ah
  br i1 %.not, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i, %bb.d
  %.sink73 = phi i64 [ %i.k, %bb.d ], [ %i.ag, %bb.i ] ; 2 uses
  %.sink = phi i32 [ %i.i, %bb.d ], [ %i.r, %bb.i ]
  %.1 = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.i ]  ; 2 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.aj = add nuw i64 %.sink73, 1
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sink73
  store i32 %.sink, ptr %i.ak, align 4, !tbaa !31
  store ptr %.1, ptr %1, align 8, !tbaa !12
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.i, %bb.g, %bb.c
  %.lcssa.sink = phi ptr [ %.03652, %bb.g ], [ %.03652, %bb.c ], [ %i.n, %bb.i ]
  store ptr %.lcssa.sink, ptr %1, align 8, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.backedge, %.loopexit.sink.split, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ 15, %.loopexit.sink.split ], [ 1, %bb.f ], [ 0, %.backedge ]
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 16) i32 @lxb_encoding_decode_x_mac_cyrillic(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %.not4651 = icmp ult ptr %i.a, %2
  br i1 %.not4651, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.03652 = phi ptr [ %i.a, %.lr.ph ], [ %.036.be, %.backedge ] ; 5 uses
  %i.h = load i8, ptr %.03652, align 1, !tbaa !29 ; 3 uses
  %i.i = zext nneg i8 %i.h to i32
  %i.j = icmp sgt i8 %i.h, -1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.l = load i64, ptr %i.d, align 8, !tbaa !27
  %.not45 = icmp ult i64 %i.k, %i.l
  br i1 %.not45, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.03652, i64 1
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.03652, i64 1 ; 3 uses
  %i.o = zext i8 %i.h to i64
  %i.p = getelementptr [12 x i8], ptr @lxb_encoding_single_index_x_mac_cyrillic, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -1528
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44   ; 3 uses
  store i32 %i.r, ptr %i.b, align 8, !tbaa !30
  %i.s = icmp eq i32 %i.r, 2097151
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.x = add i64 %i.w, %i.v
  %i.y = load i64, ptr %i.d, align 8, !tbaa !27
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.v
  %i.ac = shl i64 %i.w, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.t, i64 %i.ac, i1 false)
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !26
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !25
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.c, align 8, !tbaa !25
  br label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.j
  %.036.be = phi ptr [ %.1, %bb.j ], [ %i.n, %bb.h ] ; 2 uses
  %.not46 = icmp ult ptr %.036.be, %2
  br i1 %.not46, label %bb.b, label %.loopexit, !llvm.loop !81

bb.i:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !27
  %.not = icmp ult i64 %i.ag, %i.ah
  br i1 %.not, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i, %bb.d
  %.sink73 = phi i64 [ %i.k, %bb.d ], [ %i.ag, %bb.i ] ; 2 uses
  %.sink = phi i32 [ %i.i, %bb.d ], [ %i.r, %bb.i ]
  %.1 = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.i ]  ; 2 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.aj = add nuw i64 %.sink73, 1
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sink73
  store i32 %.sink, ptr %i.ak, align 4, !tbaa !31
  store ptr %.1, ptr %1, align 8, !tbaa !12
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.i, %bb.g, %bb.c
  %.lcssa.sink = phi ptr [ %.03652, %bb.g ], [ %.03652, %bb.c ], [ %i.n, %bb.i ]
  store ptr %.lcssa.sink, ptr %1, align 8, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.backedge, %.loopexit.sink.split, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ 15, %.loopexit.sink.split ], [ 1, %bb.f ], [ 0, %.backedge ]
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 16) i32 @lxb_encoding_decode_x_user_defined(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load ptr, ptr %1, align 8, !tbaa !12 ; 2 uses
  %i.b = icmp ult ptr %.promoted, %2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i64, ptr %i.c, align 8, !tbaa !27
  %.promoted26 = load i64, ptr %i.a, align 8, !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %4 = phi i64 [ %.promoted26, %.lr.ph ], [ %i.q, %bb.g ] ; 3 uses
  %i.e = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.g ] ; 5 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29
  %i.g = icmp sgt i8 %i.f, -1
  %.not14 = icmp ult i64 %4, %3                   ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not14, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !12
  %i.i = load i8, ptr %i.e, align 1, !tbaa !29
  %i.j = zext i8 %i.i to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %.not14, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !12
  %i.l = load i8, ptr %i.e, align 1, !tbaa !29
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.m, 63232
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sink = phi i32 [ %i.n, %bb.f ], [ %i.j, %bb.d ]
  %i.o = phi ptr [ %i.k, %bb.f ], [ %i.h, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.q = add nuw i64 %4, 1                        ; 2 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %4
  store i32 %.sink, ptr %i.r, align 4, !tbaa !31
  %i.s = icmp ult ptr %i.o, %2
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.g, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 15, %bb.e ], [ 15, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @lxb_encoding_decode_default_single(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @lxb_encoding_decode_utf_8_single(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @lxb_encoding_decode_utf_8_single(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !29    ; 2 uses
  %.not131 = icmp eq i8 %i.e, 0
  %.pre145 = load ptr, ptr %1, align 8, !tbaa !12 ; 3 uses
  br i1 %.not131, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %.pre145, align 1, !tbaa !29 ; 3 uses
  %i.g = icmp ult i8 %i.f, %i.e
  br i1 %i.g, label %bb.ak, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %i.j = icmp ugt i8 %i.f, %i.i
  br i1 %i.j, label %bb.ak, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.pre145, i64 1
  store ptr %i.k, ptr %1, align 8, !tbaa !12
  %i.l = add i32 %i.c, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30
  %i.o = shl i32 %i.n, 6
  %i.p = and i8 %i.f, 63
  %i.q = zext nneg i8 %i.p to i32
  %i.r = or disjoint i32 %i.o, %i.q
  store i32 %i.r, ptr %i.m, align 8, !tbaa !30
  store i8 0, ptr %i.d, align 4, !tbaa !29
  %.pre = load ptr, ptr %1, align 8, !tbaa !12
  br label %bb.ad

bb.f:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !12     ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 10 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !12
  %i.u = load i8, ptr %i.s, align 1, !tbaa !29    ; 10 uses
  %i.v = zext i8 %i.u to i32                      ; 4 uses
  %i.w = icmp sgt i8 %i.u, -1
  br i1 %i.w, label %bb.al, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp samesign ult i8 %i.u, -32
  br i1 %i.x, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = icmp samesign ult i8 %i.u, -62
  br i1 %i.y, label %bb.al, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = and i32 %i.v, 31
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !30
  br label %bb.ad

bb.j:                                             ; preds = %bb.g
  %i.ab = icmp samesign ult i8 %i.u, -16
  br i1 %i.ab, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ac = and i32 %i.v, 15                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !30
  %i.ae = icmp eq ptr %i.t, %2
  br i1 %i.ae, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i8 %i.u, label %bb.aj [
    i8 -32, label %bb.m
    i8 -19, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 -96, ptr %i.af, align 4, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 -65, ptr %i.ag, align 1, !tbaa !29
  br label %bb.aj

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 -128, ptr %i.ah, align 4, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 -97, ptr %i.ai, align 1, !tbaa !29
  br label %bb.aj

bb.o:                                             ; preds = %bb.k
  switch i8 %i.u, label %bb.ad [
    i8 -32, label %bb.p
    i8 -19, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !29   ; 2 uses
  %i.ak = add i8 %i.aj, 64
  %or.cond = icmp ult i8 %i.ak, -32
  br i1 %or.cond, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !12
  %i.am = shl nuw nsw i32 %i.ac, 6
  %i.an = and i8 %i.aj, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !30
  br label %bb.ad

bb.r:                                             ; preds = %bb.o
  %i.aq = load i8, ptr %i.t, align 1, !tbaa !29   ; 2 uses
  %or.cond5 = icmp sgt i8 %i.aq, -97
  br i1 %or.cond5, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !12
  %i.as = shl nuw nsw i32 %i.ac, 6
  %i.at = and i8 %i.aq, 31
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  store i32 %i.av, ptr %i.ad, align 8, !tbaa !30
  br label %bb.ad

bb.t:                                             ; preds = %bb.j
  %i.aw = icmp samesign ult i8 %i.u, -11
  br i1 %i.aw, label %bb.u, label %bb.al

bb.u:                                             ; preds = %bb.t
  %i.ax = and i32 %i.v, 7                         ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !30
  %i.az = icmp eq ptr %i.t, %2
  br i1 %i.az, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  switch i8 %i.u, label %bb.aj [
    i8 -16, label %bb.w
    i8 -12, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 -112, ptr %i.ba, align 4, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 -65, ptr %i.bb, align 1, !tbaa !29
  br label %bb.aj

bb.x:                                             ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 -128, ptr %i.bc, align 4, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 -113, ptr %i.bd, align 1, !tbaa !29
  br label %bb.aj

bb.y:                                             ; preds = %bb.u
  switch i8 %i.u, label %bb.ad [
    i8 -16, label %bb.z
    i8 -12, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.be = load i8, ptr %i.t, align 1, !tbaa !29   ; 2 uses
  %i.bf = add i8 %i.be, 64
  %or.cond8 = icmp ult i8 %i.bf, -48
  br i1 %or.cond8, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store ptr %i.bg, ptr %1, align 8, !tbaa !12
  %i.bh = shl nuw nsw i32 %i.ax, 6
  %i.bi = and i8 %i.be, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj
end_hunk_0
