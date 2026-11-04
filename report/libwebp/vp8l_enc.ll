Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/vp8l_enc?download=true
inline.NumInlined: 150
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
begin_hunk_0_@VP8LHistogramSetClear
declare void @VP8LHistogramSetClear(ptr noundef) local_unnamed_addr #2

declare void @VP8LHistogramStoreRefs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @GetHuffBitLengthsAndCodes(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !76     ; 5 uses
  %i.b = icmp sgt i32 %i.a, 0                     ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.090104 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.b ]
  %.idx = mul nuw nsw i64 %indvars.iv, 120
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3240
  %i.i = load i32, ptr %i.h, align 8, !tbaa !156  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = shl nuw i32 1, %i.i
  %i.l = add nuw nsw i32 %i.k, 280
  %i.m = select i1 %i.j, i32 %i.l, i32 280        ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !79
  %i.n = sext i32 %i.m to i64
  %i.o = add i64 %.090104, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 256, ptr %i.p, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 256, ptr %i.q, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 256, ptr %i.r, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i32 40, ptr %i.s, align 8, !tbaa !79
  %i.t = add i64 %i.o, 808                        ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.b
  %i.u = tail call ptr @WebPSafeCalloc(i64 noundef %i.t, i64 noundef 3) #7 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.loopexit, label %.lr.ph111.preheader

._crit_edge.thread:                               ; preds = %bb.a
  %i.w = tail call ptr @WebPSafeCalloc(i64 noundef 0, i64 noundef 3) #7 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.loopexit, label %._crit_edge112

.lr.ph111.preheader:                              ; preds = %._crit_edge
  %i.y = mul i32 %i.a, 5                          ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.t ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.y, i32 1) ; 2 uses
  %wide.trip.count121 = zext nneg i32 %smax to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count121, 1
  %i.aa = icmp slt i32 %i.y, 2
  br i1 %i.aa, label %.lr.ph111.epil.preheader, label %.lr.ph111.preheader.new

.lr.ph111.preheader.new:                          ; preds = %.lr.ph111.preheader
  %unroll_iter = and i64 %wide.trip.count121, 2147483646
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111, %.lr.ph111.preheader.new
  %indvars.iv118 = phi i64 [ 0, %.lr.ph111.preheader.new ], [ %indvars.iv.next119.1, %.lr.ph111 ] ; 3 uses
  %.083108 = phi ptr [ %i.z, %.lr.ph111.preheader.new ], [ %i.ap, %.lr.ph111 ] ; 2 uses
  %.084107 = phi ptr [ %i.u, %.lr.ph111.preheader.new ], [ %i.ao, %.lr.ph111 ] ; 2 uses
  %.087106 = phi i32 [ 0, %.lr.ph111.preheader.new ], [ %spec.select.1, %.lr.ph111 ]
  %niter = phi i64 [ 0, %.lr.ph111.preheader.new ], [ %niter.next.1, %.lr.ph111 ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv118 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !79 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %.084107, ptr %i.ad, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.083108, ptr %i.ae, align 8, !tbaa !80
  %i.af = sext i32 %i.ac to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [2 x i8], ptr %.084107, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.083108, i64 %i.af ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.087106, i32 %i.ac)
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv118 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !79 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %i.ag, ptr %i.al, align 8, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !80
  %i.an = sext i32 %i.ak to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 %i.an ; 2 uses
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.ak) ; 3 uses
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge112.loopexit.unr-lcssa, label %.lr.ph111, !llvm.loop !153

._crit_edge112.loopexit.unr-lcssa:                ; preds = %.lr.ph111
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge112.loopexit, label %.lr.ph111.epil.preheader

.lr.ph111.epil.preheader:                         ; preds = %._crit_edge112.loopexit.unr-lcssa, %.lr.ph111.preheader
  %indvars.iv118.epil.init = phi i64 [ 0, %.lr.ph111.preheader ], [ %indvars.iv.next119.1, %._crit_edge112.loopexit.unr-lcssa ]
  %.083108.epil.init = phi ptr [ %i.z, %.lr.ph111.preheader ], [ %i.ap, %._crit_edge112.loopexit.unr-lcssa ]
  %.084107.epil.init = phi ptr [ %i.u, %.lr.ph111.preheader ], [ %i.ao, %._crit_edge112.loopexit.unr-lcssa ]
  %.087106.epil.init = phi i32 [ 0, %.lr.ph111.preheader ], [ %spec.select.1, %._crit_edge112.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv118.epil.init ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !79
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.084107.epil.init, ptr %i.as, align 8, !tbaa !81
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.083108.epil.init, ptr %i.at, align 8, !tbaa !80
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %.087106.epil.init, i32 %i.ar)
  br label %._crit_edge112.loopexit

._crit_edge112.loopexit:                          ; preds = %._crit_edge112.loopexit.unr-lcssa, %.lr.ph111.epil.preheader
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge112.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph111.epil.preheader ]
  %i.au = zext nneg i32 %spec.select.lcssa to i64
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge.thread, %._crit_edge112.loopexit
  %i.av = phi ptr [ %i.w, %._crit_edge.thread ], [ %i.u, %._crit_edge112.loopexit ] ; 3 uses
  %.087.lcssa = phi i64 [ 0, %._crit_edge.thread ], [ %i.au, %._crit_edge112.loopexit ] ; 2 uses
  %i.aw = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %.087.lcssa) #7 ; 9 uses
  %i.ax = mul nuw nsw i64 %.087.lcssa, 3
  %i.ay = tail call ptr @WebPSafeMalloc(i64 noundef %i.ax, i64 noundef 16) #7 ; 9 uses
  %i.az = icmp eq ptr %i.aw, null
  %i.ba = icmp eq ptr %i.ay, null
  %or.cond = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge112
  br i1 %i.b, label %.lr.ph115, label %.loopexit

