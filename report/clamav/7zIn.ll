Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/7zIn?download=true
inline.NumInlined: 85
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@SzReadAndDecodePackedStreams:bb.a
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !31
  br label %SzFolder_GetUnpackSize.exit.i

SzFolder_GetUnpackSize.exit.i:                    ; preds = %bb.d, %.preheader.i.i, %SzFolder_FindBindPairForOutStream.exit.thread.i.i, %SzFolder_GetNumOutStreams.exit.i.i, %bb.c
  %.09.i.i = phi i64 [ 0, %SzFolder_GetNumOutStreams.exit.i.i ], [ %i.bw, %SzFolder_FindBindPairForOutStream.exit.thread.i.i ], [ 0, %bb.c ], [ 0, %.preheader.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.bx = tail call i32 @LookInStream_SeekTo(ptr noundef %0, i64 noundef %i.h) #12 ; 2 uses
  %.not43.i = icmp eq i32 %i.bx, 0
  br i1 %.not43.i, label %bb.g, label %SzReadAndDecodePackedStreams2.exit

bb.g:                                             ; preds = %SzFolder_GetUnpackSize.exit.i
  %i.by = tail call i32 @Buf_Create(ptr noundef nonnull %2, i64 noundef %.09.i.i, ptr noundef %4) #12
  %.not44.i = icmp eq i32 %i.by, 0
  br i1 %.not44.i, label %SzReadAndDecodePackedStreams2.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %5, align 8, !tbaa !37
  %i.ca = load ptr, ptr %2, align 8, !tbaa !55
  %i.cb = tail call i32 @SzFolder_Decode(ptr noundef %i.l, ptr noundef %i.bz, ptr noundef %0, i64 noundef %i.h, ptr noundef %i.ca, i64 noundef %.09.i.i, ptr noundef %4) #12 ; 2 uses
  %.not45.i = icmp eq i32 %i.cb, 0
  br i1 %.not45.i, label %bb.i, label %SzReadAndDecodePackedStreams2.exit

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !64
  %.not46.i = icmp eq i32 %i.cd, 0
  br i1 %.not46.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load ptr, ptr %2, align 8, !tbaa !55
  %i.cf = tail call i32 @CrcCalc(ptr noundef %i.ce, i64 noundef %.09.i.i) #12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !65
  %.not47.i = icmp eq i32 %i.cf, %i.ch
  br i1 %.not47.i, label %bb.k, label %SzReadAndDecodePackedStreams2.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %SzReadAndDecodePackedStreams2.exit

SzReadAndDecodePackedStreams2.exit:               ; preds = %bb.a, %bb.b, %SzFolder_GetUnpackSize.exit.i, %bb.g, %bb.h, %bb.j, %bb.k
  %.3.i = phi i32 [ %i.f, %bb.a ], [ 2, %bb.g ], [ 0, %bb.k ], [ %i.cb, %bb.h ], [ 16, %bb.b ], [ %i.bx, %SzFolder_GetUnpackSize.exit.i ], [ 3, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @SzAr_Free(ptr noundef nonnull %5, ptr noundef %4)
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !15
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !70
  tail call void %i.cj(ptr noundef %4, ptr noundef %i.ck) #12
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !15
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !60
  tail call void %i.cl(ptr noundef %4, ptr noundef %i.cm) #12
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !15
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !71
  tail call void %i.cn(ptr noundef %4, ptr noundef %i.co) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.3.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 17) i32 @SzReadHeader(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca ptr, align 8                      ; 7 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %i.m = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store ptr null, ptr %i.h, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  store ptr null, ptr %i.i, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  store ptr null, ptr %i.j, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  store ptr null, ptr %i.k, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  store ptr null, ptr %i.l, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  store ptr null, ptr %i.m, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !46
  %i.n = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %1, ptr noundef nonnull %i.d) ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.b, label %SzReadHeader2.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.q = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %1, ptr noundef nonnull %i.c) ; 2 uses
  %.not13.i.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %SzReadArchiveProperties.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.s = load i64, ptr %i.c, align 8, !tbaa !31
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.u = call fastcc i32 @SzReadNumber(ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  %i.w = load i64, ptr %i.r, align 8, !tbaa !58   ; 2 uses
  %i.x = icmp ugt i64 %i.v, %i.w
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = sub nuw i64 %i.w, %i.v
  store i64 %i.y, ptr %i.r, align 8, !tbaa !58
  %i.z = load ptr, ptr %1, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  store ptr %i.aa, ptr %1, align 8, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ab = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %1, ptr noundef nonnull %i.c) ; 2 uses
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %bb.d, label %SzReadArchiveProperties.exit.thread.i

SzReadArchiveProperties.exit.thread.i:            ; preds = %bb.h, %bb.c
  %.ph.i = phi i32 [ %i.q, %bb.c ], [ %i.ab, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %SzReadHeader2.exit

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.ac = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %1, ptr noundef nonnull %i.d) ; 2 uses
  %.not310.i = icmp eq i32 %i.ac, 0
  br i1 %.not310.i, label %thread-pre-split.i, label %SzReadHeader2.exit

thread-pre-split.i:                               ; preds = %bb.i
  %.pr.i = load i64, ptr %i.d, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.ad = phi i64 [ %.pr.i, %thread-pre-split.i ], [ %i.o, %bb.b ] ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4
  br i1 %i.ae, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ag = call fastcc i32 @SzReadStreamsInfo(ptr noundef nonnull %1, ptr noundef nonnull %i.af, ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not311.i = icmp eq i32 %i.ag, 0
  br i1 %.not311.i, label %bb.l, label %SzReadHeader2.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !54
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !45
  %i.ak = add i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !45
  %i.al = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %1, ptr noundef nonnull %i.d) ; 2 uses
  %.not312.i = icmp eq i32 %i.al, 0
  br i1 %.not312.i, label %._crit_edge517.i, label %SzReadHeader2.exit

