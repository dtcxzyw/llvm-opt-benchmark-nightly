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
  %.sroa.8.060 = phi i32 [ 0, %.lr.ph ], [ %.1.a, %bb.d ] ; 2 uses
  %.sroa.0.059 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.2, %bb.d ] ; 2 uses
  %.052 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !42
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.idx.not = icmp eq i32 %.052, 1
  %5 = icmp slt i32 %.052, 1
  %i.l = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %.sroa.0.1 = select i1 %5, i32 %i.l, i32 %.sroa.0.059
  %.sroa.8.1 = select i1 %.sroa.idx.not, i32 %i.l, i32 %.sroa.8.060
  %6 = add nsw i32 %.052, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %6, %bb.c ], [ %.052, %bb.b ]   ; 5 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %bb.c ], [ %.sroa.0.059, %bb.b ] ; 5 uses
  %.1.a = phi i32 [ %.sroa.8.1, %bb.c ], [ %.sroa.8.060, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.i
  %i.n = icmp slt i32 %.1, 3                      ; 2 uses
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.d
  %i.p = icmp eq i32 %.1, 0
  br i1 %i.p, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !62   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 31
  br i1 %i.s, label %bb.e, label %VP8LPutBits.exit

bb.e:                                             ; preds = %._crit_edge.thread
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull %0) #7
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !62
  br label %VP8LPutBits.exit

VP8LPutBits.exit:                                 ; preds = %._crit_edge.thread, %bb.e
  %i.t = phi i32 [ %.pre.i, %bb.e ], [ %i.r, %._crit_edge.thread ] ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw i64 1, %i.u
  %i.w = load i64, ptr %0, align 8, !tbaa !67
  %i.x = or i64 %i.v, %i.w
  store i64 %i.x, ptr %0, align 8, !tbaa !67
  %i.y = add nsw i32 %i.t, 4
  store i32 %i.y, ptr %i.q, align 8, !tbaa !62
  br label %bb.bl

bb.f:                                             ; preds = %._crit_edge
  %i.z = icmp slt i32 %.sroa.0.2, 256
  %or.cond = select i1 %i.n, i1 %i.z, i1 false
  %i.aa = icmp slt i32 %.1.a, 256
  %or.cond5 = select i1 %or.cond, i1 %i.aa, i1 false
  br i1 %or.cond5, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 31
  br i1 %i.ad, label %bb.h, label %VP8LPutBits.exit32

bb.h:                                             ; preds = %bb.g
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %0) #7
  %.pre.i31 = load i32, ptr %i.ab, align 8, !tbaa !62
  br label %VP8LPutBits.exit32

VP8LPutBits.exit32:                               ; preds = %bb.g, %bb.h
  %i.ae = phi i32 [ %.pre.i31, %bb.h ], [ %i.ac, %bb.g ] ; 3 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = load i64, ptr %0, align 8, !tbaa !67
  %i.ai = or i64 %i.ag, %i.ah                     ; 2 uses
  store i64 %i.ai, ptr %0, align 8, !tbaa !67
  %i.aj = add nsw i32 %i.ae, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !62
  %i.ak = add nsw i32 %.1, -1
  %i.al = icmp sgt i32 %i.ae, 30
  br i1 %i.al, label %bb.i, label %VP8LPutBits.exit34

bb.i:                                             ; preds = %VP8LPutBits.exit32
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %0) #7
  %.pre.i33 = load i32, ptr %i.ab, align 8, !tbaa !62
  %.pre = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit34

VP8LPutBits.exit34:                               ; preds = %VP8LPutBits.exit32, %bb.i
  %i.am = phi i64 [ %.pre, %bb.i ], [ %i.ai, %VP8LPutBits.exit32 ]
  %i.an = phi i32 [ %.pre.i33, %bb.i ], [ %i.aj, %VP8LPutBits.exit32 ] ; 3 uses
  %i.ao = zext i32 %i.ak to i64
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl i64 %i.ao, %i.ap
  %i.ar = or i64 %i.aq, %i.am                     ; 2 uses
  store i64 %i.ar, ptr %0, align 8, !tbaa !67
  %i.as = add nsw i32 %i.an, 1                    ; 3 uses
  store i32 %i.as, ptr %i.ab, align 8, !tbaa !62
  %i.at = icmp slt i32 %.sroa.0.2, 2
  %i.au = icmp sgt i32 %i.an, 30                  ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.m