.lr.ph115:                                        ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count126 = zext nneg i32 %i.a to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph115, %bb.c
  %indvars.iv123 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next124, %bb.c ] ; 3 uses
  %.idx131 = mul nuw nsw i64 %indvars.iv123, 120
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx131 ; 5 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv123
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !69 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !157
  tail call void @VP8LCreateHuffmanTree(ptr noundef %i.bg, i32 noundef 15, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bc) #7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  tail call void @VP8LCreateHuffmanTree(ptr noundef nonnull %i.bh, i32 noundef 15, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bi) #7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1032
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  tail call void @VP8LCreateHuffmanTree(ptr noundef nonnull %i.bj, i32 noundef 15, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bk) #7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 2056
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  tail call void @VP8LCreateHuffmanTree(ptr noundef nonnull %i.bl, i32 noundef 15, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bm) #7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 3080
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  tail call void @VP8LCreateHuffmanTree(ptr noundef nonnull %i.bn, i32 noundef 15, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bo) #7
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.loopexit, label %bb.c, !llvm.loop !154

.loopexit:                                        ; preds = %bb.c, %._crit_edge.thread, %.preheader, %._crit_edge, %._crit_edge112
  %i.bp = phi ptr [ %i.av, %._crit_edge112 ], [ null, %._crit_edge ], [ %i.av, %.preheader ], [ null, %._crit_edge.thread ], [ %i.av, %bb.c ]
  %.not = phi i1 [ true, %._crit_edge112 ], [ true, %._crit_edge ], [ false, %.preheader ], [ true, %._crit_edge.thread ], [ false, %bb.c ]
  %.092 = phi i32 [ 0, %._crit_edge112 ], [ 0, %._crit_edge ], [ 1, %.preheader ], [ 0, %._crit_edge.thread ], [ 1, %bb.c ]
  %.086 = phi ptr [ %i.aw, %._crit_edge112 ], [ null, %._crit_edge ], [ %i.aw, %.preheader ], [ null, %._crit_edge.thread ], [ %i.aw, %bb.c ]
  %.085 = phi ptr [ %i.ay, %._crit_edge112 ], [ null, %._crit_edge ], [ %i.ay, %.preheader ], [ null, %._crit_edge.thread ], [ %i.ay, %bb.c ]
  tail call void @WebPSafeFree(ptr noundef %.085) #7
  tail call void @WebPSafeFree(ptr noundef %.086) #7
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  tail call void @WebPSafeFree(ptr noundef %i.bp) #7
  %i.bq = mul nsw i32 %i.a, 5
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %i.br, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.bs, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  ret i32 %.092
}

; Function Attrs: nounwind uwtable
define internal fastcc void @StoreHuffmanCode(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [19 x i8], align 16               ; 21 uses
  %i.b = alloca [19 x i16], align 16              ; 4 uses
  %4 = alloca %struct.HuffmanTreeCode, align 8    ; 8 uses
  %i.c = alloca [19 x i32], align 16              ; 9 uses
  %i.d = alloca [19 x i8], align 16               ; 4 uses
  %5 = alloca [2 x i32], align 8                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store i64 0, ptr %5, align 8
  %i.e = load i32, ptr %3, align 8, !tbaa !79     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.i = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.052 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !42
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.d, label %6

6:                                                ; preds = %bb.b
  %7 = icmp slt i32 %.052, 2
  br i1 %7, label %bb.c, label %11

bb.c:                                             ; preds = %6
  %8 = sext i32 %.052 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %5, i64 %8
  %10 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %10, ptr %9, align 4, !tbaa !41
  br label %11

11:                                               ; preds = %bb.c, %6
  %12 = add nsw i32 %.052, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %11
  %.1 = phi i32 [ %12, %11 ], [ %.052, %bb.b ]    ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.i
  %i.m = icmp slt i32 %.1, 3                      ; 2 uses
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.d
  %i.o = icmp eq i32 %.1, 0
  br i1 %i.o, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !62   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 31
  br i1 %i.r, label %bb.e, label %VP8LPutBits.exit

bb.e:                                             ; preds = %._crit_edge.thread
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %0) #7
  %.pre.i = load i32, ptr %i.p, align 8, !tbaa !62
  br label %VP8LPutBits.exit

VP8LPutBits.exit:                                 ; preds = %._crit_edge.thread, %bb.e
  %i.s = phi i32 [ %.pre.i, %bb.e ], [ %i.q, %._crit_edge.thread ] ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = load i64, ptr %0, align 8, !tbaa !67
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %0, align 8, !tbaa !67
  %i.x = add nsw i32 %i.s, 4
  store i32 %i.x, ptr %i.p, align 8, !tbaa !62
  br label %bb.bl

