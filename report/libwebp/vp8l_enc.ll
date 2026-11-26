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

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.052 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ]  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !42
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %.052, 2
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %6 = sext i32 %.052 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.m, ptr %7, align 4, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = add nsw i32 %.052, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %i.n, %bb.e ], [ %.052, %bb.b ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.i
  %i.p = icmp slt i32 %.1, 3                      ; 2 uses
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.f
  %i.r = icmp eq i32 %.1, 0
  br i1 %i.r, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 31
  br i1 %i.u, label %bb.g, label %VP8LPutBits.exit

bb.g:                                             ; preds = %._crit_edge.thread
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.s, ptr noundef nonnull %0) #7
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !62
  br label %VP8LPutBits.exit

VP8LPutBits.exit:                                 ; preds = %._crit_edge.thread, %bb.g
  %i.v = phi i32 [ %.pre.i, %bb.g ], [ %i.t, %._crit_edge.thread ] ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = load i64, ptr %0, align 8, !tbaa !67
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %0, align 8, !tbaa !67
  %i.aa = add nsw i32 %i.v, 4
  store i32 %i.aa, ptr %i.s, align 8, !tbaa !62
  br label %bb.bn

bb.h:                                             ; preds = %._crit_edge
  %8 = load i32, ptr %5, align 8                  ; 4 uses
  %i.ab = icmp slt i32 %8, 256
  %or.cond = select i1 %i.p, i1 %i.ab, i1 false
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %10 = load i32, ptr %9, align 4                 ; 2 uses
  %i.ac = icmp slt i32 %10, 256
  %or.cond5 = select i1 %or.cond, i1 %i.ac, i1 false
  br i1 %or.cond5, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !62 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 31
  br i1 %i.af, label %bb.j, label %VP8LPutBits.exit32

bb.j:                                             ; preds = %bb.i
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %0) #7
  %.pre.i31 = load i32, ptr %i.ad, align 8, !tbaa !62
  br label %VP8LPutBits.exit32

VP8LPutBits.exit32:                               ; preds = %bb.i, %bb.j
  %i.ag = phi i32 [ %.pre.i31, %bb.j ], [ %i.ae, %bb.i ] ; 3 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = load i64, ptr %0, align 8, !tbaa !67
  %i.ak = or i64 %i.ai, %i.aj                     ; 2 uses
  store i64 %i.ak, ptr %0, align 8, !tbaa !67
  %i.al = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.al, ptr %i.ad, align 8, !tbaa !62
  %i.am = add nsw i32 %.1, -1
  %i.an = icmp sgt i32 %i.ag, 30
  br i1 %i.an, label %bb.k, label %VP8LPutBits.exit34

bb.k:                                             ; preds = %VP8LPutBits.exit32
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %0) #7
  %.pre.i33 = load i32, ptr %i.ad, align 8, !tbaa !62
  %.pre = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit34

VP8LPutBits.exit34:                               ; preds = %VP8LPutBits.exit32, %bb.k
  %i.ao = phi i64 [ %.pre, %bb.k ], [ %i.ak, %VP8LPutBits.exit32 ]
  %i.ap = phi i32 [ %.pre.i33, %bb.k ], [ %i.al, %VP8LPutBits.exit32 ] ; 3 uses
  %i.aq = zext i32 %i.am to i64
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = shl i64 %i.aq, %i.ar
  %i.at = or i64 %i.as, %i.ao                     ; 2 uses
  store i64 %i.at, ptr %0, align 8, !tbaa !67
  %i.au = add nsw i32 %i.ap, 1                    ; 3 uses
  store i32 %i.au, ptr %i.ad, align 8, !tbaa !62
  %i.av = icmp slt i32 %8, 2
  %i.aw = icmp sgt i32 %i.ap, 30                  ; 2 uses
  br i1 %i.av, label %bb.l, label %bb.o

bb.l:                                             ; preds = %VP8LPutBits.exit34
  br i1 %i.aw, label %bb.m, label %VP8LPutBits.exit36

bb.m:                                             ; preds = %bb.l
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %0) #7
  %.pre.i35 = load i32, ptr %i.ad, align 8, !tbaa !62
  br label %VP8LPutBits.exit36

VP8LPutBits.exit36:                               ; preds = %bb.l, %bb.m
  %i.ax = phi i32 [ %.pre.i35, %bb.m ], [ %i.au, %bb.l ] ; 2 uses
  %i.ay = add nsw i32 %i.ax, 1                    ; 2 uses
  store i32 %i.ay, ptr %i.ad, align 8, !tbaa !62
  %i.az = icmp sgt i32 %i.ax, 30
  br i1 %i.az, label %bb.n, label %VP8LPutBits.exit38

bb.n:                                             ; preds = %VP8LPutBits.exit36
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %0) #7
  %.pre.i37 = load i32, ptr %i.ad, align 8, !tbaa !62
  br label %VP8LPutBits.exit38

VP8LPutBits.exit38:                               ; preds = %VP8LPutBits.exit36, %bb.n
  %i.ba = phi i32 [ %.pre.i37, %bb.n ], [ %i.ay, %VP8LPutBits.exit36 ] ; 2 uses
  %i.bb = zext i32 %8 to i64
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = shl i64 %i.bb, %i.bc
  %i.be = load i64, ptr %0, align 8, !tbaa !67
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  store i64 %i.bf, ptr %0, align 8, !tbaa !67
  %i.bg = add nsw i32 %i.ba, 1
  br label %bb.r