bb.j:                                             ; preds = %VP8LPutBits.exit34
  br i1 %i.au, label %bb.k, label %VP8LPutBits.exit36

bb.k:                                             ; preds = %bb.j
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %0) #7
  %.pre.i35 = load i32, ptr %i.ab, align 8, !tbaa !62
  br label %VP8LPutBits.exit36

VP8LPutBits.exit36:                               ; preds = %bb.j, %bb.k
  %i.av = phi i32 [ %.pre.i35, %bb.k ], [ %i.as, %bb.j ] ; 2 uses
  %i.aw = add nsw i32 %i.av, 1                    ; 2 uses
  store i32 %i.aw, ptr %i.ab, align 8, !tbaa !62
  %i.ax = icmp sgt i32 %i.av, 30
  br i1 %i.ax, label %bb.l, label %VP8LPutBits.exit38

bb.l:                                             ; preds = %VP8LPutBits.exit36
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %0) #7
  %.pre.i37 = load i32, ptr %i.ab, align 8, !tbaa !62
  br label %VP8LPutBits.exit38

VP8LPutBits.exit38:                               ; preds = %VP8LPutBits.exit36, %bb.l
  %i.ay = phi i32 [ %.pre.i37, %bb.l ], [ %i.aw, %VP8LPutBits.exit36 ] ; 2 uses
  %i.az = zext i32 %.sroa.0.2 to i64
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = shl i64 %i.az, %i.ba
  %i.bc = load i64, ptr %0, align 8, !tbaa !67
  %i.bd = or i64 %i.bb, %i.bc                     ; 2 uses
  store i64 %i.bd, ptr %0, align 8, !tbaa !67
  %i.be = add nsw i32 %i.ay, 1
  br label %bb.p

bb.m:                                             ; preds = %VP8LPutBits.exit34
  br i1 %i.au, label %bb.n, label %VP8LPutBits.exit40

bb.n:                                             ; preds = %bb.m
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %0) #7
  %.pre.i39 = load i32, ptr %i.ab, align 8, !tbaa !62
  %.pre60 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit40

VP8LPutBits.exit40:                               ; preds = %bb.m, %bb.n
  %i.bf = phi i64 [ %.pre60, %bb.n ], [ %i.ar, %bb.m ]
  %i.bg = phi i32 [ %.pre.i39, %bb.n ], [ %i.as, %bb.m ] ; 3 uses
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = or i64 %i.bi, %i.bf                     ; 2 uses
  store i64 %i.bj, ptr %0, align 8, !tbaa !67
  %i.bk = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bk, ptr %i.ab, align 8, !tbaa !62
  %i.bl = icmp sgt i32 %i.bg, 30
  br i1 %i.bl, label %bb.o, label %VP8LPutBits.exit42

bb.o:                                             ; preds = %VP8LPutBits.exit40
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %0) #7
  %.pre.i41 = load i32, ptr %i.ab, align 8, !tbaa !62
  %.pre61 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit42

VP8LPutBits.exit42:                               ; preds = %VP8LPutBits.exit40, %bb.o
  %i.bm = phi i64 [ %.pre61, %bb.o ], [ %i.bj, %VP8LPutBits.exit40 ]
  %i.bn = phi i32 [ %.pre.i41, %bb.o ], [ %i.bk, %VP8LPutBits.exit40 ] ; 2 uses
  %i.bo = zext nneg i32 %.sroa.0.2 to i64
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = shl i64 %i.bo, %i.bp
  %i.br = or i64 %i.bq, %i.bm                     ; 2 uses
  store i64 %i.br, ptr %0, align 8, !tbaa !67
  %i.bs = add nsw i32 %i.bn, 8
  br label %bb.p

