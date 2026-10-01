Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@vdbeMemRenderNum:bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %.125.i, -1                  ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store i8 45, ptr %i.aa, align 1, !tbaa !741
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge33.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge33.i ], [ %i.z, %bb.h ] ; 2 uses
  %.2.i = phi i32 [ %.125.i, %._crit_edge33.i ], [ %i.y, %bb.h ]
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %.pre-phi.i
  %i.ac = sub nsw i64 23, %.pre-phi.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %i.ab, i64 %i.ac, i1 false)
  %i.ad = sub i32 22, %.2.i
  br label %sqlite3Int64ToText.exit

sqlite3Int64ToText.exit:                          ; preds = %bb.d, %bb.i
  %.0.i = phi i32 [ %i.ad, %bb.i ], [ 1, %bb.d ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i32 %.0.i, ptr %i.ae, align 8, !tbaa !934
  %i.af = load i16, ptr %i.a, align 4, !tbaa !694
  %i.ag = and i16 %i.af, 32
  %.not15 = icmp eq i16 %i.ag, 0
  br i1 %.not15, label %bb.n, label %bb.j

bb.j:                                             ; preds = %sqlite3Int64ToText.exit
  %i.ah = sext i32 %.0.i to i64
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ai, ptr noundef nonnull align 1 dereferenceable(3) @.str.130, i64 3, i1 false)
  %i.aj = load i32, ptr %i.ae, align 8, !tbaa !934
  %i.ak = add nsw i32 %i.aj, 2
  store i32 %i.ak, ptr %i.ae, align 8, !tbaa !934
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.al, align 8, !tbaa !762
  store ptr null, ptr %3, align 8, !tbaa !773
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 32, ptr %i.am, align 8, !tbaa !760
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.an, i8 0, i64 10, i1 false)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !691 ; 2 uses
  %.not14 = icmp eq ptr %i.aq, null
  br i1 %.not14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 114
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1357
  %i.at = zext i8 %i.as to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.au = phi i32 [ %i.at, %bb.l ], [ 17, %bb.k ]
  %i.av = load double, ptr %1, align 8, !tbaa !741
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %3, ptr noundef nonnull @.str.131, i32 noundef %i.au, double noundef %i.av)
  %i.aw = load i32, ptr %i.ao, align 8, !tbaa !759 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  store i8 0, ptr %i.ay, align 1, !tbaa !741
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.aw, ptr %i.az, align 8, !tbaa !934
  br label %bb.n

bb.n:                                             ; preds = %sqlite3Int64ToText.exit, %bb.j, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc double @sqlite3MemRealValueRC(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !788
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !768  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %sqlite3DbStrNDup.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !795
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.c, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !694  ; 2 uses
  %i.j = and i16 %i.i, 512
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = zext i16 %i.i to i32                     ; 2 uses
  %i.l = and i32 %i.k, 24578
  %.not.i = icmp eq i32 %i.l, 2
  br i1 %.not.i, label %bb.e, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %i.k, 4096
  %.not17.i = icmp eq i32 %i.m, 0
  br i1 %.not17.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1114 ; 2 uses
  %i.p = icmp eq ptr %i.o, @sqlite3_free
  br i1 %i.p, label %sqlite3_msize.exit.i, label %bb.g

sqlite3_msize.exit.i:                             ; preds = %bb.f
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.r = tail call i32 %i.q(ptr noundef nonnull %i.c) #59, !inline_history !69
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !934  ; 2 uses
  %i.u = add nsw i32 %i.t, 1
  %.not19.i = icmp ult i32 %i.r, %i.u
  br i1 %.not19.i, label %thread-pre-split.i, label %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge

sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge: ; preds = %sqlite3_msize.exit.i
  %.sink24.i.pre = load ptr, ptr %i.b, align 8, !tbaa !768
  br label %.sink.split.sink.split.i

thread-pre-split.i:                               ; preds = %sqlite3_msize.exit.i
  %.pr.i = load ptr, ptr %i.n, align 8, !tbaa !1114
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split.i, %bb.f
  %i.v = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.o, %bb.f ]
  %i.w = icmp eq ptr %i.v, @sqlite3RCStrUnref
  br i1 %i.w, label %sqlite3VdbeMemZeroTerminateIfAble.exit, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !692
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !934 ; 2 uses
  %.not18.not.i = icmp sgt i32 %i.y, %i.aa
  br i1 %.not18.not.i, label %.sink.split.sink.split.i, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

.sink.split.sink.split.i:                         ; preds = %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge, %bb.h
  %.sink24.i = phi ptr [ %.sink24.i.pre, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.c, %bb.h ]
  %.sink.i = phi i32 [ %i.t, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.aa, %bb.h ]
  %i.ab = sext i32 %.sink.i to i64
  %i.ac = getelementptr inbounds i8, ptr %.sink24.i, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !741
  br label %sqlite3VdbeMemZeroTerminateIfAble.exit

sqlite3VdbeMemZeroTerminateIfAble.exit:           ; preds = %bb.g, %.sink.split.sink.split.i
  %i.ad = load i16, ptr %i.h, align 4, !tbaa !694
  %i.ae = or i16 %i.ad, 512
  store i16 %i.ae, ptr %i.h, align 4, !tbaa !694
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !768
  br label %bb.i

bb.i:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit, %bb.c
  %i.af = phi ptr [ %.pre, %sqlite3VdbeMemZeroTerminateIfAble.exit ], [ %i.c, %bb.c ]
  %i.ag = call fastcc i32 @sqlite3AtoF(ptr noundef %i.af, ptr noundef nonnull %i.a)
  br label %sqlite3DbStrNDup.exit.thread

sqlite3VdbeMemZeroTerminateIfAble.exit.thread:    ; preds = %bb.g, %bb.h, %bb.d, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !934 ; 5 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %sqlite3DbStrNDup.exit.thread, label %bb.j

bb.j:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.thread
  %i.ak = load i8, ptr %i.e, align 2, !tbaa !795
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !768 ; 2 uses
  %i.ao = sext i32 %i.ai to i64                   ; 3 uses
  %.not.i65 = icmp eq ptr %i.an, null
  br i1 %.not.i65, label %sqlite3DbStrNDup.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !691
  %i.aq = add nsw i64 %i.ao, 1
  %i.ar = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.ap, i64 noundef %i.aq), !inline_history !217 ; 5 uses
  %.not9.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i, label %sqlite3DbStrNDup.exit.thread, label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %i.an, i64 range(i64 -2147483648, 4294967296) %i.ao, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  store i8 0, ptr %i.as, align 1, !tbaa !741
  %i.at = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.a)
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !691
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.au, ptr noundef nonnull %i.ar)
  br label %sqlite3DbStrNDup.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.av = and i32 %i.ai, -2                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !691 ; 2 uses
  %i.ay = ashr i32 %i.ai, 1
  %i.az = add nsw i32 %i.ay, 2
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %.not.i67 = icmp eq ptr %i.ax, null
  br i1 %.not.i67, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.ax, i64 noundef %i.ba), !inline_history !37
  br label %sqlite3DbMallocRaw.exit

bb.o:                                             ; preds = %bb.m
  %i.bc = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.ba), !inline_history !37
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.n, %bb.o
  %.0.i68 = phi ptr [ %i.bb, %bb.n ], [ %i.bc, %bb.o ] ; 6 uses
  %.not60 = icmp eq ptr %.0.i68, null
  br i1 %.not60, label %sqlite3DbStrNDup.exit.thread, label %bb.p

bb.p:                                             ; preds = %sqlite3DbMallocRaw.exit
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !768 ; 2 uses
  %i.be = load i8, ptr %i.e, align 2, !tbaa !795
  %i.bf = icmp eq i8 %i.be, 2
  %2 = add nsw i32 %i.av, -1                      ; 2 uses
  %i.bg = icmp sgt i32 %i.ai, 1                   ; 2 uses
  br i1 %i.bf, label %.preheader, label %.preheader76

.preheader76:                                     ; preds = %bb.p
  br i1 %i.bg, label %.lr.ph, label %sqlite3DbFree.exit70

.preheader:                                       ; preds = %bb.p
  br i1 %i.bg, label %.lr.ph86, label %sqlite3DbFree.exit70

.lr.ph86:                                         ; preds = %.preheader, %bb.q
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv102 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !741
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i68, i64 %indvars.iv100
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !741
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !741
  %.not62 = icmp eq i8 %i.bl, 0
  br i1 %.not62, label %bb.q, label %sqlite3DbFree.exit70.loopexit.split.loop.exit122

bb.q:                                             ; preds = %.lr.ph86
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 2 ; 2 uses
  %indvars106 = trunc i64 %indvars.iv.next103 to i32 ; 2 uses
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %3 = icmp sgt i32 %2, %indvars106
  br i1 %3, label %.lr.ph86, label %sqlite3DbFree.exit70, !llvm.loop !4709

.lr.ph:                                           ; preds = %.preheader76, %bb.r
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %bb.r ], [ 0, %.preheader76 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.preheader76 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv95 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !741
  %.not61 = icmp eq i8 %i.bn, 0
  br i1 %.not61, label %bb.r, label %sqlite3DbFree.exit70.loopexit116.split.loop.exit119

bb.r:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !741
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i68, i64 %indvars.iv
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !741
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 2 ; 2 uses
  %indvars98 = trunc i64 %indvars.iv.next96 to i32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %4 = icmp sgt i32 %2, %indvars98
  br i1 %4, label %.lr.ph, label %sqlite3DbFree.exit70, !llvm.loop !4710

sqlite3DbFree.exit70.loopexit.split.loop.exit122: ; preds = %.lr.ph86
  %i.br = trunc nuw nsw i64 %indvars.iv102 to i32
  br label %sqlite3DbFree.exit70

sqlite3DbFree.exit70.loopexit116.split.loop.exit119: ; preds = %.lr.ph
  %i.bs = trunc nuw nsw i64 %indvars.iv95 to i32
  br label %sqlite3DbFree.exit70

sqlite3DbFree.exit70:                             ; preds = %bb.r, %bb.q, %sqlite3DbFree.exit70.loopexit116.split.loop.exit119, %sqlite3DbFree.exit70.loopexit.split.loop.exit122, %.preheader76, %.preheader
  %.251 = phi i32 [ 0, %.preheader76 ], [ 0, %.preheader ], [ %indvars106, %bb.q ], [ %i.br, %sqlite3DbFree.exit70.loopexit.split.loop.exit122 ], [ %i.bs, %sqlite3DbFree.exit70.loopexit116.split.loop.exit119 ], [ %indvars98, %bb.r ]
  %.2 = phi i64 [ 0, %.preheader76 ], [ 0, %.preheader ], [ %indvars.iv.next101, %bb.q ], [ %indvars.iv100, %sqlite3DbFree.exit70.loopexit.split.loop.exit122 ], [ %indvars.iv, %sqlite3DbFree.exit70.loopexit116.split.loop.exit119 ], [ %indvars.iv.next, %bb.r ]
  %i.bt = and i64 %.2, 4294967295
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i68, i64 %i.bt
  store i8 0, ptr %i.bu, align 1, !tbaa !741
  %i.bv = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %.0.i68, ptr noundef nonnull %i.a)
  %i.bw = icmp slt i32 %.251, %i.av
  %spec.store.select = select i1 %i.bw, i32 -100, i32 %i.bv
  %i.bx = load ptr, ptr %i.aw, align 8, !tbaa !691
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.bx, ptr noundef nonnull %.0.i68)
  br label %sqlite3DbStrNDup.exit.thread

sqlite3DbStrNDup.exit.thread:                     ; preds = %bb.k, %bb.l, %sqlite3DbMallocRaw.exit, %sqlite3DbFree.exit70, %sqlite3DbFree.exit, %bb.i, %sqlite3VdbeMemZeroTerminateIfAble.exit.thread, %bb.a
  %.254 = phi i32 [ 0, %bb.a ], [ %i.ag, %bb.i ], [ 0, %sqlite3VdbeMemZeroTerminateIfAble.exit.thread ], [ 0, %sqlite3DbMallocRaw.exit ], [ %i.at, %sqlite3DbFree.exit ], [ %spec.store.select, %sqlite3DbFree.exit70 ], [ 0, %bb.l ], [ 0, %bb.k ]
  %.not64 = icmp eq ptr %1, null
  br i1 %.not64, label %bb.t, label %bb.s

bb.s:                                             ; preds = %sqlite3DbStrNDup.exit.thread
  store i32 %.254, ptr %1, align 4, !tbaa !576
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %sqlite3DbStrNDup.exit.thread
  %i.by = load double, ptr %i.a, align 8, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret double %i.by
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 4) i32 @sqlite3AtoF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #34 {
bb.a:
  store double 0.000000e+00, ptr %1, align 8, !tbaa !788
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.079 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.b ]  ; 3 uses
  %i.a = load i8, ptr %.079, align 1, !tbaa !741  ; 3 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !741
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.079, i64 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !4711

