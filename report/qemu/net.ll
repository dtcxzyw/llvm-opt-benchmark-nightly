Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/net?download=true
inline.NumInlined: 65
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 22
begin_hunk_0_@net_crc32:bb.a
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01423 = phi i32 [ %i.ap, %.lr.ph ], [ 0, %bb.a ]
  %.01522 = phi i32 [ %spec.select.7, %.lr.ph ], [ -1, %bb.a ] ; 2 uses
  %.01621 = phi ptr [ %i.ao, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = load i8, ptr %.01621, align 1            ; 8 uses
  %.1.lobit = lshr i32 %.01522, 31
  %i.c = and i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i32
  %i.e = shl i32 %.01522, 1                       ; 2 uses
  %i.f = lshr i8 %i.b, 1
  %.not = icmp eq i32 %.1.lobit, %i.d
  %i.g = xor i32 %i.e, 79764919
  %spec.select = select i1 %.not, i32 %i.e, i32 %i.g ; 2 uses
  %.1.lobit.1 = lshr i32 %spec.select, 31
  %i.h = and i8 %i.f, 1
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl i32 %spec.select, 1                  ; 2 uses
  %i.k = lshr i8 %i.b, 2
  %.not.1 = icmp eq i32 %.1.lobit.1, %i.i
  %i.l = xor i32 %i.j, 79764919
  %spec.select.1 = select i1 %.not.1, i32 %i.j, i32 %i.l ; 2 uses
  %.1.lobit.2 = lshr i32 %spec.select.1, 31
  %i.m = and i8 %i.k, 1
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl i32 %spec.select.1, 1                ; 2 uses
  %i.p = lshr i8 %i.b, 3
  %.not.2 = icmp eq i32 %.1.lobit.2, %i.n
  %i.q = xor i32 %i.o, 79764919
  %spec.select.2 = select i1 %.not.2, i32 %i.o, i32 %i.q ; 2 uses
  %.1.lobit.3 = lshr i32 %spec.select.2, 31
  %i.r = and i8 %i.p, 1
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl i32 %spec.select.2, 1                ; 2 uses
  %i.u = lshr i8 %i.b, 4
  %.not.3 = icmp eq i32 %.1.lobit.3, %i.s
  %i.v = xor i32 %i.t, 79764919
  %spec.select.3 = select i1 %.not.3, i32 %i.t, i32 %i.v ; 2 uses
  %.1.lobit.4 = lshr i32 %spec.select.3, 31
  %i.w = and i8 %i.u, 1
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl i32 %spec.select.3, 1                ; 2 uses
  %i.z = lshr i8 %i.b, 5
  %.not.4 = icmp eq i32 %.1.lobit.4, %i.x
  %i.aa = xor i32 %i.y, 79764919
  %spec.select.4 = select i1 %.not.4, i32 %i.y, i32 %i.aa ; 2 uses
  %.1.lobit.5 = lshr i32 %spec.select.4, 31
  %i.ab = and i8 %i.z, 1
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl i32 %spec.select.4, 1               ; 2 uses
  %i.ae = lshr i8 %i.b, 6
  %.not.5 = icmp eq i32 %.1.lobit.5, %i.ac
  %i.af = xor i32 %i.ad, 79764919
  %spec.select.5 = select i1 %.not.5, i32 %i.ad, i32 %i.af ; 2 uses
  %.1.lobit.6 = lshr i32 %spec.select.5, 31
  %i.ag = and i8 %i.ae, 1
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl i32 %spec.select.5, 1               ; 2 uses
  %i.aj = lshr i8 %i.b, 7
  %.not.6 = icmp eq i32 %.1.lobit.6, %i.ah
  %i.ak = xor i32 %i.ai, 79764919
  %spec.select.6 = select i1 %.not.6, i32 %i.ai, i32 %i.ak ; 2 uses
  %.1.lobit.7 = lshr i32 %spec.select.6, 31
  %i.al = zext nneg i8 %i.aj to i32
  %i.am = shl i32 %spec.select.6, 1               ; 2 uses
  %.not.7 = icmp eq i32 %.1.lobit.7, %i.al
  %i.an = xor i32 %i.am, 79764919
  %spec.select.7 = select i1 %.not.7, i32 %i.am, i32 %i.an ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01621, i64 1
  %i.ap = add nuw nsw i32 %.01423, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.015.lcssa = phi i32 [ -1, %bb.a ], [ %spec.select.7, %.lr.ph ]
  ret i32 %.015.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define dso_local i32 @net_crc32_le(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01420 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %crc.next.1, %.lr.ph ] ; 2 uses
  %.01519 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.f, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = load i8, ptr %.01519, align 1
  %crc.le.shift = lshr i32 %.01420, 8
  %crc.indexer.cast = trunc i32 %.01420 to i8
  %crc.data.indexer = xor i8 %i.c, %crc.indexer.cast
  %indexer.ext = zext i8 %crc.data.indexer to i64
  %tbl.ptradd = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %indexer.ext
  %tbl.ld = load i32, ptr %tbl.ptradd, align 4
  %crc.next = xor i32 %crc.le.shift, %tbl.ld      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01519, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %crc.le.shift.1 = lshr i32 %crc.next, 8
  %crc.indexer.cast.1 = trunc i32 %crc.next to i8
  %crc.data.indexer.1 = xor i8 %i.e, %crc.indexer.cast.1
  %indexer.ext.1 = zext i8 %crc.data.indexer.1 to i64
  %tbl.ptradd.1 = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %indexer.ext.1
  %tbl.ld.1 = load i32, ptr %tbl.ptradd.1, align 4
  %crc.next.1 = xor i32 %crc.le.shift.1, %tbl.ld.1 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01519, i64 2 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !52

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01420.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %crc.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01519.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.f, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod23 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.g = load i8, ptr %.01519.epil.init, align 1
  %crc.le.shift.epil = lshr i32 %.01420.epil.init, 8
  %crc.indexer.cast.epil = trunc i32 %.01420.epil.init to i8
  %crc.data.indexer.epil = xor i8 %i.g, %crc.indexer.cast.epil
  %indexer.ext.epil = zext i8 %crc.data.indexer.epil to i64
  %tbl.ptradd.epil = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %indexer.ext.epil
  %tbl.ld.epil = load i32, ptr %tbl.ptradd.epil, align 4
  %crc.next.epil = xor i32 %crc.le.shift.epil, %tbl.ld.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.014.lcssa = phi i32 [ -1, %bb.a ], [ %crc.next.1, %._crit_edge.loopexit.unr-lcssa ], [ %crc.next.epil, %.lr.ph.epil.preheader ]
  ret i32 %.014.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @net_socket_rs_init(ptr noundef initializes((0, 5), (8, 20)) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i1 %2 to i8
  store i32 0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.a, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(69632) %i.f, i8 noundef 0, i64 noundef 69632, i1 noundef false) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 69656
  store ptr %1, ptr %i.g, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @net_fill_rstate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 69656
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.07086 = phi i32 [ %2, %.lr.ph ], [ %.171, %bb.o ] ; 7 uses
  %.07285 = phi ptr [ %1, %.lr.ph ], [ %.173, %bb.o ] ; 7 uses
  %i.h = load i32, ptr %0, align 8
  switch i32 %i.h, label %bb.o [
    i32 0, label %bb.c
    i32 1, label %bb.g
    i32 2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.c, align 8              ; 3 uses
  %i.j = sub i32 4, %i.i
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %.07086) ; 3 uses
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.m = zext nneg i32 %spec.select to i64        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.l, ptr noundef nonnull align 1 %.07285, i64 noundef %i.m, i1 noundef false) #25
  %i.n = getelementptr inbounds nuw i8, ptr %.07285, i64 %i.m ; 3 uses
  %i.o = sub nuw nsw i32 %.07086, %spec.select    ; 3 uses
  %i.p = add i32 %spec.select, %i.i               ; 2 uses
  store i32 %i.p, ptr %i.c, align 8
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.d, align 4
  %i.s = tail call noundef i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.s, ptr %i.b, align 4
  store i32 0, ptr %i.c, align 8
  %i.t = load i8, ptr %i.g, align 4, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %0, align 8
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  store i32 2, ptr %0, align 8
  store i32 0, ptr %i.f, align 8
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.c, align 8              ; 3 uses
  %i.w = sub i32 4, %i.v
  %spec.select80 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.07086) ; 3 uses
  %i.x = zext i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.x
  %i.z = zext nneg i32 %spec.select80 to i64      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.y, ptr noundef nonnull align 1 %.07285, i64 noundef %i.z, i1 noundef false) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %.07285, i64 %i.z ; 2 uses
  %i.ab = sub nuw nsw i32 %.07086, %spec.select80 ; 2 uses
  %i.ac = add i32 %spec.select80, %i.v            ; 2 uses
  store i32 %i.ac, ptr %i.c, align 8
  %i.ad = icmp eq i32 %i.ac, 4
  br i1 %i.ad, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %i.d, align 4
  %i.af = tail call noundef i32 @llvm.bswap.i32(i32 %i.ae)
  store i32 %i.af, ptr %i.f, align 8
  store i32 0, ptr %i.c, align 8
  store i32 2, ptr %0, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.ag = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ah = load i32, ptr %i.c, align 8             ; 3 uses
  %i.ai = sub i32 %i.ag, %i.ah
  %spec.select81 = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 %.07086) ; 3 uses
  %i.aj = add i32 %spec.select81, %i.ah           ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 69633
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = zext i32 %i.ah to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  %i.an = zext nneg i32 %spec.select81 to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.am, ptr noundef nonnull align 1 %.07285, i64 noundef %i.an, i1 noundef false) #25
  store i32 %i.aj, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.07285, i64 %i.an ; 2 uses
  %i.ap = sub nuw nsw i32 %.07086, %spec.select81 ; 2 uses
  %.not = icmp ult i32 %i.aj, %i.ag
  br i1 %.not, label %bb.o, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @stderr, align 8
  %i.ar = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.aq, i32 noundef 1, ptr noundef nonnull @.str.51) #25 ; 0 uses
  store i32 0, ptr %0, align 8
  store i32 0, ptr %i.c, align 8
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.c, align 8
  store i32 0, ptr %0, align 8
  %i.as = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not79 = icmp eq ptr %i.as, null
  br i1 %.not79, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str, i32 noundef 2168, ptr noundef nonnull @__PRETTY_FUNCTION__.net_fill_rstate) #27
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void %i.as(ptr noundef nonnull %0) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.n, %bb.g, %bb.h, %bb.c, %bb.f, %bb.e, %bb.b
  %.173 = phi ptr [ %.07285, %bb.b ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %bb.c ], [ %i.aa, %bb.h ], [ %i.aa, %bb.g ], [ %i.ao, %bb.n ], [ %i.ao, %bb.j ]
  %.171 = phi i32 [ %.07086, %bb.b ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.c ], [ %i.ab, %bb.h ], [ %i.ab, %bb.g ], [ %i.ap, %bb.n ], [ %i.ap, %bb.j ] ; 2 uses
  %i.at = icmp sgt i32 %.171, 0
  br i1 %i.at, label %bb.b, label %bb.q, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.a
  %i.au = icmp eq i32 %2, 0
  br i1 %i.au, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str, i32 noundef 2175, ptr noundef nonnull @__PRETTY_FUNCTION__.net_fill_rstate) #27
  unreachable