bb.p:                                             ; preds = %VP8LPutBits.exit42, %VP8LPutBits.exit38
  %i.bt = phi i64 [ %i.br, %VP8LPutBits.exit42 ], [ %i.bd, %VP8LPutBits.exit38 ]
  %i.bu = phi i32 [ %i.bs, %VP8LPutBits.exit42 ], [ %i.be, %VP8LPutBits.exit38 ] ; 3 uses
  store i32 %i.bu, ptr %i.ab, align 8, !tbaa !62
  %i.bv = icmp eq i32 %.1, 2
  br i1 %i.bv, label %bb.q, label %bb.bl

bb.q:                                             ; preds = %bb.p
  %i.bw = icmp sgt i32 %i.bu, 31
  br i1 %i.bw, label %bb.r, label %VP8LPutBits.exit44

bb.r:                                             ; preds = %bb.q
  tail call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %0) #7
  %.pre.i43 = load i32, ptr %i.ab, align 8, !tbaa !62
  %.pre62 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit44

VP8LPutBits.exit44:                               ; preds = %bb.q, %bb.r
  %i.bx = phi i64 [ %.pre62, %bb.r ], [ %i.bt, %bb.q ]
  %i.by = phi i32 [ %.pre.i43, %bb.r ], [ %i.bu, %bb.q ] ; 2 uses
  %i.bz = zext i32 %.1.a to i64
  %i.ca = zext nneg i32 %i.by to i64
  %i.cb = shl i64 %i.bz, %i.ca
  %i.cc = or i64 %i.cb, %i.bx
  store i64 %i.cc, ptr %0, align 8, !tbaa !67
  %i.cd = add nsw i32 %i.by, 8
  store i32 %i.cd, ptr %i.ab, align 8, !tbaa !62
  br label %bb.bl

bb.s:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.a, i8 0, i64 19, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %i.b, i8 0, i64 38, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i32 19, ptr %4, align 8, !tbaa !79
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.a, ptr %i.ce, align 8, !tbaa !80
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.cf, align 8, !tbaa !81
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 33 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !62 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 31
  br i1 %i.ci, label %bb.t, label %VP8LPutBits.exit.i

bb.t:                                             ; preds = %bb.s
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cg, ptr noundef nonnull %0) #7
  %.pre.i.i = load i32, ptr %i.cg, align 8, !tbaa !62
  br label %VP8LPutBits.exit.i

VP8LPutBits.exit.i:                               ; preds = %bb.t, %bb.s
  %i.cj = phi i32 [ %.pre.i.i, %bb.t ], [ %i.ch, %bb.s ]
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.cg, align 8, !tbaa !62
  %i.cl = call i32 @VP8LCreateCompressedHuffmanTree(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef %i.e) #7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, i8 0, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.d, i8 0, i64 19, i1 false)
  %i.cm = icmp sgt i32 %i.cl, 0                   ; 3 uses
  br i1 %i.cm, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %VP8LPutBits.exit.i
  %wide.trip.count.i = zext nneg i32 %i.cl to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cn = icmp ult i32 %i.cl, 4
  br i1 %i.cn, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !164
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !41
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !41
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !164
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !41
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !41
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !164
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !41
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !41
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !164
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !41
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !41
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
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !164
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !41
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !41
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !160

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %VP8LPutBits.exit.i
  call void @VP8LCreateHuffmanTree(ptr noundef nonnull %i.c, i32 noundef 7, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %._crit_edge.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !42
  %.not.1.i.i = icmp eq i8 %i.dy, 0
  br i1 %.not.1.i.i, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !42
  %.not.2.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.2.i.i, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ec = load i8, ptr %i.eb, align 4, !tbaa !42
  %.not.3.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not.3.i.i, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !42
  %.not.4.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.4.i.i, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !42
  %.not.5.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.5.i.i, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !42
  %.not.6.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not.6.i.i, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !42
  %.not.7.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not.7.i.i, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.em = load i8, ptr %i.el, align 1, !tbaa !42
  %.not.8.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.8.i.i, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.eo = load i8, ptr %i.en, align 2, !tbaa !42
  %.not.9.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not.9.i.i, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.eq = load i8, ptr %i.ep, align 16, !tbaa !42
  %.not.10.i.i = icmp eq i8 %i.eq, 0
  br i1 %.not.10.i.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.es = load i8, ptr %i.er, align 1, !tbaa !42
  %.not.11.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.11.i.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.eu = load i8, ptr %i.et, align 4, !tbaa !42
  %.not.12.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.12.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !42
  %.not.13.i.i = icmp eq i8 %i.ew, 0
end_hunk_0
begin_hunk_1_@StoreHuffmanCode:bb.a

bb.au:                                            ; preds = %bb.at
  %i.hi = icmp sgt i32 %i.ha, 30
  br i1 %i.hi, label %bb.av, label %VP8LPutBits.exit67.i

bb.av:                                            ; preds = %bb.au
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cg, ptr noundef nonnull %0) #7
  %.pre.i66.i = load i32, ptr %i.cg, align 8, !tbaa !62
  br label %VP8LPutBits.exit67.i

