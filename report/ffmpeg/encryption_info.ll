inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@av_encryption_info_alloc:bb.a
  %.not22 = icmp eq ptr %i.g, null
  %or.cond24 = select i1 %.not21, i1 true, i1 %.not22
  br i1 %or.cond24, label %av_encryption_info_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.k, null
  %i.o = icmp ne i32 %0, 0
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %av_encryption_info_free.exit, label %bb.d

av_encryption_info_free.exit:                     ; preds = %bb.c, %bb.b
  tail call void @av_free(ptr noundef %i.c) #5
  tail call void @av_free(ptr noundef %i.g) #5
  tail call void @av_free(ptr noundef %i.k) #5
  tail call void @av_free(ptr noundef nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %av_encryption_info_free.exit
  %.0 = phi ptr [ null, %av_encryption_info_free.exit ], [ null, %bb.a ], [ %i.a, %bb.c ]
  ret ptr %.0
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #1

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @av_encryption_info_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void @av_free(ptr noundef %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call void @av_free(ptr noundef %i.d) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  tail call void @av_free(ptr noundef %i.f) #5
  tail call void @av_free(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @av_encryption_info_clone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16
  %i.g = tail call ptr @av_encryption_info_alloc(i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.f) ; 7 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load <2 x i32>, ptr %0, align 8, !tbaa !19
  store <2 x i32> %i.h, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = load i32, ptr %i.e, align 8, !tbaa !16
  %i.q = zext i32 %i.p to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.o, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.v = load i32, ptr %i.c, align 8, !tbaa !14
  %i.w = zext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.u, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !18
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.aa, i64 %i.ad, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @av_encryption_info_get_side_data(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %1, 24
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 1, !tbaa !21
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 1, !tbaa !21
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)  ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 1, !tbaa !21   ; 3 uses
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)  ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = add nuw nsw i64 %i.f, 24
  %i.p = add nuw nsw i64 %i.o, %i.j
  %i.q = shl nuw nsw i64 %i.n, 3
  %i.r = add nuw nsw i64 %i.p, %i.q
  %i.s = icmp ult i64 %1, %i.r
  br i1 %i.s, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call ptr @av_encryption_info_alloc(i32 noundef %i.m, i32 noundef %i.e, i32 noundef %i.i) ; 10 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 1, !tbaa !21
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  store i32 %i.v, ptr %i.t, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 1, !tbaa !21
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.y, ptr %i.z, align 4, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !21
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.ag, i64 %i.f, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 1 %i.ak, i64 %i.j, i1 false)
  %.not48 = icmp eq i32 %i.l, 0
  br i1 %.not48, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17 ; 3 uses
  %xtraiter = and i64 %i.n, 1
  %i.ap = icmp eq i32 %i.l, 16777216
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.n, 4294967294
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %.047 = phi i64 [ 0, %.lr.ph.new ], [ %i.bh, %bb.e ] ; 3 uses
  %.04246 = phi ptr [ %i.am, %.lr.ph.new ], [ %i.bg, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.aq = load i32, ptr %.04246, align 1, !tbaa !21
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.047 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %.04246, i64 4
  %i.au = load i32, ptr %i.at, align 1, !tbaa !21
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %.04246, i64 8
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !21
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.047 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %.04246, i64 12
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !21
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %.04246, i64 16 ; 2 uses
  %i.bh = add nuw nsw i64 %.047, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !27

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.047.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bh, %.loopexit.loopexit.unr-lcssa ]
  %.04246.epil.init = phi ptr [ %i.am, %.lr.ph ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod51 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.bi = load i32, ptr %.04246.epil.init, align 1, !tbaa !21
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.047.epil.init ; 2 uses
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %.04246.epil.init, i64 4
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !21
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.c, %bb.b, %bb.a
  %.041 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.c ], [ %i.t, %bb.d ], [ %i.t, %.loopexit.loopexit.unr-lcssa ], [ %i.t, %.epil.preheader ]
  ret ptr %.041
}