bb.o:                                             ; preds = %VP8LPutBits.exit34
  br i1 %i.aw, label %bb.p, label %VP8LPutBits.exit40

bb.p:                                             ; preds = %bb.o
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %0) #7
  %.pre.i39 = load i32, ptr %i.ad, align 8, !tbaa !62
  %.pre60 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit40

VP8LPutBits.exit40:                               ; preds = %bb.o, %bb.p
  %i.bh = phi i64 [ %.pre60, %bb.p ], [ %i.at, %bb.o ]
  %i.bi = phi i32 [ %.pre.i39, %bb.p ], [ %i.au, %bb.o ] ; 3 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = or i64 %i.bk, %i.bh                     ; 2 uses
  store i64 %i.bl, ptr %0, align 8, !tbaa !67
  %i.bm = add nsw i32 %i.bi, 1                    ; 2 uses
  store i32 %i.bm, ptr %i.ad, align 8, !tbaa !62
  %i.bn = icmp sgt i32 %i.bi, 30
  br i1 %i.bn, label %bb.q, label %VP8LPutBits.exit42

bb.q:                                             ; preds = %VP8LPutBits.exit40
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %0) #7
  %.pre.i41 = load i32, ptr %i.ad, align 8, !tbaa !62
  %.pre61 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit42

VP8LPutBits.exit42:                               ; preds = %VP8LPutBits.exit40, %bb.q
  %i.bo = phi i64 [ %.pre61, %bb.q ], [ %i.bl, %VP8LPutBits.exit40 ]
  %i.bp = phi i32 [ %.pre.i41, %bb.q ], [ %i.bm, %VP8LPutBits.exit40 ] ; 2 uses
  %i.bq = zext nneg i32 %8 to i64
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = shl i64 %i.bq, %i.br
  %i.bt = or i64 %i.bs, %i.bo                     ; 2 uses
  store i64 %i.bt, ptr %0, align 8, !tbaa !67
  %i.bu = add nsw i32 %i.bp, 8
  br label %bb.r

bb.r:                                             ; preds = %VP8LPutBits.exit42, %VP8LPutBits.exit38
  %i.bv = phi i64 [ %i.bt, %VP8LPutBits.exit42 ], [ %i.bf, %VP8LPutBits.exit38 ]
  %i.bw = phi i32 [ %i.bu, %VP8LPutBits.exit42 ], [ %i.bg, %VP8LPutBits.exit38 ] ; 3 uses
  store i32 %i.bw, ptr %i.ad, align 8, !tbaa !62
  %i.bx = icmp eq i32 %.1, 2
  br i1 %i.bx, label %bb.s, label %bb.bn

bb.s:                                             ; preds = %bb.r
  %i.by = icmp sgt i32 %i.bw, 31
  br i1 %i.by, label %bb.t, label %VP8LPutBits.exit44

bb.t:                                             ; preds = %bb.s
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %0) #7
  %.pre.i43 = load i32, ptr %i.ad, align 8, !tbaa !62
  %.pre62 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit44

VP8LPutBits.exit44:                               ; preds = %bb.s, %bb.t
  %i.bz = phi i64 [ %.pre62, %bb.t ], [ %i.bv, %bb.s ]
  %i.ca = phi i32 [ %.pre.i43, %bb.t ], [ %i.bw, %bb.s ] ; 2 uses
  %i.cb = zext i32 %10 to i64
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = shl i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %i.bz
  store i64 %i.ce, ptr %0, align 8, !tbaa !67
  %i.cf = add nsw i32 %i.ca, 8
  store i32 %i.cf, ptr %i.ad, align 8, !tbaa !62
  br label %bb.bn

bb.u:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.a, i8 0, i64 19, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %i.b, i8 0, i64 38, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i32 19, ptr %4, align 8, !tbaa !79
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.a, ptr %i.cg, align 8, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.ch, align 8, !tbaa !81
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 33 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !62 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 31
  br i1 %i.ck, label %bb.v, label %VP8LPutBits.exit.i

bb.v:                                             ; preds = %bb.u
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %0) #7
  %.pre.i.i = load i32, ptr %i.ci, align 8, !tbaa !62
  br label %VP8LPutBits.exit.i