bb.c:                                             ; preds = %bb.b
  %.not96.not = icmp eq i8 %i.a, 45               ; 3 uses
  %i.g = icmp eq i8 %i.a, 43
  %i.h = or i1 %.not96.not, %i.g
  %.180.idx = zext i1 %i.h to i64
  %.180 = getelementptr inbounds nuw i8, ptr %.079, i64 %.180.idx ; 3 uses
  %i.i = load i8, ptr %.180, align 1, !tbaa !741  ; 3 uses
  %i.j = add i8 %i.i, -58
  %.not90107 = icmp ult i8 %i.j, -10
  br i1 %.not90107, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.c, %.loopexit100
  %i.k = phi i8 [ %i.s, %.loopexit100 ], [ %i.i, %bb.c ]
  %.066111 = phi i32 [ %i.q, %.loopexit100 ], [ 0, %bb.c ]
  %.073109 = phi i64 [ %i.o, %.loopexit100 ], [ 0, %bb.c ]
  %.281108 = phi ptr [ %i.p, %.loopexit100 ], [ %.180, %bb.c ]
  %i.l = mul nuw nsw i64 %.073109, 10
  %i.m = zext nneg i8 %i.k to i64
  %i.n = add nsw i64 %i.l, -48
  %i.o = add nsw i64 %i.n, %i.m                   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.281108, i64 1 ; 5 uses
  %i.q = add nuw nsw i32 %.066111, 1              ; 4 uses
  %i.r = icmp samesign ugt i64 %i.o, 922337203685477578
  %i.s = load i8, ptr %i.p, align 1, !tbaa !741   ; 4 uses
  %i.t = add i8 %i.s, -58
  %.not98103 = icmp ult i8 %i.t, -10              ; 2 uses
  br i1 %i.r, label %.preheader99, label %.loopexit100

.preheader99:                                     ; preds = %.lr.ph112
  br i1 %.not98103, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader99, %.lr.ph
  %.170105 = phi i32 [ %i.v, %.lr.ph ], [ 0, %.preheader99 ]
  %.382104 = phi ptr [ %i.u, %.lr.ph ], [ %i.p, %.preheader99 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.382104, i64 1 ; 3 uses
  %i.v = add nuw nsw i32 %.170105, 1              ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !741   ; 2 uses
  %i.x = add i8 %i.w, -58
  %.not98 = icmp ult i8 %i.x, -10
  br i1 %.not98, label %._crit_edge, label %.lr.ph, !llvm.loop !4712

.loopexit100:                                     ; preds = %.lr.ph112
  br i1 %.not98103, label %._crit_edge, label %.lr.ph112, !llvm.loop !4713

._crit_edge:                                      ; preds = %.loopexit100, %.lr.ph, %.preheader99, %bb.c
  %.281.lcssa = phi ptr [ %.180, %bb.c ], [ %i.u, %.lr.ph ], [ %i.p, %.preheader99 ], [ %i.p, %.loopexit100 ] ; 2 uses
  %.073.lcssa = phi i64 [ 0, %bb.c ], [ %i.o, %.lr.ph ], [ %i.o, %.preheader99 ], [ %i.o, %.loopexit100 ] ; 3 uses
  %.069.lcssa = phi i32 [ 0, %bb.c ], [ %i.v, %.lr.ph ], [ 0, %.preheader99 ], [ 0, %.loopexit100 ] ; 3 uses
  %.066.lcssa = phi i32 [ 0, %bb.c ], [ %i.q, %.lr.ph ], [ %i.q, %.preheader99 ], [ %i.q, %.loopexit100 ] ; 3 uses
  %.lcssa101 = phi i8 [ %i.i, %bb.c ], [ %i.w, %.lr.ph ], [ %i.s, %.preheader99 ], [ %i.s, %.loopexit100 ] ; 2 uses
  %i.y = icmp eq i8 %.lcssa101, 46
  br i1 %i.y, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %.584118 = getelementptr inbounds nuw i8, ptr %.281.lcssa, i64 1 ; 3 uses
  %i.z = load i8, ptr %.584118, align 1, !tbaa !741 ; 3 uses
  %i.aa = add i8 %i.z, -58
  %.not91119 = icmp ult i8 %i.aa, -10
  br i1 %.not91119, label %.loopexit, label %.lr.ph124

.lr.ph124:                                        ; preds = %.preheader, %bb.e
  %i.ab = phi i8 [ %i.aj, %bb.e ], [ %i.z, %.preheader ]
  %.584123 = phi ptr [ %.584, %bb.e ], [ %.584118, %.preheader ]
  %.167122 = phi i32 [ %.268, %bb.e ], [ %.066.lcssa, %.preheader ] ; 2 uses
  %.372121 = phi i32 [ %.4, %bb.e ], [ %.069.lcssa, %.preheader ] ; 2 uses
  %.174120 = phi i64 [ %.275, %bb.e ], [ %.073.lcssa, %.preheader ] ; 3 uses
  %i.ac = icmp ult i64 %.174120, 922337203685477579
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph124
  %i.ad = mul nuw nsw i64 %.174120, 10
  %i.ae = zext nneg i8 %i.ab to i64
  %i.af = add nsw i64 %i.ad, -48
  %i.ag = add nsw i64 %i.af, %i.ae
  %i.ah = add nsw i32 %.372121, -1
  %i.ai = add nsw i32 %.167122, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph124
  %.275 = phi i64 [ %i.ag, %bb.d ], [ %.174120, %.lr.ph124 ] ; 2 uses
  %.4 = phi i32 [ %i.ah, %bb.d ], [ %.372121, %.lr.ph124 ] ; 2 uses
  %.268 = phi i32 [ %i.ai, %bb.d ], [ %.167122, %.lr.ph124 ] ; 2 uses
  %.584 = getelementptr inbounds nuw i8, ptr %.584123, i64 1 ; 3 uses
  %i.aj = load i8, ptr %.584, align 1, !tbaa !741 ; 3 uses
  %i.ak = add i8 %i.aj, -58
  %.not91 = icmp ult i8 %i.ak, -10
  br i1 %.not91, label %.loopexit, label %.lr.ph124, !llvm.loop !4714

.loopexit:                                        ; preds = %bb.e, %.preheader, %._crit_edge
  %i.al = phi i8 [ %.lcssa101, %._crit_edge ], [ %i.z, %.preheader ], [ %i.aj, %bb.e ]
  %.685 = phi ptr [ %.281.lcssa, %._crit_edge ], [ %.584118, %.preheader ], [ %.584, %bb.e ] ; 4 uses
  %.376 = phi i64 [ %.073.lcssa, %._crit_edge ], [ %.073.lcssa, %.preheader ], [ %.275, %bb.e ] ; 2 uses
  %.5 = phi i32 [ %.069.lcssa, %._crit_edge ], [ %.069.lcssa, %.preheader ], [ %.4, %bb.e ] ; 3 uses
  %.3 = phi i32 [ %.066.lcssa, %._crit_edge ], [ %.066.lcssa, %.preheader ], [ %.268, %bb.e ]
  %.065 = phi i32 [ 1, %._crit_edge ], [ 2, %.preheader ], [ 2, %bb.e ] ; 2 uses
  switch i8 %i.al, label %bb.k [
    i8 101, label %bb.f
    i8 69, label %bb.f
  ]

bb.f:                                             ; preds = %.loopexit, %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %.685, i64 1 ; 2 uses
  %i.an = add nuw nsw i32 %.065, 1
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !741
  switch i8 %i.ao, label %bb.i [
    i8 45, label %bb.g
    i8 43, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.685, i64 2
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.685, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.786 = phi ptr [ %i.ap, %bb.g ], [ %i.aq, %bb.h ], [ %i.am, %bb.f ] ; 3 uses
  %.064 = phi i32 [ -1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.f ]
  %i.ar = load i8, ptr %.786, align 1, !tbaa !741 ; 2 uses
  %i.as = add i8 %i.ar, -58
  %.not92 = icmp ult i8 %i.as, -10
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = zext nneg i8 %i.ar to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %.8130 = getelementptr inbounds nuw i8, ptr %.786, i64 1 ; 3 uses
  %i.av = load i8, ptr %.8130, align 1, !tbaa !741 ; 2 uses
  %i.aw = add i8 %i.av, -58
  %.not93131 = icmp ult i8 %i.aw, -10
  br i1 %.not93131, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.j, %.lr.ph135
  %i.ax = phi i8 [ %i.be, %.lr.ph135 ], [ %i.av, %bb.j ]
  %.8133 = phi ptr [ %.8, %.lr.ph135 ], [ %.8130, %bb.j ]
  %.0132 = phi i32 [ %i.bd, %.lr.ph135 ], [ %i.au, %bb.j ] ; 2 uses
  %i.ay = icmp slt i32 %.0132, 10000
  %i.az = mul nsw i32 %.0132, 10
  %i.ba = zext nneg i8 %i.ax to i32
  %i.bb = add i32 %i.az, -48
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = select i1 %i.ay, i32 %i.bc, i32 10000   ; 2 uses
  %.8 = getelementptr inbounds nuw i8, ptr %.8133, i64 1 ; 3 uses
  %i.be = load i8, ptr %.8, align 1, !tbaa !741   ; 2 uses
  %i.bf = add i8 %i.be, -58
  %.not93 = icmp ult i8 %i.bf, -10
  br i1 %.not93, label %._crit_edge136, label %.lr.ph135, !llvm.loop !4715

._crit_edge136:                                   ; preds = %.lr.ph135, %bb.j
  %.0.lcssa = phi i32 [ %i.au, %bb.j ], [ %i.bd, %.lr.ph135 ]
  %.8.lcssa = phi ptr [ %.8130, %bb.j ], [ %.8, %.lr.ph135 ]
  %i.bg = mul nsw i32 %.0.lcssa, %.064
  %i.bh = add nsw i32 %i.bg, %.5
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge136, %bb.i, %.loopexit
end_hunk_0
begin_hunk_1_@sqlite3ExprCodeTarget:bb.a
  %.us-phi1313 = phi ptr [ %.0513841.us, %.lr.ph.split.us ], [ %.0513841, %bb.e ]
  tail call fastcc void @exprCodeBetween(ptr noundef nonnull %0, ptr noundef nonnull %.us-phi1313, i32 noundef %2, ptr noundef null, i32 noundef 0)
  br label %.critedge

bb.fy:                                            ; preds = %bb.e
  %i.aej = getelementptr inbounds nuw i8, ptr %.0513841, i64 4
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !801
  %i.ael = and i32 %i.aek, 512
  %.not570 = icmp eq i32 %i.ael, 0
  br i1 %.not570, label %.split1334.us, label %.backedge

.split1334.us:                                    ; preds = %bb.fy, %bb.b
  %.us-phi1336 = phi ptr [ %.0513841.us, %bb.b ], [ %.0513841, %bb.fy ]
  %i.aem = getelementptr inbounds nuw i8, ptr %.us-phi1336, i64 16
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !802
  tail call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.aen, i32 noundef %2)
  %i.aeo = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %i.h, i32 noundef 181, i32 noundef %2) ; 0 uses
  br label %.critedge

.backedge:                                        ; preds = %bb.e, %bb.e, %bb.fy
  %.0513.be.in = getelementptr inbounds nuw i8, ptr %.0513841, i64 16
  %.0513.be = load ptr, ptr %.0513.be.in, align 8, !tbaa !802 ; 2 uses
  %i.aep = icmp eq ptr %.0513.be, null
  br i1 %i.aep, label %.thread, label %.lr.ph.splitthread-pre-split, !llvm.loop !5495

.split1315.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1317 = phi ptr [ %.0513841.us, %.lr.ph.split.us ], [ %.0513841, %bb.e ] ; 3 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.us-phi1317, i64 64
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !741 ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.us-phi1317, i64 48
  %i.aet = load i16, ptr %i.aes, align 8, !tbaa !2206 ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.us-phi1317, i64 44
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !2268
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aer, i64 54
  %i.aex = load i16, ptr %i.aew, align 2, !tbaa !1161
  %i.aey = sext i16 %i.aex to i32
  %i.aez = add nsw i32 %i.aey, 1
  %i.afa = mul nsw i32 %i.aez, %i.aev
  %i.afb = tail call fastcc signext i16 @sqlite3TableColumnToStorage(ptr noundef %i.aer, i16 noundef signext %i.aet)
  %i.afc = sext i16 %i.afb to i32
  %i.afd = add nsw i32 %i.afc, 1
  %i.afe = add i32 %i.afd, %i.afa
  %i.aff = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 158, i32 noundef %i.afe, i32 noundef %2) ; 0 uses
  %i.afg = icmp sgt i16 %i.aet, -1
  br i1 %i.afg, label %bb.fz, label %codeVectorCompare.exit

bb.fz:                                            ; preds = %.split1315.us
  %i.afh = zext nneg i16 %i.aet to i64
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !1162
  %i.afk = getelementptr inbounds nuw [16 x i8], ptr %i.afj, i64 %i.afh
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 9
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !1181
  %i.afn = icmp eq i8 %i.afm, 69
  br i1 %i.afn, label %bb.ga, label %codeVectorCompare.exit

bb.ga:                                            ; preds = %bb.fz
  %i.afo = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %i.h, i32 noundef 88, i32 noundef %2) ; 0 uses
  br label %codeVectorCompare.exit

.split1319.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.673)
  br label %codeVectorCompare.exit

.split1322.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1324 = phi ptr [ %.0513841.us, %.lr.ph.split.us ], [ %.0513841, %bb.e ] ; 5 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 5 uses
  %i.afq = load i16, ptr %i.afp, align 1
  %i.afr = getelementptr inbounds nuw i8, ptr %.us-phi1324, i64 56
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !2404 ; 6 uses
  %.not567 = icmp eq ptr %i.afs, null
  br i1 %.not567, label %bb.gf, label %bb.gb

