Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_huffman_kernel?download=true
inline.NumInlined: 101
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ZS_largeHuffmanEncodeUsingCTable:bb.a
bb.n:                                             ; preds = %bb.d, %bb.m, %BIT_closeCStream.exit.thread, %bb.b
  %.sroa.036.2 = phi i32 [ %i.j, %bb.b ], [ %i.x, %bb.d ], [ %i.kc, %BIT_closeCStream.exit.thread ], [ 0, %bb.m ]
  %.sroa.8.2 = phi i64 [ %i.l, %bb.b ], [ %i.z, %bb.d ], [ %i.ke, %BIT_closeCStream.exit.thread ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.036.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_largeHuffmanEncodeUsingCTableX4(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #13
  store ptr %i.b, ptr %5, align 8, !tbaa !17
  %i.c = lshr i64 %2, 2
  %i.d = add nuw nsw i64 %i.c, 1                  ; 4 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %2) ; 4 uses
  %i.f = tail call { i32, i64 } @ZS_largeHuffmanEncodeUsingCTable(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.g = extractvalue { i32, i64 } %i.f, 0        ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %2, %i.e
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.e
  %i.k = tail call { i32, i64 } @ZS_largeHuffmanEncodeUsingCTable(ptr noundef %0, ptr noundef %i.j, i64 noundef %i.i, ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0        ; 2 uses
  %.not.1 = icmp eq i32 %i.l, 0
  br i1 %.not.1, label %bb.c, label %bb.e, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %i.i, %i.e                   ; 3 uses
  %i.n = sub i64 %2, %i.m
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.n) ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.m
  %i.q = tail call { i32, i64 } @ZS_largeHuffmanEncodeUsingCTable(ptr noundef %0, ptr noundef %i.p, i64 noundef %i.o, ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.q, 0        ; 2 uses
  %.not.2 = icmp eq i32 %i.r, 0
  br i1 %.not.2, label %bb.d, label %bb.e, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw i64 %i.o, %i.m                   ; 2 uses
  %i.t = sub i64 %2, %i.s
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.t)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.s
  %i.w = tail call { i32, i64 } @ZS_largeHuffmanEncodeUsingCTable(ptr noundef %0, ptr noundef %i.v, i64 noundef %i.u, ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0        ; 2 uses
  %.not.3 = icmp eq i32 %i.x, 0
  br i1 %.not.3, label %.loopexit, label %bb.e, !prof !68

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa45 = phi { i32, i64 } [ %i.f, %bb.a ], [ %i.k, %bb.b ], [ %i.q, %bb.c ], [ %i.w, %bb.d ]
  %.lcssa = phi i32 [ %i.g, %bb.a ], [ %i.l, %bb.b ], [ %i.r, %bb.c ], [ %i.x, %bb.d ]
  %i.y = extractvalue { i32, i64 } %.lcssa45, 1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %5, i32 %.lcssa, ptr %i.z, ptr nonnull @ZS_largeHuffmanEncodeUsingCTableX4.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24, i32 noundef 507, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.ab = extractvalue { i32, ptr } %i.aa, 0
  %i.ac = extractvalue { i32, ptr } %i.aa, 1
  %i.ad = ptrtoint ptr %i.ac to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e
  %.sroa.024.3 = phi i32 [ %i.ab, %bb.e ], [ 0, %bb.d ]
  %.sroa.8.3 = phi i64 [ %i.ad, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.024.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_largeHuffmanEncode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %7 = alloca %struct.ZL_ErrorContext, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #13 ; 3 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !17
  %i.c = icmp eq i32 %4, 0
  %i.d = tail call i32 @llvm.smin.i32(i32 %4, i32 20)
  %spec.store.select = select i1 %i.c, i32 20, i32 %i.d
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %6, align 8, !tbaa !17
  %i.g = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !30 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val13.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.i = ptrtoint ptr %.val13.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanUncompressed.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, i32 noundef 519, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.m, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.n, ptr %i.o, ptr noundef nonnull @.str.12) #12
  %i.p = ptrtoint ptr %i.o to i64
  br label %ZS_largeHuffmanUncompressed.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  store ptr %i.q, ptr %i.g, align 8, !tbaa !30
  store i8 1, ptr %.val.i, align 1, !tbaa !28
  %.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !30
  store i8 0, ptr %.val.i.i, align 1, !tbaa !28
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.g, align 8, !tbaa !30
  br label %ZS_largeHuffmanUncompressed.exit

ZS_largeHuffmanUncompressed.exit:                 ; preds = %bb.c, %bb.d
  %.sroa.012.0.i = phi i32 [ %i.n, %bb.c ], [ 0, %bb.d ]
  %.sroa.4.0.i = phi i64 [ %i.p, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <3 x ptr>, ptr %0, align 8
  %i.t = getelementptr i8, ptr %0, i64 8          ; 26 uses
  %.val119 = load ptr, ptr %i.t, align 8, !tbaa !30 ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %.val120 = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.v = ptrtoint ptr %.val119 to i64
  %i.w = icmp eq ptr %.val120, %.val119
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanEncode.__zl_static_error_info, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 546, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.y = extractvalue { i32, ptr } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i32, ptr } %i.x, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.y, ptr %i.z, ptr noundef nonnull @.str.12) #12
  %i.aa = ptrtoint ptr %i.z to i64
  br label %bb.ac

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.val119, i64 1
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !30
  %i.ac = zext i16 %3 to i32                      ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = tail call noalias ptr @calloc(i64 noundef %i.ae, i64 noundef 4) #14 ; 10 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.thread, label %.preheader.preheader, !prof !18

.preheader.preheader:                             ; preds = %bb.g
  %i.ag = add i64 %2, -1                          ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %2, -2
  br label %.preheader

.thread:                                          ; preds = %bb.g
  %i.ai = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanEncode.__zl_static_error_info.26, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 554, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #12 ; 2 uses
  %i.aj = extractvalue { i32, ptr } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i32, ptr } %i.ai, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aj, ptr %i.ak, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  %i.al = ptrtoint ptr %i.ak to i64
  br label %bb.ac

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.h, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %.0103147.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %i.bf, %.unr-lcssa ]
  %.0104146.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bk, %.unr-lcssa ]
  %lcmp.mod179 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0104146.epil.init
  %.val123.epil = load i16, ptr %i.am, align 1    ; 2 uses
  %i.an = zext i16 %.val123.epil to i32
  %i.ao = or i32 %.0103147.epil.init, %i.an
  %i.ap = zext i16 %.val123.epil to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !19
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.lcssa177 = phi i32 [ %i.bf, %.unr-lcssa ], [ %i.ao, %.preheader.epil.preheader ]
  %i.at = tail call i32 @llvm.smin.i32(i32 %.lcssa177, i32 %i.ac)
  %i.au = trunc nuw i32 %i.at to i16
  br label %bb.i

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.0103147 = phi i32 [ 0, %.preheader.preheader.new ], [ %i.bf, %.preheader ]
  %.0104146 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bk, %.preheader ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0104146
  %.val123 = load i16, ptr %i.av, align 1         ; 2 uses
  %i.aw = zext i16 %.val123 to i32
  %i.ax = or i32 %.0103147, %i.aw
  %i.ay = zext i16 %.val123 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !19
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !19
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0104146
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %.val123.1 = load i16, ptr %i.bd, align 1       ; 2 uses
  %i.be = zext i16 %.val123.1 to i32
  %i.bf = or i32 %i.ax, %i.be                     ; 3 uses
  %i.bg = zext i16 %.val123.1 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !19
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !19
  %i.bk = add nuw i64 %.0104146, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !69

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i16 [ %i.au, %bb.h ], [ %i.bp, %bb.i ] ; 5 uses
  %i.bl = zext i16 %.0 to i64                     ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !19 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = add i16 %.0, -1
  br i1 %i.bo, label %bb.i, label %bb.j, !llvm.loop !70