VP8LPutBits.exit.i:                               ; preds = %bb.v, %bb.u
  %i.cl = phi i32 [ %.pre.i.i, %bb.v ], [ %i.cj, %bb.u ]
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ci, align 8, !tbaa !62
  %i.cn = call i32 @VP8LCreateCompressedHuffmanTree(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef %i.e) #7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, i8 0, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.d, i8 0, i64 19, i1 false)
  %i.co = icmp sgt i32 %i.cn, 0                   ; 3 uses
  br i1 %i.co, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %VP8LPutBits.exit.i
  %wide.trip.count.i = zext nneg i32 %i.cn to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cp = icmp ult i32 %i.cn, 4
  br i1 %i.cp, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !164
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !41
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !41
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !164
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !41
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !41
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i8, ptr %i.de, align 1, !tbaa !164
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !41
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !41
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 6
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !164
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dn ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !41
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !41
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
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !164
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !41
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !41
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !160

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %VP8LPutBits.exit.i
  call void @VP8LCreateHuffmanTree(ptr noundef nonnull %i.c, i32 noundef 7, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %._crit_edge.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !42
  %.not.1.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.1.i.i, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !42
  %.not.2.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not.2.i.i, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ee = load i8, ptr %i.ed, align 4, !tbaa !42
  %.not.3.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.3.i.i, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !42
  %.not.4.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.4.i.i, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !42
  %.not.5.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not.5.i.i, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !42
  %.not.6.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not.6.i.i, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.em = load i8, ptr %i.el, align 8, !tbaa !42
  %.not.7.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.7.i.i, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !42
  %.not.8.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not.8.i.i, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !42
  %.not.9.i.i = icmp eq i8 %i.eq, 0
  br i1 %.not.9.i.i, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.es = load i8, ptr %i.er, align 16, !tbaa !42
  %.not.10.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.10.i.i, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !42
  %.not.11.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.11.i.i, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !42
  %.not.12.i.i = icmp eq i8 %i.ew, 0
  br i1 %.not.12.i.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !42
  %.not.13.i.i = icmp eq i8 %i.ey, 0
end_hunk_0
begin_hunk_1_@StoreHuffmanCode:bb.a

bb.aw:                                            ; preds = %bb.av
  %i.hk = icmp sgt i32 %i.hc, 30
  br i1 %i.hk, label %bb.ax, label %VP8LPutBits.exit67.i

bb.ax:                                            ; preds = %bb.aw
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %0) #7
  %.pre.i66.i = load i32, ptr %i.ci, align 8, !tbaa !62
  br label %VP8LPutBits.exit67.i

VP8LPutBits.exit67.i:                             ; preds = %bb.ax, %bb.aw
  %i.hl = phi i32 [ %.pre.i66.i, %bb.ax ], [ %i.hi, %bb.aw ]
  %i.hm = add nsw i32 %i.hl, 5
  br label %.lr.ph.i72.sink.split.i

bb.ay:                                            ; preds = %bb.av
  %i.hn = add nsw i32 %.051.lcssa.i, -2           ; 2 uses
  %i.ho = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 2147483647) %i.hn, i1 true)
  %i.hp = xor i32 %i.ho, 31                       ; 2 uses
  %i.hq = lshr i32 %i.hp, 1
  %i.hr = icmp sgt i32 %i.hc, 30
  br i1 %i.hr, label %bb.az, label %VP8LPutBits.exit69.i

bb.az:                                            ; preds = %bb.ay
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %0) #7
  %.pre.i68.i = load i32, ptr %i.ci, align 8, !tbaa !62
  %.pre.i45 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit69.i

VP8LPutBits.exit69.i:                             ; preds = %bb.az, %bb.ay
  %i.hs = phi i64 [ %.pre.i45, %bb.az ], [ %i.hh, %bb.ay ]
  %i.ht = phi i32 [ %.pre.i68.i, %bb.az ], [ %i.hi, %bb.ay ] ; 3 uses
  %i.hu = zext nneg i32 %i.hq to i64
  %i.hv = zext nneg i32 %i.ht to i64
  %i.hw = shl i64 %i.hu, %i.hv
  %i.hx = or i64 %i.hw, %i.hs                     ; 2 uses
  store i64 %i.hx, ptr %0, align 8, !tbaa !67
  %i.hy = add nsw i32 %i.ht, 3                    ; 2 uses
  store i32 %i.hy, ptr %i.ci, align 8, !tbaa !62
  %i.hz = and i32 %i.hp, 30
  %i.ia = add nuw nsw i32 %i.hz, 2
  %i.ib = icmp sgt i32 %i.ht, 28
  br i1 %i.ib, label %bb.ba, label %VP8LPutBits.exit71.i

bb.ba:                                            ; preds = %VP8LPutBits.exit69.i
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %0) #7
  %.pre.i70.i = load i32, ptr %i.ci, align 8, !tbaa !62
  %.pre98.i = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit71.i

VP8LPutBits.exit71.i:                             ; preds = %bb.ba, %VP8LPutBits.exit69.i
  %i.ic = phi i64 [ %.pre98.i, %bb.ba ], [ %i.hx, %VP8LPutBits.exit69.i ]
  %i.id = phi i32 [ %.pre.i70.i, %bb.ba ], [ %i.hy, %VP8LPutBits.exit69.i ] ; 2 uses
  %i.ie = zext nneg i32 %i.hn to i64
  %i.if = zext nneg i32 %i.id to i64
  %i.ig = shl i64 %i.ie, %i.if
  %i.ih = or i64 %i.ig, %i.ic
  store i64 %i.ih, ptr %0, align 8, !tbaa !67
  %i.ii = add nsw i32 %i.ia, %i.id
  br label %.lr.ph.i72.sink.split.i

bb.bb:                                            ; preds = %VP8LPutBits.exit65.i
  br i1 %i.co, label %.lr.ph.i72.i, label %StoreFullHuffmanCode.exit