bb.gb:                                            ; preds = %.split1322.us
  %i.aft = load i8, ptr %i.afs, align 8, !tbaa !2363
  %.not568 = icmp eq i8 %i.aft, 0
  br i1 %.not568, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 16
  %i.afv = load i32, ptr %i.afu, align 8, !tbaa !2359
  %i.afw = getelementptr inbounds nuw i8, ptr %.us-phi1324, i64 50
  %i.afx = load i16, ptr %i.afw, align 2, !tbaa !2210
  %i.afy = sext i16 %i.afx to i32
  %i.afz = add nsw i32 %i.afv, %i.afy
  br label %codeVectorCompare.exit

bb.gd:                                            ; preds = %bb.gb
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afs, i64 1
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !2367
  %.not569 = icmp eq i8 %i.agb, 0
  br i1 %.not569, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afs, i64 12
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !2366
  %i.age = getelementptr inbounds nuw i8, ptr %i.afs, i64 32
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !2360
  %i.agg = getelementptr inbounds nuw i8, ptr %.us-phi1324, i64 50
  %i.agh = load i16, ptr %i.agg, align 2, !tbaa !2210
  %i.agi = sext i16 %i.agh to i64
  %i.agj = getelementptr inbounds [32 x i8], ptr %i.agf, i64 %i.agi
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 24
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !2362
  %i.agm = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 95, i32 noundef %i.agd, i32 noundef %i.agl, i32 noundef %2) ; 0 uses
  br label %codeVectorCompare.exit

bb.gf:                                            ; preds = %bb.gd, %.split1322.us
  %i.agn = getelementptr inbounds nuw i8, ptr %.us-phi1324, i64 44
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !2268
  %i.agp = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 20, i32 noundef %i.ago, i32 noundef 0, i32 noundef %2)
  %i.agq = load i16, ptr %i.afp, align 1
  %i.agr = and i16 %i.agq, -129
  store i16 %i.agr, ptr %i.afp, align 1
  %i.ags = getelementptr inbounds nuw i8, ptr %.us-phi1324, i64 16
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !802
  tail call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.agt, i32 noundef %2)
  %i.agu = and i16 %i.afq, 128
  %i.agv = load i16, ptr %i.afp, align 1
  %i.agw = and i16 %i.agv, -129
  %i.agx = or disjoint i16 %i.agw, %i.agu
  store i16 %i.agx, ptr %i.afp, align 1
  %i.agy = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.agz = load i32, ptr %i.agy, align 8, !tbaa !711
  %i.aha = load ptr, ptr %i.h, align 8, !tbaa !687
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 103
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !928
  %.not.i.i.i644 = icmp eq i8 %i.ahc, 0
  br i1 %.not.i.i.i644, label %bb.gg, label %sqlite3VdbeJumpHere.exit646

bb.gg:                                            ; preds = %bb.gf
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !710
  %i.ahf = sext i32 %i.agp to i64
  %i.ahg = getelementptr inbounds [24 x i8], ptr %i.ahe, i64 %i.ahf
  br label %sqlite3VdbeJumpHere.exit646

sqlite3VdbeJumpHere.exit646:                      ; preds = %bb.gf, %bb.gg
  %.0.i.i.i645 = phi ptr [ %i.ahg, %bb.gg ], [ @sqlite3VdbeGetOp.dummy, %bb.gf ]
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0.i.i.i645, i64 8
  store i32 %i.agz, ptr %i.ahh, align 8, !tbaa !955
  br label %codeVectorCompare.exit

.split1326.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1327 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi1328 = phi ptr [ %.0513841.us, %.lr.ph.split.us ], [ %.0513841, %bb.e ] ; 2 uses
  store i32 %.us-phi1327, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  %i.ahi = load ptr, ptr %0, align 8, !tbaa !1001 ; 4 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.us-phi1328, i64 32
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !741 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8 ; 2 uses
  %i.ahm = load i32, ptr %i.ahk, align 8, !tbaa !576 ; 3 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.aho = load i32, ptr %i.ahn, align 8, !tbaa !2096
  %i.ahp = add nsw i32 %i.aho, -1                 ; 4 uses
  store i32 %i.ahp, ptr %i.ahn, align 8, !tbaa !2096
  %i.ahq = getelementptr inbounds nuw i8, ptr %.us-phi1328, i64 16
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !802 ; 2 uses
  %.not564 = icmp eq ptr %i.ahr, null             ; 2 uses
  br i1 %.not564, label %bb.gk, label %sqlite3ExprDup.exit

sqlite3ExprDup.exit:                              ; preds = %.split1326.us
  %i.ahs = tail call fastcc ptr @exprDup(ptr noundef %i.ahi, ptr noundef nonnull readonly %i.ahr, i32 noundef 0, ptr noundef null), !inline_history !278 ; 6 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahi, i64 103
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !928
  %.not565 = icmp eq i8 %i.ahu, 0
  br i1 %.not565, label %bb.gj, label %bb.gh

bb.gh:                                            ; preds = %sqlite3ExprDup.exit
  %.not.i648 = icmp eq ptr %i.ahs, null
  br i1 %.not.i648, label %sqlite3ExprDelete.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.ahi, ptr noundef %i.ahs), !inline_history !2
  br label %sqlite3ExprDelete.exit

bb.gj:                                            ; preds = %sqlite3ExprDup.exit
  %i.ahv = call fastcc i32 @exprCodeVector(ptr noundef nonnull %0, ptr noundef %i.ahs, ptr noundef %i.c)
  tail call fastcc void @sqlite3ExprToRegister(ptr noundef %i.ahs, i32 noundef %i.ahv)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  store i8 54, ptr %6, align 8, !tbaa !2042
  %i.ahw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ahs, ptr %i.ahw, align 8, !tbaa !802
  store i32 0, ptr %i.c, align 4, !tbaa !576
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.split1326.us
  %.0508 = phi ptr [ %6, %bb.gj ], [ null, %.split1326.us ]
  %.0 = phi ptr [ %i.ahs, %bb.gj ], [ null, %.split1326.us ] ; 2 uses
  %i.ahx = add nsw i32 %i.ahm, -1                 ; 2 uses
  %i.ahy = icmp sgt i32 %i.ahm, 1
  br i1 %i.ahy, label %.lr.ph845, label %._crit_edge

.lr.ph845:                                        ; preds = %bb.gk
  %i.ahz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aia = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  %i.aic = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.aid = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.gl

bb.gl:                                            ; preds = %.lr.ph845, %sqlite3VdbeResolveLabel.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph845 ], [ %indvars.iv.next, %sqlite3VdbeResolveLabel.exit ] ; 2 uses
  %.1844 = phi ptr [ %.0508, %.lr.ph845 ], [ %.2, %sqlite3VdbeResolveLabel.exit ]
  %i.aie = getelementptr inbounds nuw [24 x i8], ptr %i.ahl, i64 %indvars.iv ; 2 uses
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !1180 ; 2 uses
  br i1 %.not564, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  store ptr %i.aif, ptr %i.ahz, align 8, !tbaa !1328
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm
  %.2 = phi ptr [ %.1844, %bb.gm ], [ %i.aif, %bb.gl ] ; 2 uses
  %i.aig = load i32, ptr %i.ahn, align 8, !tbaa !2096 ; 2 uses
  %i.aih = add nsw i32 %i.aig, -1                 ; 2 uses
  store i32 %i.aih, ptr %i.ahn, align 8, !tbaa !2096
  call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef %.2, i32 noundef %i.aih, i32 noundef 16)
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aie, i64 24
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !1180
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.aij, i32 noundef %2)
  %i.aik = load i32, ptr %i.aia, align 8, !tbaa !711 ; 3 uses
  %i.ail = load i32, ptr %i.aib, align 4, !tbaa !1206
  %.not.i.i649 = icmp sgt i32 %i.ail, %i.aik
  br i1 %.not.i.i649, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aim = call fastcc i32 @growOp3(ptr noundef nonnull %i.h, i32 noundef 9, i32 noundef 0, i32 noundef %i.ahp, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeGoto.exit

bb.gp:                                            ; preds = %bb.gn
  %i.ain = add nsw i32 %i.aik, 1
  store i32 %i.ain, ptr %i.aia, align 8, !tbaa !711
  %i.aio = load ptr, ptr %i.aic, align 8, !tbaa !710
  %i.aip = sext i32 %i.aik to i64
  %i.aiq = getelementptr inbounds [24 x i8], ptr %i.aio, i64 %i.aip ; 7 uses
  store i8 9, ptr %i.aiq, align 8, !tbaa !938
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 2
  store i16 0, ptr %i.air, align 2, !tbaa !957
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aiq, i64 4
  store i32 0, ptr %i.ais, align 4, !tbaa !954
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  store i32 %i.ahp, ptr %i.ait, align 8, !tbaa !955
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aiq, i64 12
  store i32 0, ptr %i.aiu, align 4, !tbaa !956
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiq, i64 16
  store ptr null, ptr %i.aiv, align 8, !tbaa !741
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1
  store i8 0, ptr %i.aiw, align 1, !tbaa !939
  br label %sqlite3VdbeGoto.exit

sqlite3VdbeGoto.exit:                             ; preds = %bb.go, %bb.gp
  %i.aix = load ptr, ptr %i.aid, align 8, !tbaa !1232 ; 4 uses
  %i.aiy = sub i32 0, %i.aig                      ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aix, i64 76
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !2385
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aix, i64 72
  %i.ajc = load i32, ptr %i.ajb, align 8, !tbaa !2096
  %i.ajd = add nsw i32 %i.ajc, %i.aja
  %i.aje = icmp slt i32 %i.ajd, 0
  br i1 %i.aje, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %sqlite3VdbeGoto.exit
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.aix, ptr noundef nonnull readonly %i.h, i32 noundef %i.aiy)
  br label %sqlite3VdbeResolveLabel.exit

bb.gr:                                            ; preds = %sqlite3VdbeGoto.exit
  %i.ajf = load i32, ptr %i.aia, align 8, !tbaa !711
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aix, i64 80
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !1253
  %i.aji = sext i32 %i.aiy to i64
  %i.ajj = getelementptr inbounds [4 x i8], ptr %i.ajh, i64 %i.aji
  store i32 %i.ajf, ptr %i.ajj, align 4, !tbaa !576
  br label %sqlite3VdbeResolveLabel.exit

sqlite3VdbeResolveLabel.exit:                     ; preds = %bb.gq, %bb.gr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %7 = trunc nuw i64 %indvars.iv.next to i32
  %8 = icmp sgt i32 %i.ahx, %7
  br i1 %8, label %bb.gl, label %._crit_edge, !llvm.loop !5496

._crit_edge:                                      ; preds = %sqlite3VdbeResolveLabel.exit, %bb.gk
  %i.ajk = and i32 %i.ahm, 1
  %.not566 = icmp eq i32 %i.ajk, 0
  br i1 %.not566, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %._crit_edge
  %i.ajl = sext i32 %i.ahx to i64
  %i.ajm = getelementptr inbounds [24 x i8], ptr %i.ahl, i64 %i.ajl
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !1180
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.ajn, i32 noundef %2)
  br label %bb.gu

bb.gt:                                            ; preds = %._crit_edge
  %i.ajo = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 76, i32 noundef 0, i32 noundef %2) ; 0 uses
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.not.i651 = icmp eq ptr %.0, null
  br i1 %.not.i651, label %sqlite3ExprDelete.exit652, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.ahi, ptr noundef %.0), !inline_history !2
  br label %sqlite3ExprDelete.exit652

sqlite3ExprDelete.exit652:                        ; preds = %bb.gu, %bb.gv
  call fastcc void @setDoNotMergeFlagOnCopy(ptr noundef %i.h)
  call fastcc void @sqlite3VdbeResolveLabel(ptr noundef %i.h, i32 noundef %i.ahp)
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.gi, %bb.gh, %sqlite3ExprDelete.exit652
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br label %codeVectorCompare.exit

.split1330.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1331 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi1332 = phi ptr [ %.0513841.us, %.lr.ph.split.us ], [ %.0513841, %bb.e ] ; 2 uses
  store i32 %.us-phi1331, ptr %i.e, align 4
  %i.ajp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !2376
  %.not561 = icmp eq ptr %i.ajq, null
  br i1 %.not561, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %.split1330.us
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ajs = load i8, ptr %i.ajr, align 2, !tbaa !2217
  %.not562 = icmp eq i8 %i.ajs, 0
  br i1 %.not562, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.674)
  br label %.critedge

bb.gy:                                            ; preds = %bb.gw, %.split1330.us
  %i.ajt = getelementptr inbounds nuw i8, ptr %.us-phi1332, i64 1 ; 3 uses
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !2207 ; 2 uses
  %i.ajv = icmp eq i8 %i.aju, 2
  br i1 %i.ajv, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !2248 ; 2 uses
  %.not.i653 = icmp eq ptr %i.ajx, null
  %..i = select i1 %.not.i653, ptr %0, ptr %i.ajx
  %i.ajy = getelementptr inbounds nuw i8, ptr %..i, i64 39 ; 2 uses
  %i.ajz = load i16, ptr %i.ajy, align 1
  %i.aka = or i16 %i.ajz, 2
  store i16 %i.aka, ptr %i.ajy, align 1
  %.pr = load i8, ptr %i.ajt, align 1, !tbaa !2207
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.akb = phi i8 [ %.pr, %bb.gz ], [ %i.aju, %bb.gy ]
  %i.akc = icmp eq i8 %i.akb, 4
  br i1 %i.akc, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.akd = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 71, i32 noundef 0, i32 noundef 4) ; 0 uses
  br label %codeVectorCompare.exit