bb.j:                                             ; preds = %bb.i
  %i.bq = zext i32 %i.bn to i64
  %i.br = icmp eq i64 %2, %i.bq
  br i1 %i.br, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.af) #12
  store i8 2, ptr %.val119, align 1, !tbaa !28
  %.val117 = load ptr, ptr %i.t, align 8, !tbaa !30 ; 3 uses
  %.val118 = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.bs = ptrtoint ptr %.val118 to i64
  %i.bt = ptrtoint ptr %.val117 to i64            ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = or i64 %2, 1
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %narrow2.i = sub nuw nsw i8 70, %i.bx
  %i.by = udiv i8 %narrow2.i, 7
  %narrow = add nuw nsw i8 %i.by, 2
  %i.bz = zext nneg i8 %narrow to i64
  %i.ca = icmp ult i64 %i.bu, %i.bz
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cb = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanEncode.__zl_static_error_info.29, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 577, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.cc = extractvalue { i32, ptr } %i.cb, 0      ; 2 uses
  %i.cd = extractvalue { i32, ptr } %i.cb, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cc, ptr %i.cd, ptr noundef nonnull @.str.12) #12
  %i.ce = ptrtoint ptr %i.cd to i64
  br label %bb.ac

bb.m:                                             ; preds = %bb.k
  %i.cf = icmp samesign ugt i64 %2, 127
  br i1 %i.cf, label %.lr.ph.i.i, label %ZL_WC_pushVarint.exit

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %.val117, %bb.m ] ; 2 uses
  %.089.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %2, %bb.m ] ; 3 uses
  %i.cg = trunc i64 %.089.i.i to i8
  %i.ch = or i8 %i.cg, -128
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  store i8 %i.ch, ptr %.010.i.i, align 1, !tbaa !28
  %i.cj = lshr i64 %.089.i.i, 7                   ; 2 uses
  %i.ck = icmp ugt i64 %.089.i.i, 16383
  br i1 %i.ck, label %.lr.ph.i.i, label %ZL_WC_pushVarint.exit, !llvm.loop !71