.lr.ph.i72.sink.split.i:                          ; preds = %VP8LPutBits.exit71.i, %VP8LPutBits.exit67.i
  %.sink.i = phi i32 [ %i.ii, %VP8LPutBits.exit71.i ], [ %i.hm, %VP8LPutBits.exit67.i ] ; 2 uses
  store i32 %.sink.i, ptr %i.ci, align 8, !tbaa !62
  br label %.lr.ph.i72.i

.lr.ph.i72.i:                                     ; preds = %.lr.ph.i72.sink.split.i, %bb.bb
  %i.ij = phi i32 [ %i.hi, %bb.bb ], [ %.sink.i, %.lr.ph.i72.sink.split.i ]
  %i.ik = phi i32 [ %i.cn, %bb.bb ], [ %.051.lcssa.i, %.lr.ph.i72.sink.split.i ]
  %wide.trip.count.i73.i = zext nneg i32 %i.ik to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bm, %.lr.ph.i72.i
  %i.il = phi i32 [ %i.ij, %.lr.ph.i72.i ], [ %i.kg, %bb.bm ] ; 3 uses
  %indvars.iv.i74.i = phi i64 [ 0, %.lr.ph.i72.i ], [ %indvars.iv.next.i75.i, %bb.bm ] ; 2 uses
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i74.i ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !164 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !165 ; 3 uses
  %i.iq = load ptr, ptr %i.ch, align 8, !tbaa !81
  %i.ir = zext i8 %i.in to i64                    ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2, !tbaa !71
  %i.iu = load ptr, ptr %i.cg, align 8, !tbaa !80
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ir
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !42  ; 2 uses
  %i.ix = zext i8 %i.iw to i32
  %i.iy = icmp eq i8 %i.iw, 0
  br i1 %i.iy, label %VP8LPutBits.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iz = icmp sgt i32 %i.il, 31
  br i1 %i.iz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %0) #7
  %.pre.i.i77.i = load i32, ptr %i.ci, align 8, !tbaa !62
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ja = phi i32 [ %.pre.i.i77.i, %bb.be ], [ %i.il, %bb.bd ] ; 2 uses
  %i.jb = zext i16 %i.it to i64
  %i.jc = zext nneg i32 %i.ja to i64
  %i.jd = shl i64 %i.jb, %i.jc
  %i.je = load i64, ptr %0, align 8, !tbaa !67
  %i.jf = or i64 %i.jd, %i.je
  store i64 %i.jf, ptr %0, align 8, !tbaa !67
  %i.jg = add nsw i32 %i.ja, %i.ix                ; 2 uses
  store i32 %i.jg, ptr %i.ci, align 8, !tbaa !62
  br label %VP8LPutBits.exit.i.i

VP8LPutBits.exit.i.i:                             ; preds = %bb.bf, %bb.bc
  %i.jh = phi i32 [ %i.jg, %bb.bf ], [ %i.il, %bb.bc ] ; 7 uses
  switch i8 %i.in, label %bb.bm [
    i8 16, label %bb.bg
    i8 17, label %bb.bi
    i8 18, label %bb.bk
  ]

bb.bg:                                            ; preds = %VP8LPutBits.exit.i.i
  %i.ji = icmp sgt i32 %i.jh, 31
  br i1 %i.ji, label %bb.bh, label %VP8LPutBits.exit19.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %0) #7
  %.pre.i18.i.i = load i32, ptr %i.ci, align 8, !tbaa !62
  br label %VP8LPutBits.exit19.i.i

VP8LPutBits.exit19.i.i:                           ; preds = %bb.bh, %bb.bg
  %i.jj = phi i32 [ %.pre.i18.i.i, %bb.bh ], [ %i.jh, %bb.bg ] ; 2 uses
  %i.jk = zext i8 %i.ip to i64
  %i.jl = zext nneg i32 %i.jj to i64
  %i.jm = shl i64 %i.jk, %i.jl
  %i.jn = load i64, ptr %0, align 8, !tbaa !67
  %i.jo = or i64 %i.jm, %i.jn
  store i64 %i.jo, ptr %0, align 8, !tbaa !67
  %i.jp = add nsw i32 %i.jj, 2
  br label %.sink.split.i.i

bb.bi:                                            ; preds = %VP8LPutBits.exit.i.i
  %i.jq = icmp sgt i32 %i.jh, 31
  br i1 %i.jq, label %bb.bj, label %VP8LPutBits.exit21.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %0) #7
  %.pre.i20.i.i = load i32, ptr %i.ci, align 8, !tbaa !62
  br label %VP8LPutBits.exit21.i.i

VP8LPutBits.exit21.i.i:                           ; preds = %bb.bj, %bb.bi
  %i.jr = phi i32 [ %.pre.i20.i.i, %bb.bj ], [ %i.jh, %bb.bi ] ; 2 uses
  %i.js = zext i8 %i.ip to i64
  %i.jt = zext nneg i32 %i.jr to i64
  %i.ju = shl i64 %i.js, %i.jt
  %i.jv = load i64, ptr %0, align 8, !tbaa !67
  %i.jw = or i64 %i.ju, %i.jv
  store i64 %i.jw, ptr %0, align 8, !tbaa !67
  %i.jx = add nsw i32 %i.jr, 3
  br label %.sink.split.i.i

