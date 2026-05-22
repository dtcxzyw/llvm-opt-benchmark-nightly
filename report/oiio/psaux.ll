inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0_@afm_parser_read_vals:bb.a

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = phi i8 [ 0, %bb.l ], [ %i.at, %bb.m ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.au, ptr %i.av, align 8, !tbaa !38
  br label %bb.r

bb.o:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !481 ; 2 uses
  %.not39 = icmp eq ptr %i.aw, null
  br i1 %.not39, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !482
  %i.ay = call i32 %i.aw(ptr noundef nonnull %storemerge47, i64 noundef %i.ac, ptr noundef %i.ax) #19
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !38
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.k, %bb.j, %bb.i, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !483

.loopexit.loopexit.split.loop.exit58:             ; preds = %afm_stream_read_string.exit
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.loopexit.loopexit.split.loop.exit58, %afm_stream_read_string.exit.thread
  %.03450 = phi i32 [ %i.n, %afm_stream_read_string.exit.thread ], [ %i.bb, %.loopexit.loopexit.split.loop.exit58 ], [ %2, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.03450
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @afm_stream_read_one(ptr noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !368
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.thread26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !366    ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !367  ; 2 uses
  %i.h = icmp ult ptr %i.d, %i.g
  br i1 %i.h, label %.lr.ph, label %.thread26.sink.split

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp ult ptr %i.k, %i.g
  br i1 %i.i, label %.lr.ph, label %.thread26.sink.split

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.k, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !366
  %i.l = load i8, ptr %i.j, align 1, !tbaa !38
  switch i8 %i.l, label %bb.c [
    i8 32, label %.thread26
    i8 9, label %.thread26
    i8 13, label %.thread26.sink.split.loopexit
    i8 10, label %.thread26.sink.split.loopexit
    i8 59, label %.thread26.sink.split.loopexit30
    i8 26, label %.thread26.sink.split
  ]

.thread26.sink.split.loopexit:                    ; preds = %.lr.ph, %.lr.ph
  br label %.thread26.sink.split

.thread26.sink.split.loopexit30:                  ; preds = %.lr.ph
  br label %.thread26.sink.split

.thread26.sink.split:                             ; preds = %bb.b, %.lr.ph, %bb.c, %.thread26.sink.split.loopexit30, %.thread26.sink.split.loopexit
  %.sink = phi i32 [ 1, %.thread26.sink.split.loopexit30 ], [ 2, %.thread26.sink.split.loopexit ], [ 3, %bb.c ], [ 3, %.lr.ph ], [ 3, %bb.b ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !368
  br label %.thread26

.thread26:                                        ; preds = %.lr.ph, %.lr.ph, %.thread26.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %.thread26.sink.split ], [ %i.e, %.lr.ph ], [ %i.e, %.lr.ph ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @afm_stream_skip_spaces(ptr noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !368
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !367  ; 2 uses
  %.promoted = load ptr, ptr %0, align 8, !tbaa !366 ; 2 uses
  %i.f = icmp ult ptr %.promoted, %i.e
  br i1 %i.f, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader, %.backedge
  %i.g = phi ptr [ %i.h, %.backedge ], [ %.promoted, %.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !366
  %i.i = load i8, ptr %i.g, align 1, !tbaa !38
  switch i8 %i.i, label %.loopexit [
    i8 32, label %.backedge
    i8 9, label %.backedge
    i8 13, label %.loopexit.sink.split.loopexit
    i8 10, label %.loopexit.sink.split.loopexit
    i8 59, label %.loopexit.sink.split
    i8 26, label %.thread
  ]

.backedge:                                        ; preds = %.lr.ph, %.lr.ph
  %exitcond.not = icmp eq ptr %i.h, %i.e
  br i1 %exitcond.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %.backedge, %.lr.ph, %.preheader
  br label %.loopexit.sink.split

.loopexit.sink.split.loopexit:                    ; preds = %.lr.ph, %.lr.ph
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.lr.ph, %.loopexit.sink.split.loopexit, %.thread
  %.sink = phi i32 [ 2, %.loopexit.sink.split.loopexit ], [ 3, %.thread ], [ 1, %.lr.ph ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !368
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %bb.a
  ret void
}

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define internal fastcc i64 @PS_Conv_ToFixed(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !26
  %.not = icmp ult ptr %i.c, %1
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1, !tbaa !38    ; 3 uses
  switch i8 %i.d, label %bb.e [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !26
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i8 %i.d, 45
  %i.h = load i8, ptr %i.e, align 1, !tbaa !38    ; 2 uses
  switch i8 %i.h, label %bb.e [
    i8 45, label %.loopexit
    i8 43, label %.loopexit
  ]

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = phi i8 [ %i.h, %bb.d ], [ %i.d, %bb.b ]
  %i.j = phi ptr [ %i.e, %bb.d ], [ %i.c, %bb.b ] ; 2 uses
  %.078 = phi i1 [ %i.g, %bb.d ], [ true, %bb.b ]
  %.not111 = icmp eq i8 %i.i, 46
  br i1 %.not111, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = call fastcc i64 @PS_Conv_ToInt(ptr noundef nonnull %i.b, ptr noundef nonnull %1) ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp sgt i64 %i.k, 32767
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = shl i64 %i.k, 16
  %i.p = and i64 %i.o, 4294901760
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.q = phi ptr [ %i.j, %bb.e ], [ %i.l, %bb.h ], [ %i.l, %bb.g ] ; 7 uses
  %.095 = phi i64 [ 0, %bb.e ], [ %i.p, %bb.h ], [ %i.k, %bb.g ]
  %.not113 = phi i1 [ true, %bb.e ], [ true, %bb.h ], [ false, %bb.g ]
  %.095.fr = freeze i64 %.095                     ; 6 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp ult ptr %i.q, %1
  br i1 %i.s, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.t = load i8, ptr %i.q, align 1, !tbaa !38
  %i.u = icmp eq i8 %i.t, 46
  br i1 %i.u, label %.preheader144, label %bb.w

.preheader144:                                    ; preds = %bb.j
  %storemerge153 = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 4 uses
  %i.v = icmp ult ptr %storemerge153, %1
  br i1 %i.v, label %.lr.ph, label %.loopexit145

.lr.ph:                                           ; preds = %.preheader144
  %i.w = icmp eq i64 %.095.fr, 0
  %i.x = sub i64 %i.a, %i.r
  %scevgep261 = getelementptr i8, ptr %i.q, i64 %i.x ; 2 uses
  br i1 %i.w, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %storemerge157.us = phi ptr [ %storemerge.us, %bb.o ], [ %storemerge153, %.lr.ph ] ; 10 uses
  %.079155.us = phi i64 [ %.281.ph.us, %bb.o ], [ 1, %.lr.ph ] ; 11 uses
  %.087154.us = phi i64 [ %.289.ph.us, %bb.o ], [ 0, %.lr.ph ] ; 11 uses
  %i.y = load i8, ptr %storemerge157.us, align 1, !tbaa !38 ; 4 uses
  switch i8 %i.y, label %bb.k [
    i8 32, label %.loopexit145
    i8 13, label %.loopexit145
    i8 10, label %.loopexit145
    i8 9, label %.loopexit145
    i8 12, label %.loopexit145
    i8 0, label %.loopexit145
  ]

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.z = icmp slt i8 %i.y, 0
  br i1 %i.z, label %.loopexit145, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = zext nneg i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @ft_char_table, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !38
  %i.ad = add nsw i8 %i.y, -58
  %or.cond.us = icmp ult i8 %i.ad, -10
  br i1 %or.cond.us, label %.loopexit145, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = icmp slt i64 %.079155.us, 214748364
  %i.af = icmp slt i64 %.087154.us, 214748364
  %or.cond4.us = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond4.us, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = mul nsw i64 %.087154.us, 10
  %i.ah = sext i8 %i.ac to i64
  %i.ai = add nsw i64 %i.ag, %i.ah
  %i.aj = mul nsw i64 %.079155.us, 10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.289.ph.us = phi i64 [ %.087154.us, %bb.m ], [ %i.ai, %bb.n ] ; 2 uses
  %.281.ph.us = phi i64 [ %.079155.us, %bb.m ], [ %i.aj, %bb.n ] ; 2 uses
  %storemerge.us = getelementptr inbounds nuw i8, ptr %storemerge157.us, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %storemerge.us, %1
  br i1 %exitcond.not, label %.loopexit145, label %.lr.ph.split.us, !llvm.loop !484

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.v
  %storemerge157 = phi ptr [ %storemerge, %bb.v ], [ %storemerge153, %.lr.ph ] ; 10 uses
  %.067156 = phi i64 [ %.2.ph, %bb.v ], [ %2, %.lr.ph ] ; 12 uses
  %.079155 = phi i64 [ %.281.ph, %bb.v ], [ 1, %.lr.ph ] ; 12 uses
  %.087154 = phi i64 [ %.289.ph, %bb.v ], [ 0, %.lr.ph ] ; 11 uses
  %i.ak = load i8, ptr %storemerge157, align 1, !tbaa !38 ; 4 uses
  switch i8 %i.ak, label %bb.p [
    i8 32, label %.loopexit145
    i8 13, label %.loopexit145
    i8 10, label %.loopexit145
    i8 9, label %.loopexit145
    i8 12, label %.loopexit145
    i8 0, label %.loopexit145
  ]

bb.p:                                             ; preds = %.lr.ph.split
  %i.al = icmp slt i8 %i.ak, 0
  br i1 %i.al, label %.loopexit145, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = zext nneg i8 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr @ft_char_table, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !38
  %i.ap = add nsw i8 %i.ak, -58
  %or.cond = icmp ult i8 %i.ap, -10
  br i1 %or.cond, label %.loopexit145, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = icmp slt i64 %.079155, 214748364
  %i.ar = icmp slt i64 %.087154, 214748364
  %or.cond4 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond4, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.as = mul nsw i64 %.087154, 10
  %i.at = sext i8 %i.ao to i64
  %i.au = add nsw i64 %i.as, %i.at                ; 2 uses
  %i.av = icmp sgt i64 %.067156, 0
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = add nsw i64 %.067156, -1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ax = mul nsw i64 %.079155, 10
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r
  %.289.ph = phi i64 [ %.087154, %bb.r ], [ %i.au, %bb.u ], [ %i.au, %bb.t ] ; 2 uses
  %.281.ph = phi i64 [ %.079155, %bb.r ], [ %i.ax, %bb.u ], [ %.079155, %bb.t ] ; 2 uses
  %.2.ph = phi i64 [ %.067156, %bb.r ], [ %.067156, %bb.u ], [ %i.aw, %bb.t ] ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge157, i64 1 ; 2 uses
  %exitcond262.not = icmp eq ptr %storemerge, %1
  br i1 %exitcond262.not, label %.loopexit145, label %.lr.ph.split, !llvm.loop !484

.loopexit145:                                     ; preds = %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %bb.k, %bb.l, %bb.o, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %bb.p, %bb.q, %bb.v, %.preheader144
  %storemerge.lcssa = phi ptr [ %storemerge153, %.preheader144 ], [ %scevgep261, %bb.v ], [ %storemerge157, %bb.q ], [ %storemerge157, %bb.p ], [ %storemerge157, %.lr.ph.split ], [ %storemerge157, %.lr.ph.split ], [ %storemerge157, %.lr.ph.split ], [ %storemerge157, %.lr.ph.split ], [ %storemerge157, %.lr.ph.split ], [ %storemerge157, %.lr.ph.split ], [ %storemerge157.us, %bb.l ], [ %storemerge157.us, %bb.k ], [ %storemerge157.us, %.lr.ph.split.us ], [ %storemerge157.us, %.lr.ph.split.us ], [ %storemerge157.us, %.lr.ph.split.us ], [ %storemerge157.us, %.lr.ph.split.us ], [ %storemerge157.us, %.lr.ph.split.us ], [ %storemerge157.us, %.lr.ph.split.us ], [ %scevgep261, %bb.o ] ; 2 uses
  %.087.lcssa = phi i64 [ 0, %.preheader144 ], [ %.289.ph, %bb.v ], [ %.087154, %bb.q ], [ %.087154, %bb.p ], [ %.087154, %.lr.ph.split ], [ %.087154, %.lr.ph.split ], [ %.087154, %.lr.ph.split ], [ %.087154, %.lr.ph.split ], [ %.087154, %.lr.ph.split ], [ %.087154, %.lr.ph.split ], [ %.087154.us, %bb.l ], [ %.087154.us, %bb.k ], [ %.087154.us, %.lr.ph.split.us ], [ %.087154.us, %.lr.ph.split.us ], [ %.087154.us, %.lr.ph.split.us ], [ %.087154.us, %.lr.ph.split.us ], [ %.087154.us, %.lr.ph.split.us ], [ %.087154.us, %.lr.ph.split.us ], [ %.289.ph.us, %bb.o ]
  %.079.lcssa = phi i64 [ 1, %.preheader144 ], [ %.281.ph, %bb.v ], [ %.079155, %bb.q ], [ %.079155, %bb.p ], [ %.079155, %.lr.ph.split ], [ %.079155, %.lr.ph.split ], [ %.079155, %.lr.ph.split ], [ %.079155, %.lr.ph.split ], [ %.079155, %.lr.ph.split ], [ %.079155, %.lr.ph.split ], [ %.079155.us, %bb.l ], [ %.079155.us, %bb.k ], [ %.079155.us, %.lr.ph.split.us ], [ %.079155.us, %.lr.ph.split.us ], [ %.079155.us, %.lr.ph.split.us ], [ %.079155.us, %.lr.ph.split.us ], [ %.079155.us, %.lr.ph.split.us ], [ %.079155.us, %.lr.ph.split.us ], [ %.281.ph.us, %bb.o ]
  %.067.lcssa = phi i64 [ %2, %.preheader144 ], [ %.2.ph, %bb.v ], [ %.067156, %bb.q ], [ %.067156, %bb.p ], [ %.067156, %.lr.ph.split ], [ %.067156, %.lr.ph.split ], [ %.067156, %.lr.ph.split ], [ %.067156, %.lr.ph.split ], [ %.067156, %.lr.ph.split ], [ %.067156, %.lr.ph.split ], [ %2, %bb.o ], [ %2, %bb.l ], [ %2, %bb.k ], [ %2, %.lr.ph.split.us ], [ %2, %.lr.ph.split.us ], [ %2, %.lr.ph.split.us ], [ %2, %.lr.ph.split.us ], [ %2, %.lr.ph.split.us ], [ %2, %.lr.ph.split.us ]
  store ptr %storemerge.lcssa, ptr %i.b, align 8, !tbaa !26
  br label %bb.w

bb.w:                                             ; preds = %.loopexit145, %bb.j, %bb.i
  %i.ay = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %storemerge.lcssa, %.loopexit145 ] ; 4 uses
  %.390 = phi i64 [ 0, %bb.i ], [ 0, %bb.j ], [ %.087.lcssa, %.loopexit145 ] ; 5 uses
  %.382 = phi i64 [ 1, %bb.i ], [ 1, %bb.j ], [ %.079.lcssa, %.loopexit145 ] ; 3 uses
  %.3 = phi i64 [ %2, %bb.i ], [ %2, %bb.j ], [ %.067.lcssa, %.loopexit145 ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  %i.ba = icmp ult ptr %i.az, %1
  br i1 %i.ba, label %bb.x, label %.thread127

bb.x:                                             ; preds = %bb.w
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !38
  switch i8 %i.bb, label %.thread127 [
    i8 101, label %bb.y
    i8 69, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  store ptr %i.az, ptr %i.b, align 8, !tbaa !26
  %i.bc = call fastcc i64 @PS_Conv_ToInt(ptr noundef nonnull %i.b, ptr noundef nonnull %1) ; 3 uses
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !26  ; 3 uses
  %.not112 = icmp eq ptr %i.az, %i.bd
  br i1 %.not112, label %.loopexit, label %3

3:                                                ; preds = %bb.y
  %4 = icmp sgt i64 %i.bc, 1000
  br i1 %4, label %.thread127.thread, label %bb.z

bb.z:                                             ; preds = %3
  %i.be = icmp sgt i64 %i.bc, -1001               ; 2 uses
  %i.bf = select i1 %i.be, i64 %i.bc, i64 0
  %spec.select118 = add nsw i64 %i.bf, %.3
  br label %.thread127

.thread127:                                       ; preds = %bb.z, %bb.x, %bb.w
  %i.bg = phi ptr [ %i.ay, %bb.w ], [ %i.ay, %bb.x ], [ %i.bd, %bb.z ]
  %.273 = phi i1 [ true, %bb.w ], [ true, %bb.x ], [ %i.be, %bb.z ]
  %.6 = phi i64 [ %.3, %bb.w ], [ %.3, %bb.x ], [ %spec.select118, %bb.z ] ; 4 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !26
  %i.bh = icmp ne i64 %.095.fr, 0
  %i.bi = icmp ne i64 %.390, 0
  %or.cond8 = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond8, label %7, label %.loopexit

.thread127.thread:                                ; preds = %3
  store ptr %i.bd, ptr %0, align 8, !tbaa !26
  %5 = icmp ne i64 %.095.fr, 0
  %6 = icmp ne i64 %.390, 0
  %or.cond8134 = select i1 %5, i1 true, i1 %6
  br i1 %or.cond8134, label %.thread138, label %.loopexit

7:                                                ; preds = %.thread127
  br i1 %.not113, label %bb.aa, label %.thread138

bb.aa:                                            ; preds = %7
  br i1 %.273, label %.preheader143, label %.loopexit

.preheader143:                                    ; preds = %bb.aa
  %i.bj = icmp sgt i64 %.6, 0
  br i1 %i.bj, label %.lr.ph240, label %.preheader

.preheader:                                       ; preds = %.preheader143
  %i.bk = icmp slt i64 %.6, 0
  br i1 %i.bk, label %.lr.ph249, label %._crit_edge

.lr.ph240:                                        ; preds = %.preheader143, %bb.af
  %.7239 = phi i64 [ %i.br, %bb.af ], [ %.6, %.preheader143 ] ; 2 uses
  %.483238 = phi i64 [ %.584, %bb.af ], [ %.382, %.preheader143 ] ; 3 uses
  %.491237 = phi i64 [ %.592, %bb.af ], [ %.390, %.preheader143 ] ; 3 uses
  %.196236 = phi i64 [ %i.bm, %bb.af ], [ %.095.fr, %.preheader143 ] ; 2 uses
  %i.bl = icmp samesign ugt i64 %.196236, 214748363
  br i1 %i.bl, label %.thread138, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph240
  %i.bm = mul nuw nsw i64 %.196236, 10            ; 2 uses
  %i.bn = icmp sgt i64 %.491237, 214748363
  br i1 %i.bn, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bo = icmp eq i64 %.483238, 1
  br i1 %i.bo, label %.thread138, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = sdiv i64 %.483238, 10
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.bq = mul nsw i64 %.491237, 10
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.592 = phi i64 [ %.491237, %bb.ad ], [ %i.bq, %bb.ae ] ; 2 uses
  %.584 = phi i64 [ %i.bp, %bb.ad ], [ %.483238, %bb.ae ] ; 2 uses
  %i.br = add nsw i64 %.7239, -1
  %i.bs = icmp sgt i64 %.7239, 1
  br i1 %i.bs, label %.lr.ph240, label %._crit_edge, !llvm.loop !485

bb.ag:                                            ; preds = %bb.aj
  %i.bt = add nsw i64 %.8248, 1                   ; 2 uses
  %exitcond263.not = icmp eq i64 %i.bt, 0
  br i1 %exitcond263.not, label %._crit_edge, label %.lr.ph249, !llvm.loop !486

.lr.ph249:                                        ; preds = %.preheader, %bb.ag
  %.8248 = phi i64 [ %i.bt, %bb.ag ], [ %.6, %.preheader ]
  %.685247 = phi i64 [ %.786, %bb.ag ], [ %.382, %.preheader ] ; 3 uses
  %.693246 = phi i64 [ %.794, %bb.ag ], [ %.390, %.preheader ] ; 2 uses
  %.297245 = phi i64 [ %i.bu, %bb.ag ], [ %.095.fr, %.preheader ] ; 2 uses
  %i.bu = udiv i64 %.297245, 10                   ; 2 uses
  %i.bv = icmp slt i64 %.685247, 214748364
  br i1 %i.bv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph249
  %i.bw = mul nsw i64 %.685247, 10
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph249
  %i.bx = sdiv i64 %.693246, 10
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.794 = phi i64 [ %.693246, %bb.ah ], [ %i.bx, %bb.ai ] ; 3 uses
  %.786 = phi i64 [ %i.bw, %bb.ah ], [ %.685247, %bb.ai ] ; 2 uses
  %i.by = icmp samesign ugt i64 %.297245, 9
  %i.bz = icmp ne i64 %.794, 0
  %or.cond10 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %or.cond10, label %bb.ag, label %.loopexit

._crit_edge:                                      ; preds = %bb.ag, %bb.af, %.preheader
  %.297.lcssa = phi i64 [ %.095.fr, %.preheader ], [ %i.bm, %bb.af ], [ %i.bu, %bb.ag ] ; 2 uses
  %.693.lcssa = phi i64 [ %.390, %.preheader ], [ %.592, %bb.af ], [ %.794, %bb.ag ] ; 2 uses
  %.685.lcssa = phi i64 [ %.382, %.preheader ], [ %.584, %bb.af ], [ %.786, %bb.ag ]
  %.not115 = icmp eq i64 %.693.lcssa, 0
  br i1 %.not115, label %.thread138, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  %i.ca = tail call i64 @FT_DivFix(i64 noundef %.693.lcssa, i64 noundef %.685.lcssa) #19
  %i.cb = add nsw i64 %i.ca, %.297.lcssa
  br label %.thread138

.thread138:                                       ; preds = %.lr.ph240, %bb.ac, %.thread127.thread, %7, %._crit_edge, %bb.ak
  %.398 = phi i64 [ %.297.lcssa, %._crit_edge ], [ %i.cb, %bb.ak ], [ 2147483647, %7 ], [ 2147483647, %.thread127.thread ], [ 2147483647, %bb.ac ], [ 2147483647, %.lr.ph240 ] ; 2 uses
  %i.cc = sub nsw i64 0, %.398
  %spec.select = select i1 %.078, i64 %.398, i64 %i.cc
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %.thread127.thread, %bb.y, %bb.aa, %bb.c, %bb.a, %.thread127, %bb.f, %bb.d, %bb.d, %.thread138
  %.1 = phi i64 [ 0, %.thread127 ], [ 0, %.thread127.thread ], [ 0, %bb.d ], [ %spec.select, %.thread138 ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @PS_Conv_ToInt(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %.not.i.not = icmp ult ptr %i.a, %1
  br i1 %.not.i.not, label %bb.b, label %PS_Conv_Strtol.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !38    ; 2 uses
  switch i8 %i.c, label %bb.e [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %PS_Conv_Strtol.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i8 %i.c, 45
  %i.g = load i8, ptr %i.d, align 1, !tbaa !38
  switch i8 %i.g, label %bb.e [
    i8 45, label %PS_Conv_Strtol.exit.thread
    i8 43, label %PS_Conv_Strtol.exit.thread
  ]

bb.e:                                             ; preds = %bb.d, %bb.b
  %.054.i = phi i1 [ %i.f, %bb.d ], [ true, %bb.b ]
  %.047.i = phi ptr [ %i.d, %bb.d ], [ %i.a, %bb.b ] ; 5 uses
  %i.h = icmp ult ptr %.047.i, %1
  br i1 %i.h, label %.lr.ph.preheader.i, label %PS_Conv_Strtol.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.047117.i = ptrtoint ptr %.047.i to i64
  %i.i = sub i64 %i.b, %.047117.i
  %scevgep.i = getelementptr i8, ptr %.047.i, i64 %i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.178.i = phi ptr [ %i.x, %bb.l ], [ %.047.i, %.lr.ph.preheader.i ] ; 11 uses
  %.04877.i = phi i64 [ %.2.i, %bb.l ], [ 0, %.lr.ph.preheader.i ] ; 13 uses
  %.05076.i = phi i8 [ %.252.i, %bb.l ], [ 0, %.lr.ph.preheader.i ] ; 10 uses
  %i.j = load i8, ptr %.178.i, align 1, !tbaa !38 ; 4 uses
  switch i8 %i.j, label %bb.f [
    i8 32, label %.thread.loopexit.i
    i8 13, label %.thread.loopexit.i
    i8 10, label %.thread.loopexit.i
    i8 9, label %.thread.loopexit.i
    i8 12, label %.thread.loopexit.i
    i8 0, label %.thread.loopexit.i
  ]

bb.f:                                             ; preds = %.lr.ph.i
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %.thread.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = zext nneg i8 %i.j to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr @ft_char_table, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !38    ; 2 uses
  %i.o = icmp slt i8 %i.n, 0
  br i1 %i.o, label %.thread.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = zext nneg i8 %i.n to i64
  %i.q = add nsw i8 %i.j, -48
  %.not65.i = icmp ult i8 %i.q, 10
  br i1 %.not65.i, label %bb.i, label %.thread.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.r = icmp sgt i64 %.04877.i, 214748364
  br i1 %i.r, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = icmp eq i64 %.04877.i, 214748364
  %i.t = and i64 %i.l, 56
  %i.u = icmp ne i64 %i.t, 48
  %or.cond69.i = and i1 %i.s, %i.u
  br i1 %or.cond69.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = mul nsw i64 %.04877.i, 10
  %i.w = add nuw nsw i64 %i.v, %i.p
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.252.i = phi i8 [ %.05076.i, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %.2.i = phi i64 [ %i.w, %bb.k ], [ 214748364, %bb.j ], [ %.04877.i, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.178.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.x, %1
  br i1 %exitcond.not.i, label %.thread.loopexit.i, label %.lr.ph.i, !llvm.loop !487

.thread.loopexit.i:                               ; preds = %bb.l, %bb.h, %bb.g, %bb.f, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %.050.lcssa.ph.i = phi i8 [ %.252.i, %bb.l ], [ %.05076.i, %bb.g ], [ %.05076.i, %bb.f ], [ %.05076.i, %.lr.ph.i ], [ %.05076.i, %.lr.ph.i ], [ %.05076.i, %.lr.ph.i ], [ %.05076.i, %.lr.ph.i ], [ %.05076.i, %.lr.ph.i ], [ %.05076.i, %.lr.ph.i ], [ %.05076.i, %bb.h ]
  %.048.lcssa.ph.i = phi i64 [ %.2.i, %bb.l ], [ %.04877.i, %bb.g ], [ %.04877.i, %bb.f ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %.lr.ph.i ], [ %.04877.i, %bb.h ]
  %.1.lcssa.ph.i = phi ptr [ %scevgep.i, %bb.l ], [ %.178.i, %bb.g ], [ %.178.i, %bb.f ], [ %.178.i, %.lr.ph.i ], [ %.178.i, %.lr.ph.i ], [ %.178.i, %.lr.ph.i ], [ %.178.i, %.lr.ph.i ], [ %.178.i, %.lr.ph.i ], [ %.178.i, %.lr.ph.i ], [ %.178.i, %bb.h ]
  %i.y = icmp eq i8 %.050.lcssa.ph.i, 0
  %i.z = select i1 %i.y, i64 %.048.lcssa.ph.i, i64 2147483647
  br label %PS_Conv_Strtol.exit

PS_Conv_Strtol.exit:                              ; preds = %bb.e, %.thread.loopexit.i
  %.050.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.z, %.thread.loopexit.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.047.i, %bb.e ], [ %.1.lcssa.ph.i, %.thread.loopexit.i ] ; 7 uses
  %i.aa = sub nsw i64 0, %.050.lcssa.i
  %.5.i = select i1 %.054.i, i64 %.050.lcssa.i, i64 %i.aa ; 6 uses
  %i.ab = icmp eq ptr %.1.lcssa.i, %i.a
  br i1 %i.ab, label %PS_Conv_Strtol.exit.thread, label %bb.m

bb.m:                                             ; preds = %PS_Conv_Strtol.exit
  %i.ac = icmp ult ptr %.1.lcssa.i, %1
  br i1 %i.ac, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.ad = load i8, ptr %.1.lcssa.i, align 1, !tbaa !38
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1 ; 4 uses
  %.not.i12 = icmp uge ptr %i.af, %1
  %i.ag = add i64 %.5.i, -37
  %or.cond.i = icmp ult i64 %i.ag, -35
  %or.cond70.i = or i1 %or.cond.i, %.not.i12
  br i1 %or.cond70.i, label %PS_Conv_Strtol.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !38  ; 2 uses
  switch i8 %i.ah, label %bb.s [
    i8 45, label %bb.q
    i8 43, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 2 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, %1
  br i1 %i.aj, label %PS_Conv_Strtol.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = icmp ne i8 %i.ah, 45
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !38
  switch i8 %i.al, label %bb.s [
    i8 45, label %PS_Conv_Strtol.exit.thread
    i8 43, label %PS_Conv_Strtol.exit.thread
  ]

bb.s:                                             ; preds = %bb.r, %bb.p
  %.054.i14 = phi i1 [ %i.ak, %bb.r ], [ true, %bb.p ]
  %.047.i15 = phi ptr [ %i.ai, %bb.r ], [ %i.af, %bb.p ] ; 5 uses
  %.rhs.trunc.i = trunc nuw nsw i64 %.5.i to i32  ; 2 uses
  %i.am = udiv i32 2147483647, %.rhs.trunc.i
  %.zext.i = zext nneg i32 %i.am to i64           ; 3 uses
  %i.an = urem i32 2147483647, %.rhs.trunc.i
  %i.ao = icmp ult ptr %.047.i15, %1
  br i1 %i.ao, label %.lr.ph.preheader.i20, label %PS_Conv_Strtol.exit36

.lr.ph.preheader.i20:                             ; preds = %bb.s
  %.047117.i21 = ptrtoint ptr %.047.i15 to i64
  %i.ap = sub i64 %i.b, %.047117.i21
  %scevgep.i22 = getelementptr i8, ptr %.047.i15, i64 %i.ap
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.z, %.lr.ph.preheader.i20
  %.178.i24 = phi ptr [ %i.bd, %bb.z ], [ %.047.i15, %.lr.ph.preheader.i20 ] ; 11 uses
  %.04877.i25 = phi i64 [ %.2.i34, %bb.z ], [ 0, %.lr.ph.preheader.i20 ] ; 13 uses
  %.05076.i26 = phi i8 [ %.252.i33, %bb.z ], [ 0, %.lr.ph.preheader.i20 ] ; 10 uses
  %i.aq = load i8, ptr %.178.i24, align 1, !tbaa !38 ; 3 uses
  switch i8 %i.aq, label %bb.t [
    i8 32, label %.thread.loopexit.i27
    i8 13, label %.thread.loopexit.i27
    i8 10, label %.thread.loopexit.i27
    i8 9, label %.thread.loopexit.i27
    i8 12, label %.thread.loopexit.i27
    i8 0, label %.thread.loopexit.i27
  ]

bb.t:                                             ; preds = %.lr.ph.i23
  %i.ar = icmp slt i8 %i.aq, 0
  br i1 %i.ar, label %.thread.loopexit.i27, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = zext nneg i8 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr @ft_char_table, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !38  ; 3 uses
  %i.av = icmp slt i8 %i.au, 0
  br i1 %i.av, label %.thread.loopexit.i27, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = zext nneg i8 %i.au to i64               ; 2 uses
  %.not65.i31 = icmp sgt i64 %.5.i, %i.aw
  br i1 %.not65.i31, label %bb.w, label %.thread.loopexit.i27

bb.w:                                             ; preds = %bb.v
  %i.ax = icmp sgt i64 %.04877.i25, %.zext.i
  br i1 %i.ax, label %bb.z, label %bb.x
end_hunk_0