bb.hc:                                            ; preds = %bb.ha
  %i.ake = getelementptr inbounds nuw i8, ptr %.us-phi1332, i64 16
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !802
  %i.akg = call fastcc i32 @sqlite3ExprCodeTemp(ptr noundef nonnull %0, ptr noundef %i.akf, ptr noundef %i.c)
  %i.akh = load ptr, ptr %i.ajp, align 8, !tbaa !2376
  %.not563 = icmp eq ptr %i.akh, null
  %i.aki = select i1 %.not563, i32 1, i32 1811
  %i.akj = load i8, ptr %i.ajt, align 1, !tbaa !2207
  %i.akk = sext i8 %i.akj to i32
  %i.akl = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 71, i32 noundef %i.aki, i32 noundef %i.akk, i32 noundef %i.akg) ; 0 uses
  br label %codeVectorCompare.exit

codeVectorCompare.exit:                           ; preds = %bb.fp, %bb.fo, %sqlite3ReleaseTempRange.exit, %.thread729, %bb.dn, %bb.dm, %bb.di, %bb.dh, %bb.cs, %bb.cr, %bb.ck, %sqlite3VdbeJumpHere.exit659, %bb.ay, %sqlite3ExprVectorSize.exit710, %bb.o, %bb.gc, %bb.ge, %sqlite3VdbeJumpHere.exit646, %.split1315.us, %bb.fz, %bb.ga, %bb.dl, %sqlite3VdbeAddOp3.exit615, %sqlite3VdbeAddOp3.exit, %sqlite3VdbeJumpHere.exit, %bb.hb, %bb.hc, %sqlite3ExprDelete.exit, %.split1319.us, %sqlite3VdbeJumpHere.exit638, %.split1281.us, %.split1263.us
  %.1524 = phi i32 [ %2, %bb.o ], [ %2, %bb.hc ], [ %2, %.split1263.us ], [ %i.afz, %bb.gc ], [ %2, %bb.dl ], [ %2, %bb.di ], [ %2, %.split1281.us ], [ %2, %sqlite3VdbeJumpHere.exit638 ], [ %2, %.thread729 ], [ %2, %sqlite3ReleaseTempRange.exit ], [ %2, %bb.dn ], [ %2, %sqlite3VdbeAddOp3.exit615 ], [ %2, %.split1319.us ], [ %2, %.split1315.us ], [ %2, %sqlite3ExprDelete.exit ], [ %2, %bb.hb ], [ %2, %bb.ck ], [ %2, %sqlite3VdbeJumpHere.exit ], [ %2, %sqlite3VdbeAddOp3.exit ], [ %2, %bb.cs ], [ %2, %bb.ga ], [ %2, %bb.fz ], [ %2, %bb.ge ], [ %2, %sqlite3VdbeJumpHere.exit646 ], [ %2, %sqlite3ExprVectorSize.exit710 ], [ %2, %bb.ay ], [ %2, %sqlite3VdbeJumpHere.exit659 ], [ %2, %bb.cr ], [ %2, %bb.dh ], [ %2, %bb.dm ], [ %2, %bb.fo ], [ %2, %bb.fp ] ; 3 uses
  %i.akm = load i32, ptr %i.c, align 4, !tbaa !576 ; 2 uses
  %.not.i654 = icmp eq i32 %i.akm, 0
  br i1 %.not.i654, label %sqlite3ReleaseTempReg.exit, label %bb.hd

bb.hd:                                            ; preds = %codeVectorCompare.exit
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !2330 ; 3 uses
  %i.akp = icmp ult i8 %i.ako, 8
  br i1 %i.akp, label %bb.he, label %sqlite3ReleaseTempReg.exit

bb.he:                                            ; preds = %bb.hd
  %i.akq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.akr = add nuw nsw i8 %i.ako, 1
  store i8 %i.akr, ptr %i.akn, align 1, !tbaa !2330
  %i.aks = zext nneg i8 %i.ako to i64
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.akq, i64 %i.aks
  store i32 %i.akm, ptr %i.akt, align 4, !tbaa !576
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %codeVectorCompare.exit, %bb.hd, %bb.he
  %i.aku = load i32, ptr %i.d, align 4, !tbaa !576 ; 2 uses
  %.not.i655 = icmp eq i32 %i.aku, 0
  br i1 %.not.i655, label %.critedge, label %bb.hf

bb.hf:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %i.akv = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !2330 ; 3 uses
  %i.akx = icmp ult i8 %i.akw, 8
  br i1 %i.akx, label %bb.hg, label %.critedge

bb.hg:                                            ; preds = %bb.hf
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.akz = add nuw nsw i8 %i.akw, 1
  store i8 %i.akz, ptr %i.akv, align 1, !tbaa !2330
  %i.ala = zext nneg i8 %i.akw to i64
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.aky, i64 %i.ala
  store i32 %i.aku, ptr %i.alb, align 4, !tbaa !576
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.ai, %bb.ah, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.fe, %bb.eg, %bb.ea, %bb.dy, %bb.k, %bb.l, %bb.j, %bb.i, %bb.n, %bb.g, %bb.hg, %bb.hf, %sqlite3ReleaseTempReg.exit, %bb.fq, %.split1298.us, %bb.dx, %bb.dj, %bb.dk, %bb.ag, %sqlite3TableColumnAffinity.exit.thread, %sqlite3TableColumnAffinity.exit, %bb.ab, %bb.ac, %bb.aa, %bb.x, %bb.u, %bb.af, %bb.gx, %.split1334.us, %.split1311.us, %.split1307.us, %bb.fx, %.split1251.us, %.split1247.us, %.split1243.us, %.split1239.us, %.split1235.us, %.split1231.us, %.split1227.us, %.split1223.us, %.split1219.us
  %.7 = phi i32 [ %2, %bb.ai ], [ %.1524, %bb.hg ], [ %i.yr, %bb.dy ], [ 0, %.split1298.us ], [ %2, %.split1219.us ], [ %2, %.split1223.us ], [ %2, %.split1227.us ], [ %2, %.split1231.us ], [ %2, %.split1235.us ], [ %2, %.split1239.us ], [ %2, %.split1243.us ], [ %i.gc, %.split1247.us ], [ %2, %.split1251.us ], [ %i.ed, %bb.af ], [ %i.yh, %bb.dx ], [ %i.ao, %bb.g ], [ %2, %bb.dj ], [ %i.aeb, %bb.fx ], [ %2, %.split1307.us ], [ %2, %.split1311.us ], [ %2, %.split1334.us ], [ 0, %bb.gx ], [ %i.dk, %bb.ab ], [ %i.ca, %sqlite3TableColumnAffinity.exit ], [ %2, %bb.ag ], [ %i.ca, %sqlite3TableColumnAffinity.exit.thread ], [ %i.dd, %bb.u ], [ 0, %bb.x ], [ %i.dk, %bb.aa ], [ %2, %bb.ac ], [ %2, %bb.dk ], [ %i.acx, %bb.fq ], [ %.1524, %sqlite3ReleaseTempReg.exit ], [ %.1524, %bb.hf ], [ %2, %bb.k ], [ %2, %bb.l ], [ %2, %bb.j ], [ %2, %bb.i ], [ %2, %bb.n ], [ %2, %bb.fk ], [ %2, %bb.fj ], [ %2, %bb.fi ], [ %2, %bb.fh ], [ %2, %bb.fg ], [ %2, %bb.fe ], [ %i.zt, %bb.eg ], [ %i.yz, %bb.ea ], [ %2, %bb.ah ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  ret i32 %.7
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sqlite3ExprSkipCollateAndLikely(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) unnamed_addr #14 {
bb.a:
  %.not9 = icmp eq ptr %0, null
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.010 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.010, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !801  ; 2 uses
  %i.c = and i32 %i.b, 532480
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = and i32 %i.b, 524288
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.010, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !741
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %.010, align 8, !tbaa !2042
  %i.i = icmp eq i8 %i.h, 114
  br i1 %i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.010, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1.in = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.e ]
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !798 ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !300

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.f, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %.010, %bb.d ], [ %.010, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef i32 @sqlite3IndexedExprLookup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.Walker, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %.05077 = load ptr, ptr %i.a, align 8, !tbaa !2409 ; 2 uses
  %.not78 = icmp eq ptr %.05077, null
  br i1 %.not78, label %sqlite3VdbeAddOp3.exit69, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
end_hunk_1
begin_hunk_2_@jsonExtractFunc:bb.a

bb.bn:                                            ; preds = %bb.bm
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 44), !inline_history !375
  br label %jsonAppendSeparator.exit109

bb.bo:                                            ; preds = %bb.bm
  %i.fw = add nuw i64 %i.fo, 1
  store i64 %i.fw, ptr %i.o, align 8, !tbaa !2149
  store i8 44, ptr %i.fr, align 1, !tbaa !741
  br label %jsonAppendSeparator.exit109

jsonAppendSeparator.exit109:                      ; preds = %bb.bk, %bb.bl, %bb.bn, %bb.bo
  %i.fx = load i64, ptr %i.o, align 8, !tbaa !2149 ; 2 uses
  %i.fy = add i64 %i.fx, 4
  %i.fz = load i64, ptr %i.n, align 8, !tbaa !2140
  %.not.i110 = icmp ult i64 %i.fy, %i.fz
  br i1 %.not.i110, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %jsonAppendSeparator.exit109
  call fastcc void @jsonStringExpandAndAppend(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i32 noundef 4), !inline_history !2180
  br label %bb.bt

bb.bq:                                            ; preds = %jsonAppendSeparator.exit109
  %i.ga = load ptr, ptr %i.m, align 8, !tbaa !2139
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fx
  store i32 1819047278, ptr %i.gb, align 1
  %i.gc = load i64, ptr %i.o, align 8, !tbaa !2149
  %i.gd = add i64 %i.gc, 4
  store i64 %i.gd, ptr %i.o, align 8, !tbaa !2149
  br label %bb.bt

bb.br:                                            ; preds = %bb.bi
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.ge, align 4, !tbaa !576
  %i.gf = load ptr, ptr %0, align 8, !tbaa !767
  %i.gg = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.gf, ptr noundef nonnull @.str.616, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  br label %jsonAppendRawNZ.exit111

bb.bs:                                            ; preds = %bb.bi
  call fastcc void @jsonBadPathError(ptr noundef %0, ptr noundef %.0.i.i, i32 noundef 0)
  br label %jsonAppendRawNZ.exit111

bb.bt:                                            ; preds = %jsonAppendSeparator.exit, %bb.ba, %bb.bb, %bb.bc, %jsonStringReset.exit102, %bb.bp, %bb.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !6248

._crit_edge:                                      ; preds = %bb.bt
  br i1 %.not, label %jsonAppendRawNZ.exit111, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge
  %i.gh = load i64, ptr %i.o, align 8, !tbaa !2149 ; 3 uses
  %i.gi = load i64, ptr %i.n, align 8, !tbaa !2140
  %.not.i112 = icmp ult i64 %i.gh, %i.gi
  br i1 %.not.i112, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 93), !inline_history !267
  br label %jsonAppendChar.exit113

bb.bw:                                            ; preds = %bb.bu
  %i.gj = load ptr, ptr %i.m, align 8, !tbaa !2139
  %i.gk = add nuw i64 %i.gh, 1
  store i64 %i.gk, ptr %i.o, align 8, !tbaa !2149
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gh
  store i8 93, ptr %i.gl, align 1, !tbaa !741
  br label %jsonAppendChar.exit113

jsonAppendChar.exit113:                           ; preds = %bb.bv, %bb.bw
  call fastcc void @jsonReturnString(ptr noundef %3, ptr noundef null, ptr noundef null)
  %i.gm = and i32 %i.j, 16
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.bx, label %jsonAppendRawNZ.exit111

bb.bx:                                            ; preds = %jsonAppendChar.exit113
  %i.go = load ptr, ptr %0, align 8, !tbaa !767   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 23
  store i8 74, ptr %i.gp, align 1, !tbaa !1110
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 20 ; 2 uses
  %i.gr = load i16, ptr %i.gq, align 4, !tbaa !694
  %i.gs = or i16 %i.gr, 2048
  store i16 %i.gs, ptr %i.gq, align 4, !tbaa !694
  br label %jsonAppendRawNZ.exit111

jsonAppendRawNZ.exit111:                          ; preds = %bb.h, %bb.d, %sqlite3_value_text.exit, %bb.bj, %bb.ao, %bb.br, %bb.bs, %._crit_edge, %bb.bx, %jsonAppendChar.exit113
  %i.gt = load i8, ptr %i.p, align 8, !tbaa !2141
  %.not.i114 = icmp eq i8 %i.gt, 0
  br i1 %.not.i114, label %bb.by, label %bb.cf

bb.by:                                            ; preds = %jsonAppendRawNZ.exit111
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !2139
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 -8 ; 5 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !1897 ; 2 uses
  %i.gx = icmp ugt i64 %i.gw, 1
  br i1 %i.gx, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.gy = add i64 %i.gw, -1
  store i64 %i.gy, ptr %i.gv, align 8, !tbaa !1897
  br label %bb.cf