VP8LPutBits.exit67.i:                             ; preds = %bb.av, %bb.au
  %i.hj = phi i32 [ %.pre.i66.i, %bb.av ], [ %i.hg, %bb.au ]
  %i.hk = add nsw i32 %i.hj, 5
  br label %.lr.ph.i72.sink.split.i

bb.aw:                                            ; preds = %bb.at
  %i.hl = add nsw i32 %.051.lcssa.i, -2           ; 2 uses
  %i.hm = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 2147483647) %i.hl, i1 true)
  %i.hn = xor i32 %i.hm, 31                       ; 2 uses
  %i.ho = lshr i32 %i.hn, 1
  %i.hp = icmp sgt i32 %i.ha, 30
  br i1 %i.hp, label %bb.ax, label %VP8LPutBits.exit69.i

bb.ax:                                            ; preds = %bb.aw
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cg, ptr noundef nonnull %0) #7
  %.pre.i68.i = load i32, ptr %i.cg, align 8, !tbaa !62
  %.pre.i45 = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit69.i

VP8LPutBits.exit69.i:                             ; preds = %bb.ax, %bb.aw
  %i.hq = phi i64 [ %.pre.i45, %bb.ax ], [ %i.hf, %bb.aw ]
  %i.hr = phi i32 [ %.pre.i68.i, %bb.ax ], [ %i.hg, %bb.aw ] ; 3 uses
  %i.hs = zext nneg i32 %i.ho to i64
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = shl i64 %i.hs, %i.ht
  %i.hv = or i64 %i.hu, %i.hq                     ; 2 uses
  store i64 %i.hv, ptr %0, align 8, !tbaa !67
  %i.hw = add nsw i32 %i.hr, 3                    ; 2 uses
  store i32 %i.hw, ptr %i.cg, align 8, !tbaa !62
  %i.hx = and i32 %i.hn, 30
  %i.hy = add nuw nsw i32 %i.hx, 2
  %i.hz = icmp sgt i32 %i.hr, 28
  br i1 %i.hz, label %bb.ay, label %VP8LPutBits.exit71.i

bb.ay:                                            ; preds = %VP8LPutBits.exit69.i
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cg, ptr noundef nonnull %0) #7
  %.pre.i70.i = load i32, ptr %i.cg, align 8, !tbaa !62
  %.pre98.i = load i64, ptr %0, align 8, !tbaa !67
  br label %VP8LPutBits.exit71.i

VP8LPutBits.exit71.i:                             ; preds = %bb.ay, %VP8LPutBits.exit69.i
  %i.ia = phi i64 [ %.pre98.i, %bb.ay ], [ %i.hv, %VP8LPutBits.exit69.i ]
  %i.ib = phi i32 [ %.pre.i70.i, %bb.ay ], [ %i.hw, %VP8LPutBits.exit69.i ] ; 2 uses
  %i.ic = zext nneg i32 %i.hl to i64
  %i.id = zext nneg i32 %i.ib to i64
  %i.ie = shl i64 %i.ic, %i.id
  %i.if = or i64 %i.ie, %i.ia
  store i64 %i.if, ptr %0, align 8, !tbaa !67
  %i.ig = add nsw i32 %i.hy, %i.ib
  br label %.lr.ph.i72.sink.split.i