bb.q:                                             ; preds = %bb.o, %._crit_edge, %bb.k
  %.074 = phi i32 [ -1, %bb.k ], [ 0, %._crit_edge ], [ 0, %bb.o ]
  ret i32 %.074
}

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree
declare i32 @__vsnprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #21

declare ptr @qemu_new_net_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @qemu_deliver_packet_iov(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
bb.a:
  %5 = alloca %struct.virtio_net_hdr_v1_hash, align 2 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @iov_size(ptr noundef %2, i32 noundef %3) #25
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 320 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not48 = icmp eq i8 %i.f, 0
  br i1 %.not48, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not49 = icmp eq i32 %i.h, 1
  br i1 %.not49, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 336
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [376 x i8], ptr %4, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = sub i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.s, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.044 = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.v = and i32 %1, 1
  %.not50 = icmp eq i32 %i.v, 0
  br i1 %.not50, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 348 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %.not51 = icmp eq i32 %i.x, 0
  br i1 %.not51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add i32 %3, 1                            ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call noalias ptr @g_malloc_n(i64 noundef %i.z, i64 noundef 16) #31 ; 5 uses
  store ptr %5, ptr %i.aa, align 8
  %i.ab = load i32, ptr %i.w, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = sext i32 %3 to i64
  %i.ag = shl nsw i64 %i.af, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 %i.ae, ptr noundef nonnull align 1 %2, i64 noundef %i.ag, i1 noundef false) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.054 = phi ptr [ null, %bb.g ], [ null, %bb.h ], [ %i.aa, %bb.i ]
  %.046 = phi i32 [ %3, %bb.g ], [ %3, %bb.h ], [ %i.y, %bb.i ] ; 4 uses
  %.045 = phi ptr [ %2, %bb.g ], [ %2, %bb.h ], [ %i.aa, %bb.i ] ; 5 uses
  %i.ah = load ptr, ptr %4, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not52 = icmp eq ptr %i.aj, null
  br i1 %.not52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = call i64 %i.aj(ptr noundef nonnull %4, ptr noundef %.045, i32 noundef %.046) #25
  br label %nc_sendv_compat.exit