bb.bk:                                            ; preds = %VP8LPutBits.exit.i.i
  %i.jy = icmp sgt i32 %i.jh, 31
  br i1 %i.jy, label %bb.bl, label %VP8LPutBits.exit23.i.i

bb.bl:                                            ; preds = %bb.bk
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %0) #7
  %.pre.i22.i.i = load i32, ptr %i.ci, align 8, !tbaa !62
  br label %VP8LPutBits.exit23.i.i

VP8LPutBits.exit23.i.i:                           ; preds = %bb.bl, %bb.bk
  %i.jz = phi i32 [ %.pre.i22.i.i, %bb.bl ], [ %i.jh, %bb.bk ] ; 2 uses
  %i.ka = zext i8 %i.ip to i64
  %i.kb = zext nneg i32 %i.jz to i64
  %i.kc = shl i64 %i.ka, %i.kb
  %i.kd = load i64, ptr %0, align 8, !tbaa !67
  %i.ke = or i64 %i.kc, %i.kd
  store i64 %i.ke, ptr %0, align 8, !tbaa !67
  %i.kf = add nsw i32 %i.jz, 7
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %VP8LPutBits.exit23.i.i, %VP8LPutBits.exit21.i.i, %VP8LPutBits.exit19.i.i
  %.sink.i.i = phi i32 [ %i.kf, %VP8LPutBits.exit23.i.i ], [ %i.jx, %VP8LPutBits.exit21.i.i ], [ %i.jp, %VP8LPutBits.exit19.i.i ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.ci, align 8, !tbaa !62
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split.i.i, %VP8LPutBits.exit.i.i
  %i.kg = phi i32 [ %.sink.i.i, %.sink.split.i.i ], [ %i.jh, %VP8LPutBits.exit.i.i ]
  %indvars.iv.next.i75.i = add nuw nsw i64 %indvars.iv.i74.i, 1 ; 2 uses
  %exitcond.not.i76.i = icmp eq i64 %indvars.iv.next.i75.i, %wide.trip.count.i73.i
  br i1 %exitcond.not.i76.i, label %StoreFullHuffmanCode.exit, label %bb.bc, !llvm.loop !162

StoreFullHuffmanCode.exit:                        ; preds = %bb.bm, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bn

bb.bn:                                            ; preds = %StoreFullHuffmanCode.exit, %VP8LPutBits.exit44, %bb.r, %VP8LPutBits.exit
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
begin_hunk_2_@StoreImageToBitMask:bb.a
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %0) #7
  %.pre.i.i97 = load i32, ptr %i.m, align 8, !tbaa !62
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fh = phi i32 [ %.pre.i.i97, %bb.y ], [ %i.ff, %bb.x ] ; 2 uses
  %i.fi = zext i32 %i.fc to i64
  %i.fj = zext nneg i32 %i.fh to i64
  %i.fk = shl i64 %i.fi, %i.fj
  %i.fl = load i64, ptr %0, align 8, !tbaa !67
  %i.fm = or i64 %i.fk, %i.fl
  store i64 %i.fm, ptr %0, align 8, !tbaa !67
  %i.fn = add nsw i32 %i.fh, %i.fd
  store i32 %i.fn, ptr %i.m, align 8, !tbaa !62
  br label %WriteHuffmanCodeWithExtraBits.exit

WriteHuffmanCodeWithExtraBits.exit:               ; preds = %VP8LPrefixEncode.exit, %bb.z
  %i.fo = icmp slt i32 %.val91, 512
  br i1 %i.fo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %WriteHuffmanCodeWithExtraBits.exit
  %i.fp = sext i32 %.val91 to i64                 ; 2 uses
  %i.fq = getelementptr inbounds [2 x i8], ptr @kPrefixEncodeCode, i64 %i.fp ; 2 uses
  %.sroa.0.0.copyload.i98 = load i8, ptr %i.fq, align 2, !tbaa !42
  %.sroa.4.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %.sroa.4.0.copyload.i100 = load i8, ptr %.sroa.4.0..sroa_idx.i99, align 1, !tbaa !42
  %i.fr = sext i8 %.sroa.0.0.copyload.i98 to i32
  %i.fs = sext i8 %.sroa.4.0.copyload.i100 to i32
  %i.ft = getelementptr inbounds i8, ptr @kPrefixEncodeExtraBitsValue, i64 %i.fp
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !42
  %i.fv = zext i8 %i.fu to i32
  br label %VP8LPrefixEncode.exit101

bb.ab:                                            ; preds = %WriteHuffmanCodeWithExtraBits.exit
  %i.fw = add nsw i32 %.val91, -1                 ; 3 uses
  %i.fx = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 2147483647) %i.fw, i1 true) ; 3 uses
  %i.fy = sub nuw nsw i32 30, %i.fx               ; 2 uses
  %i.fz = lshr i32 %i.fw, %i.fy
  %i.ga = and i32 %i.fz, 1
  %i.gb = lshr i32 1073741823, %i.fx
  %i.gc = and i32 %i.gb, %i.fw
  %i.gd = shl nuw nsw i32 %i.fx, 1
  %i.ge = or disjoint i32 %i.ga, %i.gd
  %i.gf = xor i32 %i.ge, 62
  br label %VP8LPrefixEncode.exit101