ZL_WC_pushVarint.exit:                            ; preds = %.lr.ph.i.i, %bb.m
  %.08.lcssa.i.i = phi i64 [ %2, %bb.m ], [ %i.cj, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi ptr [ %.val117, %bb.m ], [ %i.ci, %.lr.ph.i.i ] ; 2 uses
  %i.cl = trunc nuw nsw i64 %.08.lcssa.i.i to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  store i8 %i.cl, ptr %.0.lcssa.i.i, align 1, !tbaa !28
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bt
  %i.cp = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co ; 2 uses
  store ptr %i.cq, ptr %i.t, align 8, !tbaa !30
  store i16 %.0, ptr %i.cq, align 1
  %i.cr = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store ptr %i.cs, ptr %i.t, align 8, !tbaa !30
  br label %bb.ac

bb.n:                                             ; preds = %bb.j
  store i8 0, ptr %.val119, align 1, !tbaa !28
  %i.ct = add nuw nsw i64 %i.bl, 1
  %i.cu = tail call noalias ptr @calloc(i64 noundef %i.ct, i64 noundef 4) #14 ; 7 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.af) #12
  %i.cw = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanEncode.__zl_static_error_info.30, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 589, i32 noundef 70, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.cx = extractvalue { i32, ptr } %i.cw, 0      ; 2 uses
  %i.cy = extractvalue { i32, ptr } %i.cw, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cx, ptr %i.cy, ptr noundef nonnull @.str.12) #12
  %i.cz = ptrtoint ptr %i.cy to i64
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.da = tail call { i32, i64 } @ZS_largeHuffmanBuildCTable(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.af, i16 noundef zeroext %.0, i32 noundef %spec.store.select) ; 2 uses
  %i.db = extractvalue { i32, i64 } %i.da, 0      ; 2 uses
  %i.dc = extractvalue { i32, i64 } %i.da, 1      ; 2 uses
  %.not136 = icmp eq i32 %i.db, 0
  br i1 %.not136, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.af) #12
  tail call void @free(ptr noundef nonnull %i.cu) #12
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  %i.dd = trunc i64 %i.dc to i32                  ; 3 uses
  %.val115 = load ptr, ptr %i.t, align 8, !tbaa !30
  %.val116 = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.de = ptrtoint ptr %.val116 to i64
  %i.df = ptrtoint ptr %.val115 to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = icmp ult i64 %i.dg, 8
  br i1 %i.dh, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = tail call { i32, i64 } @ZS_largeHuffmanWriteCTable(ptr noundef nonnull %0, ptr noundef nonnull %i.cu, i16 noundef zeroext %.0, i32 noundef %i.dd)
  %i.dj = extractvalue { i32, i64 } %i.di, 0
  %.not137 = icmp eq i32 %i.dj, 0
  br i1 %.not137, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %.val = load ptr, ptr %i.t, align 8, !tbaa !30  ; 4 uses
  %.val114 = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.dk = icmp eq ptr %.val114, %.val
  br i1 %i.dk, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = icmp ugt i64 %2, 1024
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store ptr %i.dm, ptr %i.t, align 8, !tbaa !30
  br i1 %i.dl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %.val, align 1, !tbaa !28
  %i.dn = tail call { i32, i64 } @ZS_largeHuffmanEncodeUsingCTableX4(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.cu, i32 noundef %i.dd)
  %i.do = extractvalue { i32, i64 } %i.dn, 0
  %.not139 = icmp eq i32 %i.do, 0
  br i1 %.not139, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  store i8 0, ptr %.val, align 1, !tbaa !28
  %i.dp = tail call { i32, i64 } @ZS_largeHuffmanEncodeUsingCTable(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.cu, i32 noundef %i.dd)
  %i.dq = extractvalue { i32, i64 } %i.dp, 0
  %.not138 = icmp eq i32 %i.dq, 0
  br i1 %.not138, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.val121 = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.dr = ptrtoint ptr %.val121 to i64
  %i.ds = sub i64 %i.dr, %i.v
  %i.dt = shl i64 %2, 1
  %.not113 = icmp ult i64 %i.ds, %i.dt
  br i1 %.not113, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r
  store <3 x ptr> %.sroa.0.0.copyload, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %5, align 8, !tbaa !17
  %.val.i126 = load ptr, ptr %i.t, align 8, !tbaa !30 ; 3 uses
  %.val13.i127 = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.dv = ptrtoint ptr %.val13.i127 to i64
  %i.dw = ptrtoint ptr %.val.i126 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = or i64 %2, 1
  %i.dz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i8
  %narrow2.i.i = sub nuw nsw i8 70, %i.ea
  %i.eb = udiv i8 %narrow2.i.i, 7
  %narrow.i = add nuw nsw i8 %i.eb, 1
  %i.ec = zext nneg i8 %narrow.i to i64
  %i.ed = shl i64 %2, 1