bb.l:                                             ; preds = %bb.j
  %i.al = icmp eq i32 %.046, 1
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %.045, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.045, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  br label %iov_to_buf.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ap = call i64 @iov_size(ptr noundef %.045, i32 noundef %.046) #25 ; 3 uses
  %i.aq = icmp ugt i64 %i.ap, 69632
  br i1 %i.aq, label %nc_sendv_compat.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = call noalias ptr @g_malloc(i64 noundef %i.ap) #28 ; 3 uses
  %i.as = call i64 @iov_to_buf_full(ptr noundef %.045, i32 noundef range(i32 2, 1) %.046, i64 noundef 0, ptr noundef %i.ar, i64 noundef range(i64 0, 69633) %i.ap) #25
  br label %iov_to_buf.exit.i

iov_to_buf.exit.i:                                ; preds = %bb.o, %bb.m
  %.019.i = phi ptr [ null, %bb.m ], [ %i.ar, %bb.o ]
  %.018.i = phi ptr [ %i.am, %bb.m ], [ %i.ar, %bb.o ]
  %.0.i = phi i64 [ %i.ao, %bb.m ], [ %i.as, %bb.o ]
  %i.at = load ptr, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call i64 %i.av(ptr noundef nonnull %4, ptr noundef %.018.i, i64 noundef %.0.i) #25, !inline_history !54
  call void @g_free(ptr noundef %.019.i) #25
  br label %nc_sendv_compat.exit

