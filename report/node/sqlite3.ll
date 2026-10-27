Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@geopolyFuncParam:bb.a
  %i.hu = shl nuw nsw i32 %.sroa.29.5.i, 1
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr [4 x i8], ptr %.sroa.4899.4.i, i64 %i.hv ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 -8
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !3603
  %i.hz = fcmp oeq float %i.ht, %i.hy
  br i1 %i.hz, label %bb.bf, label %.critedge.i

bb.bf:                                            ; preds = %bb.be
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.4899.4.i, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !3603
  %i.ic = getelementptr i8, ptr %i.hw, i64 -4
  %i.id = load float, ptr %i.ic, align 4, !tbaa !3603
  %i.ie = fcmp oeq float %i.ib, %i.id
  br i1 %i.ie, label %bb.bg, label %.critedge.i

bb.bg:                                            ; preds = %bb.bf
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.11.i, i64 1 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !741 ; 2 uses
  %i.ih = zext i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr @geopolyIsSpace, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !741
  %.not3.i76.i = icmp eq i8 %i.ij, 0
  br i1 %.not3.i76.i, label %geopolySkipSpace.exit80.i, label %.lr.ph.i77.i

.lr.ph.i77.i:                                     ; preds = %bb.bg, %.lr.ph.i77.i
  %i.ik = phi ptr [ %i.il, %.lr.ph.i77.i ], [ %i.if, %bb.bg ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !741 ; 2 uses
  %i.in = zext i8 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr @geopolyIsSpace, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !741
  %.not.i78.i = icmp eq i8 %i.ip, 0
  br i1 %.not.i78.i, label %geopolySkipSpace.exit80.i, label %.lr.ph.i77.i, !llvm.loop !8193

geopolySkipSpace.exit80.i:                        ; preds = %.lr.ph.i77.i, %bb.bg
  %.lcssa.i79.i = phi i8 [ %i.ig, %bb.bg ], [ %i.im, %.lr.ph.i77.i ]
  %i.iq = icmp eq i8 %.lcssa.i79.i, 0
  br i1 %i.iq, label %bb.bh, label %.critedge.i

bb.bh:                                            ; preds = %geopolySkipSpace.exit80.i
  %i.ir = add nsw i32 %.sroa.29.5.i, -1           ; 5 uses
  %i.is = tail call i32 @sqlite3_initialize(), !inline_history !8197
  %.not.i81.i = icmp eq i32 %i.is, 0
  br i1 %.not.i81.i, label %sqlite3_malloc64.exit.i, label %.critedge.i

sqlite3_malloc64.exit.i:                          ; preds = %bb.bh
  %i.it = zext nneg i32 %.sroa.29.5.i to i64
  %i.iu = shl nuw nsw i64 %i.it, 3
  %i.iv = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.iu), !inline_history !8197 ; 9 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %.critedge.i, label %bb.bi

bb.bi:                                            ; preds = %sqlite3_malloc64.exit.i
  store i32 %i.ir, ptr %i.iv, align 4, !tbaa !3602
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iy = shl nuw nsw i32 %i.ir, 1
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl nuw nsw i64 %i.iz, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ix, ptr nonnull align 4 %.sroa.4899.4.i, i64 %i.ja, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i8 1, ptr %i.jb, align 4, !tbaa !741
  %i.jc = lshr i32 %i.ir, 16
  %i.jd = trunc i32 %i.jc to i8
  %i.je = getelementptr inbounds nuw i8, ptr %i.iv, i64 5
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !741
  %i.jf = lshr i32 %i.ir, 8
  %i.jg = trunc i32 %i.jf to i8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 6
  store i8 %i.jg, ptr %i.jh, align 2, !tbaa !741
  %i.ji = trunc i32 %i.ir to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 7
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !741
  tail call void @sqlite3_free(ptr noundef nonnull %.sroa.4899.4.i), !inline_history !8195
  %.not46.i = icmp eq ptr %2, null
  br i1 %.not46.i, label %sqlite3_result_error_nomem.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %2, align 4, !tbaa !576
  br label %sqlite3_result_error_nomem.exit