end_hunk_0
begin_hunk_1_@ZS_largeHuffmanSort_impl:bb.a

.preheader66.unr-lcssa:                           ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader66, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader66.unr-lcssa, %bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %.preheader66.unr-lcssa ]
  %lcmp.mod89 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22
  %i.h = and i32 %i.g, %i.a
  %i.i = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 false)
  %i.j = sub nuw nsw i32 32, %i.i
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !80
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !80
  br label %.preheader66

.preheader66:                                     ; preds = %.preheader66.unr-lcssa, %.epil.preheader
  %i.p = icmp sgt i32 %2, -1
  br i1 %i.p, label %.lr.ph.preheader, label %.preheader.preheader

.preheader.preheader.loopexit.unr-lcssa:          ; preds = %.lr.ph
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.preheader.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv75.epil.init = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next76.3, %.preheader.preheader.loopexit.unr-lcssa ]
  %.06069.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bk, %.preheader.preheader.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i64 %xtraiter90, 0
  tail call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv75.epil = phi i64 [ %indvars.iv75.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next76.epil, %.lr.ph.epil ] ; 2 uses
  %.06069.epil = phi i32 [ %.06069.epil.init, %.lr.ph.epil.preheader ], [ %i.t, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv75.epil ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !80
  %i.t = add nsw i32 %i.s, %.06069.epil
  store i32 %.06069.epil, ptr %i.r, align 4, !tbaa !80
  store i32 %.06069.epil, ptr %i.q, align 4, !tbaa !81
  %indvars.iv.next76.epil = add nsw i64 %indvars.iv75.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter90
  br i1 %epil.iter.cmp.not, label %.preheader.preheader, label %.lr.ph.epil, !llvm.loop !74

.preheader.preheader:                             ; preds = %.preheader.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader66
  br label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader66
  %i.u = zext nneg i32 %2 to i64                  ; 3 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %xtraiter90 = and i64 %i.v, 3                   ; 3 uses
  %i.w = icmp ult i32 %2, 3
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter93 = and i64 %i.v, 4294967292
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %i.z = and i32 %i.y, %i.a
  %i.aa = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.z, i1 false)
  %i.ab = sub nuw nsw i32 32, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !80
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !22
  %i.ak = and i32 %i.aj, %i.a
  %i.al = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.ak, i1 false)
  %i.am = sub nuw nsw i32 32, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !80
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !80
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader66.unr-lcssa, label %bb.b, !llvm.loop !75

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv75 = phi i64 [ %i.u, %.lr.ph.preheader.new ], [ %indvars.iv.next76.3, %.lr.ph ] ; 5 uses
  %.06069 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bk, %.lr.ph ] ; 3 uses
  %niter94 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter94.next.3, %.lr.ph ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv75 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !80
  %i.av = add nsw i32 %i.au, %.06069              ; 3 uses
  store i32 %.06069, ptr %i.at, align 4, !tbaa !80
  store i32 %.06069, ptr %i.as, align 4, !tbaa !81
  %i.aw = getelementptr [8 x i8], ptr %4, i64 %indvars.iv75 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = getelementptr i8, ptr %i.aw, i64 -4     ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !80
  %i.ba = add nsw i32 %i.az, %i.av                ; 3 uses
  store i32 %i.av, ptr %i.ay, align 4, !tbaa !80
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !81
  %i.bb = getelementptr [8 x i8], ptr %4, i64 %indvars.iv75 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -16
  %i.bd = getelementptr i8, ptr %i.bb, i64 -12    ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !80
  %i.bf = add nsw i32 %i.be, %i.ba                ; 3 uses
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !80
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !81
  %i.bg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv75 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = getelementptr i8, ptr %i.bg, i64 -20    ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !80
  %i.bk = add nsw i32 %i.bj, %i.bf                ; 2 uses
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !80
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !81
  %indvars.iv.next76.3 = add nsw i64 %indvars.iv75, -4 ; 2 uses
  %niter94.next.3 = add i64 %niter94, 4           ; 2 uses
  %niter94.ncmp.3 = icmp eq i64 %niter94.next.3, %unroll_iter93
  br i1 %niter94.ncmp.3, label %.preheader.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !76