bb.ca:                                            ; preds = %bb.by
  %i.gz = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i.i.i115 = icmp eq i32 %i.gz, 0
  br i1 %.not.i.i.i115, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ha = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i116, label %sqlite3_mutex_enter.exit.i.i.i117, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  call void %i.hb(ptr noundef nonnull %i.ha) #59, !inline_history !2162
  br label %sqlite3_mutex_enter.exit.i.i.i117

sqlite3_mutex_enter.exit.i.i.i117:                ; preds = %bb.cc, %bb.cb
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.hd = call i32 %i.hc(ptr noundef nonnull %i.gv) #59, !inline_history !265
  %i.he = sext i32 %i.hd to i64
  %i.hf = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.hg = sub nsw i64 %i.hf, %i.he
  store i64 %i.hg, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.hh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.hi = add nsw i64 %i.hh, -1
  store i64 %i.hi, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.hj(ptr noundef nonnull %i.gv) #59, !inline_history !2163
  %i.hk = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i.i118 = icmp eq ptr %i.hk, null
  br i1 %.not.i4.i.i.i118, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i117
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  call void %i.hl(ptr noundef nonnull %i.hk) #59, !inline_history !2164
  br label %bb.cf

bb.ce:                                            ; preds = %bb.ca
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.hm(ptr noundef nonnull %i.gv) #59, !inline_history !2163
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %sqlite3_mutex_enter.exit.i.i.i117, %bb.bz, %jsonAppendRawNZ.exit111
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2139
  store i64 100, ptr %i.n, align 8, !tbaa !2140
  store i64 0, ptr %i.o, align 8, !tbaa !2149
  store i8 1, ptr %i.p, align 8, !tbaa !2141
  %i.hn = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !2186 ; 2 uses
  %i.hp = icmp ugt i32 %i.ho, 1
  br i1 %i.hp, label %bb.cg, label %sqlite3DbFree.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.hq = add i32 %i.ho, -1
  store i32 %i.hq, ptr %i.hn, align 4, !tbaa !2186
  br label %jsonParseFree.exit

sqlite3DbFree.exit.i:                             ; preds = %bb.cf
  call fastcc void @jsonParseReset(ptr noundef nonnull %i.c)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !2170
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.hs, ptr noundef nonnull %i.c)
  br label %jsonParseFree.exit

jsonParseFree.exit:                               ; preds = %sqlite3DbFree.exit.i, %bb.cg, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jsonObjectFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.JsonString, align 8         ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %jsonAppendChar.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.b, align 4, !tbaa !576
  %i.c = load ptr, ptr %0, align 8, !tbaa !767
  %i.d = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.c, ptr noundef nonnull @.str.1355, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  br label %jsonStringReset.exit

jsonAppendChar.exit:                              ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !2179
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 0, ptr %i.e, align 1, !tbaa !2178
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 34 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !2139
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 100, ptr %i.h, align 8, !tbaa !2140
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 1, ptr %i.j, align 8, !tbaa !2141
  store i64 1, ptr %i.i, align 8, !tbaa !2149
  store i8 123, ptr %i.f, align 2, !tbaa !741
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %jsonAppendChar.exit, %jsonAppendChar.exit23
  %indvars.iv = phi i64 [ %indvars.iv.next, %jsonAppendChar.exit23 ], [ 0, %jsonAppendChar.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !767
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = load i16, ptr %i.n, align 4, !tbaa !694
  %i.p = and i16 %i.o, 63
  %i.q = zext nneg i16 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.r, 1125899907104772
  %.not17.not = icmp eq i64 %i.s, 0
  br i1 %.not17.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.t, align 4, !tbaa !576
  %i.u = load ptr, ptr %0, align 8, !tbaa !767
  %i.v = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.u, ptr noundef nonnull @.str.1356, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  %i.w = load i8, ptr %i.j, align 8, !tbaa !2141
  %.not.i18 = icmp eq i8 %i.w, 0
  br i1 %.not.i18, label %bb.d, label %jsonStringReset.exit

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !2139
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 5 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1897 ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = add i64 %i.z, -1
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !1897
  br label %jsonStringReset.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  call void %i.ae(ptr noundef nonnull %i.ad) #59, !inline_history !2162
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ag = call i32 %i.af(ptr noundef nonnull %i.y) #59, !inline_history !265
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.aj = sub nsw i64 %i.ai, %i.ah
  store i64 %i.aj, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.al = add nsw i64 %i.ak, -1
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.am(ptr noundef nonnull %i.y) #59, !inline_history !2163
  %i.an = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i4.i.i.i, label %jsonStringReset.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  call void %i.ao(ptr noundef nonnull %i.an) #59, !inline_history !2164
  br label %jsonStringReset.exit

bb.j:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.ap(ptr noundef nonnull %i.y) #59, !inline_history !2163
  br label %jsonStringReset.exit

bb.k:                                             ; preds = %.lr.ph
  %i.aq = load i64, ptr %i.i, align 8, !tbaa !2149 ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %jsonAppendSeparator.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !2139
  %i.at = getelementptr i8, ptr %i.as, i64 %i.aq  ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !741
  %i.aw = and i8 %i.av, -33
  %or.cond.i = icmp eq i8 %i.aw, 91
  br i1 %or.cond.i, label %jsonAppendSeparator.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %i.h, align 8, !tbaa !2140
  %.not.i.i = icmp ult i64 %i.aq, %i.ax
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 44), !inline_history !375
  br label %jsonAppendSeparator.exit

bb.o:                                             ; preds = %bb.m
  %i.ay = add nuw i64 %i.aq, 1
  store i64 %i.ay, ptr %i.i, align 8, !tbaa !2149
  store i8 44, ptr %i.at, align 1, !tbaa !741
  br label %jsonAppendSeparator.exit

jsonAppendSeparator.exit:                         ; preds = %bb.k, %bb.l, %bb.n, %bb.o
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !767, !nonnull !1293, !noundef !1293 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !694 ; 2 uses
  %i.bc = and i16 %i.bb, 514
  %i.bd = icmp eq i16 %i.bc, 514
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %jsonAppendSeparator.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 22
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !795
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !768
  br label %sqlite3_value_text.exit

bb.r:                                             ; preds = %bb.p, %jsonAppendSeparator.exit
  %i.bj = and i16 %i.bb, 1
  %.not9.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not9.i.i, label %bb.s, label %sqlite3_value_text.exit

bb.s:                                             ; preds = %bb.r
  %i.bk = call fastcc ptr @valueToText(ptr noundef nonnull %i.az, i8 noundef zeroext 1), !inline_history !974
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !767
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.q, %bb.r, %bb.s
  %i.bl = phi ptr [ %i.az, %bb.q ], [ %i.az, %bb.r ], [ %.pre, %bb.s ] ; 6 uses
  %.0.i.i = phi ptr [ %i.bi, %bb.q ], [ null, %bb.r ], [ %i.bk, %bb.s ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !694 ; 2 uses
  %i.bo = and i16 %i.bn, 2
  %.not.i.i20 = icmp eq i16 %i.bo, 0
  br i1 %.not.i.i20, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %sqlite3_value_text.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 22
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !795
  %i.br = icmp eq i8 %i.bq, 1
  br i1 %i.br, label %bb.u, label %.thread.i.i

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !934
  br label %sqlite3_value_bytes.exit

.thread.i.i:                                      ; preds = %bb.t, %sqlite3_value_text.exit
  %i.bu = zext i16 %i.bn to i32                   ; 3 uses
  %i.bv = and i32 %i.bu, 16
  %.not20.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not20.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.thread.i.i
  %i.bw = and i32 %i.bu, 1024
  %.not22.i.i = icmp eq i32 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !934 ; 2 uses
  br i1 %.not22.i.i, label %sqlite3_value_bytes.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = load i32, ptr %i.bl, align 8, !tbaa !741
  %i.ca = add nsw i32 %i.bz, %i.by
  br label %sqlite3_value_bytes.exit

bb.x:                                             ; preds = %.thread.i.i
  %i.cb = and i32 %i.bu, 1
  %.not21.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not21.i.i, label %bb.y, label %sqlite3_value_bytes.exit

bb.y:                                             ; preds = %bb.x
  %i.cc = call fastcc i32 @valueBytes(ptr noundef nonnull %i.bl, i8 noundef zeroext 1)
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.0.i.i21 = phi i32 [ %i.bt, %bb.u ], [ %i.by, %bb.v ], [ %i.ca, %bb.w ], [ 0, %bb.x ], [ %i.cc, %bb.y ]
  call fastcc void @jsonAppendString(ptr noundef nonnull %3, ptr noundef %.0.i.i, i32 noundef %.0.i.i21)
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !2149 ; 3 uses
  %i.ce = load i64, ptr %i.h, align 8, !tbaa !2140
  %.not.i22 = icmp ult i64 %i.cd, %i.ce
  br i1 %.not.i22, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %sqlite3_value_bytes.exit
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 58), !inline_history !267
  br label %jsonAppendChar.exit23

bb.aa:                                            ; preds = %sqlite3_value_bytes.exit
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !2139
  %i.cg = add nuw i64 %i.cd, 1
  store i64 %i.cg, ptr %i.i, align 8, !tbaa !2149
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 58, ptr %i.ch, align 1, !tbaa !741
  br label %jsonAppendChar.exit23

jsonAppendChar.exit23:                            ; preds = %bb.z, %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !767
  call fastcc void @jsonAppendSqlValue(ptr noundef %3, ptr noundef %i.cj)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next to i32
  %5 = icmp sgt i32 %1, %4
  br i1 %5, label %.lr.ph, label %._crit_edge, !llvm.loop !6249

._crit_edge:                                      ; preds = %jsonAppendChar.exit23
  %.pre28 = load i64, ptr %i.i, align 8, !tbaa !2149 ; 2 uses
  %.pre29 = load i64, ptr %i.h, align 8, !tbaa !2140
  %i.ck = icmp ult i64 %.pre28, %.pre29
  br i1 %i.ck, label %._crit_edge.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 125), !inline_history !267
  br label %jsonAppendChar.exit25

._crit_edge.thread:                               ; preds = %jsonAppendChar.exit, %._crit_edge
  %i.cl = phi i64 [ %.pre28, %._crit_edge ], [ 1, %jsonAppendChar.exit ] ; 2 uses
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !2139
  %i.cn = add nuw i64 %i.cl, 1
  store i64 %i.cn, ptr %i.i, align 8, !tbaa !2149
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  store i8 125, ptr %i.co, align 1, !tbaa !741
  br label %jsonAppendChar.exit25

jsonAppendChar.exit25:                            ; preds = %bb.ab, %._crit_edge.thread
  call fastcc void @jsonReturnString(ptr noundef %3, ptr noundef null, ptr noundef null)
  %i.cp = load ptr, ptr %0, align 8, !tbaa !767   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 23
  store i8 74, ptr %i.cq, align 1, !tbaa !1110
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 20 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 4, !tbaa !694
  %i.ct = or i16 %i.cs, 2048
  store i16 %i.ct, ptr %i.cr, align 4, !tbaa !694
  br label %jsonStringReset.exit

jsonStringReset.exit:                             ; preds = %bb.j, %bb.i, %sqlite3_mutex_enter.exit.i.i.i, %bb.e, %bb.c, %jsonAppendChar.exit25, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jsonPatchFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !767
  %i.b = tail call fastcc ptr @jsonParseFuncArg(ptr noundef %0, ptr noundef %i.a, i32 noundef 1) ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %jsonParseFree.exit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !767
  %i.f = tail call fastcc ptr @jsonParseFuncArg(ptr noundef %0, ptr noundef %i.e, i32 noundef 0) ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %jsonParseFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @jsonMergePatch(ptr noundef %i.b, i32 noundef 0, ptr noundef %i.f, i32 noundef 0)
  switch i32 %i.g, label %bb.m [
    i32 0, label %bb.d
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @jsonReturnParse(ptr noundef %0, ptr noundef %i.b)
  br label %sqlite3_result_error_nomem.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !767    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4, !tbaa !694
  %i.k = and i16 %i.j, -28672
  %.not.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.h)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !767
  br label %sqlite3VdbeMemSetNull.exit.i

bb.g:                                             ; preds = %bb.e
  store i16 1, ptr %i.i, align 4, !tbaa !694
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %.pre.i, %bb.f ], [ %i.h, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.m, align 4, !tbaa !576
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !691  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 103 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !928
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.h, label %sqlite3_result_error_nomem.exit

bb.h:                                             ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.t = load i8, ptr %i.s, align 8, !tbaa !929
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.i, label %sqlite3_result_error_nomem.exit

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.p, align 1, !tbaa !928
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 220
  %i.w = load i32, ptr %i.v, align 4, !tbaa !930
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  store atomic volatile i32 1, ptr %i.y monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 432 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !931
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !931
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 436
  store i16 0, ptr %i.ac, align 4, !tbaa !932
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 344 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !774 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ae, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.133), !inline_history !35
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !774 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 7, ptr %i.ag, align 8, !tbaa !785
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !933 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !786
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !786
  %i.ak = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.ak, align 8, !tbaa !785
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 216
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !933 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.m:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.al, align 4, !tbaa !576
  %i.am = load ptr, ptr %0, align 8, !tbaa !767
  %i.an = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.am, ptr noundef nonnull @.str.616, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.d, %bb.m, %sqlite3VdbeMemSetNull.exit.i, %bb.h, %bb.k, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !2186 ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, 1
  br i1 %i.aq, label %bb.n, label %sqlite3DbFree.exit.i

