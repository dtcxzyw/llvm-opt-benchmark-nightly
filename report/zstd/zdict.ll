Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_trainFromBuffer_legacy:bb.a
  %.8.i = phi i64 [ -64, %ZDICT_totalSampleSize.exit.i ], [ %.8.ph.i, %.thread235.sink.split.i ]
  tail call void @free(ptr noundef %i.o) #16
  br label %ZDICT_totalSampleSize.exit.thread

ZDICT_totalSampleSize.exit.thread:                ; preds = %bb.a, %bb.b, %ZDICT_totalSampleSize.exit, %ZDICT_trainFromBuffer_unsafe_legacy.exit
  %.0 = phi i64 [ 0, %ZDICT_totalSampleSize.exit ], [ %.8.i, %ZDICT_trainFromBuffer_unsafe_legacy.exit ], [ -64, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZDICT_trainFromBuffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.ZDICT_fastCover_params_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 8, ptr %i.a, align 4, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.b, align 4, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 3, ptr %i.c, align 4, !tbaa !91
  %i.d = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %i.d
}

declare i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @ZDICT_addEntropyTablesFromBuffer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.ZDICT_params_t, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %i.a = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly byval(%struct.ZDICT_params_t) align 8 captures(none) %6) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %6, align 8, !tbaa !10     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 3, i32 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.k) #20 ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.m = tail call i32 @fflush(ptr noundef %i.l)  ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = add i64 %2, -8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.q = sub i64 0, %1
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q ; 3 uses
  %i.s = tail call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %i.n, i64 noundef %i.o, i32 noundef %i.c, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.r, i64 noundef %1, i32 noundef %i.e) ; 3 uses
  %i.t = icmp ult i64 %i.s, -119
  %i.u = add nuw i64 %i.s, 8                      ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge
  store i32 -332356553, ptr %0, align 1, !tbaa !8
  %i.v = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(address) %i.r, i64 noundef %1, i64 noundef 0) #18
  %i.w = urem i64 %i.v, 2147450880
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 32768
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %.not46 = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not46, i32 %i.y, i32 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.ac, align 1, !tbaa !8
  %i.ad = add i64 %i.u, %1                        ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %2
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.r, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.1 = phi i64 [ %i.ag, %bb.e ], [ %i.s, %.critedge ]
  ret i64 %.1
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #5