VP8LPrefixEncode.exit101:                         ; preds = %bb.aa, %bb.ab
  %.1114 = phi i32 [ %i.fv, %bb.aa ], [ %i.gc, %bb.ab ]
  %.1112 = phi i32 [ %i.fs, %bb.aa ], [ %i.fy, %bb.ab ] ; 2 uses
  %.1110 = phi i32 [ %i.fr, %bb.aa ], [ %i.gf, %bb.ab ]
  %i.gg = getelementptr i8, ptr %.166, i64 104
  %.val84 = load ptr, ptr %i.gg, align 8, !tbaa !80
  %i.gh = getelementptr i8, ptr %.166, i64 112
  %.val85 = load ptr, ptr %i.gh, align 8, !tbaa !81
  %i.gi = sext i32 %.1110 to i64                  ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.val84, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !42  ; 2 uses
  %i.gl = zext i8 %i.gk to i32
  %i.gm = getelementptr inbounds [2 x i8], ptr %.val85, i64 %i.gi
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !71
  %i.go = icmp eq i8 %i.gk, 0
  br i1 %i.go, label %WriteHuffmanCode.exit103, label %bb.ac

bb.ac:                                            ; preds = %VP8LPrefixEncode.exit101
  %i.gp = load i32, ptr %i.m, align 8, !tbaa !62  ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, 31
  br i1 %i.gq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %0) #7
  %.pre.i.i102 = load i32, ptr %i.m, align 8, !tbaa !62
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gr = phi i32 [ %.pre.i.i102, %bb.ad ], [ %i.gp, %bb.ac ] ; 2 uses
  %i.gs = zext i16 %i.gn to i64
  %i.gt = zext nneg i32 %i.gr to i64
  %i.gu = shl i64 %i.gs, %i.gt
  %i.gv = load i64, ptr %0, align 8, !tbaa !67
  %i.gw = or i64 %i.gu, %i.gv
  store i64 %i.gw, ptr %0, align 8, !tbaa !67
  %i.gx = add nsw i32 %i.gr, %i.gl
  store i32 %i.gx, ptr %i.m, align 8, !tbaa !62
  br label %WriteHuffmanCode.exit103

WriteHuffmanCode.exit103:                         ; preds = %VP8LPrefixEncode.exit101, %bb.ae
  %i.gy = icmp eq i32 %.1112, 0
  br i1 %i.gy, label %WriteHuffmanCode.exit96, label %bb.af

bb.af:                                            ; preds = %WriteHuffmanCode.exit103
  %i.gz = load i32, ptr %i.m, align 8, !tbaa !62  ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, 31
  br i1 %i.ha, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %0) #7
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !62
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hb = phi i32 [ %.pre.i, %bb.ag ], [ %i.gz, %bb.af ] ; 2 uses
  %i.hc = zext nneg i32 %.1114 to i64
  %i.hd = zext nneg i32 %i.hb to i64
  %i.he = shl i64 %i.hc, %i.hd
  %i.hf = load i64, ptr %0, align 8, !tbaa !67
  %i.hg = or i64 %i.he, %i.hf
  store i64 %i.hg, ptr %0, align 8, !tbaa !67
  %i.hh = add nsw i32 %i.hb, %.1112
  br label %WriteHuffmanCode.exit96.sink.split

WriteHuffmanCode.exit96.sink.split:               ; preds = %bb.t, %bb.ah, %bb.p
  %.sink = phi i32 [ %i.dc, %bb.p ], [ %i.hh, %bb.ah ], [ %i.dv, %bb.t ]
  store i32 %.sink, ptr %i.m, align 8, !tbaa !62
  br label %WriteHuffmanCode.exit96

WriteHuffmanCode.exit96:                          ; preds = %WriteHuffmanCode.exit96.sink.split, %WriteHuffmanCode.exit.2, %WriteHuffmanCode.exit103, %bb.q
  %i.hi = getelementptr i8, ptr %.val130, i64 2
  %.val94 = load i16, ptr %i.hi, align 2, !tbaa !174
  %i.hj = zext i16 %.val94 to i32
  %i.hk = add i32 %.063129, %i.hj                 ; 3 uses
  %.not81119 = icmp slt i32 %i.hk, %1
  br i1 %.not81119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %WriteHuffmanCode.exit96, %.lr.ph
  %.1121 = phi i32 [ %i.hl, %.lr.ph ], [ %i.hk, %WriteHuffmanCode.exit96 ]
  %.172120 = phi i32 [ %i.hm, %.lr.ph ], [ %.071125, %WriteHuffmanCode.exit96 ]
  %i.hl = sub nsw i32 %.1121, %1                  ; 3 uses
  %i.hm = add nsw i32 %.172120, 1                 ; 2 uses
  %.not81 = icmp slt i32 %i.hl, %1
  br i1 %.not81, label %._crit_edge, label %.lr.ph, !llvm.loop !166

._crit_edge:                                      ; preds = %.lr.ph, %WriteHuffmanCode.exit96
  %.172.lcssa = phi i32 [ %.071125, %WriteHuffmanCode.exit96 ], [ %i.hm, %.lr.ph ]
  %.1.lcssa = phi i32 [ %i.hk, %WriteHuffmanCode.exit96 ], [ %i.hl, %.lr.ph ]
  %i.hn = load ptr, ptr %7, align 8, !tbaa !170
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 3 uses
  store ptr %i.ho, ptr %7, align 8, !tbaa !170
  %i.hp = load ptr, ptr %i.n, align 8, !tbaa !175
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %bb.ai, label %VP8LRefsCursorNext.exit