nc_sendv_compat.exit:                             ; preds = %iov_to_buf.exit.i, %bb.n, %bb.k
  %.043.in = phi i64 [ %i.ak, %bb.k ], [ %i.aw, %iov_to_buf.exit.i ], [ -1, %bb.n ] ; 2 uses
  %.not53 = icmp eq ptr %.044, null
  br i1 %.not53, label %bb.q, label %bb.p

bb.p:                                             ; preds = %nc_sendv_compat.exit
  store i8 0, ptr %.044, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %nc_sendv_compat.exit
  %i.ax = and i64 %.043.in, 4294967295
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = load i8, ptr %i.d, align 8
  %i.ba = or i8 %i.az, 1
  store i8 %i.ba, ptr %i.d, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %sext = shl i64 %.043.in, 32
  %i.bb = ashr exact i64 %sext, 32
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.s, %bb.b
  %.1 = phi ptr [ %.054, %bb.s ], [ null, %bb.c ], [ null, %bb.b ]
  %.0 = phi i64 [ %i.bb, %bb.s ], [ 0, %bb.c ], [ %i.c, %bb.b ]
  call void @g_free(ptr noundef %.1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

declare i64 @iov_to_buf_full(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @qemu_del_net_queue(ptr noundef) local_unnamed_addr #4

declare i64 @qemu_net_queue_send(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @qemu_netfilter_receive(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_hash_table_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @g_ptr_array_set_free_func(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_hash_table_replace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @opts_visitor_new(ptr noundef) local_unnamed_addr #4

declare i32 @qemu_strtoul(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @qemu_opt_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @qemu_opt_set_number(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @qemu_opt_unset(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @qemu_opts_id(ptr noundef) local_unnamed_addr #4

declare void @qemu_opts_set_id(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @id_generate(i32 noundef) local_unnamed_addr #4

declare void @qapi_free_Netdev(ptr noundef) local_unnamed_addr #4

end_hunk_0