.critedge.i:                                      ; preds = %bb.bd, %sqlite3_malloc64.exit.i, %bb.bh, %geopolySkipSpace.exit80.i, %bb.bf, %bb.be, %geopolySkipSpace.exit74.i, %geopolySkipSpace.exit.i
  %.sroa.4899.5.i = phi ptr [ %.sroa.4899.4.i, %sqlite3_malloc64.exit.i ], [ %.sroa.4899.4.i, %bb.bh ], [ null, %geopolySkipSpace.exit.i ], [ %.sroa.4899.4.i, %geopolySkipSpace.exit74.i ], [ %.sroa.4899.4.i, %geopolySkipSpace.exit80.i ], [ %.sroa.4899.4.i, %bb.bf ], [ %.sroa.4899.4.i, %bb.be ], [ %.sroa.4899.2.i, %bb.bd ] ; 4 uses
  %.5.i = phi i32 [ %.4.i, %sqlite3_malloc64.exit.i ], [ %.4.i, %bb.bh ], [ 0, %geopolySkipSpace.exit.i ], [ 1, %geopolySkipSpace.exit74.i ], [ 1, %geopolySkipSpace.exit80.i ], [ 1, %bb.bf ], [ 1, %bb.be ], [ 1, %bb.bd ]
  %.not47.i = icmp eq ptr %2, null
  br i1 %.not47.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.critedge.i
  store i32 %.5.i, ptr %2, align 4, !tbaa !576
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.critedge.i
  %i.jk = icmp eq ptr %.sroa.4899.5.i, null
  br i1 %i.jk, label %sqlite3_result_error_nomem.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jl = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i83.i = icmp eq i32 %i.jl, 0
  br i1 %.not.i83.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jm = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i84.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i84.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.jn(ptr noundef nonnull %i.jm) #58, !inline_history !8198
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.bo, %bb.bn
  %i.jo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.jp = tail call i32 %i.jo(ptr noundef nonnull %.sroa.4899.5.i) #58, !inline_history !8199
  %i.jq = sext i32 %i.jp to i64
  %i.jr = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.js = sub nsw i64 %i.jr, %i.jq
  store i64 %i.js, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.jt = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ju = add nsw i64 %i.jt, -1
  store i64 %i.ju, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.jv(ptr noundef nonnull %.sroa.4899.5.i) #58, !inline_history !8200
  %i.jw = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i4.i.i, label %sqlite3_result_error_nomem.exit, label %bb.bp

bb.bp:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.jx(ptr noundef nonnull %i.jw) #58, !inline_history !8201
  br label %sqlite3_result_error_nomem.exit

bb.bq:                                            ; preds = %bb.bm
  %i.jy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.jy(ptr noundef nonnull %.sroa.4899.5.i) #58, !inline_history !8200
  br label %sqlite3_result_error_nomem.exit

bb.br:                                            ; preds = %sqlite3_value_bytes.exit.thread
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %sqlite3_result_error_nomem.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 1, ptr %2, align 4, !tbaa !576
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.bq, %bb.bp, %sqlite3_mutex_enter.exit.i.i, %bb.bl, %bb.bj, %bb.bi, %bb.r, %bb.q, %bb.n, %sqlite3VdbeMemSetNull.exit.i, %bb.br, %bb.bs, %bb.ah, %sqlite3_value_text.exit.thread, %bb.j, %bb.ab, %bb.aa
  %.2 = phi ptr [ null, %sqlite3_value_text.exit.thread ], [ %.045, %bb.aa ], [ null, %bb.j ], [ null, %bb.br ], [ %.045, %bb.ab ], [ null, %bb.bq ], [ null, %bb.ah ], [ null, %bb.bs ], [ null, %sqlite3VdbeMemSetNull.exit.i ], [ null, %bb.n ], [ null, %bb.q ], [ null, %bb.r ], [ %i.iv, %bb.bj ], [ %i.iv, %bb.bi ], [ null, %bb.bl ], [ null, %sqlite3_mutex_enter.exit.i.i ], [ null, %bb.bp ], [ null, %.lr.ph.i.i ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 5) i32 @geopolyOverlap(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GeoSegment, align 8         ; 5 uses
  %3 = alloca %struct.GeoSegment, align 8         ; 5 uses
  %i.a = alloca [50 x ptr], align 16              ; 5 uses
  %4 = alloca %struct.GeoEvent, align 8           ; 5 uses
  %5 = alloca %struct.GeoEvent, align 8           ; 5 uses
  %i.b = alloca [50 x ptr], align 16              ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !3602
  %i.e = load i32, ptr %1, align 4, !tbaa !3602
  %i.f = add i32 %i.d, 2
  %i.g = add i32 %i.f, %i.e
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.i = tail call i32 @sqlite3_initialize(), !inline_history !821
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %sqlite3_free.exit

sqlite3_malloc64.exit:                            ; preds = %bb.a
  %i.j = mul nsw i64 %i.h, 112
  %i.k = add nsw i64 %i.j, 24
  %i.l = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.k), !inline_history !821 ; 12 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc64.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !3607
  %.idx = shl nsw i64 %i.h, 6
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !3608
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !3609
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !3610
  tail call fastcc void @geopolyAddSegments(ptr noundef %i.l, ptr noundef %0, i8 noundef zeroext 1)
  tail call fastcc void @geopolyAddSegments(ptr noundef %i.l, ptr noundef %1, i8 noundef zeroext 2)
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !3607
  %i.t = load i32, ptr %i.r, align 8, !tbaa !3610 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph52.i, label %geopolySortEventsByX.exit.thread

.lr.ph52.i:                                       ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %bb.c

.lr.ph56.i:                                       ; preds = %.critedge.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %wide.trip.count68.i = zext nneg i32 %spec.select.i to i64
  br label %bb.h