bb.f:                                             ; preds = %._crit_edge
  %13 = load i32, ptr %5, align 8                 ; 4 uses
  %i.y = icmp slt i32 %13, 256
  %or.cond = select i1 %i.m, i1 %i.y, i1 false
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %15 = load i32, ptr %14, align 4                ; 2 uses
  %i.z = icmp slt i32 %15, 256
  %or.cond5 = select i1 %or.cond, i1 %i.z, i1 false
  br i1 %or.cond5, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 31
  br i1 %i.ac, label %bb.h, label %VP8LPutBits.exit32

bb.h:                                             ; preds = %bb.g
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %0) #7
  %.pre.i31 = load i32, ptr %i.aa, align 8, !tbaa !62
  br label %VP8LPutBits.exit32

VP8LPutBits.exit32:                               ; preds = %bb.g, %bb.h
  %i.ad = phi i32 [ %.pre.i31, %bb.h ], [ %i.ab, %bb.g ] ; 3 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = load i64, ptr %0, align 8, !tbaa !67
  %i.ah = or i64 %i.af, %i.ag                     ; 2 uses
  store i64 %i.ah, ptr %0, align 8, !tbaa !67
  %i.ai = add nsw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !62
  %i.aj = add nsw i32 %.1, -1
  %i.ak = icmp sgt i32 %i.ad, 30
  br i1 %i.ak, label %bb.i, label %VP8LPutBits.exit34

bb.i:                                             ; preds = %VP8LPutBits.exit32
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %0) #7
  %.pre.i33 = load i32, ptr %i.aa, align 8, !tbaa !62
  %.pre = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit34

VP8LPutBits.exit34:                               ; preds = %VP8LPutBits.exit32, %bb.i
  %i.al = phi i64 [ %.pre, %bb.i ], [ %i.ah, %VP8LPutBits.exit32 ]
  %i.am = phi i32 [ %.pre.i33, %bb.i ], [ %i.ai, %VP8LPutBits.exit32 ] ; 3 uses
  %i.an = zext i32 %i.aj to i64
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = shl i64 %i.an, %i.ao
  %i.aq = or i64 %i.ap, %i.al                     ; 2 uses
  store i64 %i.aq, ptr %0, align 8, !tbaa !67
  %i.ar = add nsw i32 %i.am, 1                    ; 3 uses
  store i32 %i.ar, ptr %i.aa, align 8, !tbaa !62
  %i.as = icmp slt i32 %13, 2
  %i.at = icmp sgt i32 %i.am, 30                  ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.m

bb.j:                                             ; preds = %VP8LPutBits.exit34
  br i1 %i.at, label %bb.k, label %VP8LPutBits.exit36

bb.k:                                             ; preds = %bb.j
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %0) #7
  %.pre.i35 = load i32, ptr %i.aa, align 8, !tbaa !62
  br label %VP8LPutBits.exit36

VP8LPutBits.exit36:                               ; preds = %bb.j, %bb.k
  %i.au = phi i32 [ %.pre.i35, %bb.k ], [ %i.ar, %bb.j ] ; 2 uses
  %i.av = add nsw i32 %i.au, 1                    ; 2 uses
  store i32 %i.av, ptr %i.aa, align 8, !tbaa !62
  %i.aw = icmp sgt i32 %i.au, 30
  br i1 %i.aw, label %bb.l, label %VP8LPutBits.exit38

bb.l:                                             ; preds = %VP8LPutBits.exit36
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %0) #7
  %.pre.i37 = load i32, ptr %i.aa, align 8, !tbaa !62
  br label %VP8LPutBits.exit38

VP8LPutBits.exit38:                               ; preds = %VP8LPutBits.exit36, %bb.l
  %i.ax = phi i32 [ %.pre.i37, %bb.l ], [ %i.av, %VP8LPutBits.exit36 ] ; 2 uses
  %i.ay = zext i32 %13 to i64
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = shl i64 %i.ay, %i.az
  %i.bb = load i64, ptr %0, align 8, !tbaa !67
  %i.bc = or i64 %i.ba, %i.bb                     ; 2 uses
  store i64 %i.bc, ptr %0, align 8, !tbaa !67
  %i.bd = add nsw i32 %i.ax, 1
  br label %bb.p

bb.m:                                             ; preds = %VP8LPutBits.exit34
  br i1 %i.at, label %bb.n, label %VP8LPutBits.exit40

bb.n:                                             ; preds = %bb.m
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %0) #7
  %.pre.i39 = load i32, ptr %i.aa, align 8, !tbaa !62
  %.pre60 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit40

VP8LPutBits.exit40:                               ; preds = %bb.m, %bb.n
  %i.be = phi i64 [ %.pre60, %bb.n ], [ %i.aq, %bb.m ]
  %i.bf = phi i32 [ %.pre.i39, %bb.n ], [ %i.ar, %bb.m ] ; 3 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = or i64 %i.bh, %i.be                     ; 2 uses
  store i64 %i.bi, ptr %0, align 8, !tbaa !67
  %i.bj = add nsw i32 %i.bf, 1                    ; 2 uses
  store i32 %i.bj, ptr %i.aa, align 8, !tbaa !62
  %i.bk = icmp sgt i32 %i.bf, 30
  br i1 %i.bk, label %bb.o, label %VP8LPutBits.exit42

bb.o:                                             ; preds = %VP8LPutBits.exit40
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %0) #7
  %.pre.i41 = load i32, ptr %i.aa, align 8, !tbaa !62
  %.pre61 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit42