bb.n:                                             ; preds = %sqlite3_result_error_nomem.exit
  %i.ar = add i32 %i.ap, -1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !2186
  br label %jsonParseFree.exit

sqlite3DbFree.exit.i:                             ; preds = %sqlite3_result_error_nomem.exit
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %i.f)
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2170
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.at, ptr noundef nonnull %i.f)
  br label %jsonParseFree.exit

jsonParseFree.exit:                               ; preds = %bb.b, %bb.n, %sqlite3DbFree.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !2186 ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 1
  br i1 %i.aw, label %bb.o, label %sqlite3DbFree.exit.i18

bb.o:                                             ; preds = %jsonParseFree.exit
  %i.ax = add i32 %i.av, -1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !2186
  br label %jsonParseFree.exit19

sqlite3DbFree.exit.i18:                           ; preds = %jsonParseFree.exit
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %i.b)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2170
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.az, ptr noundef nonnull %i.b)
  br label %jsonParseFree.exit19

jsonParseFree.exit19:                             ; preds = %sqlite3DbFree.exit.i18, %bb.o, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jsonPrettyFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.JsonString, align 8         ; 11 uses
  %4 = alloca %struct.JsonPretty, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
end_hunk_2
begin_hunk_3_@sqlite3Fts5BufferAppendPrintf:bb.a
  %i.au = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i9 = icmp eq i32 %i.au, 0
  br i1 %.not.i9, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.av, null
  br i1 %.not.i.i10, label %sqlite3_mutex_enter.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  call void %i.aw(ptr noundef nonnull %i.av) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.q, %bb.p
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ay = call i32 %i.ax(ptr noundef nonnull %.0.i) #59, !inline_history !13
  %i.az = sext i32 %i.ay to i64
  %i.ba = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.bb = sub nsw i64 %i.ba, %i.az
  store i64 %i.bb, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.bd = add nsw i64 %i.bc, -1
  store i64 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.be(ptr noundef nonnull %.0.i) #59, !inline_history !755
  %i.bf = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bf, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.r

bb.r:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  call void %i.bg(ptr noundef nonnull %i.bf) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.s:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.bh(ptr noundef nonnull %.0.i) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.s, %bb.r, %sqlite3_mutex_enter.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %bb.t

bb.t:                                             ; preds = %sqlite3_free.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3Fts5ConfigErrmsg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #0 {
bb.a:
  %i.a = alloca [70 x i8], align 16               ; 4 uses
  %2 = alloca %struct.sqlite3_str, align 8        ; 12 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.b = call i32 @sqlite3_initialize(), !inline_history !822
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %sqlite3_vmprintf.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !762
  store ptr null, ptr %2, align 8, !tbaa !773
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 70, ptr %i.d, align 8, !tbaa !760
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 1000000000, ptr %i.e, align 4, !tbaa !772
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !759
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 0, ptr %i.g, align 4, !tbaa !771
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 29 ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !758
  call void @sqlite3_str_vappendf(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %3), !inline_history !822
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !762  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.f, align 8, !tbaa !759
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !741
  %i.m = load i32, ptr %i.e, align 4, !tbaa !772
  %.not9.i.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.h, align 1, !tbaa !758
  %i.o = and i8 %i.n, 4
  %.not10.i.i = icmp eq i8 %i.o, 0
  br i1 %.not10.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = call fastcc ptr @strAccumFinishRealloc(ptr noundef nonnull %2), !inline_history !19
  br label %sqlite3_vmprintf.exit

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !762
  br label %sqlite3_vmprintf.exit

sqlite3_vmprintf.exit:                            ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.q, %bb.f ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3100 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.h, label %bb.g

sqlite3_vmprintf.exit.thread:                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3100 ; 2 uses
  %.not8 = icmp eq ptr %i.u, null
  br i1 %.not8, label %sqlite3_free.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_vmprintf.exit.thread, %sqlite3_vmprintf.exit
  %i.v = phi ptr [ %i.u, %sqlite3_vmprintf.exit.thread ], [ %i.s, %sqlite3_vmprintf.exit ]
  %.0.i9 = phi ptr [ null, %sqlite3_vmprintf.exit.thread ], [ %.0.i, %sqlite3_vmprintf.exit ]
  store ptr %.0.i9, ptr %i.v, align 8, !tbaa !747
  br label %sqlite3_free.exit