bb.c:                                             ; preds = %.preheader
  %i.bl = mul nuw nsw i64 %wide.trip.count, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(1) %3, i64 %i.bl, i1 false)
  %.not71 = icmp slt i32 %2, 2
  br i1 %.not71, label %._crit_edge, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %bb.c
  %wide.trip.count86 = zext nneg i32 %i.b to i64
  br label %.lr.ph73

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv78 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !22
  %i.bo = and i32 %i.bn, %i.a
  %i.bp = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.bo, i1 false)
  %i.bq = sub nuw nsw i32 32, %i.bp
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !80 ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !80
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [12 x i8], ptr %3, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bx, ptr noundef nonnull align 4 dereferenceable(12) %i.bm, i64 12, i1 false), !tbaa.struct !82
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond82.not, label %bb.c, label %.preheader, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret void

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %bb.e
  %indvars.iv83 = phi i64 [ 2, %.lr.ph73.preheader ], [ %indvars.iv.next84, %bb.e ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv83 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !81 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !80
  %i.cc = sub nsw i32 %i.cb, %i.bz                ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph73
  %i.ce = sext i32 %i.bz to i64
  %i.cf = getelementptr inbounds [12 x i8], ptr %0, i64 %i.ce
  %i.cg = trunc i64 %indvars.iv83 to i32
  %i.ch = add i32 %i.cg, -1
  tail call fastcc void @ZS_largeHuffmanSort_impl(ptr noundef nonnull %i.cf, i32 noundef %i.cc, i32 noundef %i.ch, ptr noundef nonnull %3, ptr noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph73
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %._crit_edge, label %.lr.ph73, !llvm.loop !78
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS21ZL_OperationContext_s", !11, i64 0}
!13 = !{!"", !8, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"", !13, i64 0, !13, i64 4, !8, i64 8, !14, i64 16}
!16 = !{!"", !12, i64 0, !15, i64 8}
!17 = !{!16, !12, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!8, !8, i64 0}
!20 = !{!"short", !7, i64 0}
!21 = !{!"", !8, i64 0, !8, i64 4, !20, i64 8, !20, i64 10}
!22 = !{!21, !8, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!20, !20, i64 0}
!26 = !{!"", !20, i64 0, !20, i64 2}
!27 = !{!26, !20, i64 2}
!28 = !{!7, !7, i64 0}
!29 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!30 = !{!29, !14, i64 8}
!31 = !{!29, !14, i64 16}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !23}
!54 = !{!21, !20, i64 8}
!55 = !{!21, !8, i64 4}
!56 = !{!21, !20, i64 10}
!57 = !{!26, !20, i64 0}
!58 = !{!"branch_weights", !"expected", i32 2144624150, i32 2859498}
!59 = distinct !{!59, !23, !61, !62}
!60 = distinct !{!60, !23, !62, !61}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = !{!"long", !7, i64 0}
!66 = !{!"", !65, i64 0}
!67 = !{!66, !65, i64 0}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = distinct !{!69, !23}
!70 = distinct !{!70, !23}
!71 = distinct !{!71, !23}
!72 = distinct !{!72, !23}
!73 = distinct !{!73, !24}
!74 = distinct !{!74, !24}
!75 = distinct !{!75, !23}
!76 = distinct !{!76, !23}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !23}
!79 = !{!"", !8, i64 0, !8, i64 4}
!80 = !{!79, !8, i64 4}
!81 = !{!79, !8, i64 0}
!82 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 2, !25, i64 10, i64 2, !25}
end_hunk_1