VP8LPutBits.exit42:                               ; preds = %VP8LPutBits.exit40, %bb.o
  %i.bl = phi i64 [ %.pre61, %bb.o ], [ %i.bi, %VP8LPutBits.exit40 ]
  %i.bm = phi i32 [ %.pre.i41, %bb.o ], [ %i.bj, %VP8LPutBits.exit40 ] ; 2 uses
  %i.bn = zext nneg i32 %13 to i64
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = shl i64 %i.bn, %i.bo
  %i.bq = or i64 %i.bp, %i.bl                     ; 2 uses
  store i64 %i.bq, ptr %0, align 8, !tbaa !67
  %i.br = add nsw i32 %i.bm, 8
  br label %bb.p

bb.p:                                             ; preds = %VP8LPutBits.exit42, %VP8LPutBits.exit38
  %i.bs = phi i64 [ %i.bq, %VP8LPutBits.exit42 ], [ %i.bc, %VP8LPutBits.exit38 ]
  %i.bt = phi i32 [ %i.br, %VP8LPutBits.exit42 ], [ %i.bd, %VP8LPutBits.exit38 ] ; 3 uses
  store i32 %i.bt, ptr %i.aa, align 8, !tbaa !62
  %i.bu = icmp eq i32 %.1, 2
  br i1 %i.bu, label %bb.q, label %bb.bl

bb.q:                                             ; preds = %bb.p
  %i.bv = icmp sgt i32 %i.bt, 31
  br i1 %i.bv, label %bb.r, label %VP8LPutBits.exit44

bb.r:                                             ; preds = %bb.q
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %0) #7
  %.pre.i43 = load i32, ptr %i.aa, align 8, !tbaa !62
  %.pre62 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit44

VP8LPutBits.exit44:                               ; preds = %bb.q, %bb.r
  %i.bw = phi i64 [ %.pre62, %bb.r ], [ %i.bs, %bb.q ]
  %i.bx = phi i32 [ %.pre.i43, %bb.r ], [ %i.bt, %bb.q ] ; 2 uses
  %i.by = zext i32 %15 to i64
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = shl i64 %i.by, %i.bz
  %i.cb = or i64 %i.ca, %i.bw
  store i64 %i.cb, ptr %0, align 8, !tbaa !67
  %i.cc = add nsw i32 %i.bx, 8
  store i32 %i.cc, ptr %i.aa, align 8, !tbaa !62
  br label %bb.bl

bb.s:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.a, i8 0, i64 19, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %i.b, i8 0, i64 38, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i32 19, ptr %4, align 8, !tbaa !79
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.a, ptr %i.cd, align 8, !tbaa !80
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.ce, align 8, !tbaa !81
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 33 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 31
  br i1 %i.ch, label %bb.t, label %VP8LPutBits.exit.i

bb.t:                                             ; preds = %bb.s
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, ptr noundef nonnull %0) #7
  %.pre.i.i = load i32, ptr %i.cf, align 8, !tbaa !62
  br label %VP8LPutBits.exit.i

VP8LPutBits.exit.i:                               ; preds = %bb.t, %bb.s
  %i.ci = phi i32 [ %.pre.i.i, %bb.t ], [ %i.cg, %bb.s ]
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.cf, align 8, !tbaa !62
  %i.ck = call i32 @VP8LCreateCompressedHuffmanTree(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef %i.e) #7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, i8 0, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.d, i8 0, i64 19, i1 false)
  %i.cl = icmp sgt i32 %i.ck, 0                   ; 3 uses
  br i1 %i.cl, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %VP8LPutBits.exit.i
  %wide.trip.count.i = zext nneg i32 %i.ck to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cm = icmp ult i32 %i.ck, 4
  br i1 %i.cm, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !164
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !41
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !41
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !164
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !41
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !41
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !164
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !41
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !41
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 6
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !164
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !41
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !41
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !159

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !164
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !41
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !41
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !160

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %VP8LPutBits.exit.i
  call void @VP8LCreateHuffmanTree(ptr noundef nonnull %i.c, i32 noundef 7, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %._crit_edge.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !42
  %.not.1.i.i = icmp eq i8 %i.dx, 0
  br i1 %.not.1.i.i, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !42
  %.not.2.i.i = icmp eq i8 %i.dz, 0
  br i1 %.not.2.i.i, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.eb = load i8, ptr %i.ea, align 4, !tbaa !42
  %.not.3.i.i = icmp eq i8 %i.eb, 0
  br i1 %.not.3.i.i, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !42
  %.not.4.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not.4.i.i, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !42
  %.not.5.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.5.i.i, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !42
  %.not.6.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not.6.i.i, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !42
  %.not.7.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not.7.i.i, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !42
  %.not.8.i.i = icmp eq i8 %i.el, 0
  br i1 %.not.8.i.i, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.en = load i8, ptr %i.em, align 2, !tbaa !42
  %.not.9.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.9.i.i, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ep = load i8, ptr %i.eo, align 16, !tbaa !42
  %.not.10.i.i = icmp eq i8 %i.ep, 0
  br i1 %.not.10.i.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !42
  %.not.11.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.11.i.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.et = load i8, ptr %i.es, align 4, !tbaa !42
  %.not.12.i.i = icmp eq i8 %i.et, 0
  br i1 %.not.12.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !42
  %.not.13.i.i = icmp eq i8 %i.ev, 0
end_hunk_0
begin_hunk_1_@StoreHuffmanCode:bb.a

bb.au:                                            ; preds = %bb.at
  %i.hh = icmp sgt i32 %i.gz, 30
  br i1 %i.hh, label %bb.av, label %VP8LPutBits.exit67.i

bb.av:                                            ; preds = %bb.au
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, ptr noundef nonnull %0) #7
  %.pre.i66.i = load i32, ptr %i.cf, align 8, !tbaa !62
  br label %VP8LPutBits.exit67.i