bb.c:                                             ; preds = %.critedge.i, %.lr.ph52.i
  %indvars.iv61.i = phi i64 [ 0, %.lr.ph52.i ], [ %indvars.iv.next62.i, %.critedge.i ] ; 2 uses
  %.02650.i = phi i32 [ 0, %.lr.ph52.i ], [ %spec.select.i, %.critedge.i ] ; 4 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv61.i ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr null, ptr %i.y, align 8, !tbaa !8214
  %i.z = icmp sgt i32 %.02650.i, 0
  br i1 %i.z, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.aa = zext nneg i32 %.02650.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %geopolyEventMerge.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %geopolyEventMerge.exit.i ] ; 3 uses
  %.045.i = phi ptr [ %i.x, %.lr.ph.preheader.i ], [ %i.aq, %geopolyEventMerge.exit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8215 ; 3 uses
  %.not.i129 = icmp eq ptr %i.ac, null
  br i1 %.not.i129, label %.critedge.loopexit.split.loop.exit75.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr null, ptr %i.v, align 8, !tbaa !8214
  %.not42.i = icmp eq ptr %.045.i, null
  br i1 %.not42.i, label %geopolyEventMerge.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.g
  %.022.i.i = phi ptr [ %.1.i.i, %bb.g ], [ %5, %bb.d ]
  %.01621.i.i = phi ptr [ %.117.i.i, %bb.g ], [ %.045.i, %bb.d ] ; 5 uses
  %.01820.i.i = phi ptr [ %.119.i.i, %bb.g ], [ %i.ac, %bb.d ] ; 5 uses
  %i.ad = load double, ptr %.01621.i.i, align 8, !tbaa !3612
  %i.ae = load double, ptr %.01820.i.i, align 8, !tbaa !3612
  %i.af = fcmp ugt double %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 24 ; 2 uses
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  store ptr %.01621.i.i, ptr %i.ag, align 8, !tbaa !8214
  %i.ah = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8214
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  store ptr %.01820.i.i, ptr %i.ag, align 8, !tbaa !8214
  %i.aj = getelementptr inbounds nuw i8, ptr %.01820.i.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !8214
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.119.i.i = phi ptr [ %.01820.i.i, %bb.e ], [ %i.ak, %bb.f ] ; 3 uses
  %.117.i.i = phi ptr [ %i.ai, %bb.e ], [ %.01621.i.i, %bb.f ] ; 3 uses
  %.1.i.i = phi ptr [ %.01621.i.i, %bb.e ], [ %.01820.i.i, %bb.f ] ; 2 uses
  %i.al = icmp ne ptr %.117.i.i, null             ; 2 uses
  %i.am = icmp ne ptr %.119.i.i, null
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph.i.i, label %geopolyEventMerge.exit.loopexit.i, !llvm.loop !8202

geopolyEventMerge.exit.loopexit.i:                ; preds = %bb.g
  %i.ao = select i1 %i.al, ptr %.117.i.i, ptr %.119.i.i
  br label %geopolyEventMerge.exit.i

geopolyEventMerge.exit.i:                         ; preds = %geopolyEventMerge.exit.loopexit.i, %bb.d
  %.0.lcssa.i.i = phi ptr [ %5, %bb.d ], [ %.1.i.i, %geopolyEventMerge.exit.loopexit.i ]
  %.lcssa.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.ao, %geopolyEventMerge.exit.loopexit.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 24
  store ptr %.lcssa.i.i, ptr %i.ap, align 8, !tbaa !8214
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !8214 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  store ptr null, ptr %i.ab, align 8, !tbaa !8215
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !8203

.critedge.loopexit.split.loop.exit75.i:           ; preds = %.lr.ph.i
  %i.ar = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %geopolyEventMerge.exit.i, %.critedge.loopexit.split.loop.exit75.i, %bb.c
  %.023.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ar, %.critedge.loopexit.split.loop.exit75.i ], [ %.02650.i, %geopolyEventMerge.exit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.x, %bb.c ], [ %.045.i, %.critedge.loopexit.split.loop.exit75.i ], [ %i.aq, %geopolyEventMerge.exit.i ]
  %i.as = zext nneg i32 %.023.lcssa.i to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.as
  store ptr %.0.lcssa.i, ptr %i.at, align 8, !tbaa !8215
  %i.au = add nuw nsw i32 %.023.lcssa.i, 1
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.02650.i, i32 %i.au) ; 2 uses
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count.i
  br i1 %exitcond64.not.i, label %.lr.ph56.i, label %bb.c, !llvm.loop !8204