._crit_edge517.i:                                 ; preds = %bb.l
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge517.i, %bb.j
  %i.am = phi i64 [ %.pre.i, %._crit_edge517.i ], [ %i.ad, %bb.j ]
  switch i64 %i.am, label %bb.n [
    i64 0, label %SzReadHeader2.exit
    i64 5, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  br label %SzReadHeader2.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.an = call fastcc i32 @SzReadNumber(ptr noundef nonnull %1, ptr noundef nonnull %i.a) ; 2 uses
  %.not.i353.i = icmp eq i32 %i.an, 0
  br i1 %.not.i353.i, label %bb.p, label %SzReadNumber32.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !31  ; 12 uses
  %i.ap = icmp ugt i64 %i.ao, 2147483647
  br i1 %i.ap, label %SzReadNumber32.exit.thread.i, label %bb.q

SzReadNumber32.exit.thread.i:                     ; preds = %bb.p, %bb.o
  %.1.i.ph.i = phi i32 [ 4, %bb.p ], [ %i.an, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %SzReadHeader2.exit

bb.q:                                             ; preds = %bb.p
  %i.aq = trunc nuw i64 %i.ao to i32              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !59
  %i.as = icmp eq i64 %i.ao, 0                    ; 5 uses
  br i1 %i.as, label %.thread.i, label %bb.r

.thread.i:                                        ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.at, align 8, !tbaa !66
  br label %.preheader425.split.i

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %2, align 8, !tbaa !63
  %i.av = shl nuw nsw i64 %i.ao, 5
  %i.aw = tail call ptr %i.au(ptr noundef nonnull %2, i64 noundef %i.av) #12, !inline_history !98 ; 9 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %SzReadHeader2.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !66
  %xtraiter = and i64 %i.ao, 3                    ; 3 uses
  %i.az = icmp ult i64 %i.ao, 4
  br i1 %i.az, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ao, 2147483644
  br label %.lr.ph.i

.preheader425.split.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader425.split.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader425.split.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.preheader425.split.i.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %indvars.iv.i.epil ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i8 1, ptr %i.bb, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 25
  store i32 0, ptr %i.bc, align 1
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader425.split.i, label %.lr.ph.i.epil, !llvm.loop !99

.preheader425.split.i:                            ; preds = %.preheader425.split.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.thread.i
  %.0251552.i = phi ptr [ null, %.thread.i ], [ %i.aw, %.lr.ph.i.epil ], [ %i.aw, %.preheader425.split.i.loopexit.unr-lcssa ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.bd = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %1, ptr noundef nonnull %i.f) ; 2 uses
  %.not315437.i = icmp eq i32 %i.bd, 0
  br i1 %.not315437.i, label %.lr.ph440.i, label %.thread404.i

.lr.ph440.i:                                      ; preds = %.preheader425.split.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bi = shl nuw nsw i64 %i.ao, 3
  %i.bj = add nuw nsw i64 %i.bi, 8
  %umax495.i = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 1)
  %wide.trip.count496.i = zext nneg i32 %umax495.i to i64 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ao, 8
  %n.vec = and i64 %wide.trip.count496.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count496.i
  br label %bb.s

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %indvars.iv.i ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i8 1, ptr %i.bl, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 25
  store i32 0, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %indvars.iv.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  store i8 1, ptr %i.bo, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 57
  store i32 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %indvars.iv.i ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  store i8 1, ptr %i.br, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 89
  store i32 0, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %indvars.iv.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  store i8 1, ptr %i.bu, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 121
  store i32 0, ptr %i.bv, align 1
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader425.split.i.loopexit.unr-lcssa, label %.lr.ph.i

bb.s:                                             ; preds = %.loopexit.i, %.lr.ph440.i
  %.0246439.i = phi i32 [ 0, %.lr.ph440.i ], [ %.4250.i, %.loopexit.i ] ; 7 uses
  %i.bw = load i64, ptr %i.f, align 8, !tbaa !31  ; 3 uses
  %.not422.i = icmp eq i64 %i.bw, 0
  br i1 %.not422.i, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = call fastcc i32 @SzReadNumber(ptr noundef nonnull %1, ptr noundef nonnull %i.g) ; 2 uses
  %.not316.i = icmp eq i32 %i.bx, 0
  br i1 %.not316.i, label %bb.u, label %.thread404.i.loopexit23

bb.u:                                             ; preds = %bb.t
  %i.by = load i64, ptr %i.g, align 8, !tbaa !31  ; 6 uses
  %i.bz = load i64, ptr %i.be, align 8, !tbaa !58 ; 5 uses
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %.thread404.i.loopexit23, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = add i64 %i.bw, 2147483648
  %.not317.i = icmp ult i64 %i.cb, 4294967296
  br i1 %.not317.i, label %bb.w, label %SzSkeepDataSize.exit.i

SzSkeepDataSize.exit.i:                           ; preds = %bb.v
  %i.cc = sub nuw i64 %i.bz, %i.by
  store i64 %i.cc, ptr %i.be, align 8, !tbaa !58
  %i.cd = load ptr, ptr %1, align 8, !tbaa !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.by
  store ptr %i.ce, ptr %1, align 8, !tbaa !57
  br label %.loopexit.i

bb.w:                                             ; preds = %bb.v
  %i.cf = trunc nsw i64 %i.bw to i32
  switch i32 %i.cf, label %SzSkeepDataSize.exit359.i [
    i32 17, label %bb.x
    i32 14, label %bb.af
    i32 15, label %bb.ag
    i32 21, label %bb.ah
    i32 20, label %bb.al
  ]

bb.x:                                             ; preds = %bb.w
  %i.cg = icmp eq i64 %i.bz, 0
  br i1 %i.cg, label %.thread404.i.loopexit23, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = add i64 %i.bz, -1
  store i64 %i.ch, ptr %i.be, align 8, !tbaa !58
  %i.ci = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store ptr %i.cj, ptr %1, align 8, !tbaa !57
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !52
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.z, label %.thread404.i.loopexit23

bb.z:                                             ; preds = %bb.y
  %i.cm = add i64 %i.by, -1                       ; 7 uses
  %i.cn = and i64 %i.cm, 1
  %.not331.i = icmp eq i64 %i.cn, 0
  br i1 %.not331.i, label %bb.aa, label %.thread404.i.loopexit23

bb.aa:                                            ; preds = %bb.z
  %i.co = tail call i32 @Buf_Create(ptr noundef nonnull %i.bg, i64 noundef %i.cm, ptr noundef %2) #12
  %.not332.i = icmp eq i32 %i.co, 0
  br i1 %.not332.i, label %.thread404.i.loopexit23, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.bh, align 8, !tbaa !44
  %.not333.i = icmp eq ptr %i.cp, null
  br i1 %.not333.i, label %bb.ac, label %.thread404.i.loopexit23

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load ptr, ptr %2, align 8, !tbaa !63
  %i.cr = tail call ptr %i.cq(ptr noundef nonnull %2, i64 noundef %i.bj) #12, !inline_history !98 ; 2 uses
  store ptr %i.cr, ptr %i.bh, align 8, !tbaa !44
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.thread404.i.loopexit23, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.bg, align 8, !tbaa !51
  %i.cu = load ptr, ptr %1, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cu, i64 %i.cm, i1 false)
  %i.cv = load ptr, ptr %1, align 8, !tbaa !57
  %i.cw = lshr exact i64 %i.cm, 1
  %i.cx = load ptr, ptr %i.bh, align 8, !tbaa !44
  %i.cy = tail call fastcc i32 @SzReadFileNames(ptr noundef %i.cv, i64 noundef %i.cw, i32 noundef %i.aq, ptr noundef %i.cx) ; 2 uses
  %.not334.i = icmp eq i32 %i.cy, 0
  br i1 %.not334.i, label %bb.ae, label %.thread404.i.loopexit23

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load i64, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %i.da = icmp ugt i64 %i.cm, %i.cz
  br i1 %i.da, label %.thread404.i.loopexit23, label %SzSkeepDataSize.exit355.thread.i