bb.ai:                                            ; preds = %._crit_edge
  call void @VP8LRefsCursorNextBlock(ptr noundef nonnull %7) #7
  %.val.pre = load ptr, ptr %7, align 8, !tbaa !170
  br label %VP8LRefsCursorNext.exit

VP8LRefsCursorNext.exit:                          ; preds = %._crit_edge, %bb.ai
  %.val = phi ptr [ %i.ho, %._crit_edge ], [ %.val.pre, %bb.ai ] ; 2 uses
  %.not115 = icmp eq ptr %.val, null
  br i1 %.not115, label %._crit_edge133, label %bb.b, !llvm.loop !167

._crit_edge133:                                   ; preds = %VP8LRefsCursorNext.exit, %bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !84
  %.not76 = icmp eq i32 %i.hs, 0
  br i1 %.not76, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge133
  %i.ht = call i32 @WebPEncodingSetError(ptr noundef %6, i32 noundef 1) #7
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge133, %bb.aj
  %.0 = phi i32 [ %i.ht, %bb.aj ], [ 1, %._crit_edge133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  ret i32 %.0
}

declare void @VP8LFreeHistogramSet(ptr noundef) local_unnamed_addr #2

declare void @VP8LCreateHuffmanTree(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @VP8LCreateCompressedHuffmanTree(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @VP8LRefsCursorInit(ptr dead_on_unwind writable sret(%struct.VP8LRefsCursor) align 8, ptr noundef) local_unnamed_addr #2

declare void @VP8LRefsCursorNextBlock(ptr noundef) local_unnamed_addr #2

declare void @PrepareMapToPalette(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SearchColorNoIdx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare i32 @VP8LResidualImage(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @VP8LColorSpaceTransform(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @VP8LPutBitsFlushBits(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @VP8LAllocateHistogram(i32 noundef) local_unnamed_addr #2

declare i32 @VP8LGetHistoImageSymbols(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @VP8LFreeHistogram(ptr noundef) local_unnamed_addr #2

declare void @VP8LOptimizeSampling(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @VP8LBitWriterFinish(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !31, !32}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS10WebPConfig", !11, i64 0}
!13 = !{!"p1 _ZTS11WebPPicture", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"VP8LHashChain", !14, i64 0, !8, i64 8}
!17 = !{!"", !12, i64 0, !13, i64 8, !14, i64 16, !8, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !15, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !7, i64 104, !7, i64 1128, !7, i64 2152, !16, i64 2312}
!18 = !{!17, !12, i64 0}
!19 = !{!17, !13, i64 8}
!20 = !{!17, !8, i64 24}
!21 = !{!17, !14, i64 48}
!22 = !{!"p1 omnipotent char", !11, i64 0}
!23 = !{!"p1 _ZTS12WebPAuxStats", !11, i64 0}
!24 = !{!"WebPPicture", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !22, i64 16, !22, i64 24, !22, i64 32, !8, i64 40, !8, i64 44, !22, i64 48, !8, i64 56, !7, i64 60, !14, i64 72, !8, i64 80, !7, i64 84, !11, i64 96, !11, i64 104, !8, i64 112, !22, i64 120, !23, i64 128, !8, i64 136, !11, i64 144, !11, i64 152, !7, i64 160, !22, i64 176, !22, i64 184, !7, i64 192, !11, i64 224, !11, i64 232, !7, i64 240}
!25 = !{!24, !8, i64 8}
!26 = !{!24, !8, i64 12}
!27 = !{!"float", !7, i64 0}
!28 = !{!"WebPConfig", !8, i64 0, !27, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !27, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112}
!29 = !{!28, !8, i64 8}
!30 = !{!17, !8, i64 100}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.peeled.count", i32 1}
!33 = !{!17, !8, i64 68}
!34 = !{!17, !8, i64 72}
!35 = !{!17, !8, i64 76}
!36 = !{!"", !8, i64 0, !8, i64 4, !7, i64 8, !8, i64 24}
!37 = !{!36, !8, i64 0}
!38 = !{!36, !8, i64 4}
!39 = !{!24, !14, i64 72}
!40 = !{!24, !8, i64 80}
!41 = !{!8, !8, i64 0}
!42 = !{!7, !7, i64 0}
!43 = !{!28, !27, i64 4}
!44 = !{!"", !8, i64 0, !8, i64 4}
!45 = !{!44, !8, i64 0}
!46 = !{!44, !8, i64 4}
!47 = !{!36, !8, i64 24}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!"", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !8, i64 424, !8, i64 428, !23, i64 432}
!50 = !{!49, !8, i64 424}
!51 = !{!49, !12, i64 0}
!52 = !{!49, !8, i64 428}
!53 = !{!49, !13, i64 8}
!54 = !{!24, !23, i64 128}
!55 = !{!49, !23, i64 432}
!56 = !{!49, !11, i64 16}
!57 = !{!49, !11, i64 24}
!58 = !{!24, !8, i64 136}
!59 = !{!"", !15, i64 0, !8, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !8, i64 40}
!60 = !{!59, !22, i64 24}
!61 = !{!59, !22, i64 16}
!62 = !{!59, !8, i64 8}
!63 = !{!15, !15, i64 0}
!64 = !{!17, !8, i64 92}
!65 = !{!17, !8, i64 84}
!66 = !{!17, !14, i64 16}
!67 = !{!59, !15, i64 0}
!68 = !{!17, !8, i64 64}
!69 = !{!11, !11, i64 0}
!70 = !{!"short", !7, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!17, !14, i64 32}
!73 = !{!17, !14, i64 40}
!74 = !{!"any p2 pointer", !11, i64 0}
!75 = !{!"", !8, i64 0, !8, i64 4, !74, i64 8}
!76 = !{!75, !8, i64 0}
!77 = !{!"p1 short", !11, i64 0}
!78 = !{!"", !8, i64 0, !22, i64 8, !77, i64 16}
!79 = !{!78, !8, i64 0}
!80 = !{!78, !22, i64 8}
!81 = !{!78, !77, i64 16}
!82 = !{!"WebPAuxStats", !8, i64 0, !7, i64 4, !7, i64 24, !7, i64 36, !7, i64 44, !7, i64 92, !7, i64 108, !7, i64 124, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !7, i64 184}
!83 = !{!82, !8, i64 168}
!84 = !{!59, !8, i64 40}
!85 = !{!75, !74, i64 8}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !31}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !48}
!91 = !{!28, !8, i64 84}
!92 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!93 = !{!92, !11, i64 0}
!94 = !{!"", !11, i64 0, !8, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 40}
!95 = !{!94, !11, i64 24}
!96 = !{!94, !11, i64 32}
!97 = !{!94, !11, i64 16}
!98 = !{!24, !11, i64 144}
!99 = !{!92, !11, i64 8}
!100 = !{!92, !11, i64 24}
!101 = !{!92, !11, i64 32}
!102 = !{!92, !11, i64 16}
!103 = !{!92, !11, i64 40}
!104 = distinct !{!104, !31, !134, !135}
!105 = distinct !{!105, !31, !135, !134}
!106 = distinct !{!106, !31}
!107 = distinct !{null, null}
!108 = distinct !{!108, !31}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31}
!118 = distinct !{!118, !31}
!119 = distinct !{!119, !48}
!120 = distinct !{null}
!121 = distinct !{!121, !31}
!122 = distinct !{!122, !31}
!123 = distinct !{!123, !48}
!124 = distinct !{!124, !31}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !31}
!128 = !{!22, !22, i64 0}
!129 = !{i64 0, i64 8, !63, i64 8, i64 4, !41, i64 16, i64 8, !128, i64 24, i64 8, !128, i64 32, i64 8, !128, i64 40, i64 4, !41}
!130 = !{!17, !8, i64 96}
!131 = !{!17, !8, i64 88}
!132 = !{!17, !8, i64 80}
!133 = !{!28, !8, i64 92}
!134 = !{!"llvm.loop.isvectorized", i32 1}
!135 = !{!"llvm.loop.unroll.runtime.disable"}
!136 = !{!28, !8, i64 96}
!137 = !{!82, !8, i64 148}
!138 = !{!82, !8, i64 152}
!139 = !{!82, !8, i64 156}
!140 = !{!82, !8, i64 180}
!141 = !{!82, !8, i64 160}
!142 = !{!82, !8, i64 164}
!143 = !{!82, !8, i64 172}
!144 = !{!82, !8, i64 176}
!145 = !{!28, !8, i64 12}
!146 = !{!27, !27, i64 0}
!147 = !{!82, !8, i64 0}
!148 = !{!24, !22, i64 120}
!149 = distinct !{null}
!150 = !{!24, !11, i64 96}
!151 = !{!17, !15, i64 56}
!152 = distinct !{!152, !31}
!153 = distinct !{!153, !31}
!154 = distinct !{!154, !31}
!155 = !{!"", !14, i64 0, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 3080, !8, i64 3240, !7, i64 3244, !15, i64 3256, !7, i64 3264, !7, i64 3304, !70, i64 3310}
!156 = !{!155, !8, i64 3240}
!157 = !{!155, !14, i64 0}
!158 = distinct !{!158, !31}
!159 = distinct !{!159, !31}
!160 = distinct !{!160, !48}
!161 = distinct !{!161, !31}
!162 = distinct !{!162, !31}
!163 = !{!"", !7, i64 0, !7, i64 1}
!164 = !{!163, !7, i64 0}
!165 = !{!163, !7, i64 1}
!166 = distinct !{!166, !31}
!167 = distinct !{!167, !31}
!168 = !{!"p1 _ZTS14PixOrCopyBlock", !11, i64 0}
!169 = !{!"", !11, i64 0, !168, i64 8, !11, i64 16}
!170 = !{!169, !11, i64 0}
!171 = !{!"", !7, i64 0, !70, i64 2, !8, i64 4}
!172 = !{!171, !7, i64 0}
!173 = !{!171, !8, i64 4}
!174 = !{!171, !70, i64 2}
!175 = !{!169, !11, i64 16}
end_hunk_2