; Function Attrs: nounwind uwtable
define ptr @av_encryption_info_add_side_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = icmp ugt i32 %i.b, -25
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i32 -25, %i.b                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = icmp ult i32 %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub nuw i32 %i.d, %i.f
  %i.i = lshr i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = icmp ult i32 %i.i, %i.k
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i32 %i.b, 24
  %i.n = add i32 %i.m, %i.f
  %i.o = shl nuw i32 %i.k, 3
  %i.p = add i32 %i.n, %i.o
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  store i64 %i.q, ptr %1, align 8, !tbaa !29
  %i.r = tail call noalias ptr @av_malloc(i64 noundef %i.q) #5 ; 11 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %0, align 8, !tbaa !22
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.r, align 1, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !23
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.w, ptr %i.x, align 1, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !20
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.aa, ptr %i.ab, align 1, !tbaa !21
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %i.ad, ptr %i.ae, align 1, !tbaa !21
  %i.af = load i32, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 %i.ag, ptr %i.ah, align 1, !tbaa !21
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !18  ; 5 uses
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 %i.aj, ptr %i.ak, align 1, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.ao = zext i32 %i.ac to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.an, i64 %i.ao, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15
  %i.as = zext i32 %i.af to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ar, i64 %i.as, i1 false)
  %.not55 = icmp eq i32 %i.ai, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17 ; 3 uses
  %wide.trip.count = zext i32 %i.ai to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aw = icmp eq i32 %i.ai, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %.04653 = phi ptr [ %i.at, %.lr.ph.new ], [ %i.bn, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  store i32 %i.az, ptr %.04653, align 1, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %.04653, i64 4
  store i32 %i.bc, ptr %i.bd, align 1, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %.04653, i64 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  store i32 %i.bi, ptr %i.be, align 1, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %.04653, i64 12
  store i32 %i.bl, ptr %i.bm, align 1, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.04653, i64 16 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !31

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.04653.epil.init = phi ptr [ %i.at, %.lr.ph ], [ %i.bn, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.epil.init ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !24
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  store i32 %i.bq, ptr %.04653.epil.init, align 1, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %.04653.epil.init, i64 4
  store i32 %i.bt, ptr %i.bu, align 1, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.047 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %i.r, %bb.e ], [ %i.r, %.loopexit.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader ]
  ret ptr %.047
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @av_encryption_init_info_alloc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 56) #5 ; 11 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %i.c = tail call noalias ptr @av_mallocz(i64 noundef %i.b) #5 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %0, ptr %i.d, align 8, !tbaa !37
  %i.e = icmp ne i32 %2, 0                        ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %1 to i64
  %i.g = tail call noalias ptr @av_calloc(i64 noundef %i.f, i64 noundef 8) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %1, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %2, ptr %i.k, align 4, !tbaa !40
  %i.l = zext i32 %3 to i64
  %i.m = tail call noalias ptr @av_mallocz(i64 noundef %i.l) #5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %3, ptr %i.o, align 8, !tbaa !42
  %i.p = icmp eq ptr %i.c, null
  %i.q = icmp ne i32 %0, 0
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq ptr %i.m, null
  %i.s = icmp ne i32 %3, 0
  %or.cond3 = and i1 %i.s, %i.r
  br i1 %or.cond3, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq ptr %i.h, null
  %i.u = icmp ne i32 %1, 0                        ; 2 uses
  %or.cond5 = and i1 %i.u, %i.t
  %or.cond7 = and i1 %i.e, %or.cond5
  br i1 %or.cond7, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond47 = and i1 %i.e, %i.u
  br i1 %or.cond47, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.v = zext i32 %2 to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !43

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.w = tail call noalias ptr @av_mallocz(i64 noundef %i.v) #5 ; 2 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store ptr %i.w, ptr %i.y, align 8, !tbaa !44
  %.not45 = icmp eq ptr %i.w, null
  br i1 %.not45, label %.loopexit.sink.split, label %bb.h

.loopexit.sink.split:                             ; preds = %bb.i, %bb.d, %bb.e, %bb.f
  tail call void @av_encryption_init_info_free(ptr noundef nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.sink.split, %bb.g, %bb.a
  %.042 = phi ptr [ %i.a, %bb.g ], [ null, %.loopexit.sink.split ], [ null, %bb.a ], [ %i.a, %bb.h ]
  ret ptr %.042
}