SzSkeepDataSize.exit355.thread.i:                 ; preds = %bb.ae
  %i.db = sub nuw i64 %i.cz, %i.cm
  store i64 %i.db, ptr %i.be, align 8, !tbaa !58
  %i.dc = load ptr, ptr %1, align 8, !tbaa !57
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cm
  store ptr %i.dd, ptr %1, align 8, !tbaa !57
  br label %.loopexit.i

bb.af:                                            ; preds = %bb.w
  %i.de = call fastcc i32 @SzReadBoolVector(ptr noundef nonnull %1, i64 noundef %i.ao, ptr noundef nonnull %i.k, ptr noundef %3) ; 2 uses
  %.not328.i = icmp eq i32 %i.de, 0
  br i1 %.not328.i, label %.preheader423.i, label %.thread404.i.loopexit23

.preheader423.i:                                  ; preds = %bb.af
  br i1 %i.as, label %.loopexit.i, label %.lr.ph436.i

.lr.ph436.i:                                      ; preds = %.preheader423.i
  %i.df = load ptr, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph436.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph436.i ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dm, %vector.body ], [ zeroinitializer, %.lr.ph436.i ]
  %vec.phi70 = phi <4 x i32> [ %i.dn, %vector.body ], [ zeroinitializer, %.lr.ph436.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %wide.load = load <4 x i8>, ptr %i.dg, align 1, !tbaa !52
  %wide.load71 = load <4 x i8>, ptr %i.dh, align 1, !tbaa !52
  %i.di = icmp ne <4 x i8> %wide.load, zeroinitializer
  %i.dj = icmp ne <4 x i8> %wide.load71, zeroinitializer
  %i.dk = zext <4 x i1> %i.di to <4 x i32>
  %i.dl = zext <4 x i1> %i.dj to <4 x i32>
  %i.dm = add <4 x i32> %vec.phi, %i.dk           ; 2 uses
  %i.dn = add <4 x i32> %vec.phi70, %i.dl         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dn, %i.dm
  %i.dp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph436.i, %middle.block
  %indvars.iv504.i.ph = phi i64 [ 0, %.lr.ph436.i ], [ %n.vec, %middle.block ]
  %.1247434.i.ph = phi i32 [ 0, %.lr.ph436.i ], [ %i.dp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv504.i = phi i64 [ %indvars.iv.next505.i, %scalar.ph ], [ %indvars.iv504.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.1247434.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.1247434.i.ph, %scalar.ph.preheader ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv504.i
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !52
  %.not329.i = icmp ne i8 %i.dr, 0
  %i.ds = zext i1 %.not329.i to i32
  %spec.select.i = add i32 %.1247434.i, %i.ds     ; 2 uses
  %indvars.iv.next505.i = add nuw nsw i64 %indvars.iv504.i, 1 ; 2 uses
  %exitcond509.not.i = icmp eq i64 %indvars.iv.next505.i, %wide.trip.count496.i
  br i1 %exitcond509.not.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !101

bb.ag:                                            ; preds = %bb.w
  %i.dt = zext i32 %.0246439.i to i64
  %i.du = call fastcc i32 @SzReadBoolVector(ptr noundef nonnull %1, i64 noundef %i.dt, ptr noundef nonnull %i.l, ptr noundef %3) ; 2 uses
  %.not327.i = icmp eq i32 %i.du, 0
  br i1 %.not327.i, label %.loopexit.i, label %.thread404.i.loopexit23

bb.ah:                                            ; preds = %bb.w
  %i.dv = call fastcc i32 @SzReadBoolVector2(ptr noundef nonnull %1, i64 noundef %i.ao, ptr noundef nonnull %i.m, ptr noundef %3) ; 2 uses
  %.not323.i = icmp eq i32 %i.dv, 0
  br i1 %.not323.i, label %bb.ai, label %.thread404.i.loopexit23

bb.ai:                                            ; preds = %bb.ah
  %i.dw = load i64, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.thread404.i.loopexit23, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = add i64 %i.dw, -1
  store i64 %i.dy, ptr %i.be, align 8, !tbaa !58
  %i.dz = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store ptr %i.ea, ptr %1, align 8, !tbaa !57
  %i.eb = load i8, ptr %i.dz, align 1, !tbaa !52
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %SzReadSwitch.exit356.preheader.i, label %.thread404.i.loopexit23

SzReadSwitch.exit356.preheader.i:                 ; preds = %bb.aj
  %.pre27 = load ptr, ptr %i.m, align 8, !tbaa !60 ; 3 uses
  br i1 %i.as, label %SzReadSwitch.exit356._crit_edge.i, label %.lr.ph433.i

.lr.ph433.i:                                      ; preds = %SzReadSwitch.exit356.preheader.i, %.thread388.i
  %indvars.iv498.i = phi i64 [ %indvars.iv.next499.i, %.thread388.i ], [ 0, %SzReadSwitch.exit356.preheader.i ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %.0251552.i, i64 %indvars.iv498.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.pre27, i64 %indvars.iv498.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !52  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 29
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !102
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 20 ; 2 uses
  store i32 0, ptr %i.eh, align 4, !tbaa !103
  %.not325.i = icmp eq i8 %i.ef, 0
  br i1 %.not325.i, label %.thread388.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph433.i
  %i.ei = tail call fastcc i32 @SzReadUInt32(ptr noundef nonnull %1, ptr noundef nonnull %i.eh) ; 2 uses
  %.not326.i = icmp eq i32 %i.ei, 0
  br i1 %.not326.i, label %.thread388.i, label %.thread404.i

.thread388.i:                                     ; preds = %bb.ak, %.lr.ph433.i
  %indvars.iv.next499.i = add nuw nsw i64 %indvars.iv498.i, 1 ; 2 uses
  %exitcond503.not.i = icmp eq i64 %indvars.iv.next499.i, %wide.trip.count496.i
  br i1 %exitcond503.not.i, label %SzReadSwitch.exit356._crit_edge.i, label %.lr.ph433.i

SzReadSwitch.exit356._crit_edge.i:                ; preds = %.thread388.i, %SzReadSwitch.exit356.preheader.i
  %i.ej = load ptr, ptr %i.bf, align 8, !tbaa !15
  tail call void %i.ej(ptr noundef %3, ptr noundef %.pre27) #12, !inline_history !98
  store ptr null, ptr %i.m, align 8, !tbaa !60
  br label %.loopexit.i

bb.al:                                            ; preds = %bb.w
  %i.ek = call fastcc i32 @SzReadBoolVector2(ptr noundef nonnull %1, i64 noundef %i.ao, ptr noundef nonnull %i.m, ptr noundef %3) ; 2 uses
  %.not318.i = icmp eq i32 %i.ek, 0
  br i1 %.not318.i, label %bb.am, label %.thread404.i.loopexit23

bb.am:                                            ; preds = %bb.al
  %i.el = load i64, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %.thread404.i.loopexit23, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.en = add i64 %i.el, -1
  store i64 %i.en, ptr %i.be, align 8, !tbaa !58
  %i.eo = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.ep, ptr %1, align 8, !tbaa !57
  %i.eq = load i8, ptr %i.eo, align 1, !tbaa !52
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %SzReadSwitch.exit357.preheader.i, label %.thread404.i.loopexit23

SzReadSwitch.exit357.preheader.i:                 ; preds = %bb.an
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !60  ; 4 uses
  br i1 %i.as, label %SzReadSwitch.exit357._crit_edge.i, label %.lr.ph431.i

.lr.ph431.i:                                      ; preds = %SzReadSwitch.exit357.preheader.i, %.thread396.i
  %indvars.iv492.i = phi i64 [ %indvars.iv.next493.i, %.thread396.i ], [ 0, %SzReadSwitch.exit357.preheader.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw [32 x i8], ptr %.0251552.i, i64 %indvars.iv492.i ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv492.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !52  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  store i8 %i.eu, ptr %i.ev, align 4, !tbaa !104
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 2 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !105
  store i32 0, ptr %i.es, align 8, !tbaa !106
  %.not320.i = icmp eq i8 %i.eu, 0
  br i1 %.not320.i, label %.thread396.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph431.i
  %i.ex = tail call fastcc i32 @SzReadUInt32(ptr noundef nonnull %1, ptr noundef nonnull %i.es) ; 2 uses
  %.not321.i = icmp eq i32 %i.ex, 0
  br i1 %.not321.i, label %bb.ap, label %.thread404.i

bb.ap:                                            ; preds = %bb.ao
  %i.ey = tail call fastcc i32 @SzReadUInt32(ptr noundef nonnull %1, ptr noundef nonnull %i.ew) ; 2 uses
  %.not322.i = icmp eq i32 %i.ey, 0
  br i1 %.not322.i, label %.thread396.i, label %.thread404.i

.thread396.i:                                     ; preds = %bb.ap, %.lr.ph431.i
  %indvars.iv.next493.i = add nuw nsw i64 %indvars.iv492.i, 1 ; 2 uses
  %exitcond497.not.i = icmp eq i64 %indvars.iv.next493.i, %wide.trip.count496.i
  br i1 %exitcond497.not.i, label %SzReadSwitch.exit357._crit_edge.i, label %.lr.ph431.i

SzReadSwitch.exit357._crit_edge.i:                ; preds = %.thread396.i, %SzReadSwitch.exit357.preheader.i
  %i.ez = load ptr, ptr %i.bf, align 8, !tbaa !15
  tail call void %i.ez(ptr noundef %3, ptr noundef %.pre) #12, !inline_history !98
  store ptr null, ptr %i.m, align 8, !tbaa !60
  br label %.loopexit.i

SzSkeepDataSize.exit359.i:                        ; preds = %bb.w
  %i.fa = sub nuw i64 %i.bz, %i.by
  store i64 %i.fa, ptr %i.be, align 8, !tbaa !58
  %i.fb = load ptr, ptr %1, align 8, !tbaa !57
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.by
  store ptr %i.fc, ptr %1, align 8, !tbaa !57
  br label %.loopexit.i

.thread404.i.loopexit23:                          ; preds = %bb.t, %bb.u, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.an, %.loopexit.i
  %.33.ph.i.ph24 = phi i32 [ 4, %bb.an ], [ 4, %bb.aj ], [ %i.cy, %bb.ad ], [ 11, %bb.ab ], [ 16, %bb.z ], [ 2, %bb.ac ], [ 4, %bb.y ], [ 16, %bb.u ], [ %i.de, %bb.af ], [ 16, %bb.am ], [ %i.bx, %bb.t ], [ %i.du, %bb.ag ], [ %i.dv, %bb.ah ], [ %i.fd, %.loopexit.i ], [ 16, %bb.x ], [ %i.ek, %bb.al ], [ 16, %bb.ai ], [ 16, %bb.ae ], [ 2, %bb.aa ]
  %.pre28.pre = load ptr, ptr %i.m, align 8, !tbaa !60
  br label %.thread404.i

.thread404.i:                                     ; preds = %bb.ap, %bb.ao, %bb.ak, %.thread404.i.loopexit23, %.preheader425.split.i
  %.pre28 = phi ptr [ null, %.preheader425.split.i ], [ %.pre28.pre, %.thread404.i.loopexit23 ], [ %.pre27, %bb.ak ], [ %.pre, %bb.ao ], [ %.pre, %bb.ap ]
  %.33.ph.i = phi i32 [ %i.bd, %.preheader425.split.i ], [ %.33.ph.i.ph24, %.thread404.i.loopexit23 ], [ %i.ei, %bb.ak ], [ %i.ex, %bb.ao ], [ %i.ey, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %SzReadHeader2.exit

.loopexit.i:                                      ; preds = %scalar.ph, %middle.block, %SzSkeepDataSize.exit359.i, %SzReadSwitch.exit357._crit_edge.i, %SzReadSwitch.exit356._crit_edge.i, %bb.ag, %.preheader423.i, %SzSkeepDataSize.exit355.thread.i, %SzSkeepDataSize.exit.i
  %.4250.i = phi i32 [ %.0246439.i, %SzSkeepDataSize.exit359.i ], [ %.0246439.i, %bb.ag ], [ %.0246439.i, %SzReadSwitch.exit357._crit_edge.i ], [ %.0246439.i, %SzSkeepDataSize.exit.i ], [ %.0246439.i, %SzReadSwitch.exit356._crit_edge.i ], [ %.0246439.i, %SzSkeepDataSize.exit355.thread.i ], [ 0, %.preheader423.i ], [ %i.dp, %middle.block ], [ %spec.select.i, %scalar.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.fd = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %1, ptr noundef nonnull %i.f) ; 2 uses
  %.not315.i = icmp eq i32 %i.fd, 0
  br i1 %.not315.i, label %bb.s, label %.thread404.i.loopexit23

.critedge.i:                                      ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br i1 %i.as, label %._crit_edge.i, label %.lr.ph482.i

.lr.ph482.i:                                      ; preds = %.critedge.i
  %i.fe = load ptr, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  %i.fg = load i32, ptr %i.e, align 4             ; 2 uses
  %i.fh = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  %i.fj = load ptr, ptr %i.h, align 8
  %.fr = freeze ptr %i.fj                         ; 3 uses
  %.not341.i = icmp eq ptr %.fr, null             ; 2 uses
  %i.fk = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.fl = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %i.ff, label %.lr.ph482.i.split.us, label %.lr.ph482.i.split

.lr.ph482.i.split.us:                             ; preds = %.lr.ph482.i
  br i1 %.not341.i, label %.thread553.i.us.us, label %.thread553.i.us.preheader

.thread553.i.us.preheader:                        ; preds = %.lr.ph482.i.split.us
  %i.fm = zext i32 %i.fg to i64
  br label %.thread553.i.us

.thread553.i.us.us:                               ; preds = %.lr.ph482.i.split.us
  %i.fn = getelementptr inbounds nuw i8, ptr %.0251552.i, i64 26
  store i8 0, ptr %i.fn, align 2, !tbaa !107
  %i.fo = getelementptr inbounds nuw i8, ptr %.0251552.i, i64 24
  store i8 1, ptr %i.fo, align 8, !tbaa !33
  %i.fp = getelementptr inbounds nuw i8, ptr %.0251552.i, i64 25
  store i8 0, ptr %i.fp, align 1, !tbaa !108
  br label %SzReadHeader2.exit

.thread553.i.us:                                  ; preds = %.thread553.i.us.preheader, %bb.aq
  %indvars.iv510.i.us = phi i64 [ %indvars.iv.next511.i.us, %bb.aq ], [ 0, %.thread553.i.us.preheader ] ; 6 uses
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %.0251552.i, i64 %indvars.iv510.i.us ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 26
  store i8 0, ptr %i.fr, align 2, !tbaa !107
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store i8 1, ptr %i.fs, align 8, !tbaa !33
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 25
  store i8 0, ptr %i.ft, align 1, !tbaa !108
  %i.fu = icmp samesign ugt i64 %indvars.iv510.i.us, %i.fm
  br i1 %i.fu, label %SzReadHeader2.exit, label %bb.aq

bb.aq:                                            ; preds = %.thread553.i.us
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %indvars.iv510.i.us
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !31
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !67
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv510.i.us
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !46
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i32 %i.fz, ptr %i.ga, align 8, !tbaa !69
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv510.i.us
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !52
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 27
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !68
  %indvars.iv.next511.i.us = add nuw nsw i64 %indvars.iv510.i.us, 1 ; 2 uses
  %exitcond515.not.i.us = icmp eq i64 %indvars.iv.next511.i.us, %wide.trip.count496.i
  br i1 %exitcond515.not.i.us, label %._crit_edge.i, label %.thread553.i.us

.lr.ph482.i.split:                                ; preds = %.lr.ph482.i, %bb.aw
  %indvars.iv510.i = phi i64 [ %indvars.iv.next511.i, %bb.aw ], [ 0, %.lr.ph482.i ] ; 3 uses
  %.0481.i = phi i32 [ %.2.ph.i, %bb.aw ], [ 0, %.lr.ph482.i ] ; 4 uses
  %.0235480.i = phi i32 [ %.2237.ph.i, %bb.aw ], [ 0, %.lr.ph482.i ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %.0251552.i, i64 %indvars.iv510.i ; 10 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 26
  store i8 0, ptr %i.gf, align 2, !tbaa !107
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv510.i
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !52
  %.not338.i = icmp eq i8 %i.gh, 0                ; 2 uses
  %i.gi = zext i1 %.not338.i to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store i8 %i.gi, ptr %i.gj, align 8, !tbaa !33
  br i1 %.not338.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %.lr.ph482.i.split
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 25
  store i8 0, ptr %i.gk, align 1, !tbaa !108
  %i.gl = icmp ugt i32 %.0481.i, %i.fg
  %or.cond.i = select i1 %.not341.i, i1 true, i1 %i.gl
  br i1 %or.cond.i, label %SzReadHeader2.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gm = zext i32 %.0481.i to i64                ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !31
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !67
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.gm
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !46
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store i32 %i.gr, ptr %i.gs, align 8, !tbaa !69
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gm
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !52
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ge, i64 27
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !68
  %i.gw = add i32 %.0481.i, 1
  br label %bb.aw

bb.at:                                            ; preds = %.lr.ph482.i.split
  br i1 %i.fi, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = zext i32 %.0235480.i to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !52
  %.not340.i = icmp eq i8 %i.gz, 0
  %i.ha = zext i1 %.not340.i to i8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink516.i = phi i8 [ %i.ha, %bb.au ], [ 1, %bb.at ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ge, i64 25
  store i8 %.sink516.i, ptr %i.hb, align 1, !tbaa !108
  %i.hc = add i32 %.0235480.i, 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i64 0, ptr %i.hd, align 8, !tbaa !67
  %i.he = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store i32 0, ptr %i.he, align 8, !tbaa !69
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ge, i64 27
  store i8 0, ptr %i.hf, align 1, !tbaa !68
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %.2237.ph.i = phi i32 [ %i.hc, %bb.av ], [ %.0235480.i, %bb.as ]
  %.2.ph.i = phi i32 [ %.0481.i, %bb.av ], [ %i.gw, %bb.as ]
  %indvars.iv.next511.i = add nuw nsw i64 %indvars.iv510.i, 1 ; 2 uses
  %exitcond515.not.i = icmp eq i64 %indvars.iv.next511.i, %wide.trip.count496.i
  br i1 %exitcond515.not.i, label %._crit_edge.i, label %.lr.ph482.i.split

._crit_edge.i:                                    ; preds = %bb.aw, %bb.aq, %.critedge.i
  %i.hg = tail call fastcc i32 @SzArEx_Fill(ptr noundef %0, ptr noundef %2)
  br label %SzReadHeader2.exit

SzReadHeader2.exit:                               ; preds = %bb.ar, %.thread553.i.us, %.thread553.i.us.us, %bb.a, %SzReadArchiveProperties.exit.thread.i, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %SzReadNumber32.exit.thread.i, %bb.r, %.thread404.i, %._crit_edge.i
  %i.hh = phi ptr [ null, %bb.a ], [ null, %bb.n ], [ null, %bb.r ], [ null, %._crit_edge.i ], [ %.pre28, %.thread404.i ], [ null, %bb.m ], [ null, %SzReadNumber32.exit.thread.i ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.i ], [ null, %SzReadArchiveProperties.exit.thread.i ], [ null, %.thread553.i.us ], [ null, %.thread553.i.us.us ], [ null, %bb.ar ]
  %.37.i = phi i32 [ %i.n, %bb.a ], [ 16, %bb.n ], [ 2, %bb.r ], [ %i.hg, %._crit_edge.i ], [ %.33.ph.i, %.thread404.i ], [ 0, %bb.m ], [ %.1.i.ph.i, %SzReadNumber32.exit.thread.i ], [ %i.al, %bb.l ], [ %i.ag, %bb.k ], [ %i.ac, %bb.i ], [ %.ph.i, %SzReadArchiveProperties.exit.thread.i ], [ 11, %.thread553.i.us ], [ 11, %.thread553.i.us.us ], [ 11, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !15
  %i.hk = load ptr, ptr %i.h, align 8, !tbaa !70
  tail call void %i.hj(ptr noundef %3, ptr noundef %i.hk) #12
  %i.hl = load ptr, ptr %i.hi, align 8, !tbaa !15
  %i.hm = load ptr, ptr %i.i, align 8, !tbaa !60
  tail call void %i.hl(ptr noundef %3, ptr noundef %i.hm) #12
  %i.hn = load ptr, ptr %i.hi, align 8, !tbaa !15
  %i.ho = load ptr, ptr %i.j, align 8, !tbaa !71
  tail call void %i.hn(ptr noundef %3, ptr noundef %i.ho) #12
  %i.hp = load ptr, ptr %i.hi, align 8, !tbaa !15
  %i.hq = load ptr, ptr %i.k, align 8, !tbaa !60
  tail call void %i.hp(ptr noundef %3, ptr noundef %i.hq) #12
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !15
  %i.hs = load ptr, ptr %i.l, align 8, !tbaa !60
  tail call void %i.hr(ptr noundef %3, ptr noundef %i.hs) #12
  %i.ht = load ptr, ptr %i.hi, align 8, !tbaa !15
  tail call void %i.ht(ptr noundef %3, ptr noundef %i.hh) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  ret i32 %.37.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 17) i32 @SzReadNumber(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58   ; 10 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %SzReadByte.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !58
  %i.e = load ptr, ptr %0, align 8, !tbaa !57     ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !57
  %i.g = load i8, ptr %i.e, align 1, !tbaa !52    ; 2 uses
  store i64 0, ptr %1, align 8, !tbaa !31
  %i.h = zext i8 %i.g to i32                      ; 8 uses
  %i.i = icmp sgt i8 %i.g, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.b
  %i.j = phi i64 [ 0, %bb.b ], [ %i.s, %bb.e ], [ %i.ab, %bb.g ], [ %i.ak, %bb.i ], [ %i.at, %bb.k ], [ %i.bc, %bb.m ], [ %i.bl, %bb.o ], [ %i.bu, %bb.q ]
  %.02550.lcssa.wide = phi i64 [ 0, %bb.b ], [ 8, %bb.e ], [ 16, %bb.g ], [ 24, %bb.i ], [ 32, %bb.k ], [ 40, %bb.m ], [ 48, %bb.o ], [ 56, %bb.q ]
  %.lcssa = phi i32 [ 383, %bb.b ], [ 319, %bb.e ], [ 287, %bb.g ], [ 271, %bb.i ], [ 263, %bb.k ], [ 259, %bb.m ], [ 257, %bb.o ], [ 256, %bb.q ]
  %i.k = and i32 %.lcssa, %i.h
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, %.02550.lcssa.wide
  %i.n = add nuw nsw i64 %i.j, %i.m
  br label %SzReadByte.exit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.d, 0
  br i1 %i.o, label %SzReadByte.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add i64 %i.b, -2                         ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !57
  %i.r = load i8, ptr %i.f, align 1, !tbaa !52
  %i.s = zext i8 %i.r to i64                      ; 3 uses
  store i64 %i.s, ptr %1, align 8, !tbaa !31
  %i.t = and i32 %i.h, 64
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.p, 0
  br i1 %i.v, label %SzReadByte.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add i64 %i.b, -3                         ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !57
  %i.y = load i8, ptr %i.q, align 1, !tbaa !52
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = or disjoint i64 %i.aa, %i.s             ; 3 uses
  store i64 %i.ab, ptr %1, align 8, !tbaa !31
  %i.ac = and i32 %i.h, 32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %SzReadByte.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add i64 %i.b, -4                        ; 2 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !57
  %i.ah = load i8, ptr %i.x, align 1, !tbaa !52
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 16
  %i.ak = or disjoint i64 %i.aj, %i.ab            ; 3 uses
  store i64 %i.ak, ptr %1, align 8, !tbaa !31
  %i.al = and i32 %i.h, 16
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp eq i64 %i.af, 0
  br i1 %i.an, label %SzReadByte.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add i64 %i.b, -5                        ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !57
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !52
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 24
  %i.at = or disjoint i64 %i.as, %i.ak            ; 3 uses
  store i64 %i.at, ptr %1, align 8, !tbaa !31
  %i.au = and i32 %i.h, 8
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.c, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp eq i64 %i.ao, 0
  br i1 %i.aw, label %SzReadByte.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add i64 %i.b, -6                        ; 2 uses
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !57
  %i.az = load i8, ptr %i.ap, align 1, !tbaa !52
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 32
  %i.bc = or disjoint i64 %i.bb, %i.at            ; 3 uses
  store i64 %i.bc, ptr %1, align 8, !tbaa !31
  %i.bd = and i32 %i.h, 4
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.c, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp eq i64 %i.ax, 0
  br i1 %i.bf, label %SzReadByte.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = add i64 %i.b, -7                        ; 2 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 7 ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !57
  %i.bi = load i8, ptr %i.ay, align 1, !tbaa !52
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 40
  %i.bl = or i64 %i.bk, %i.bc                     ; 3 uses
  store i64 %i.bl, ptr %1, align 8, !tbaa !31
  %i.bm = and i32 %i.h, 2
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.c, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp eq i64 %i.bg, 0
  br i1 %i.bo, label %SzReadByte.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add i64 %i.b, -8                        ; 2 uses
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bq, ptr %0, align 8, !tbaa !57
  %i.br = load i8, ptr %i.bh, align 1, !tbaa !52
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 48
  %i.bu = or i64 %i.bt, %i.bl                     ; 3 uses
  store i64 %i.bu, ptr %1, align 8, !tbaa !31
  %i.bv = and i32 %i.h, 1
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.c, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = icmp eq i64 %i.bp, 0
  br i1 %i.bx, label %SzReadByte.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = add i64 %i.b, -9
  store i64 %i.by, ptr %i.a, align 8, !tbaa !58
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 9
end_hunk_0
begin_hunk_1_@SzArEx_Fill:bb.a
bb.g:                                             ; preds = %bb.g, %.lr.ph106.new
  %indvars.iv122 = phi i64 [ 0, %.lr.ph106.new ], [ %indvars.iv.next123.3, %bb.g ] ; 6 uses
  %.079103 = phi i64 [ 0, %.lr.ph106.new ], [ %i.aw, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph106.new ], [ %niter.next.3, %bb.g ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv122
  store i64 %.079103, ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv122
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31
  %i.ak = add i64 %i.aj, %.079103                 ; 2 uses
  %indvars.iv.next123 = or disjoint i64 %indvars.iv122, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next123
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next123
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31
  %i.ao = add i64 %i.an, %i.ak                    ; 2 uses
  %indvars.iv.next123.1 = or disjoint i64 %indvars.iv122, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next123.1
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next123.1
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !31
  %i.as = add i64 %i.ar, %i.ao                    ; 2 uses
  %indvars.iv.next123.2 = or disjoint i64 %indvars.iv122, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next123.2
  store i64 %i.as, ptr %i.at, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next123.2
  %i.av = load i64, ptr %i.au, align 8, !tbaa !31
  %i.aw = add i64 %i.av, %i.as                    ; 2 uses
  %indvars.iv.next123.3 = add nuw nsw i64 %indvars.iv122, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge107.loopexit.unr-lcssa, label %bb.g

._crit_edge107.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge107, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge107.loopexit.unr-lcssa, %.lr.ph106
  %indvars.iv122.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next123.3, %._crit_edge107.loopexit.unr-lcssa ]
  %.079103.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.aw, %._crit_edge107.loopexit.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv122.epil = phi i64 [ %indvars.iv122.epil.init, %.epil.preheader ], [ %indvars.iv.next123.epil, %bb.h ] ; 3 uses
  %.079103.epil = phi i64 [ %.079103.epil.init, %.epil.preheader ], [ %i.ba, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv122.epil
  store i64 %.079103.epil, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv122.epil
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !31
  %i.ba = add i64 %i.az, %.079103.epil
  %indvars.iv.next123.epil = add nuw nsw i64 %indvars.iv122.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge107, label %bb.h, !llvm.loop !127

._crit_edge107:                                   ; preds = %._crit_edge107.loopexit.unr-lcssa, %bb.h, %.thread144, %bb.f
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !61  ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge107
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.bd, align 8, !tbaa !42
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge107
  %i.be = load ptr, ptr %1, align 8, !tbaa !63
  %i.bf = zext i32 %i.bb to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = tail call ptr %i.be(ptr noundef nonnull %1, i64 noundef %i.bg) #12 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !42
  %i.bj = icmp eq ptr %i.bh, null
  br i1 %i.bj, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !59 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.thread146, label %bb.l

.thread146:                                       ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.bn, align 8, !tbaa !43
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %1, align 8, !tbaa !63
  %i.bp = zext i32 %i.bl to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = tail call ptr %i.bo(ptr noundef nonnull %1, i64 noundef %i.bq) #12 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !43
  %i.bt = icmp eq ptr %i.br, null
  br i1 %i.bt, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pre135 = load i32, ptr %i.bk, align 8, !tbaa !59
  %i.bu = icmp eq i32 %.pre135, 0
  br i1 %i.bu, label %.loopexit, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !66
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph115, %bb.t
  %indvars.iv128 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next129, %bb.t ] ; 5 uses
  %.072113 = phi i32 [ 0, %.lr.ph115 ], [ %.2.ph, %bb.t ] ; 3 uses
  %.073112 = phi i32 [ 0, %.lr.ph115 ], [ %.4.ph, %bb.t ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %indvars.iv128
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !33
  %.not = icmp eq i8 %i.cb, 0                     ; 2 uses
  %i.cc = icmp eq i32 %.072113, 0                 ; 2 uses
  %or.cond = select i1 %.not, i1 %i.cc, i1 false
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv128
  store i32 -1, ptr %i.cd, align 4, !tbaa !46
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  br i1 %i.cc, label %.preheader, label %.loopexit98

.preheader:                                       ; preds = %bb.p
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !61
  %.not89108 = icmp ult i32 %.073112, %i.ce
  br i1 %.not89108, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %.preheader
  %i.cf = load ptr, ptr %i.bx, align 8, !tbaa !42
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.ch = zext i32 %.073112 to i64
  %i.ci = trunc nuw i64 %indvars.iv128 to i32
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph110, %bb.r
  %indvars.iv125 = phi i64 [ %i.ch, %.lr.ph110 ], [ %indvars.iv.next126, %bb.r ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv125
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !46
  %i.ck = getelementptr inbounds nuw [56 x i8], ptr %i.cg, i64 %indvars.iv125
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 52
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !72
  %.not90 = icmp eq i32 %i.cm, 0
  br i1 %.not90, label %bb.r, label %.loopexit98.loopexit

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !61
  %i.co = zext i32 %i.cn to i64
  %.not89 = icmp samesign ult i64 %indvars.iv.next126, %i.co
  br i1 %.not89, label %bb.q, label %.loopexit

.loopexit98.loopexit:                             ; preds = %bb.q
  %i.cp = trunc nuw i64 %indvars.iv125 to i32
  br label %.loopexit98

.loopexit98:                                      ; preds = %.loopexit98.loopexit, %bb.p
  %.275 = phi i32 [ %.073112, %bb.p ], [ %i.cp, %.loopexit98.loopexit ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv128
  store i32 %.275, ptr %i.cq, align 4, !tbaa !46
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit98
  %i.cr = add i32 %.072113, 1                     ; 2 uses
  %i.cs = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.ct = zext i32 %.275 to i64
  %i.cu = getelementptr inbounds nuw [56 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 52
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !72
  %.not91 = icmp uge i32 %i.cr, %i.cw             ; 2 uses
  %i.cx = zext i1 %.not91 to i32
  %spec.select = add i32 %.275, %i.cx
  %spec.select92 = select i1 %.not91, i32 0, i32 %i.cr
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s, %.loopexit98
  %.4.ph = phi i32 [ %.275, %.loopexit98 ], [ %spec.select, %bb.s ], [ %.073112, %bb.o ]
  %.2.ph = phi i32 [ %.072113, %.loopexit98 ], [ %spec.select92, %bb.s ], [ 0, %bb.o ]
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.cy = load i32, ptr %i.bk, align 8, !tbaa !59
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next129, %i.cz
  br i1 %i.da, label %bb.n, label %.loopexit

.loopexit:                                        ; preds = %bb.t, %.preheader, %bb.r, %.thread146, %bb.m, %bb.l, %bb.j, %bb.e, %bb.b
  %.283 = phi i32 [ 0, %.thread146 ], [ 2, %bb.l ], [ 2, %bb.j ], [ 2, %bb.e ], [ 2, %bb.b ], [ 0, %bb.m ], [ 16, %bb.r ], [ 0, %bb.t ], [ 16, %.preheader ]
  ret i32 %.283
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 int", !8, i64 0}
!10 = !{!"p1 long long", !8, i64 0}
!11 = !{!"", !8, i64 0, !8, i64 8, !9, i64 16, !10, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52}
!12 = !{!11, !8, i64 0}
!13 = !{!11, !5, i64 32}
!14 = !{!"", !8, i64 0, !8, i64 8}
!15 = !{!14, !8, i64 8}
!16 = !{!11, !8, i64 8}
!17 = !{!11, !9, i64 16}
!18 = !{!11, !10, i64 24}
!19 = !{!"long long", !4, i64 0}
!20 = !{!"p1 omnipotent char", !8, i64 0}
!21 = !{!"long", !4, i64 0}
!22 = !{!"", !20, i64 0, !21, i64 8}
!23 = !{!"", !5, i64 0, !5, i64 4, !19, i64 8, !22, i64 16}
!24 = !{!23, !5, i64 4}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!11, !5, i64 36}
!28 = !{!"", !5, i64 0, !5, i64 4}
!29 = !{!28, !5, i64 0}
!30 = !{!28, !5, i64 4}
!31 = !{!19, !19, i64 0}
!32 = !{!"", !28, i64 0, !19, i64 8, !5, i64 16, !5, i64 20, !4, i64 24, !4, i64 25, !4, i64 26, !4, i64 27, !4, i64 28, !4, i64 29}
!33 = !{!32, !4, i64 24}
!34 = !{!"", !10, i64 0, !20, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !5, i64 44, !5, i64 48}
!35 = !{!34, !8, i64 24}
!36 = !{!34, !5, i64 44}
!37 = !{!34, !10, i64 0}
!38 = !{!"p1 long", !8, i64 0}
!39 = !{!"", !34, i64 0, !19, i64 56, !19, i64 64, !9, i64 72, !10, i64 80, !9, i64 88, !9, i64 96, !38, i64 104, !22, i64 112}
!40 = !{!39, !9, i64 72}
!41 = !{!39, !10, i64 80}
!42 = !{!39, !9, i64 88}
!43 = !{!39, !9, i64 96}
!44 = !{!39, !38, i64 104}
!45 = !{!39, !19, i64 64}
!46 = !{!5, !5, i64 0}
!47 = !{!39, !8, i64 24}
!48 = !{!11, !5, i64 40}
!49 = !{!39, !10, i64 0}
!50 = !{!21, !21, i64 0}
!51 = !{!39, !20, i64 112}
!52 = !{!4, !4, i64 0}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!39, !19, i64 56}
!55 = !{!22, !20, i64 0}
!56 = !{!"_CSzState", !20, i64 0, !21, i64 8}
!57 = !{!56, !20, i64 0}
!58 = !{!56, !21, i64 8}
!59 = !{!39, !5, i64 48}
!60 = !{!20, !20, i64 0}
!61 = !{!39, !5, i64 44}
!62 = !{!39, !5, i64 40}
!63 = !{!14, !8, i64 0}
!64 = !{!11, !5, i64 44}
!65 = !{!11, !5, i64 48}
!66 = !{!39, !8, i64 32}
!67 = !{!32, !19, i64 8}
!68 = !{!32, !4, i64 27}
!69 = !{!32, !5, i64 16}
!70 = !{!10, !10, i64 0}
!71 = !{!9, !9, i64 0}
!72 = !{!11, !5, i64 52}
!73 = distinct !{!73, !25, !26}
!74 = distinct !{!74, !26, !25}
!75 = distinct !{!75, !25, !26}
!76 = distinct !{!76, !26, !25}
!77 = !{ptr @SzFolder_Free}
!78 = !{!34, !20, i64 8}
!79 = !{!34, !9, i64 16}
!80 = !{!34, !8, i64 32}
!81 = distinct !{!81, !25, !26}
!82 = distinct !{!82, !25, !26}
!83 = distinct !{!83, !53}
!84 = distinct !{!84, !25}
!85 = !{!"short", !4, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"branch_weights", i32 4, i32 12}
!88 = distinct !{null}
!89 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!90 = !{!89, !8, i64 24}
!91 = !{!22, !21, i64 8}
!92 = !{ptr @SzArEx_Free}
!93 = distinct !{!93, !25, !26}
!94 = distinct !{!94, !26, !25}
!95 = distinct !{!95, !53}
!96 = distinct !{!96, !25, !26}
!97 = distinct !{!97, !26, !25}
!98 = distinct !{null}
!99 = distinct !{!99, !53}
!100 = distinct !{!100, !25, !26}
!101 = distinct !{!101, !26, !25}
!102 = !{!32, !4, i64 29}
!103 = !{!32, !5, i64 20}
!104 = !{!32, !4, i64 28}
!105 = !{!32, !5, i64 4}
!106 = !{!32, !5, i64 0}
!107 = !{!32, !4, i64 26}
!108 = !{!32, !4, i64 25}
!109 = distinct !{null}
!110 = distinct !{null}
!111 = distinct !{null, null}
!112 = distinct !{!112, !25, !26}
!113 = distinct !{!113, !26, !25}
!114 = distinct !{!114, !53}
!115 = distinct !{null}
!116 = distinct !{!116, !25, !26}
!117 = distinct !{!117, !26, !25}
!118 = !{!8, !8, i64 0}
!119 = !{!23, !19, i64 8}
!120 = !{!23, !5, i64 0}
!121 = !{!23, !20, i64 16}
!122 = distinct !{!122, !53}
!123 = !{ptr @SzReadBoolVector2, ptr @SzReadBoolVector}
!124 = !{ptr @SzReadBoolVector2}
!125 = distinct !{!125, !53}
!126 = !{ptr @SzReadBoolVector}
!127 = distinct !{!127, !53}
end_hunk_1