bb.h:                                             ; preds = %geopolyEventMerge.exit41.i, %.lr.ph56.i
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph56.i ], [ %indvars.iv.next66.i, %geopolyEventMerge.exit41.i ] ; 2 uses
  %.155.i = phi ptr [ null, %.lr.ph56.i ], [ %i.bn, %geopolyEventMerge.exit41.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8215 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  store ptr null, ptr %i.w, align 8, !tbaa !8214
  %i.ax = icmp ne ptr %.155.i, null               ; 2 uses
  %i.ay = icmp ne ptr %i.aw, null
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i34.i, label %geopolyEventMerge.exit41.i

.lr.ph.i34.i:                                     ; preds = %bb.h, %bb.k
  %.022.i35.i = phi ptr [ %.1.i40.i, %bb.k ], [ %4, %bb.h ]
  %.01621.i36.i = phi ptr [ %.117.i39.i, %bb.k ], [ %.155.i, %bb.h ] ; 5 uses
  %.01820.i37.i = phi ptr [ %.119.i38.i, %bb.k ], [ %i.aw, %bb.h ] ; 5 uses
  %i.ba = load double, ptr %.01621.i36.i, align 8, !tbaa !3612
  %i.bb = load double, ptr %.01820.i37.i, align 8, !tbaa !3612
  %i.bc = fcmp ugt double %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.022.i35.i, i64 24 ; 2 uses
  br i1 %i.bc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i34.i
  store ptr %.01621.i36.i, ptr %i.bd, align 8, !tbaa !8214
  %i.be = getelementptr inbounds nuw i8, ptr %.01621.i36.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !8214
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i34.i
  store ptr %.01820.i37.i, ptr %i.bd, align 8, !tbaa !8214
  %i.bg = getelementptr inbounds nuw i8, ptr %.01820.i37.i, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8214
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.119.i38.i = phi ptr [ %.01820.i37.i, %bb.i ], [ %i.bh, %bb.j ] ; 3 uses
  %.117.i39.i = phi ptr [ %i.bf, %bb.i ], [ %.01621.i36.i, %bb.j ] ; 3 uses
  %.1.i40.i = phi ptr [ %.01621.i36.i, %bb.i ], [ %.01820.i37.i, %bb.j ] ; 2 uses
  %i.bi = icmp ne ptr %.117.i39.i, null           ; 2 uses
  %i.bj = icmp ne ptr %.119.i38.i, null
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %.lr.ph.i34.i, label %geopolyEventMerge.exit41.i, !llvm.loop !8202

geopolyEventMerge.exit41.i:                       ; preds = %bb.k, %bb.h
  %.018.lcssa.i30.i = phi ptr [ %i.aw, %bb.h ], [ %.119.i38.i, %bb.k ]
  %.016.lcssa.i31.i = phi ptr [ %.155.i, %bb.h ], [ %.117.i39.i, %bb.k ]
  %.0.lcssa.i32.i = phi ptr [ %4, %bb.h ], [ %.1.i40.i, %bb.k ]
  %.lcssa.i33.i = phi i1 [ %i.ax, %bb.h ], [ %i.bi, %bb.k ]
  %i.bl = select i1 %.lcssa.i33.i, ptr %.016.lcssa.i31.i, ptr %.018.lcssa.i30.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i32.i, i64 24
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !8214
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !8214 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count68.i
  br i1 %exitcond69.not.i, label %geopolySortEventsByX.exit, label %bb.h, !llvm.loop !8205

geopolySortEventsByX.exit.thread:                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %.loopexit165

geopolySortEventsByX.exit:                        ; preds = %geopolyEventMerge.exit41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %.loopexit165, label %.lr.ph193

.lr.ph193:                                        ; preds = %geopolySortEventsByX.exit
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !3612
  %i.bp = fcmp oeq double %i.bo, 0.000000e+00
  %i.bq = select i1 %i.bp, double -1.000000e+00, double 0.000000e+00
  store i32 0, ptr %i.c, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph193, %.loopexit
  %.099192 = phi ptr [ null, %.lr.ph193 ], [ %.3, %.loopexit ] ; 4 uses
  %.0102191 = phi i32 [ 0, %.lr.ph193 ], [ %.3105, %.loopexit ] ; 2 uses
  %.0110190 = phi double [ %i.bq, %.lr.ph193 ], [ %.1111, %.loopexit ] ; 2 uses
  %.0112189 = phi ptr [ %i.bn, %.lr.ph193 ], [ %i.gd, %.loopexit ] ; 4 uses
  %i.bt = load double, ptr %.0112189, align 8, !tbaa !3612 ; 4 uses
  %i.bu = fcmp une double %i.bt, %.0110190
  br i1 %i.bu, label %bb.m, label %.thread161

bb.m:                                             ; preds = %bb.l
  %.not120 = icmp eq i32 %.0102191, 0
  br i1 %.not120, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %.not50.i = icmp eq ptr %.099192, null
  br i1 %.not50.i, label %geopolySortSegmentsByYAndC.exit, label %.lr.ph53.i

.lr.ph57.i:                                       ; preds = %.critedge.i130
  %wide.trip.count.i136 = zext nneg i32 %spec.select.i132 to i64
  br label %bb.u

.lr.ph53.i:                                       ; preds = %bb.n, %.critedge.i130
  %.02352.i = phi i32 [ %spec.select.i132, %.critedge.i130 ], [ 0, %bb.n ] ; 4 uses
  %.02551.i = phi ptr [ %i.bw, %.critedge.i130 ], [ %.099192, %bb.n ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02551.i, i64 40 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !8216 ; 2 uses
  store ptr null, ptr %i.bv, align 8, !tbaa !8216
  %i.bx = icmp sgt i32 %.02352.i, 0
  br i1 %i.bx, label %.lr.ph.preheader.i138, label %.critedge.i130

.lr.ph.preheader.i138:                            ; preds = %.lr.ph53.i
  %i.by = zext nneg i32 %.02352.i to i64
  br label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %geopolySegmentMerge.exit.i, %.lr.ph.preheader.i138
  %indvars.iv.i140 = phi i64 [ 0, %.lr.ph.preheader.i138 ], [ %indvars.iv.next.i146, %geopolySegmentMerge.exit.i ] ; 3 uses
  %.045.i141 = phi ptr [ %.02551.i, %.lr.ph.preheader.i138 ], [ %i.cv, %geopolySegmentMerge.exit.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i140 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !8217 ; 3 uses
  %.not27.i = icmp eq ptr %i.ca, null
  br i1 %.not27.i, label %.critedge.loopexit.split.loop.exit74.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i139
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  store ptr null, ptr %i.br, align 8, !tbaa !8216
  %.not42.i142 = icmp eq ptr %.045.i141, null
  br i1 %.not42.i142, label %geopolySegmentMerge.exit.i, label %.lr.ph.i.i143

.lr.ph.i.i143:                                    ; preds = %bb.o, %bb.t
  %.02028.i.i = phi ptr [ %.1.i.i144, %bb.t ], [ %3, %bb.o ]
  %.02127.i.i = phi ptr [ %.122.i.i, %bb.t ], [ %.045.i141, %bb.o ] ; 6 uses
  %.02326.i.i = phi ptr [ %.124.i.i, %bb.t ], [ %i.ca, %bb.o ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02127.i.i, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !8218
  %i.cd = getelementptr inbounds nuw i8, ptr %.02326.i.i, i64 16
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !8218
  %i.cf = fsub double %i.cc, %i.ce                ; 2 uses
  %i.cg = fcmp oeq double %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i143
  %i.ch = load double, ptr %.02127.i.i, align 8, !tbaa !3614
  %i.ci = load double, ptr %.02326.i.i, align 8, !tbaa !3614
  %i.cj = fsub double %i.ch, %i.ci
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i143
  %.0.i.i = phi double [ %i.cj, %bb.p ], [ %i.cf, %.lr.ph.i.i143 ]
  %i.ck = fcmp olt double %.0.i.i, 0.000000e+00
  %i.cl = getelementptr inbounds nuw i8, ptr %.02028.i.i, i64 40 ; 2 uses
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %.02127.i.i, ptr %i.cl, align 8, !tbaa !8216
  %i.cm = getelementptr inbounds nuw i8, ptr %.02127.i.i, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !8216
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store ptr %.02326.i.i, ptr %i.cl, align 8, !tbaa !8216
  %i.co = getelementptr inbounds nuw i8, ptr %.02326.i.i, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !8216
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.124.i.i = phi ptr [ %.02326.i.i, %bb.r ], [ %i.cp, %bb.s ] ; 3 uses
  %.122.i.i = phi ptr [ %i.cn, %bb.r ], [ %.02127.i.i, %bb.s ] ; 3 uses
  %.1.i.i144 = phi ptr [ %.02127.i.i, %bb.r ], [ %.02326.i.i, %bb.s ] ; 2 uses
  %i.cq = icmp ne ptr %.122.i.i, null             ; 2 uses
  %i.cr = icmp ne ptr %.124.i.i, null
  %i.cs = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %i.cs, label %.lr.ph.i.i143, label %geopolySegmentMerge.exit.loopexit.i, !llvm.loop !8206

geopolySegmentMerge.exit.loopexit.i:              ; preds = %bb.t
  %i.ct = select i1 %i.cq, ptr %.122.i.i, ptr %.124.i.i
  br label %geopolySegmentMerge.exit.i

geopolySegmentMerge.exit.i:                       ; preds = %geopolySegmentMerge.exit.loopexit.i, %bb.o
  %.020.lcssa.i.i = phi ptr [ %3, %bb.o ], [ %.1.i.i144, %geopolySegmentMerge.exit.loopexit.i ]
  %.lcssa.i.i145 = phi ptr [ %i.ca, %bb.o ], [ %i.ct, %geopolySegmentMerge.exit.loopexit.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i, i64 40
  store ptr %.lcssa.i.i145, ptr %i.cu, align 8, !tbaa !8216
  %i.cv = load ptr, ptr %i.br, align 8, !tbaa !8216 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  store ptr null, ptr %i.bz, align 8, !tbaa !8217
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i140, 1 ; 2 uses
  %exitcond.not.i147 = icmp eq i64 %indvars.iv.next.i146, %i.by
  br i1 %exitcond.not.i147, label %.critedge.i130, label %.lr.ph.i139, !llvm.loop !8207

.critedge.loopexit.split.loop.exit74.i:           ; preds = %.lr.ph.i139
  %i.cw = trunc nuw nsw i64 %indvars.iv.i140 to i32
  br label %.critedge.i130

.critedge.i130:                                   ; preds = %geopolySegmentMerge.exit.i, %.critedge.loopexit.split.loop.exit74.i, %.lr.ph53.i
  %.021.lcssa.i = phi i32 [ 0, %.lr.ph53.i ], [ %i.cw, %.critedge.loopexit.split.loop.exit74.i ], [ %.02352.i, %geopolySegmentMerge.exit.i ] ; 2 uses
  %.0.lcssa.i131 = phi ptr [ %.02551.i, %.lr.ph53.i ], [ %.045.i141, %.critedge.loopexit.split.loop.exit74.i ], [ %i.cv, %geopolySegmentMerge.exit.i ]
  %i.cx = zext nneg i32 %.021.lcssa.i to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cx
  store ptr %.0.lcssa.i131, ptr %i.cy, align 8, !tbaa !8217
  %i.cz = add nuw nsw i32 %.021.lcssa.i, 1
  %spec.select.i132 = tail call i32 @llvm.smax.i32(i32 %.02352.i, i32 %i.cz) ; 2 uses
  %.not.i133 = icmp eq ptr %i.bw, null
  br i1 %.not.i133, label %.lr.ph57.i, label %.lr.ph53.i, !llvm.loop !8208

bb.u:                                             ; preds = %geopolySegmentMerge.exit41.i, %.lr.ph57.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph57.i ], [ %indvars.iv.next63.i, %geopolySegmentMerge.exit41.i ] ; 2 uses
  %.156.i = phi ptr [ null, %.lr.ph57.i ], [ %i.dz, %geopolySegmentMerge.exit41.i ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv62.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !8217 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  store ptr null, ptr %i.bs, align 8, !tbaa !8216
  %i.dc = icmp ne ptr %.156.i, null               ; 2 uses
  %i.dd = icmp ne ptr %i.db, null
  %i.de = and i1 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph.i33.i, label %geopolySegmentMerge.exit41.i

.lr.ph.i33.i:                                     ; preds = %bb.u, %bb.z
  %.02028.i34.i = phi ptr [ %.1.i40.i137, %bb.z ], [ %2, %bb.u ]
  %.02127.i35.i = phi ptr [ %.122.i39.i, %bb.z ], [ %.156.i, %bb.u ] ; 6 uses
  %.02326.i36.i = phi ptr [ %.124.i38.i, %bb.z ], [ %i.db, %bb.u ] ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02127.i35.i, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !8218
  %i.dh = getelementptr inbounds nuw i8, ptr %.02326.i36.i, i64 16
  %i.di = load double, ptr %i.dh, align 8, !tbaa !8218
  %i.dj = fsub double %i.dg, %i.di                ; 2 uses
  %i.dk = fcmp oeq double %i.dj, 0.000000e+00
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i33.i
  %i.dl = load double, ptr %.02127.i35.i, align 8, !tbaa !3614
  %i.dm = load double, ptr %.02326.i36.i, align 8, !tbaa !3614
  %i.dn = fsub double %i.dl, %i.dm
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i33.i
  %.0.i37.i = phi double [ %i.dn, %bb.v ], [ %i.dj, %.lr.ph.i33.i ]
  %i.do = fcmp olt double %.0.i37.i, 0.000000e+00
  %i.dp = getelementptr inbounds nuw i8, ptr %.02028.i34.i, i64 40 ; 2 uses
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr %.02127.i35.i, ptr %i.dp, align 8, !tbaa !8216
  %i.dq = getelementptr inbounds nuw i8, ptr %.02127.i35.i, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !8216
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store ptr %.02326.i36.i, ptr %i.dp, align 8, !tbaa !8216
  %i.ds = getelementptr inbounds nuw i8, ptr %.02326.i36.i, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !8216
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.124.i38.i = phi ptr [ %.02326.i36.i, %bb.x ], [ %i.dt, %bb.y ] ; 3 uses
  %.122.i39.i = phi ptr [ %i.dr, %bb.x ], [ %.02127.i35.i, %bb.y ] ; 3 uses
  %.1.i40.i137 = phi ptr [ %.02127.i35.i, %bb.x ], [ %.02326.i36.i, %bb.y ] ; 2 uses
  %i.du = icmp ne ptr %.122.i39.i, null           ; 2 uses
  %i.dv = icmp ne ptr %.124.i38.i, null
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %i.dw, label %.lr.ph.i33.i, label %geopolySegmentMerge.exit41.i, !llvm.loop !8206

geopolySegmentMerge.exit41.i:                     ; preds = %bb.z, %bb.u
  %.023.lcssa.i29.i = phi ptr [ %i.db, %bb.u ], [ %.124.i38.i, %bb.z ]
  %.021.lcssa.i30.i = phi ptr [ %.156.i, %bb.u ], [ %.122.i39.i, %bb.z ]
  %.020.lcssa.i31.i = phi ptr [ %2, %bb.u ], [ %.1.i40.i137, %bb.z ]
  %.lcssa.i32.i = phi i1 [ %i.dc, %bb.u ], [ %i.du, %bb.z ]
  %i.dx = select i1 %.lcssa.i32.i, ptr %.021.lcssa.i30.i, ptr %.023.lcssa.i29.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.020.lcssa.i31.i, i64 40
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !8216
  %i.dz = load ptr, ptr %i.bs, align 8, !tbaa !8216 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next63.i, %wide.trip.count.i136
  br i1 %exitcond65.not.i, label %geopolySortSegmentsByYAndC.exit, label %bb.u, !llvm.loop !8209

geopolySortSegmentsByYAndC.exit:                  ; preds = %geopolySegmentMerge.exit41.i, %bb.n
  %.1.lcssa.i135 = phi ptr [ null, %bb.n ], [ %i.dz, %geopolySegmentMerge.exit41.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.aa

bb.aa:                                            ; preds = %geopolySortSegmentsByYAndC.exit, %bb.m
  %.1100 = phi ptr [ %.1.lcssa.i135, %geopolySortSegmentsByYAndC.exit ], [ %.099192, %bb.m ] ; 4 uses
  %.not121179 = icmp eq ptr %.1100, null
  br i1 %.not121179, label %.thread161, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa, %bb.ad
  %.0182 = phi i32 [ %i.ek, %bb.ad ], [ 0, %bb.aa ] ; 2 uses
  %.091181 = phi ptr [ %.096180, %bb.ad ], [ null, %bb.aa ] ; 2 uses
  %.096180 = phi ptr [ %i.em, %bb.ad ], [ %.1100, %bb.aa ] ; 4 uses
  %.not128 = icmp eq ptr %.091181, null
  br i1 %.not128, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.ea = getelementptr inbounds nuw i8, ptr %.091181, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !8218
  %i.ec = getelementptr inbounds nuw i8, ptr %.096180, i64 16
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !8218
  %i.ee = fcmp une double %i.eb, %i.ed
  br i1 %i.ee, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ef = zext nneg i32 %.0182 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ef
  store i8 1, ptr %i.eg, align 1, !tbaa !741
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %.096180, i64 28
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !3615
  %i.ej = zext i8 %i.ei to i32
  %i.ek = xor i32 %.0182, %i.ej                   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.096180, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !8216 ; 2 uses
  %.not121 = icmp eq ptr %i.em, null
  br i1 %.not121, label %.lr.ph187, label %.lr.ph, !llvm.loop !8210

.lr.ph187:                                        ; preds = %bb.ad, %bb.ai
  %.1186 = phi i32 [ %i.ff, %bb.ai ], [ %i.ek, %bb.ad ] ; 2 uses
  %.192185 = phi ptr [ %.197184, %bb.ai ], [ null, %bb.ad ] ; 3 uses
  %.197184 = phi ptr [ %i.fh, %bb.ai ], [ %.1100, %bb.ad ] ; 7 uses
  %i.en = load double, ptr %.197184, align 8, !tbaa !3614
  %i.eo = getelementptr inbounds nuw i8, ptr %.197184, i64 8
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !3616
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.en, double %i.bt, double %i.ep) ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.197184, i64 16
  store double %i.eq, ptr %i.er, align 8, !tbaa !8218
  %.not123 = icmp eq ptr %.192185, null
  br i1 %.not123, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph187
  %i.es = getelementptr inbounds nuw i8, ptr %.192185, i64 16
  %i.et = load double, ptr %i.es, align 8, !tbaa !8218 ; 2 uses
  %i.eu = fcmp ogt double %i.et, %i.eq
  br i1 %i.eu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %.192185, i64 28
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !3615
  %i.ex = getelementptr inbounds nuw i8, ptr %.197184, i64 28
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !3615
  %.not124 = icmp eq i8 %i.ew, %i.ey
  br i1 %.not124, label %bb.ag, label %.loopexit165

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ez = fcmp une double %i.et, %i.eq
  br i1 %i.ez, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fa = zext nneg i32 %.1186 to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fa
  store i8 1, ptr %i.fb, align 1, !tbaa !741
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph187, %bb.ag, %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %.197184, i64 28
  %i.fd = load i8, ptr %i.fc, align 4, !tbaa !3615
  %i.fe = zext i8 %i.fd to i32
  %i.ff = xor i32 %.1186, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %.197184, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !8216 ; 2 uses
  %.not122 = icmp eq ptr %i.fh, null
  br i1 %.not122, label %.thread161, label %.lr.ph187, !llvm.loop !8211

.thread161:                                       ; preds = %bb.ai, %bb.aa, %bb.l
  %.1111 = phi double [ %.0110190, %bb.l ], [ %i.bt, %bb.aa ], [ %i.bt, %bb.ai ]
  %.2104 = phi i32 [ %.0102191, %bb.l ], [ 0, %bb.aa ], [ 0, %bb.ai ] ; 4 uses
  %.2101 = phi ptr [ %.099192, %bb.l ], [ null, %bb.aa ], [ %.1100, %bb.ai ] ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0112189, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !3617
  %i.fk = icmp eq i32 %i.fj, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %.0112189, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !3618 ; 7 uses
  br i1 %i.fk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread161
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load float, ptr %i.fn, align 8, !tbaa !3619
  %i.fp = fpext float %i.fo to double
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store double %i.fp, ptr %i.fq, align 8, !tbaa !8218
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  store ptr %.2101, ptr %i.fr, align 8, !tbaa !8216
  br label %.loopexit

bb.ak:                                            ; preds = %.thread161
  %i.fs = icmp eq ptr %.2101, %i.fm
  br i1 %i.fs, label %bb.al, label %.preheader

bb.al:                                            ; preds = %bb.ak
  %.not127 = icmp eq ptr %.2101, null
  br i1 %.not127, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ft = getelementptr inbounds nuw i8, ptr %.2101, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !8216
  br label %.loopexit

.preheader:                                       ; preds = %bb.ak, %bb.an
  %.298 = phi ptr [ %i.fw, %bb.an ], [ %.2101, %bb.ak ] ; 3 uses
  %.not125 = icmp eq ptr %.298, null
  br i1 %.not125, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %.preheader
  %i.fv = getelementptr inbounds nuw i8, ptr %.298, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !8216 ; 3 uses
  %i.fx = icmp eq ptr %i.fw, %i.fm
  br i1 %i.fx, label %bb.ao, label %.preheader, !llvm.loop !8212

bb.ao:                                            ; preds = %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %.298, i64 40
  %.not126 = icmp eq ptr %i.fm, null
  br i1 %.not126, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !8216
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.gb = phi ptr [ %i.ga, %bb.ap ], [ null, %bb.ao ]
  store ptr %i.gb, ptr %i.fy, align 8, !tbaa !8216
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.am, %bb.al, %bb.aq, %bb.aj
  %.3105 = phi i32 [ 1, %bb.aj ], [ %.2104, %bb.am ], [ %.2104, %bb.aq ], [ %.2104, %bb.al ], [ %.2104, %.preheader ]
  %.3 = phi ptr [ %i.fm, %bb.aj ], [ %i.fu, %bb.am ], [ %.2101, %bb.aq ], [ null, %bb.al ], [ %.2101, %.preheader ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.0112189, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !8214 ; 2 uses
  %.not119 = icmp eq ptr %i.gd, null
  br i1 %.not119, label %._crit_edge, label %bb.l, !llvm.loop !8213

._crit_edge:                                      ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !741
  %i.ge = icmp eq i8 %.pre, 0
  br i1 %i.ge, label %.loopexit165, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !741
  %i.gh = icmp ne i8 %i.gg, 0                     ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.gj = load i8, ptr %i.gi, align 2
  %i.gk = icmp eq i8 %i.gj, 0                     ; 3 uses
  %or.cond = select i1 %i.gh, i1 %i.gk, i1 false
  br i1 %or.cond, label %.loopexit165, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = select i1 %i.gh, i1 true, i1 %i.gk
  br i1 %i.gl, label %bb.at, label %.loopexit165

bb.at:                                            ; preds = %bb.as
  %.not208 = xor i1 %i.gh, true
  %or.cond11 = select i1 %.not208, i1 %i.gk, i1 false
  %. = select i1 %or.cond11, i32 4, i32 1
  br label %.loopexit165

.loopexit165:                                     ; preds = %bb.af, %geopolySortEventsByX.exit, %geopolySortEventsByX.exit.thread, %._crit_edge, %bb.ar, %bb.as, %bb.at
  %.5 = phi i32 [ %., %bb.at ], [ 2, %bb.as ], [ 0, %._crit_edge ], [ 3, %bb.ar ], [ 0, %geopolySortEventsByX.exit ], [ 0, %geopolySortEventsByX.exit.thread ], [ 1, %bb.af ] ; 3 uses
  %i.gm = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i148 = icmp eq i32 %i.gm, 0
  br i1 %.not.i148, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %.loopexit165
  %i.gn = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.go(ptr noundef nonnull %i.gn) #58, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.av, %bb.au
  %i.gp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.gq = tail call i32 %i.gp(ptr noundef nonnull %i.l) #58, !inline_history !13
  %i.gr = sext i32 %i.gq to i64
end_hunk_0