declare void @ZSTD_getParams(ptr dead_on_unwind writable sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #5

declare ptr @ZSTD_createCCtx() local_unnamed_addr #5

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

declare i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_compressBlock_deprecated(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_getSeqStore(ptr noundef) local_unnamed_addr #5

declare i32 @ZSTD_seqToCodes(ptr noundef) local_unnamed_addr #5

declare i32 @divsufsort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @ZDICT_tryMerge(ptr nofree noundef nonnull captures(none) %0, i64 %1, i32 %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #12 {
bb.a:
  %.sroa.0102.sroa.0.0.extract.trunc = trunc i64 %1 to i32 ; 7 uses
  %.sroa.0102.sroa.14.0.extract.shift = lshr i64 %1, 32 ; 2 uses
  %.sroa.0102.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.0102.sroa.14.0.extract.shift to i32 ; 7 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.b = add i32 %.sroa.0102.sroa.14.0.extract.trunc, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.c = icmp ugt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %3 to i64
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

.lr.ph197:                                        ; preds = %bb.e
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = zext i32 %3 to i64
  %wide.trip.count231 = zext i32 %i.a to i64
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.i = icmp eq i64 %indvars.iv, %i.d
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10   ; 3 uses
  %i.l = icmp ule i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc
  %.not164 = icmp ugt i32 %i.k, %i.b
  %or.cond = select i1 %i.l, i1 true, i1 %.not164
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !11
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.j, align 4, !tbaa !10
  %i.q = mul i32 %i.m, %2
  %i.r = udiv i32 %i.q, %.sroa.0102.sroa.14.0.extract.trunc
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.v = add i32 %i.r, %i.u
  %i.w = add i32 %i.v, %i.t                       ; 3 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !12
  %.sroa.0102.0.copyload = load i64, ptr %i.j, align 4, !tbaa !8
  %i.x = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.x, label %.lr.ph203, label %.critedge

.lr.ph203:                                        ; preds = %bb.c, %bb.d
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %bb.d ], [ %indvars.iv, %bb.c ] ; 3 uses
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, -1 ; 3 uses
  %5 = and i64 %indvars.iv.next225, 4294967295
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = icmp ult i32 %i.aa, %i.w
  br i1 %i.ab, label %bb.d, label %.critedge.loopexit.split.loop.exit269

bb.d:                                             ; preds = %.lr.ph203
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !24
  %6 = and i64 %indvars.iv.next225, 4294967294
  %.not248 = icmp eq i64 %6, 0
  br i1 %.not248, label %.critedge, label %.lr.ph203, !llvm.loop !92

.critedge.loopexit.split.loop.exit269:            ; preds = %.lr.ph203
  %i.ad = trunc nuw i64 %indvars.iv224 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit269, %bb.c
  %.1.lcssa = phi i32 [ 1, %bb.c ], [ %i.ad, %.critedge.loopexit.split.loop.exit269 ], [ 1, %bb.d ] ; 2 uses
  %i.ae = zext i32 %.1.lcssa to i64
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ae ; 2 uses
  store i64 %.sroa.0102.0.copyload, ptr %i.af, align 4, !tbaa !8
  %.sroa.24.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.w, ptr %.sroa.24.0..sroa_idx132, align 4, !tbaa !8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph197, label %.lr.ph, !llvm.loop !93

bb.f:                                             ; preds = %.lr.ph197, %isIncluded.exit
  %indvars.iv227 = phi i64 [ 1, %.lr.ph197 ], [ %indvars.iv.next228, %isIncluded.exit ] ; 6 uses
  %i.ag = icmp eq i64 %indvars.iv227, %i.h
  br i1 %i.ag, label %isIncluded.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv227 ; 8 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !10 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !11 ; 6 uses
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  %.not = icmp uge i32 %i.al, %.sroa.0102.sroa.0.0.extract.trunc
  %i.am = icmp ult i32 %i.ai, %.sroa.0102.sroa.0.0.extract.trunc
  %or.cond165 = and i1 %i.am, %.not
  br i1 %or.cond165, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.an = sub nsw i32 %i.b, %i.al                 ; 3 uses
  %i.ao = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.ar = add i32 %i.aq, %i.ao                    ; 3 uses
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !12
  %i.as = icmp sgt i32 %i.an, 0
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.au = add i32 %i.an, %i.ak
  store i32 %i.au, ptr %i.at, align 4, !tbaa !11
  %i.av = mul i32 %i.an, %2
  %i.aw = udiv i32 %i.av, %.sroa.0102.sroa.14.0.extract.trunc
  %i.ax = add i32 %i.aw, %i.ar                    ; 2 uses
  store i32 %i.ax, ptr %i.ap, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.24.0.copyload135 = phi i32 [ %i.ax, %bb.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.0102.0.copyload112 = load i64, ptr %i.ah, align 4, !tbaa !8
  %i.ay = icmp samesign ugt i64 %indvars.iv227, 1
  br i1 %i.ay, label %.lr.ph199, label %.critedge2

.lr.ph199:                                        ; preds = %bb.j, %bb.k
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %bb.k ], [ %indvars.iv227, %bb.j ] ; 3 uses
  %indvars.iv.next237 = add nsw i64 %indvars.iv236, -1 ; 3 uses
  %7 = and i64 %indvars.iv.next237, 4294967295
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %7 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !12
  %i.bc = icmp ult i32 %i.bb, %.sroa.24.0.copyload135
  br i1 %i.bc, label %bb.k, label %.critedge2.loopexit.split.loop.exit274

bb.k:                                             ; preds = %.lr.ph199
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv236
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.az, i64 12, i1 false), !tbaa.struct !24
  %8 = and i64 %indvars.iv.next237, 4294967294
  %.not249 = icmp eq i64 %8, 0
  br i1 %.not249, label %.critedge2, label %.lr.ph199, !llvm.loop !94

.critedge2.loopexit.split.loop.exit274:           ; preds = %.lr.ph199
  %i.be = trunc nuw i64 %indvars.iv236 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.k, %.critedge2.loopexit.split.loop.exit274, %bb.j
  %.3.lcssa = phi i32 [ 1, %bb.j ], [ %i.be, %.critedge2.loopexit.split.loop.exit274 ], [ 1, %bb.k ] ; 2 uses
  %i.bf = zext i32 %.3.lcssa to i64
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bf ; 2 uses
  store i64 %.sroa.0102.0.copyload112, ptr %i.bg, align 4, !tbaa !8
  %.sroa.24.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %.sroa.24.0.copyload135, ptr %.sroa.24.0..sroa_idx136, align 4, !tbaa !8
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.bh = zext i32 %i.ai to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 %i.bh ; 2 uses
  %.val166 = load i64, ptr %i.bi, align 1, !tbaa !17
  %.val = load i64, ptr %i.g, align 1, !tbaa !17
  %i.bj = icmp eq i64 %.val166, %.val
  br i1 %i.bj, label %bb.m, label %isIncluded.exit

bb.m:                                             ; preds = %bb.l
  %i.bk = zext i32 %i.ak to i64
  %.not13.i = icmp eq i32 %i.ak, 0
  br i1 %.not13.i, label %isIncluded.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.010.i = phi i64 [ %i.bp, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.010.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 %.010.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.bm, %i.bo
  br i1 %.not.i, label %bb.n, label %isIncluded.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.bp = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bp, %i.bk
  br i1 %exitcond.not.i, label %isIncluded.exit.thread, label %.lr.ph.i, !llvm.loop !95

isIncluded.exit.thread:                           ; preds = %bb.m, %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.2196218 = trunc i64 %indvars.iv227 to i32
  %i.br = sub i32 %.sroa.0102.sroa.14.0.extract.trunc, %i.ak
  %narrow = tail call i32 @llvm.umax.i32(i32 %i.br, i32 1)
  %spec.select = zext i32 %narrow to i64
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.ah, align 4, !tbaa !10
  %i.bs = zext i32 %2 to i64
  %i.bt = mul nuw i64 %spec.select, %i.bs
  %i.bu = udiv i64 %i.bt, %.sroa.0102.sroa.14.0.extract.shift
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !12
  %i.by = add i32 %i.bx, %i.bv
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !12
  %i.bz = add i32 %i.ak, 1
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 %.sroa.0102.sroa.14.0.extract.trunc)
  store i32 %i.ca, ptr %i.bq, align 4, !tbaa !11
  br label %.loopexit

isIncluded.exit:                                  ; preds = %.lr.ph.i, %bb.l, %bb.f
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count231
  br i1 %exitcond232.not, label %.loopexit, label %bb.f, !llvm.loop !96

.loopexit:                                        ; preds = %isIncluded.exit, %bb.a, %isIncluded.exit.thread, %.critedge2, %.critedge
  %.0156 = phi i32 [ %.1.lcssa, %.critedge ], [ %.3.lcssa, %.critedge2 ], [ %.2196218, %isIncluded.exit.thread ], [ 0, %bb.a ], [ 0, %isIncluded.exit ]
  ret i32 %.0156
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v36i32(<36 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v52i32(<52 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold nounwind }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!10 = !{!9, !5, i64 0}
!11 = !{!9, !5, i64 4}
!12 = !{!9, !5, i64 8}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!4, !4, i64 0}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!"short", !4, i64 0}
!24 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8}
!25 = distinct !{!25, !18, !19, !20}
!26 = distinct !{!26, !18, !20, !19}
!27 = distinct !{!27, !18, !19, !20}
!28 = distinct !{!28, !18, !20, !19}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18, !19, !20}
!40 = distinct !{!40, !18, !20, !19}
!41 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!42 = !{!"", !41, i64 0, !9, i64 28}
!43 = !{!42, !5, i64 0}
!44 = !{!"p1 _ZTS8SeqDef_s", !13, i64 0}
!45 = !{!"p1 omnipotent char", !13, i64 0}
!46 = !{!"", !44, i64 0, !44, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !16, i64 56, !16, i64 64, !5, i64 72, !5, i64 76}
!47 = !{!46, !45, i64 16}
!48 = !{!46, !45, i64 24}
!49 = !{!46, !44, i64 8}
!50 = !{!46, !44, i64 0}
!51 = !{!46, !45, i64 48}
!52 = !{!46, !45, i64 40}
!53 = !{!46, !45, i64 32}
!54 = !{!"SeqDef_s", !5, i64 0, !23, i64 4, !23, i64 6}
!55 = !{!54, !5, i64 0}
!56 = distinct !{!56, !18, !19, !20}
!57 = distinct !{!57, !18, !20, !19}
!58 = distinct !{!58, !18, !19, !20}
!59 = distinct !{!59, !18, !20, !19}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !22}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18}
end_hunk_0