VP8LPutBits.exit67.i:                             ; preds = %bb.av, %bb.au
  %i.hi = phi i32 [ %.pre.i66.i, %bb.av ], [ %i.hf, %bb.au ]
  %i.hj = add nsw i32 %i.hi, 5
  br label %.lr.ph.i72.sink.split.i

bb.aw:                                            ; preds = %bb.at
  %i.hk = add nsw i32 %.051.lcssa.i, -2           ; 2 uses
  %i.hl = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 2147483647) %i.hk, i1 true)
  %i.hm = xor i32 %i.hl, 31                       ; 2 uses
  %i.hn = lshr i32 %i.hm, 1
  %i.ho = icmp sgt i32 %i.gz, 30
  br i1 %i.ho, label %bb.ax, label %VP8LPutBits.exit69.i

bb.ax:                                            ; preds = %bb.aw
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, ptr noundef nonnull %0) #7
  %.pre.i68.i = load i32, ptr %i.cf, align 8, !tbaa !62
  %.pre.i45 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit69.i

VP8LPutBits.exit69.i:                             ; preds = %bb.ax, %bb.aw
  %i.hp = phi i64 [ %.pre.i45, %bb.ax ], [ %i.he, %bb.aw ]
  %i.hq = phi i32 [ %.pre.i68.i, %bb.ax ], [ %i.hf, %bb.aw ] ; 3 uses
  %i.hr = zext nneg i32 %i.hn to i64
  %i.hs = zext nneg i32 %i.hq to i64
  %i.ht = shl i64 %i.hr, %i.hs
  %i.hu = or i64 %i.ht, %i.hp                     ; 2 uses
  store i64 %i.hu, ptr %0, align 8, !tbaa !67
  %i.hv = add nsw i32 %i.hq, 3                    ; 2 uses
  store i32 %i.hv, ptr %i.cf, align 8, !tbaa !62
  %i.hw = and i32 %i.hm, 30
  %i.hx = add nuw nsw i32 %i.hw, 2
  %i.hy = icmp sgt i32 %i.hq, 28
  br i1 %i.hy, label %bb.ay, label %VP8LPutBits.exit71.i

bb.ay:                                            ; preds = %VP8LPutBits.exit69.i
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, ptr noundef nonnull %0) #7
  %.pre.i70.i = load i32, ptr %i.cf, align 8, !tbaa !62
  %.pre98.i = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit71.i

VP8LPutBits.exit71.i:                             ; preds = %bb.ay, %VP8LPutBits.exit69.i
  %i.hz = phi i64 [ %.pre98.i, %bb.ay ], [ %i.hu, %VP8LPutBits.exit69.i ]
  %i.ia = phi i32 [ %.pre.i70.i, %bb.ay ], [ %i.hv, %VP8LPutBits.exit69.i ] ; 2 uses
  %i.ib = zext nneg i32 %i.hk to i64
  %i.ic = zext nneg i32 %i.ia to i64
  %i.id = shl i64 %i.ib, %i.ic
  %i.ie = or i64 %i.id, %i.hz
  store i64 %i.ie, ptr %0, align 8, !tbaa !67
  %i.if = add nsw i32 %i.hx, %i.ia
  br label %.lr.ph.i72.sink.split.i

bb.az:                                            ; preds = %VP8LPutBits.exit65.i
  br i1 %i.cl, label %.lr.ph.i72.i, label %StoreFullHuffmanCode.exit

.lr.ph.i72.sink.split.i:                          ; preds = %VP8LPutBits.exit71.i, %VP8LPutBits.exit67.i
  %.sink.i = phi i32 [ %i.if, %VP8LPutBits.exit71.i ], [ %i.hj, %VP8LPutBits.exit67.i ] ; 2 uses
  store i32 %.sink.i, ptr %i.cf, align 8, !tbaa !62
  br label %.lr.ph.i72.i