bb.az:                                            ; preds = %VP8LPutBits.exit65.i
  br i1 %i.cm, label %.lr.ph.i72.i, label %StoreFullHuffmanCode.exit

.lr.ph.i72.sink.split.i:                          ; preds = %VP8LPutBits.exit71.i, %VP8LPutBits.exit67.i
  %.sink.i = phi i32 [ %i.ig, %VP8LPutBits.exit71.i ], [ %i.hk, %VP8LPutBits.exit67.i ] ; 2 uses
  store i32 %.sink.i, ptr %i.cg, align 8, !tbaa !62
  br label %.lr.ph.i72.i

.lr.ph.i72.i:                                     ; preds = %.lr.ph.i72.sink.split.i, %bb.az
  %i.ih = phi i32 [ %i.hg, %bb.az ], [ %.sink.i, %.lr.ph.i72.sink.split.i ]
  %i.ii = phi i32 [ %i.cl, %bb.az ], [ %.051.lcssa.i, %.lr.ph.i72.sink.split.i ]
  %wide.trip.count.i73.i = zext nneg i32 %i.ii to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bk, %.lr.ph.i72.i
  %i.ij = phi i32 [ %i.ih, %.lr.ph.i72.i ], [ %i.ke, %bb.bk ] ; 3 uses
  %indvars.iv.i74.i = phi i64 [ 0, %.lr.ph.i72.i ], [ %indvars.iv.next.i75.i, %bb.bk ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i74.i ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !164 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !165 ; 3 uses
  %i.io = load ptr, ptr %i.cf, align 8, !tbaa !81
  %i.ip = zext i8 %i.il to i64                    ; 2 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !71
  %i.is = load ptr, ptr %i.ce, align 8, !tbaa !80
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ip
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !42  ; 2 uses
  %i.iv = zext i8 %i.iu to i32
  %i.iw = icmp eq i8 %i.iu, 0
  br i1 %i.iw, label %VP8LPutBits.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ix = icmp sgt i32 %i.ij, 31
  br i1 %i.ix, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cg, ptr noundef nonnull %0) #7
  %.pre.i.i77.i = load i32, ptr %i.cg, align 8, !tbaa !62
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.iy = phi i32 [ %.pre.i.i77.i, %bb.bc ], [ %i.ij, %bb.bb ] ; 2 uses
  %i.iz = zext i16 %i.ir to i64
  %i.ja = zext nneg i32 %i.iy to i64
  %i.jb = shl i64 %i.iz, %i.ja
  %i.jc = load i64, ptr %0, align 8, !tbaa !67
  %i.jd = or i64 %i.jb, %i.jc
  store i64 %i.jd, ptr %0, align 8, !tbaa !67
  %i.je = add nsw i32 %i.iy, %i.iv                ; 2 uses
  store i32 %i.je, ptr %i.cg, align 8, !tbaa !62
  br label %VP8LPutBits.exit.i.i

VP8LPutBits.exit.i.i:                             ; preds = %bb.bd, %bb.ba
  %i.jf = phi i32 [ %i.je, %bb.bd ], [ %i.ij, %bb.ba ] ; 7 uses
  switch i8 %i.il, label %bb.bk [
    i8 16, label %bb.be
    i8 17, label %bb.bg
    i8 18, label %bb.bi
  ]

bb.be:                                            ; preds = %VP8LPutBits.exit.i.i
  %i.jg = icmp sgt i32 %i.jf, 31
  br i1 %i.jg, label %bb.bf, label %VP8LPutBits.exit19.i.i

bb.bf:                                            ; preds = %bb.be
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cg, ptr noundef nonnull %0) #7
  %.pre.i18.i.i = load i32, ptr %i.cg, align 8, !tbaa !62
  br label %VP8LPutBits.exit19.i.i