bb.h:                                             ; preds = %sqlite3_vmprintf.exit
  %i.w = icmp eq ptr %.0.i, null
  br i1 %i.w, label %sqlite3_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i5 = icmp eq i32 %i.x, 0
  br i1 %.not.i5, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.y, null
  br i1 %.not.i.i6, label %sqlite3_mutex_enter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  call void %i.z(ptr noundef nonnull %i.y) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.k, %bb.j
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ab = call i32 %i.aa(ptr noundef nonnull %.0.i) #59, !inline_history !13
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ae = sub nsw i64 %i.ad, %i.ac
  store i64 %i.ae, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ag = add nsw i64 %i.af, -1
  store i64 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.ah(ptr noundef nonnull %.0.i) #59, !inline_history !755
  %i.ai = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ai, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  call void %i.aj(ptr noundef nonnull %i.ai) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.m:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.ak(ptr noundef nonnull %.0.i) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_vmprintf.exit.thread, %bb.m, %bb.l, %sqlite3_mutex_enter.exit.i, %bb.h, %bb.g
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @fts5TriCreate(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %fts5TriDelete.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @sqlite3_initialize(), !inline_history !821
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %fts5TriDelete.exit

sqlite3_malloc64.exit:                            ; preds = %bb.b
  %i.c = tail call fastcc ptr @sqlite3Malloc(i64 noundef 8), !inline_history !821 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %fts5TriDelete.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3_malloc64.exit
  store i32 1, ptr %i.c, align 4, !tbaa !3215
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !3214
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.lr.ph, label %fts5TriDelete.exit

.lr.ph:                                           ; preds = %bb.c, %sqlite3_stricmp.exit56.thread
  %i.g = phi i32 [ %i.av, %sqlite3_stricmp.exit56.thread ], [ 1, %bb.c ] ; 7 uses
  %i.h = phi i32 [ %i.aw, %sqlite3_stricmp.exit56.thread ], [ 0, %bb.c ] ; 7 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3_stricmp.exit56.thread ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !747  ; 4 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !747  ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %bb.f
  %.013.i.i = phi ptr [ %i.x, %bb.f ], [ %i.l, %.lr.ph ] ; 2 uses
  %.012.i.i = phi ptr [ %i.y, %bb.f ], [ @.str.1648, %.lr.ph ] ; 2 uses
  %i.n = load i8, ptr %.013.i.i, align 1, !tbaa !741 ; 3 uses
  %i.o = load i8, ptr %.012.i.i, align 1, !tbaa !741 ; 2 uses
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.q = icmp eq i8 %i.n, 0
  br i1 %i.q, label %sqlite3_stricmp.exit.thread, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.r = zext i8 %i.n to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !741
  %i.u = zext i8 %i.o to i64
  %i.v = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !741
  %.not.i.i = icmp eq i8 %i.t, %i.w
  br i1 %.not.i.i, label %bb.f, label %.preheader.i51

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %.preheader.i

sqlite3_stricmp.exit.thread:                      ; preds = %bb.d
  %i.z = load i8, ptr %i.k, align 1, !tbaa !741   ; 2 uses
  %i.aa = and i8 %i.z, -2
  %switch = icmp eq i8 %i.aa, 48
  br i1 %switch, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %sqlite3_stricmp.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !741
  %.not47 = icmp eq i8 %i.ac, 0
  br i1 %.not47, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp eq i8 %i.z, 48
  %i.ae = zext i1 %i.ad to i32                    ; 2 uses
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !3215
  br label %sqlite3_stricmp.exit56.thread

.preheader.i51:                                   ; preds = %bb.e, %bb.k
  %.013.i.i52 = phi ptr [ %i.ap, %bb.k ], [ %i.l, %bb.e ] ; 2 uses
  %.012.i.i53 = phi ptr [ %i.aq, %bb.k ], [ @.str.1649, %bb.e ] ; 2 uses
  %i.af = load i8, ptr %.013.i.i52, align 1, !tbaa !741 ; 3 uses
  %i.ag = load i8, ptr %.012.i.i53, align 1, !tbaa !741 ; 2 uses
  %i.ah = icmp eq i8 %i.af, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.i51
  %i.ai = icmp eq i8 %i.af, 0
  br i1 %i.ai, label %sqlite3_stricmp.exit56.thread63, label %bb.k

bb.j:                                             ; preds = %.preheader.i51
  %i.aj = zext i8 %i.af to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !741
  %i.am = zext i8 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !741
  %.not.i.i54 = icmp eq i8 %i.al, %i.ao
  br i1 %.not.i.i54, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i52, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i53, i64 1
  br label %.preheader.i51

sqlite3_stricmp.exit56.thread63:                  ; preds = %bb.i
  %i.ar = load i8, ptr %i.k, align 1, !tbaa !741  ; 2 uses
  %.off48 = add i8 %i.ar, -48
  %switch49 = icmp ult i8 %.off48, 3
  br i1 %switch49, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %sqlite3_stricmp.exit56.thread63
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !741
  %.not43 = icmp eq i8 %i.at, 0
  br i1 %.not43, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %.not44 = icmp eq i8 %i.ar, 48
  %i.au = select i1 %.not44, i32 0, i32 2         ; 2 uses
  store i32 %i.au, ptr %i.e, align 4, !tbaa !3214
  br label %sqlite3_stricmp.exit56.thread

sqlite3_stricmp.exit56.thread:                    ; preds = %bb.m, %bb.h
  %i.av = phi i32 [ %i.g, %bb.m ], [ %i.ae, %bb.h ] ; 2 uses
  %i.aw = phi i32 [ %i.au, %bb.m ], [ %i.h, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next to i32
  %5 = icmp sgt i32 %2, %4
  br i1 %5, label %.lr.ph, label %._crit_edge, !llvm.loop !7192

._crit_edge:                                      ; preds = %.lr.ph, %sqlite3_stricmp.exit56.thread63, %sqlite3_stricmp.exit.thread, %bb.g, %bb.l, %sqlite3_stricmp.exit56.thread, %bb.j
  %i.ax = phi i1 [ false, %bb.j ], [ false, %.lr.ph ], [ false, %sqlite3_stricmp.exit56.thread63 ], [ false, %sqlite3_stricmp.exit.thread ], [ false, %bb.g ], [ false, %bb.l ], [ true, %sqlite3_stricmp.exit56.thread ] ; 2 uses
  %i.ay = phi i32 [ %i.h, %bb.j ], [ %i.h, %.lr.ph ], [ %i.h, %sqlite3_stricmp.exit56.thread63 ], [ %i.h, %sqlite3_stricmp.exit.thread ], [ %i.h, %bb.g ], [ %i.h, %bb.l ], [ %i.aw, %sqlite3_stricmp.exit56.thread ]
  %i.az = phi i32 [ %i.g, %bb.j ], [ %i.g, %.lr.ph ], [ %i.g, %sqlite3_stricmp.exit56.thread63 ], [ %i.g, %sqlite3_stricmp.exit.thread ], [ %i.g, %bb.g ], [ %i.g, %bb.l ], [ %i.av, %sqlite3_stricmp.exit56.thread ]
  %i.ba = icmp eq i32 %i.ay, 0
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bb = icmp ne i32 %i.az, 0
  %i.bc = and i1 %i.ax, %i.bb
  br i1 %i.bc, label %fts5TriDelete.exit, label %.thread65

bb.o:                                             ; preds = %._crit_edge
  br i1 %i.ax, label %fts5TriDelete.exit, label %.thread65

.thread65:                                        ; preds = %bb.n, %bb.o
  %i.bd = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i.i57 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i57, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.thread65
  %i.be = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.bf(ptr noundef nonnull %i.be) #59, !inline_history !7194
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.q, %bb.p
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.bh = tail call i32 %i.bg(ptr noundef nonnull %i.c) #59, !inline_history !7193
  %i.bi = sext i32 %i.bh to i64
  %i.bj = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.bk = sub nsw i64 %i.bj, %i.bi
  store i64 %i.bk, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.bm = add nsw i64 %i.bl, -1
  store i64 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.bn(ptr noundef nonnull %i.c) #59, !inline_history !7195
  %i.bo = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i4.i.i, label %fts5TriDelete.exit, label %bb.r

bb.r:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.bp(ptr noundef nonnull %i.bo) #59, !inline_history !7196
  br label %fts5TriDelete.exit

bb.s:                                             ; preds = %.thread65
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.bq(ptr noundef nonnull %i.c) #59, !inline_history !7195
  br label %fts5TriDelete.exit

fts5TriDelete.exit:                               ; preds = %bb.c, %bb.n, %bb.b, %bb.s, %bb.r, %sqlite3_mutex_enter.exit.i.i, %bb.o, %sqlite3_malloc64.exit, %bb.a
  %.4 = phi i32 [ 1, %bb.a ], [ 0, %bb.o ], [ 1, %bb.s ], [ 7, %sqlite3_malloc64.exit ], [ 1, %sqlite3_mutex_enter.exit.i.i ], [ 1, %bb.r ], [ 7, %bb.b ], [ 0, %bb.n ], [ 0, %bb.c ]
  %.1 = phi ptr [ null, %bb.a ], [ %i.c, %bb.o ], [ null, %bb.s ], [ null, %sqlite3_malloc64.exit ], [ null, %sqlite3_mutex_enter.exit.i.i ], [ null, %bb.r ], [ null, %bb.b ], [ %i.c, %bb.n ], [ %i.c, %bb.c ]
  store ptr %.1, ptr %3, align 8, !tbaa !3220
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal void @fts5TriDelete(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.d(ptr noundef nonnull %i.c) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #59, !inline_history !13
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.i = sub nsw i64 %i.h, %i.g
  store i64 %i.i, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.k = add nsw i64 %i.j, -1
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.l(ptr noundef nonnull %0) #59, !inline_history !755
  %i.m = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.n(ptr noundef nonnull %i.m) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.o(ptr noundef nonnull %0) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3Fts5CreateTable(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store ptr null, ptr %i.a, align 8, !tbaa !747
  %i.b = load ptr, ptr %0, align 8, !tbaa !3072
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3073
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3074
  %.not = icmp eq i32 %3, 0
  %i.g = select i1 %.not, ptr @.str.4, ptr @.str.1655
  %i.h = call i32 (ptr, ptr, ptr, ...) @fts5ExecPrintf(ptr noundef %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1654, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.g)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !747  ; 5 uses
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !3074
  %i.k = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1656, ptr noundef %i.j, ptr noundef %1, ptr noundef nonnull %i.i)
  store ptr %i.k, ptr %4, align 8, !tbaa !747
  %i.l = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  call void %i.n(ptr noundef nonnull %i.m) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.p = call i32 %i.o(ptr noundef nonnull %i.i) #59, !inline_history !13
  %i.q = sext i32 %i.p to i64
  %i.r = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.s = sub nsw i64 %i.r, %i.q
  store i64 %i.s, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.u = add nsw i64 %i.t, -1
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.v(ptr noundef nonnull %i.i) #59, !inline_history !755
  %i.w = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.w, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  call void %i.x(ptr noundef nonnull %i.w) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.y(ptr noundef nonnull %i.i) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.f, %bb.e, %sqlite3_mutex_enter.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3Fts5IndexClose(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %sqlite3_free.exit21, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3095 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %fts5StructureInvalidate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @fts5StructureRelease(ptr noundef nonnull %i.b)
  store ptr null, ptr %i.a, align 8, !tbaa !3095
  br label %fts5StructureInvalidate.exit

end_hunk_3
begin_hunk_4_@fts5UnicodeTokenize:bb.a

bb.af:                                            ; preds = %.lr.ph.i3.i189
  %i.gn = icmp sgt i32 %.3124225, %i.gm           ; 2 uses
  %i.go = add nuw nsw i32 %i.gj, 1
  %i.gp = add nsw i32 %i.gj, -1
  %.120.i.i193 = select i1 %i.gn, i32 %i.go, i32 %.01930.i.i191 ; 2 uses
  %.118.i.i194 = select i1 %i.gn, i32 %.01731.i.i190, i32 %i.gp ; 2 uses
  %.not.not.i.i195 = icmp slt i32 %.118.i.i194, %.120.i.i193
  br i1 %.not.not.i.i195, label %fts5UnicodeIsAlnum.exit208, label %.lr.ph.i3.i189, !llvm.loop !8009

fts5UnicodeIsAlnum.exit208:                       ; preds = %.lr.ph.i3.i189, %bb.af, %sqlite3Fts5UnicodeCategory.exit.i185
  %.3.i.i187 = phi i32 [ 0, %sqlite3Fts5UnicodeCategory.exit.i185 ], [ 1, %.lr.ph.i3.i189 ], [ 0, %bb.af ]
  %i.gq = zext i8 %i.gd to i32
  %.not172 = icmp eq i32 %.3.i.i187, %i.gq
  br i1 %.not172, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %fts5UnicodeIsAlnum.exit208
  %i.gr = add i32 %.3124225, -818
  %or.cond.i = icmp ult i32 %i.gr, -50
  br i1 %or.cond.i, label %sqlite3Fts5UnicodeIsdiacritic.exit.thread, label %sqlite3Fts5UnicodeIsdiacritic.exit

sqlite3Fts5UnicodeIsdiacritic.exit:               ; preds = %bb.ag
  %i.gs = icmp samesign ult i32 %.3124225, 800    ; 2 uses
  %. = select i1 %i.gs, i32 -768, i32 -800
  %.307 = select i1 %i.gs, i32 134389727, i32 221688
  %i.gt = add nsw i32 %.3124225, %.
  %i.gu = shl nuw i32 1, %i.gt
  %i.gv = and i32 %i.gu, %.307
  %.not173 = icmp eq i32 %i.gv, 0
  br i1 %.not173, label %sqlite3Fts5UnicodeIsdiacritic.exit.thread, label %bb.ah

.loopexit:                                        ; preds = %fts5UnicodeIsAlnum.exit
  %i.gw = ptrtoint ptr %.1148253 to i64
  %i.gx = sub i64 %i.gw, %i.m
  %i.gy = trunc i64 %i.gx to i32
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %fts5UnicodeIsAlnum.exit208, %sqlite3Fts5UnicodeIsdiacritic.exit
  %.7 = phi ptr [ %.6153223, %fts5UnicodeIsAlnum.exit208 ], [ %.6153223, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.3150213, %.loopexit ] ; 5 uses
  %.2142 = phi ptr [ %.1141, %fts5UnicodeIsAlnum.exit208 ], [ %.1141, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.0140264, %.loopexit ] ; 5 uses
  %.2135 = phi i32 [ %.1134, %fts5UnicodeIsAlnum.exit208 ], [ %.1134, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.0133265, %.loopexit ] ; 5 uses
  %.2128 = phi ptr [ %.1127, %fts5UnicodeIsAlnum.exit208 ], [ %.1127, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.0126266, %.loopexit ] ; 5 uses
  %.4125 = phi i32 [ %.3124225, %fts5UnicodeIsAlnum.exit208 ], [ %.3124225, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.1122215, %.loopexit ]
  %.1119 = phi ptr [ %.0118, %fts5UnicodeIsAlnum.exit208 ], [ %.0118, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.0140264, %.loopexit ] ; 12 uses
  %.0117 = phi i32 [ %.2, %fts5UnicodeIsAlnum.exit208 ], [ %.2, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %i.gy, %.loopexit ] ; 5 uses
  %i.gz = load i32, ptr %i.n, align 4, !tbaa !3478
  %i.ha = tail call fastcc i32 @sqlite3Fts5UnicodeFold(i32 noundef %.4125, i32 noundef %i.gz) ; 14 uses
  %.not170 = icmp eq i32 %i.ha, 0
  br i1 %.not170, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hb = icmp ult i32 %i.ha, 128
  br i1 %i.hb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hc = trunc nuw nsw i32 %i.ha to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %.1119, i64 1
  store i8 %i.hc, ptr %.1119, align 1, !tbaa !741
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.he = icmp ult i32 %i.ha, 2048
  br i1 %i.he, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hf = lshr i32 %i.ha, 6
  %i.hg = trunc nuw nsw i32 %i.hf to i8
  %i.hh = or disjoint i8 %i.hg, -64
  %i.hi = getelementptr inbounds nuw i8, ptr %.1119, i64 1
  store i8 %i.hh, ptr %.1119, align 1, !tbaa !741
  %i.hj = trunc i32 %i.ha to i8
  %i.hk = and i8 %i.hj, 63
  %i.hl = or disjoint i8 %i.hk, -128
  %i.hm = getelementptr inbounds nuw i8, ptr %.1119, i64 2
  store i8 %i.hl, ptr %i.hi, align 1, !tbaa !741
  br label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.hn = icmp ult i32 %i.ha, 65536
  br i1 %i.hn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ho = lshr i32 %i.ha, 12
  %i.hp = trunc nuw nsw i32 %i.ho to i8
  %i.hq = or disjoint i8 %i.hp, -32
  %i.hr = getelementptr inbounds nuw i8, ptr %.1119, i64 1
  store i8 %i.hq, ptr %.1119, align 1, !tbaa !741
  %i.hs = lshr i32 %i.ha, 6
  %i.ht = trunc i32 %i.hs to i8
  %i.hu = and i8 %i.ht, 63
  %i.hv = or disjoint i8 %i.hu, -128
  %i.hw = getelementptr inbounds nuw i8, ptr %.1119, i64 2
  store i8 %i.hv, ptr %i.hr, align 1, !tbaa !741
  %i.hx = trunc i32 %i.ha to i8
  %i.hy = and i8 %i.hx, 63
  %i.hz = or disjoint i8 %i.hy, -128
  %i.ia = getelementptr inbounds nuw i8, ptr %.1119, i64 3
  store i8 %i.hz, ptr %i.hw, align 1, !tbaa !741
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.ib = getelementptr inbounds nuw i8, ptr %.1119, i64 4
  %i.ic = lshr i32 %i.ha, 18
  %i.id = trunc i32 %i.ic to i8
  %i.ie = lshr i32 %i.ha, 12
  %i.if = trunc i32 %i.ie to i8
  %i.ig = lshr i32 %i.ha, 6
  %i.ih = trunc i32 %i.ig to i8
  %i.ii = trunc i32 %i.ha to i8
  %i.ij = insertelement <4 x i8> poison, i8 %i.id, i64 0
  %i.ik = insertelement <4 x i8> %i.ij, i8 %i.if, i64 1
  %i.il = insertelement <4 x i8> %i.ik, i8 %i.ih, i64 2
  %i.im = insertelement <4 x i8> %i.il, i8 %i.ii, i64 3
  %i.in = and <4 x i8> %i.im, <i8 7, i8 63, i8 63, i8 63>
  %i.io = or disjoint <4 x i8> %i.in, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.io, ptr %.1119, align 1, !tbaa !741
  br label %bb.ar

bb.ap:                                            ; preds = %bb.w
  %i.ip = zext nneg i8 %i.dw to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !741
  %i.is = icmp eq i8 %i.ir, 0
  br i1 %i.is, label %sqlite3Fts5UnicodeIsdiacritic.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.l
  %i.it = phi i8 [ %i.dw, %bb.ap ], [ %i.p, %bb.l ] ; 3 uses
  %.8 = phi ptr [ %.9, %bb.ap ], [ %.1148253, %bb.l ]
  %.3143 = phi ptr [ %.1141, %bb.ap ], [ %.0140264, %bb.l ]
  %.3136 = phi i32 [ %.1134, %bb.ap ], [ %.0133265, %bb.l ]
  %.3129 = phi ptr [ %.1127, %bb.ap ], [ %.0126266, %bb.l ]
  %.3 = phi ptr [ %.0118, %bb.ap ], [ %.0140264, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %.2, %bb.ap ], [ %i.cp, %bb.l ]
  %i.iu = add nsw i8 %i.it, -65
  %or.cond181 = icmp ult i8 %i.iu, 26
  %narrow = add nuw nsw i8 %i.it, 32
  %spec.select = select i1 %or.cond181, i8 %narrow, i8 %i.it
  %.4 = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 %spec.select, ptr %.3, align 1, !tbaa !741
  %i.iv = getelementptr inbounds nuw i8, ptr %.8, i64 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aj, %bb.an, %bb.ao, %bb.al, %bb.ah, %bb.aq
  %.9 = phi ptr [ %i.iv, %bb.aq ], [ %.7, %bb.ah ], [ %.7, %bb.al ], [ %.7, %bb.ao ], [ %.7, %bb.an ], [ %.7, %bb.aj ] ; 8 uses
  %.4144 = phi ptr [ %.3143, %bb.aq ], [ %.2142, %bb.ah ], [ %.2142, %bb.al ], [ %.2142, %bb.ao ], [ %.2142, %bb.an ], [ %.2142, %bb.aj ] ; 2 uses
  %.4137 = phi i32 [ %.3136, %bb.aq ], [ %.2135, %bb.ah ], [ %.2135, %bb.al ], [ %.2135, %bb.ao ], [ %.2135, %bb.an ], [ %.2135, %bb.aj ] ; 4 uses
  %.4130 = phi ptr [ %.3129, %bb.aq ], [ %.2128, %bb.ah ], [ %.2128, %bb.al ], [ %.2128, %bb.ao ], [ %.2128, %bb.an ], [ %.2128, %bb.aj ] ; 3 uses
  %.5 = phi ptr [ %.4, %bb.aq ], [ %.1119, %bb.ah ], [ %i.hm, %bb.al ], [ %i.ib, %bb.ao ], [ %i.ia, %bb.an ], [ %i.hd, %bb.aj ] ; 4 uses
  %.2 = phi i32 [ %.1, %bb.aq ], [ %.0117, %bb.ah ], [ %.0117, %bb.al ], [ %.0117, %bb.ao ], [ %.0117, %bb.an ], [ %.0117, %bb.aj ] ; 4 uses
  %i.iw = ptrtoint ptr %.9 to i64                 ; 2 uses
  %i.ix = sub i64 %i.iw, %i.m
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = icmp ult ptr %.9, %i.b
  br i1 %i.iz, label %bb.o, label %sqlite3Fts5UnicodeIsdiacritic.exit.thread

sqlite3Fts5UnicodeIsdiacritic.exit.thread:        ; preds = %bb.ag, %bb.ar, %sqlite3Fts5UnicodeIsdiacritic.exit, %bb.ap
  %.10 = phi ptr [ %.6153223, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.9, %bb.ap ], [ %.9, %bb.ar ], [ %.6153223, %bb.ag ]
  %.5145 = phi ptr [ %.1141, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.1141, %bb.ap ], [ %.4144, %bb.ar ], [ %.1141, %bb.ag ] ; 3 uses
  %.5138 = phi i32 [ %.1134, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.1134, %bb.ap ], [ %.4137, %bb.ar ], [ %.1134, %bb.ag ]
  %.5131 = phi ptr [ %.1127, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.1127, %bb.ap ], [ %.4130, %bb.ar ], [ %.1127, %bb.ag ]
  %.6 = phi ptr [ %.0118, %sqlite3Fts5UnicodeIsdiacritic.exit ], [ %.0118, %bb.ap ], [ %.5, %bb.ar ], [ %.0118, %bb.ag ]
  %i.ja = ptrtoint ptr %.6 to i64
  %i.jb = ptrtoint ptr %.5145 to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = trunc i64 %i.jc to i32
  %i.je = tail call i32 %5(ptr noundef %1, i32 noundef 0, ptr noundef %.5145, i32 noundef %i.jd, i32 noundef %.2, i32 noundef %i.iy) #59
  %.0154.fr = freeze i32 %i.je                    ; 3 uses
  %i.jf = icmp eq i32 %.0154.fr, 0
  br i1 %i.jf, label %.preheader, label %.thread229

.thread229:                                       ; preds = %sqlite3Fts5UnicodeIsdiacritic.exit.thread
  %i.jg = icmp eq i32 %.0154.fr, 101
  %spec.select238 = select i1 %i.jg, i32 0, i32 %.0154.fr
  br label %.thread229.thread

.thread229.thread:                                ; preds = %bb.p, %sqlite3_malloc64.exit, %.preheader, %bb.n, %.thread229
  %i.jh = phi i32 [ 0, %bb.n ], [ %spec.select238, %.thread229 ], [ 7, %bb.p ], [ 7, %sqlite3_malloc64.exit ], [ 0, %.preheader ]
  ret i32 %i.jh
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @fts5AsciiCreate(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %fts5AsciiDelete.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @sqlite3_initialize(), !inline_history !821
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %fts5AsciiDelete.exit

sqlite3_malloc64.exit:                            ; preds = %bb.b
  %i.c = tail call fastcc ptr @sqlite3Malloc(i64 noundef 128), !inline_history !821 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %fts5AsciiDelete.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3_malloc64.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(128) @aAsciiTokenChar, i64 128, i1 false)
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph, label %fts5AsciiDelete.exit

.lr.ph:                                           ; preds = %bb.c, %fts5AsciiAddExceptions.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %fts5AsciiAddExceptions.exit ], [ 0, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !747  ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !747  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %bb.f
  %.013.i.i = phi ptr [ %i.u, %bb.f ], [ %i.i, %.lr.ph ] ; 2 uses
  %.012.i.i = phi ptr [ %i.v, %bb.f ], [ @.str.1759, %.lr.ph ] ; 2 uses
  %i.k = load i8, ptr %.013.i.i, align 1, !tbaa !741 ; 3 uses
  %i.l = load i8, ptr %.012.i.i, align 1, !tbaa !741 ; 2 uses
  %i.m = icmp eq i8 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.n = icmp eq i8 %i.k, 0
  br i1 %i.n, label %sqlite3_stricmp.exit.thread, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.o = zext i8 %i.k to i64
  %i.p = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !741
  %i.r = zext i8 %i.l to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !741
  %.not.i.i = icmp eq i8 %i.q, %i.t
  br i1 %.not.i.i, label %bb.f, label %.preheader.i30

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %.preheader.i

sqlite3_stricmp.exit.thread:                      ; preds = %bb.d
  %i.w = load i8, ptr %i.h, align 1, !tbaa !741   ; 2 uses
  %.not9.i = icmp eq i8 %i.w, 0
  br i1 %.not9.i, label %fts5AsciiAddExceptions.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3_stricmp.exit.thread, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %sqlite3_stricmp.exit.thread ]
  %i.x = phi i8 [ %i.ac, %bb.h ], [ %i.w, %sqlite3_stricmp.exit.thread ] ; 2 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.z = zext nneg i8 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z
  store i8 1, ptr %i.aa, align 1, !tbaa !741
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !741 ; 2 uses
  %.not.i29 = icmp eq i8 %i.ac, 0
  br i1 %.not.i29, label %fts5AsciiAddExceptions.exit, label %.lr.ph.i, !llvm.loop !8011

.preheader.i30:                                   ; preds = %bb.e, %bb.k
  %.013.i.i31 = phi ptr [ %i.an, %bb.k ], [ %i.i, %bb.e ] ; 2 uses
  %.012.i.i32 = phi ptr [ %i.ao, %bb.k ], [ @.str.1760, %bb.e ] ; 2 uses
  %i.ad = load i8, ptr %.013.i.i31, align 1, !tbaa !741 ; 3 uses
  %i.ae = load i8, ptr %.012.i.i32, align 1, !tbaa !741 ; 2 uses
  %i.af = icmp eq i8 %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.i30
  %i.ag = icmp eq i8 %i.ad, 0
  br i1 %i.ag, label %sqlite3_stricmp.exit35.thread48, label %bb.k

bb.j:                                             ; preds = %.preheader.i30
  %i.ah = zext i8 %i.ad to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !741
  %i.ak = zext i8 %i.ae to i64
  %i.al = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !741
  %.not.i.i33 = icmp eq i8 %i.aj, %i.am
  br i1 %.not.i.i33, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i31, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i32, i64 1
  br label %.preheader.i30

sqlite3_stricmp.exit35.thread48:                  ; preds = %bb.i
  %i.ap = load i8, ptr %i.h, align 1, !tbaa !741  ; 2 uses
  %.not9.i36 = icmp eq i8 %i.ap, 0
  br i1 %.not9.i36, label %fts5AsciiAddExceptions.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %sqlite3_stricmp.exit35.thread48, %bb.m
  %indvars.iv.i38 = phi i64 [ %indvars.iv.next.i39, %bb.m ], [ 0, %sqlite3_stricmp.exit35.thread48 ]
  %i.aq = phi i8 [ %i.av, %bb.m ], [ %i.ap, %sqlite3_stricmp.exit35.thread48 ] ; 2 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i37
  %i.as = zext nneg i8 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !741
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i37
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i39
  %i.av = load i8, ptr %i.au, align 1, !tbaa !741 ; 2 uses
  %.not.i40 = icmp eq i8 %i.av, 0
  br i1 %.not.i40, label %fts5AsciiAddExceptions.exit, label %.lr.ph.i37, !llvm.loop !8011

fts5AsciiAddExceptions.exit:                      ; preds = %bb.m, %bb.h, %sqlite3_stricmp.exit35.thread48, %sqlite3_stricmp.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next to i32
  %5 = icmp sgt i32 %2, %4
  br i1 %5, label %.lr.ph, label %fts5AsciiDelete.exit, !llvm.loop !8012

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  %i.aw = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i.i42 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i42, label %bb.q, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.ax = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.ay(ptr noundef nonnull %i.ax) #59, !inline_history !8014
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.o, %bb.n
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %i.c) #59, !inline_history !8013
  %i.bb = sext i32 %i.ba to i64
  %i.bc = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.bd = sub nsw i64 %i.bc, %i.bb
  store i64 %i.bd, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.bf = add nsw i64 %i.be, -1
  store i64 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.bg(ptr noundef nonnull %i.c) #59, !inline_history !8015
  %i.bh = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i4.i.i, label %fts5AsciiDelete.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.bi(ptr noundef nonnull %i.bh) #59, !inline_history !8016
  br label %fts5AsciiDelete.exit

bb.q:                                             ; preds = %._crit_edge
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.bj(ptr noundef nonnull %i.c) #59, !inline_history !8015
  br label %fts5AsciiDelete.exit

fts5AsciiDelete.exit:                             ; preds = %fts5AsciiAddExceptions.exit, %bb.c, %bb.b, %bb.q, %bb.p, %sqlite3_mutex_enter.exit.i.i, %sqlite3_malloc64.exit, %bb.a
  %.2 = phi i32 [ 7, %sqlite3_malloc64.exit ], [ 1, %bb.a ], [ 1, %bb.q ], [ 0, %bb.c ], [ 1, %sqlite3_mutex_enter.exit.i.i ], [ 1, %bb.p ], [ 7, %bb.b ], [ 0, %fts5AsciiAddExceptions.exit ]
  %.1 = phi ptr [ null, %sqlite3_malloc64.exit ], [ null, %bb.a ], [ null, %bb.q ], [ %i.c, %bb.c ], [ null, %sqlite3_mutex_enter.exit.i.i ], [ null, %bb.p ], [ null, %bb.b ], [ %i.c, %fts5AsciiAddExceptions.exit ]
  store ptr %.1, ptr %3, align 8, !tbaa !3220
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal void @fts5AsciiDelete(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.d(ptr noundef nonnull %i.c) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #59, !inline_history !13
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.i = sub nsw i64 %i.h, %i.g
  store i64 %i.i, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.k = add nsw i64 %i.j, -1
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.l(ptr noundef nonnull %0) #59, !inline_history !755
  %i.m = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.n(ptr noundef nonnull %i.m) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.o(ptr noundef nonnull %0) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 102, 101) i32 @fts5AsciiTokenize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.preheader94.preheader, label %sqlite3_free.exit75.thread

.preheader94.preheader:                           ; preds = %bb.a
  %i.d = zext nneg i32 %4 to i64                  ; 2 uses
  %i.e = add nsw i32 %4, -1
  br label %.preheader94

.preheader94:                                     ; preds = %.preheader94.preheader, %.loopexit
  %.052106 = phi ptr [ %.1, %.loopexit ], [ %i.b, %.preheader94.preheader ] ; 6 uses
  %.053105 = phi i32 [ %.154, %.loopexit ], [ 64, %.preheader94.preheader ] ; 2 uses
  %.056104 = phi i32 [ %i.cm, %.loopexit ], [ 0, %.preheader94.preheader ] ; 2 uses
  %i.f = sext i32 %.056104 to i64
  %i.g = add nsw i32 %.056104, 1
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 %i.g)
  br label %bb.b

bb.b:                                             ; preds = %.preheader94, %bb.d
  %indvars.iv = phi i64 [ %i.f, %.preheader94 ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %3, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !741   ; 2 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %.critedge.split.loop.exit132

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !741
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %.critedge.split.loop.exit134

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.o = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.o, label %bb.b, label %.critedge, !llvm.loop !8017

.critedge.split.loop.exit132:                     ; preds = %bb.b
  %i.p = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.split.loop.exit134:                     ; preds = %bb.c
  %i.q = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split.loop.exit134, %.critedge.split.loop.exit132
  %.157.lcssa = phi i32 [ %i.p, %.critedge.split.loop.exit132 ], [ %i.q, %.critedge.split.loop.exit134 ], [ %smax, %bb.d ] ; 7 uses
  %i.r = icmp eq i32 %.157.lcssa, %4
  br i1 %i.r, label %.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.05997 = add nsw i32 %.157.lcssa, 1            ; 3 uses
  %i.s = icmp slt i32 %.05997, %4
  br i1 %i.s, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.t = sext i32 %.05997 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge4
  %indvars.iv112 = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next113, %.critedge4 ] ; 4 uses
  %.059.in98 = phi i32 [ %.157.lcssa, %.lr.ph.preheader ], [ %.pre-phi, %.critedge4 ]
  %i.u = getelementptr inbounds i8, ptr %3, i64 %indvars.iv112
  %i.v = load i8, ptr %i.u, align 1, !tbaa !741   ; 2 uses
  %.not = icmp sgt i8 %i.v, -1
  br i1 %.not, label %bb.e, label %.lr.ph..critedge4_crit_edge

.lr.ph..critedge4_crit_edge:                      ; preds = %.lr.ph
  %.pre115 = trunc nsw i64 %indvars.iv112 to i32
  br label %.critedge4

bb.e:                                             ; preds = %.lr.ph
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !741
  %.not67 = icmp eq i8 %i.y, 0
  %i.z = trunc nsw i64 %indvars.iv112 to i32      ; 2 uses
  br i1 %.not67, label %.critedge2, label %.critedge4

.critedge4:                                       ; preds = %.lr.ph..critedge4_crit_edge, %bb.e
  %.pre-phi = phi i32 [ %.pre115, %.lr.ph..critedge4_crit_edge ], [ %i.z, %bb.e ]
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %i.d
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !8018

.critedge2:                                       ; preds = %bb.e, %.critedge4, %.preheader
  %.059.in.lcssa = phi i32 [ %.157.lcssa, %.preheader ], [ %i.e, %.critedge4 ], [ %.059.in98, %bb.e ]
  %.059.lcssa = phi i32 [ %.05997, %.preheader ], [ %4, %.critedge4 ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = sub nsw i32 %.059.lcssa, %.157.lcssa    ; 5 uses
  %i.ab = icmp sgt i32 %i.aa, %.053105
  br i1 %i.ab, label %bb.f, label %.critedge2..lr.ph.preheader.i_crit_edge

.critedge2..lr.ph.preheader.i_crit_edge:          ; preds = %.critedge2
  %.pre = zext nneg i32 %i.aa to i64
end_hunk_4