.lr.ph.i72.i:                                     ; preds = %.lr.ph.i72.sink.split.i, %bb.az
  %i.ig = phi i32 [ %i.hf, %bb.az ], [ %.sink.i, %.lr.ph.i72.sink.split.i ]
  %i.ih = phi i32 [ %i.ck, %bb.az ], [ %.051.lcssa.i, %.lr.ph.i72.sink.split.i ]
  %wide.trip.count.i73.i = zext nneg i32 %i.ih to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bk, %.lr.ph.i72.i
  %i.ii = phi i32 [ %i.ig, %.lr.ph.i72.i ], [ %i.kd, %bb.bk ] ; 3 uses
  %indvars.iv.i74.i = phi i64 [ 0, %.lr.ph.i72.i ], [ %indvars.iv.next.i75.i, %bb.bk ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i74.i ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !164 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !165 ; 3 uses
  %i.in = load ptr, ptr %i.ce, align 8, !tbaa !81
  %i.io = zext i8 %i.ik to i64                    ; 2 uses
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !71
  %i.ir = load ptr, ptr %i.cd, align 8, !tbaa !80
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.io
  %i.it = load i8, ptr %i.is, align 1, !tbaa !42  ; 2 uses
  %i.iu = zext i8 %i.it to i32
  %i.iv = icmp eq i8 %i.it, 0
  br i1 %i.iv, label %VP8LPutBits.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = icmp sgt i32 %i.ii, 31
  br i1 %i.iw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, ptr noundef nonnull %0) #7
  %.pre.i.i77.i = load i32, ptr %i.cf, align 8, !tbaa !62
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ix = phi i32 [ %.pre.i.i77.i, %bb.bc ], [ %i.ii, %bb.bb ] ; 2 uses
  %i.iy = zext i16 %i.iq to i64
  %i.iz = zext nneg i32 %i.ix to i64
  %i.ja = shl i64 %i.iy, %i.iz
  %i.jb = load i64, ptr %0, align 8, !tbaa !67
  %i.jc = or i64 %i.ja, %i.jb
  store i64 %i.jc, ptr %0, align 8, !tbaa !67
  %i.jd = add nsw i32 %i.ix, %i.iu                ; 2 uses
  store i32 %i.jd, ptr %i.cf, align 8, !tbaa !62
  br label %VP8LPutBits.exit.i.i

VP8LPutBits.exit.i.i:                             ; preds = %bb.bd, %bb.ba
  %i.je = phi i32 [ %i.jd, %bb.bd ], [ %i.ii, %bb.ba ] ; 7 uses
  switch i8 %i.ik, label %bb.bk [
    i8 16, label %bb.be
    i8 17, label %bb.bg
    i8 18, label %bb.bi
  ]

bb.be:                                            ; preds = %VP8LPutBits.exit.i.i
  %i.jf = icmp sgt i32 %i.je, 31
  br i1 %i.jf, label %bb.bf, label %VP8LPutBits.exit19.i.i

bb.bf:                                            ; preds = %bb.be
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, ptr noundef nonnull %0) #7
  %.pre.i18.i.i = load i32, ptr %i.cf, align 8, !tbaa !62
  br label %VP8LPutBits.exit19.i.i

VP8LPutBits.exit19.i.i:                           ; preds = %bb.bf, %bb.be
  %i.jg = phi i32 [ %.pre.i18.i.i, %bb.bf ], [ %i.je, %bb.be ] ; 2 uses
  %i.jh = zext i8 %i.im to i64
  %i.ji = zext nneg i32 %i.jg to i64
  %i.jj = shl i64 %i.jh, %i.ji
  %i.jk = load i64, ptr %0, align 8, !tbaa !67
  %i.jl = or i64 %i.jj, %i.jk
  store i64 %i.jl, ptr %0, align 8, !tbaa !67
  %i.jm = add nsw i32 %i.jg, 2
  br label %.sink.split.i.i

bb.bg:                                            ; preds = %VP8LPutBits.exit.i.i
  %i.jn = icmp sgt i32 %i.je, 31
  br i1 %i.jn, label %bb.bh, label %VP8LPutBits.exit21.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, ptr noundef nonnull %0) #7
  %.pre.i20.i.i = load i32, ptr %i.cf, align 8, !tbaa !62
  br label %VP8LPutBits.exit21.i.i

VP8LPutBits.exit21.i.i:                           ; preds = %bb.bh, %bb.bg
  %i.jo = phi i32 [ %.pre.i20.i.i, %bb.bh ], [ %i.je, %bb.bg ] ; 2 uses
  %i.jp = zext i8 %i.im to i64
  %i.jq = zext nneg i32 %i.jo to i64
  %i.jr = shl i64 %i.jp, %i.jq
  %i.js = load i64, ptr %0, align 8, !tbaa !67
  %i.jt = or i64 %i.jr, %i.js
  store i64 %i.jt, ptr %0, align 8, !tbaa !67
  %i.ju = add nsw i32 %i.jo, 3
  br label %.sink.split.i.i

bb.bi:                                            ; preds = %VP8LPutBits.exit.i.i
  %i.jv = icmp sgt i32 %i.je, 31
  br i1 %i.jv, label %bb.bj, label %VP8LPutBits.exit23.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, ptr noundef nonnull %0) #7
  %.pre.i22.i.i = load i32, ptr %i.cf, align 8, !tbaa !62
  br label %VP8LPutBits.exit23.i.i