VP8LPutBits.exit19.i.i:                           ; preds = %bb.bf, %bb.be
  %i.jh = phi i32 [ %.pre.i18.i.i, %bb.bf ], [ %i.jf, %bb.be ] ; 2 uses
  %i.ji = zext i8 %i.in to i64
  %i.jj = zext nneg i32 %i.jh to i64
  %i.jk = shl i64 %i.ji, %i.jj
  %i.jl = load i64, ptr %0, align 8, !tbaa !67
  %i.jm = or i64 %i.jk, %i.jl
  store i64 %i.jm, ptr %0, align 8, !tbaa !67
  %i.jn = add nsw i32 %i.jh, 2
  br label %.sink.split.i.i

bb.bg:                                            ; preds = %VP8LPutBits.exit.i.i
  %i.jo = icmp sgt i32 %i.jf, 31
  br i1 %i.jo, label %bb.bh, label %VP8LPutBits.exit21.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cg, ptr noundef nonnull %0) #7
  %.pre.i20.i.i = load i32, ptr %i.cg, align 8, !tbaa !62
  br label %VP8LPutBits.exit21.i.i

VP8LPutBits.exit21.i.i:                           ; preds = %bb.bh, %bb.bg
  %i.jp = phi i32 [ %.pre.i20.i.i, %bb.bh ], [ %i.jf, %bb.bg ] ; 2 uses
  %i.jq = zext i8 %i.in to i64
  %i.jr = zext nneg i32 %i.jp to i64
  %i.js = shl i64 %i.jq, %i.jr
  %i.jt = load i64, ptr %0, align 8, !tbaa !67
  %i.ju = or i64 %i.js, %i.jt
  store i64 %i.ju, ptr %0, align 8, !tbaa !67
  %i.jv = add nsw i32 %i.jp, 3
  br label %.sink.split.i.i

bb.bi:                                            ; preds = %VP8LPutBits.exit.i.i
  %i.jw = icmp sgt i32 %i.jf, 31
  br i1 %i.jw, label %bb.bj, label %VP8LPutBits.exit23.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0, ptr noundef nonnull %i.cg, ptr noundef nonnull %0) #7
  %.pre.i22.i.i = load i32, ptr %i.cg, align 8, !tbaa !62
  br label %VP8LPutBits.exit23.i.i

VP8LPutBits.exit23.i.i:                           ; preds = %bb.bj, %bb.bi
  %i.jx = phi i32 [ %.pre.i22.i.i, %bb.bj ], [ %i.jf, %bb.bi ] ; 2 uses
  %i.jy = zext i8 %i.in to i64
  %i.jz = zext nneg i32 %i.jx to i64
  %i.ka = shl i64 %i.jy, %i.jz
  %i.kb = load i64, ptr %0, align 8, !tbaa !67
  %i.kc = or i64 %i.ka, %i.kb
  store i64 %i.kc, ptr %0, align 8, !tbaa !67
  %i.kd = add nsw i32 %i.jx, 7
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %VP8LPutBits.exit23.i.i, %VP8LPutBits.exit21.i.i, %VP8LPutBits.exit19.i.i
  %.sink.i.i = phi i32 [ %i.kd, %VP8LPutBits.exit23.i.i ], [ %i.jv, %VP8LPutBits.exit21.i.i ], [ %i.jn, %VP8LPutBits.exit19.i.i ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.cg, align 8, !tbaa !62
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i.i, %VP8LPutBits.exit.i.i
  %i.ke = phi i32 [ %.sink.i.i, %.sink.split.i.i ], [ %i.jf, %VP8LPutBits.exit.i.i ]
  %indvars.iv.next.i75.i = add nuw nsw i64 %indvars.iv.i74.i, 1 ; 2 uses
  %exitcond.not.i76.i = icmp eq i64 %indvars.iv.next.i75.i, %wide.trip.count.i73.i
  br i1 %exitcond.not.i76.i, label %StoreFullHuffmanCode.exit, label %bb.ba, !llvm.loop !162

StoreFullHuffmanCode.exit:                        ; preds = %bb.bk, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bl

bb.bl:                                            ; preds = %StoreFullHuffmanCode.exit, %VP8LPutBits.exit44, %bb.p, %VP8LPutBits.exit
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