; Function Attrs: nounwind uwtable
define void @av_encryption_init_info_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %common.ret14, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  tail call void @av_free(ptr noundef %i.f) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !39
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !45

common.ret14:                                     ; preds = %bb.a, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  tail call void @av_encryption_init_info_free(ptr noundef %i.k)
  %i.l = load ptr, ptr %0, align 8, !tbaa !32
  tail call void @av_free(ptr noundef %i.l) #5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  tail call void @av_free(ptr noundef %i.n) #5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  tail call void @av_free(ptr noundef %i.p) #5
  tail call void @av_free(ptr noundef nonnull %0) #5
  br label %common.ret14
}

; Function Attrs: nounwind uwtable
define ptr @av_encryption_init_info_get_side_data(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %1, 4
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 1, !tbaa !21     ; 2 uses
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.e = zext i32 %i.d to i64
  %.not88 = icmp eq i32 %i.c, 0
  br i1 %.not88, label %.loopexit, label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %bb.b
  %i.f = add i64 %1, -4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %._crit_edge
  %.06084 = phi i64 [ %i.bg, %._crit_edge ], [ 0, %.lr.ph86.preheader ] ; 2 uses
  %.06183 = phi ptr [ %i.ad, %._crit_edge ], [ undef, %.lr.ph86.preheader ]
  %.06282 = phi ptr [ %.163, %._crit_edge ], [ null, %.lr.ph86.preheader ] ; 2 uses
  %.06481 = phi i64 [ %i.bf, %._crit_edge ], [ %i.f, %.lr.ph86.preheader ] ; 2 uses
  %.06680 = phi ptr [ %i.be, %._crit_edge ], [ %i.g, %.lr.ph86.preheader ] ; 5 uses
  %i.h = icmp ult i64 %.06481, 16
  br i1 %i.h, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %.lr.ph86
  %i.i = load i32, ptr %.06680, align 1, !tbaa !21
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)  ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06680, i64 4
  %i.m = load i32, ptr %i.l, align 1, !tbaa !21   ; 3 uses
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)  ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.06680, i64 8
  %i.q = load i32, ptr %i.p, align 1, !tbaa !21
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)  ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06680, i64 12
  %i.u = load i32, ptr %i.t, align 1, !tbaa !21
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)  ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 4 uses
  %i.x = add i64 %.06481, -16                     ; 2 uses
  %i.y = add nuw nsw i64 %i.w, %i.k
  %i.z = mul nuw i64 %i.s, %i.o
  %i.aa = add nuw i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.x, %i.aa
  br i1 %i.ab, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.06680, i64 16 ; 2 uses
  %i.ad = tail call ptr @av_encryption_init_info_alloc(i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.r, i32 noundef %i.v) ; 7 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %.06084, 0
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.06183, i64 48
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.163 = phi ptr [ %.06282, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.ac, i64 %i.k, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.k ; 3 uses
  %i.ai = sub i64 %i.x, %i.k                      ; 3 uses
  %.not89 = icmp eq i32 %i.m, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %xtraiter = and i64 %i.o, 1
  %i.ak = icmp eq i32 %i.m, 16777216
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.o, 4294967294
  %i.al = shl nuw nsw i64 %i.s, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %.078 = phi i64 [ 0, %.lr.ph.new ], [ %i.aw, %bb.h ] ; 3 uses
  %.16577 = phi i64 [ %i.ai, %.lr.ph.new ], [ %i.av, %bb.h ]
  %.16776 = phi ptr [ %i.ah, %.lr.ph.new ], [ %i.au, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.078
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %.16776, i64 %i.s, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.16776, i64 %i.s ; 2 uses
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.078
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ap, i64 %i.s, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.s ; 3 uses
  %i.av = sub i64 %.16577, %i.al                  ; 3 uses
  %i.aw = add nuw nsw i64 %.078, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !47

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.078.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %.16577.epil.init = phi i64 [ %i.ai, %.lr.ph ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ]
  %.16776.epil.init = phi ptr [ %i.ah, %.lr.ph ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod110 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod110)
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.078.epil.init
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %.16776.epil.init, i64 %i.s, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.16776.epil.init, i64 %i.s
  %i.bb = sub i64 %.16577.epil.init, %i.s
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.g
  %.167.lcssa = phi ptr [ %i.ah, %bb.g ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ], [ %i.ba, %.epil.preheader ] ; 2 uses
  %.165.lcssa = phi i64 [ %i.ai, %bb.g ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %.167.lcssa, i64 %i.w, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.167.lcssa, i64 %i.w
  %i.bf = sub i64 %.165.lcssa, %i.w
  %i.bg = add nuw nsw i64 %.06084, 1              ; 2 uses
  %exitcond95.not = icmp eq i64 %i.bg, %i.e
  br i1 %exitcond95.not, label %.loopexit, label %.lr.ph86, !llvm.loop !48

.loopexit.sink.split:                             ; preds = %bb.d, %bb.c, %.lr.ph86
  tail call void @av_encryption_init_info_free(ptr noundef %.06282)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.sink.split, %bb.b, %bb.a
  %.068 = phi ptr [ null, %bb.a ], [ null, %.loopexit.sink.split ], [ null, %bb.b ], [ %.163, %._crit_edge ]
  ret ptr %.068
}

; Function Attrs: nounwind uwtable
define ptr @av_encryption_init_info_add_side_data(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not74 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.077 = phi i64 [ %.1, %bb.d ], [ 4, %bb.a ]
  %.05576 = phi i32 [ %i.k, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.05975 = phi ptr [ %i.v, %bb.d ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05975, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %.05975, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %.077, 16
  %i.h = add nuw nsw i64 %i.g, %i.c
  %i.i = add nuw nsw i64 %i.h, %i.f               ; 3 uses
  %2 = icmp eq i32 %.05576, -1
  %i.j = icmp ugt i64 %i.i, 4294967295
  %or.cond = select i1 %2, i1 true, i1 %i.j
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = add nuw i32 %.05576, 1                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05975, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %.not70 = icmp eq i32 %i.m, 0
  br i1 %.not70, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.05975, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = zext i32 %i.p to i64
  %i.r = mul nuw i64 %i.q, %i.n
  %i.s = add nuw i64 %i.r, %i.i                   ; 2 uses
  %i.t = icmp ugt i64 %i.s, 4294967295
  br i1 %i.t, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i64 [ %i.s, %bb.c ], [ %i.i, %bb.b ]  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05975, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.k)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.055.lcssa = phi i32 [ 0, %bb.a ], [ %i.w, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 4, %bb.a ], [ %.1, %._crit_edge.loopexit ] ; 2 uses
  store i64 %.0.lcssa, ptr %1, align 8, !tbaa !29
  %i.x = tail call noalias ptr @av_malloc(i64 noundef %.0.lcssa) #5 ; 5 uses
  %.not67 = icmp eq ptr %i.x, null
  br i1 %.not67, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %.055.lcssa, ptr %i.x, align 1, !tbaa !21
  br i1 %.not74, label %.loopexit, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %bb.h
  %.05787 = phi ptr [ %.2, %bb.h ], [ %i.y, %.lr.ph89.preheader ] ; 5 uses
  %.16086 = phi ptr [ %i.bq, %bb.h ], [ %0, %.lr.ph89.preheader ] ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.16086, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !37
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  store i32 %i.ab, ptr %.05787, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.16086, i64 24 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !39
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %.05787, i64 4
  store i32 %i.ae, ptr %i.af, align 1, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.16086, i64 28 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %.05787, i64 8
  store i32 %i.ai, ptr %i.aj, align 1, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.16086, i64 40 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !42
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %.05787, i64 12
  store i32 %i.am, ptr %i.an, align 1, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %.05787, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %.16086, align 8, !tbaa !32
  %i.aq = load i32, ptr %i.z, align 8, !tbaa !37
  %i.ar = zext i32 %i.aq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  %i.as = load i32, ptr %i.z, align 8, !tbaa !37
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !39
  %.not90 = icmp eq i32 %i.av, 0
  br i1 %.not90, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph89
  %i.aw = getelementptr inbounds nuw i8, ptr %.16086, i64 16
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph82, %bb.f
  %i.ax = phi i32 [ %.pre, %.lr.ph82 ], [ %i.bc, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.15879 = phi ptr [ %i.au, %.lr.ph82 ], [ %i.be, %bb.f ] ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !44
  %i.bb = zext i32 %i.ax to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.15879, ptr align 1 %i.ba, i64 %i.bb, i1 false)
  %i.bc = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.15879, i64 %i.bd ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i32, ptr %i.ac, align 8, !tbaa !39
  %i.bg = zext i32 %i.bf to i64
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.f, label %._crit_edge83, !llvm.loop !50

._crit_edge83:                                    ; preds = %bb.f, %.lr.ph89
  %.158.lcssa = phi ptr [ %i.au, %.lr.ph89 ], [ %i.be, %bb.f ] ; 3 uses
  %i.bi = load i32, ptr %i.ak, align 8, !tbaa !42 ; 2 uses
  %.not69 = icmp eq i32 %i.bi, 0
  br i1 %.not69, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge83
  %i.bj = getelementptr inbounds nuw i8, ptr %.16086, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.bl = zext i32 %i.bi to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.158.lcssa, ptr align 1 %i.bk, i64 %i.bl, i1 false)
  %i.bm = load i32, ptr %i.ak, align 8, !tbaa !42
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.158.lcssa, i64 %i.bn
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge83, %bb.g
  %.2 = phi ptr [ %i.bo, %bb.g ], [ %.158.lcssa, %._crit_edge83 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.16086, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !46 ; 2 uses
  %.not68 = icmp eq ptr %i.bq, null
  br i1 %.not68, label %.loopexit, label %.lr.ph89, !llvm.loop !51

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.h, %bb.e, %._crit_edge
  %.061 = phi ptr [ null, %._crit_edge ], [ %i.x, %bb.e ], [ %i.x, %bb.h ], [ null, %.lr.ph ], [ null, %bb.c ]
  ret ptr %.061
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 16}
!10 = !{!"AVEncryptionInfo", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !13, i64 48, !6, i64 56}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS25AVSubsampleEncryptionInfo", !12, i64 0}
!14 = !{!10, !6, i64 24}
!15 = !{!10, !11, i64 32}
!16 = !{!10, !6, i64 40}
!17 = !{!10, !13, i64 48}
!18 = !{!10, !6, i64 56}
!19 = !{!6, !6, i64 0}
!20 = !{!10, !6, i64 8}
!21 = !{!7, !7, i64 0}
!22 = !{!10, !6, i64 0}
!23 = !{!10, !6, i64 4}
!24 = !{!25, !6, i64 0}
!25 = !{!"AVSubsampleEncryptionInfo", !6, i64 0, !6, i64 4}
!26 = !{!25, !6, i64 4}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !7, i64 0}
!31 = distinct !{!31, !28}
!32 = !{!33, !11, i64 0}
!33 = !{!"AVEncryptionInitInfo", !11, i64 0, !6, i64 8, !34, i64 16, !6, i64 24, !6, i64 28, !11, i64 32, !6, i64 40, !36, i64 48}
!34 = !{!"p2 omnipotent char", !35, i64 0}
!35 = !{!"any p2 pointer", !12, i64 0}
!36 = !{!"p1 _ZTS20AVEncryptionInitInfo", !12, i64 0}
!37 = !{!33, !6, i64 8}
!38 = !{!33, !34, i64 16}
!39 = !{!33, !6, i64 24}
!40 = !{!33, !6, i64 28}
!41 = !{!33, !11, i64 32}
!42 = !{!33, !6, i64 40}
!43 = distinct !{!43, !28}
!44 = !{!11, !11, i64 0}
!45 = distinct !{!45, !28}
!46 = !{!33, !36, i64 48}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
end_hunk_0