VP8LPutBits.exit23.i.i:                           ; preds = %bb.bj, %bb.bi
  %i.jw = phi i32 [ %.pre.i22.i.i, %bb.bj ], [ %i.je, %bb.bi ] ; 2 uses
  %i.jx = zext i8 %i.im to i64
  %i.jy = zext nneg i32 %i.jw to i64
  %i.jz = shl i64 %i.jx, %i.jy
  %i.ka = load i64, ptr %0, align 8, !tbaa !67
  %i.kb = or i64 %i.jz, %i.ka
  store i64 %i.kb, ptr %0, align 8, !tbaa !67
  %i.kc = add nsw i32 %i.jw, 7
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %VP8LPutBits.exit23.i.i, %VP8LPutBits.exit21.i.i, %VP8LPutBits.exit19.i.i
  %.sink.i.i = phi i32 [ %i.kc, %VP8LPutBits.exit23.i.i ], [ %i.ju, %VP8LPutBits.exit21.i.i ], [ %i.jm, %VP8LPutBits.exit19.i.i ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.cf, align 8, !tbaa !62
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i.i, %VP8LPutBits.exit.i.i
  %i.kd = phi i32 [ %.sink.i.i, %.sink.split.i.i ], [ %i.je, %VP8LPutBits.exit.i.i ]
  %indvars.iv.next.i75.i = add nuw nsw i64 %indvars.iv.i74.i, 1 ; 2 uses
  %exitcond.not.i76.i = icmp eq i64 %indvars.iv.next.i75.i, %wide.trip.count.i73.i
  br i1 %exitcond.not.i76.i, label %StoreFullHuffmanCode.exit, label %bb.ba, !llvm.loop !162

StoreFullHuffmanCode.exit:                        ; preds = %bb.bk, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bl

bb.bl:                                            ; preds = %StoreFullHuffmanCode.exit, %VP8LPutBits.exit44, %bb.p, %VP8LPutBits.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @StoreImageToBitMask(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.VP8LRefsCursor, align 8     ; 9 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.a = shl nuw i32 1, %2
  %i.b = add i32 %1, -1
  %i.c = add i32 %i.b, %i.a
  %i.d = lshr i32 %i.c, %2
  %i.e = select i1 %.not, i32 1, i32 %i.d
  %.neg = shl nsw i32 -1, %2
  %i.f = select i1 %.not, i32 0, i32 %.neg        ; 2 uses
  %i.g = load i32, ptr %4, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @VP8LRefsCursorInit(ptr dead_on_unwind nonnull writable sret(%struct.VP8LRefsCursor) align 8 %7, ptr noundef %3) #7
  %.val123 = load ptr, ptr %7, align 8, !tbaa !170 ; 2 uses
  %.not115124 = icmp eq ptr %.val123, null
  br i1 %.not115124, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.a
  %i.h = lshr i32 %i.g, 8
  %i.i = and i32 %i.h, 65535
  %i.j = mul nuw nsw i32 %i.i, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 30 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph132, %VP8LRefsCursorNext.exit
  %.val130 = phi ptr [ %.val123, %.lr.ph132 ], [ %.val, %VP8LRefsCursorNext.exit ] ; 4 uses
  %.063129 = phi i32 [ 0, %.lr.ph132 ], [ %.1.lcssa, %VP8LRefsCursorNext.exit ] ; 3 uses
  %.065128 = phi ptr [ %i.l, %.lr.ph132 ], [ %.166, %VP8LRefsCursorNext.exit ]
  %.067127 = phi i32 [ 0, %.lr.ph132 ], [ %.168, %VP8LRefsCursorNext.exit ] ; 2 uses
  %.069126 = phi i32 [ 0, %.lr.ph132 ], [ %.170, %VP8LRefsCursorNext.exit ] ; 2 uses
  %.071125 = phi i32 [ 0, %.lr.ph132 ], [ %.172.lcssa, %VP8LRefsCursorNext.exit ] ; 4 uses
  %i.o = and i32 %.063129, %i.f                   ; 2 uses
  %.not77 = icmp eq i32 %.069126, %i.o
  %i.p = and i32 %.071125, %i.f                   ; 2 uses
  %.not78 = icmp eq i32 %.067127, %i.p
  %or.cond = select i1 %.not77, i1 %.not78, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = ashr i32 %.071125, %2
  %i.r = mul nsw i32 %i.q, %i.e
  %i.s = ashr i32 %.063129, %2
  %i.t = add nsw i32 %i.s, %i.r
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %4, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !41
  %i.x = lshr i32 %i.w, 8
  %i.y = and i32 %i.x, 65535
  %i.z = mul nuw nsw i32 %i.y, 5
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.170 = phi i32 [ %i.o, %bb.c ], [ %.069126, %bb.b ]
  %.168 = phi i32 [ %i.p, %bb.c ], [ %.067127, %bb.b ]
  %.166 = phi ptr [ %i.ab, %bb.c ], [ %.065128, %bb.b ] ; 15 uses
  %.val82 = load i8, ptr %.val130, align 4, !tbaa !172
  %i.ac = getelementptr i8, ptr %.val130, i64 4   ; 4 uses
  %.val91 = load i32, ptr %i.ac, align 4, !tbaa !173 ; 7 uses
  switch i8 %.val82, label %bb.u [
    i8 0, label %.preheader
    i8 1, label %bb.q
  ]

.preheader:                                       ; preds = %bb.d
  %i.ad = lshr i32 %.val91, 8
  %i.ae = and i32 %i.ad, 255
  %i.af = getelementptr i8, ptr %.166, i64 8
  %.val87 = load ptr, ptr %i.af, align 8, !tbaa !80
  %i.ag = getelementptr i8, ptr %.166, i64 16
  %.val88 = load ptr, ptr %i.ag, align 8, !tbaa !81
  %i.ah = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val87, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !42  ; 2 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.val88, i64 %i.ah
  %i.am = load i16, ptr %i.al, align 2, !tbaa !71
  %i.an = icmp eq i8 %i.aj, 0
  br i1 %i.an, label %WriteHuffmanCode.exit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ao = load i32, ptr %i.m, align 8, !tbaa !62  ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 31
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %0) #7
  %.pre.i.i = load i32, ptr %i.m, align 8, !tbaa !62
  %.val83.1.pre.pre = load i32, ptr %i.ac, align 4, !tbaa !173
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.val83.1.pre = phi i32 [ %.val83.1.pre.pre, %bb.f ], [ %.val91, %bb.e ]
  %i.aq = phi i32 [ %.pre.i.i, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ar = zext i16 %i.am to i64
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = shl i64 %i.ar, %i.as
  %i.au = load i64, ptr %0, align 8, !tbaa !67
  %i.av = or i64 %i.at, %i.au
  store i64 %i.av, ptr %0, align 8, !tbaa !67
  %i.aw = add nsw i32 %i.aq, %i.ak
  store i32 %i.aw, ptr %i.m, align 8, !tbaa !62
  br label %WriteHuffmanCode.exit

WriteHuffmanCode.exit:                            ; preds = %.preheader, %bb.g
  %.val83.1 = phi i32 [ %.val91, %.preheader ], [ %.val83.1.pre, %bb.g ] ; 3 uses
  %i.ax = lshr i32 %.val83.1, 16
  %i.ay = and i32 %i.ax, 255
  %i.az = getelementptr i8, ptr %.166, i64 32
  %.val87.1 = load ptr, ptr %i.az, align 8, !tbaa !80
  %i.ba = getelementptr i8, ptr %.166, i64 40
  %.val88.1 = load ptr, ptr %i.ba, align 8, !tbaa !81
  %i.bb = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val87.1, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !42  ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.val88.1, i64 %i.bb
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !71
  %i.bh = icmp eq i8 %i.bd, 0
  br i1 %i.bh, label %WriteHuffmanCode.exit.1, label %bb.h

bb.h:                                             ; preds = %WriteHuffmanCode.exit
  %i.bi = load i32, ptr %i.m, align 8, !tbaa !62  ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 31
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %0) #7
  %.pre.i.i.1 = load i32, ptr %i.m, align 8, !tbaa !62
  %.val83.2.pre.pre = load i32, ptr %i.ac, align 4, !tbaa !173
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val83.2.pre = phi i32 [ %.val83.2.pre.pre, %bb.i ], [ %.val83.1, %bb.h ]
  %i.bk = phi i32 [ %.pre.i.i.1, %bb.i ], [ %i.bi, %bb.h ] ; 2 uses
  %i.bl = zext i16 %i.bg to i64
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = shl i64 %i.bl, %i.bm
  %i.bo = load i64, ptr %0, align 8, !tbaa !67
  %i.bp = or i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %0, align 8, !tbaa !67
  %i.bq = add nsw i32 %i.bk, %i.be
  store i32 %i.bq, ptr %i.m, align 8, !tbaa !62
  br label %WriteHuffmanCode.exit.1

WriteHuffmanCode.exit.1:                          ; preds = %bb.j, %WriteHuffmanCode.exit
  %.val83.2 = phi i32 [ %.val83.2.pre, %bb.j ], [ %.val83.1, %WriteHuffmanCode.exit ] ; 3 uses
  %i.br = and i32 %.val83.2, 255
  %i.bs = getelementptr i8, ptr %.166, i64 56
  %.val87.2 = load ptr, ptr %i.bs, align 8, !tbaa !80
  %i.bt = getelementptr i8, ptr %.166, i64 64
  %.val88.2 = load ptr, ptr %i.bt, align 8, !tbaa !81
  %i.bu = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val87.2, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !42  ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.val88.2, i64 %i.bu
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !71
  %i.ca = icmp eq i8 %i.bw, 0
  br i1 %i.ca, label %WriteHuffmanCode.exit.2, label %bb.k

bb.k:                                             ; preds = %WriteHuffmanCode.exit.1
  %i.cb = load i32, ptr %i.m, align 8, !tbaa !62  ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 31
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %0) #7
  %.pre.i.i.2 = load i32, ptr %i.m, align 8, !tbaa !62
  %.val83.3.pre.pre = load i32, ptr %i.ac, align 4, !tbaa !173
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.val83.3.pre = phi i32 [ %.val83.3.pre.pre, %bb.l ], [ %.val83.2, %bb.k ]
  %i.cd = phi i32 [ %.pre.i.i.2, %bb.l ], [ %i.cb, %bb.k ] ; 2 uses
  %i.ce = zext i16 %i.bz to i64
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = shl i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %0, align 8, !tbaa !67
  %i.ci = or i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %0, align 8, !tbaa !67
  %i.cj = add nsw i32 %i.cd, %i.bx
  store i32 %i.cj, ptr %i.m, align 8, !tbaa !62
  br label %WriteHuffmanCode.exit.2

WriteHuffmanCode.exit.2:                          ; preds = %bb.m, %WriteHuffmanCode.exit.1
  %.val83.3 = phi i32 [ %.val83.3.pre, %bb.m ], [ %.val83.2, %WriteHuffmanCode.exit.1 ]
  %i.ck = lshr i32 %.val83.3, 24
  %i.cl = getelementptr i8, ptr %.166, i64 80
  %.val87.3 = load ptr, ptr %i.cl, align 8, !tbaa !80
  %i.cm = getelementptr i8, ptr %.166, i64 88
end_hunk_1
