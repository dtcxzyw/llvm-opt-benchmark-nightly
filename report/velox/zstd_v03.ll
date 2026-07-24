inline.NumInlined: 289
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ZSTDv03_decompress:bb.a
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.e, %i.ak
  %i.am = icmp ult i64 %i.al, 3
  br i1 %i.am, label %ZSTD_decompress.exit, label %bb.c

ZSTD_copyUncompressedBlock.exit.thread78.i.i:     ; preds = %ZSTD_copyUncompressedBlock.exit.i.i, %bb.h, %.thread71.i.ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread78_crit_edge.i_crit_edge.i
  %.pre-phi.i.i = phi i64 [ %.pre.i, %.thread71.i.ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread78_crit_edge.i_crit_edge.i ], [ %i.ac, %ZSTD_copyUncompressedBlock.exit.i.i ], [ %i.z, %bb.h ]
  %i.an = ptrtoint ptr %0 to i64
  %i.ao = sub i64 %.pre-phi.i.i, %i.an
  br label %ZSTD_decompress.exit

ZSTD_decompress.exit:                             ; preds = %bb.e, %bb.f, %bb.g, %ZSTD_copyUncompressedBlock.exit.thread.i.i, %bb.i, %bb.a, %bb.b, %.thread71.i.i, %ZSTD_copyUncompressedBlock.exit.thread78.i.i
  %.2.i.i = phi i64 [ %i.ao, %ZSTD_copyUncompressedBlock.exit.thread78.i.i ], [ -72, %bb.a ], [ -10, %bb.b ], [ -72, %.thread71.i.i ], [ -70, %bb.g ], [ %i.ae, %ZSTD_copyUncompressedBlock.exit.thread.i.i ], [ -72, %bb.e ], [ -1, %bb.f ], [ -72, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @ZSTDv03_createDCtx() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(141384) ptr @malloc(i64 noundef 141384) #19 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ZSTD_createDCtx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10272
  store i64 4, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 10284
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 10256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %ZSTD_createDCtx.exit

ZSTD_createDCtx.exit:                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @ZSTDv03_freeDCtx(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  tail call void @free(ptr noundef %0) #18
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @ZSTDv03_resetDCtx(ptr nofree noundef writeonly captures(none) initializes((10256, 10280), (10284, 10288)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10272
  store i64 4, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10284
  store i32 0, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTDv03_nextSrcSizeToDecompress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10272
  %.val = load i64, ptr %i.a, align 8, !tbaa !16
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv03_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10272 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %.not.i = icmp eq i64 %4, %i.b
  br i1 %.not.i, label %bb.b, label %ZSTD_decompressContinue.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %.not43.i = icmp eq ptr %1, %i.d
  br i1 %.not43.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10264
  store ptr %1, ptr %i.e, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10284 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17
  switch i32 %i.g, label %bb.k [
    i32 0, label %bb.e
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %.val.i = load i32, ptr %3, align 1
  %.not46.i = icmp eq i32 %.val.i, -47205085
  br i1 %.not46.i, label %bb.f, label %ZSTD_decompressContinue.exit

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.f, align 4, !tbaa !17
  store i64 3, ptr %i.a, align 8, !tbaa !16
  br label %ZSTD_decompressContinue.exit

bb.g:                                             ; preds = %bb.d
  %i.h = load i8, ptr %3, align 1, !tbaa !9
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = lshr i32 %i.i, 6                         ; 2 uses
  switch i32 %i.j, label %bb.h [
    i32 3, label %ZSTD_getcBlockSize.exit.i
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = shl nuw nsw i32 %i.i, 16
  %i.l = and i32 %i.k, 458752
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.t, %i.p
  %i.v = zext nneg i32 %i.u to i64
  br label %bb.i

ZSTD_getcBlockSize.exit.i:                        ; preds = %bb.g
  store i64 0, ptr %i.a, align 8, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.ph.i = phi i64 [ %i.v, %bb.h ], [ 1, %bb.g ]
  store i64 %.0.i.ph.i, ptr %i.a, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10280
  store i32 %i.j, ptr %i.w, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ZSTD_getcBlockSize.exit.i
  %storemerge.i = phi i32 [ 2, %bb.i ], [ 0, %ZSTD_getcBlockSize.exit.i ]
  store i32 %storemerge.i, ptr %i.f, align 4, !tbaa !17
  br label %ZSTD_decompressContinue.exit

bb.k:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10280
  %i.y = load i32, ptr %i.x, align 8, !tbaa !19
  switch i32 %i.y, label %ZSTD_decompressContinue.exit [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 3, label %ZSTD_copyUncompressedBlock.exit.thread.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = tail call fastcc i64 @ZSTD_decompressBlock(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %ZSTD_copyUncompressedBlock.exit.i

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp ugt i64 %4, %2
  br i1 %i.aa, label %ZSTD_copyUncompressedBlock.exit.thread54.i, label %bb.n

ZSTD_copyUncompressedBlock.exit.thread54.i:       ; preds = %bb.m
  store i32 1, ptr %i.f, align 4, !tbaa !17
  store i64 3, ptr %i.a, align 8, !tbaa !16
  br label %ZSTD_decompressContinue.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %ZSTD_copyUncompressedBlock.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %ZSTD_copyUncompressedBlock.exit.i

ZSTD_copyUncompressedBlock.exit.thread.i:         ; preds = %bb.n, %bb.k
  store i32 1, ptr %i.f, align 4, !tbaa !17
  store i64 3, ptr %i.a, align 8, !tbaa !16
  br label %bb.p

ZSTD_copyUncompressedBlock.exit.i:                ; preds = %bb.o, %bb.l
  %.0.i = phi i64 [ %i.z, %bb.l ], [ %4, %bb.o ]  ; 3 uses
  store i32 1, ptr %i.f, align 4, !tbaa !17
  store i64 3, ptr %i.a, align 8, !tbaa !16
  %i.ab = icmp ult i64 %.0.i, -119
  br i1 %i.ab, label %bb.p, label %ZSTD_decompressContinue.exit

bb.p:                                             ; preds = %ZSTD_copyUncompressedBlock.exit.i, %ZSTD_copyUncompressedBlock.exit.thread.i
  %.053.i = phi i64 [ 0, %ZSTD_copyUncompressedBlock.exit.thread.i ], [ %.0.i, %ZSTD_copyUncompressedBlock.exit.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.053.i
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !18
  br label %ZSTD_decompressContinue.exit

ZSTD_decompressContinue.exit:                     ; preds = %bb.a, %bb.e, %bb.f, %bb.j, %bb.k, %ZSTD_copyUncompressedBlock.exit.thread54.i, %ZSTD_copyUncompressedBlock.exit.i, %bb.p
  %.3.i = phi i64 [ -10, %bb.e ], [ -72, %bb.a ], [ 0, %bb.j ], [ 0, %bb.f ], [ %.053.i, %bb.p ], [ -1, %bb.k ], [ %.0.i, %ZSTD_copyUncompressedBlock.exit.i ], [ -70, %ZSTD_copyUncompressedBlock.exit.thread54.i ]
  ret i64 %.3.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %5 = ptrtoaddr ptr %1 to i64
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [128 x i16], align 16             ; 12 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = icmp ult i64 %4, 11
  br i1 %i.i, label %ZSTD_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %3, align 1, !tbaa !9
  %i.k = and i8 %i.j, 3
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.j
    i8 2, label %bb.n
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 7 uses
  %.val16.i.i = load i32, ptr %3, align 1
  %i.m = lshr i32 %.val16.i.i, 2
  %i.n = and i32 %i.m, 524287                     ; 7 uses
  %i.o = zext nneg i32 %i.n to i64                ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.val.i.i = load i32, ptr %i.p, align 1         ; 2 uses
  %i.q = lshr i32 %.val.i.i, 5
  %i.r = and i32 %i.q, 524287                     ; 5 uses
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = icmp samesign ugt i32 %i.n, 131072
  %i.u = lshr i32 %.val.i.i, 24
  %i.v = trunc nuw i32 %i.u to i8
  br i1 %i.t, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = add nuw nsw i64 %i.s, 5                  ; 2 uses
  %i.x = icmp ugt i64 %i.w, %4
  br i1 %i.x, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.z = lshr i32 %i.n, 8                         ; 2 uses
  %i.aa = icmp eq i32 %i.n, 0
  %i.ab = icmp samesign ugt i32 %i.r, %i.n
  %or.cond.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq i32 %i.r, %i.n
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.y, i64 range(i64 0, 524288) %i.o, i1 false)
  br label %ZSTD_decodeLiteralsBlock.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = icmp eq i32 %i.r, 1
  br i1 %i.ad, label %bb.i, label %HUF_decompress.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 %i.v, i64 range(i64 0, 524288) %i.o, i1 false)
  br label %ZSTD_decodeLiteralsBlock.exit

HUF_decompress.exit.i.i:                          ; preds = %bb.h
  %.lhs.trunc.i.i.i = shl nuw nsw i32 %i.r, 4
  %i.ae = udiv i32 %.lhs.trunc.i.i.i, %i.n
  %.zext.i.i.i = zext nneg i32 %i.ae to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr @algoTime, i64 %.zext.i.i.i ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = mul i32 %i.ai, %i.z
  %i.ak = add i32 %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = mul i32 %i.ao, %i.z
  %i.aq = add i32 %i.ap, %i.am                    ; 2 uses
  %i.ar = lshr i32 %i.aq, 4
  %i.as = add i32 %i.ar, %i.aq
  %i.at = icmp ult i32 %i.as, %i.ak
  %spec.select.i.i.i = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @HUF_decompress.decompress, i64 %spec.select.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !23
  %i.aw = tail call i64 %i.av(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 524288) %i.o, ptr noundef nonnull %i.y, i64 noundef range(i64 0, 524288) %i.s) #18, !inline_history !24
  %i.ax = icmp ult i64 %i.aw, -119
  br i1 %i.ax, label %ZSTD_decodeLiteralsBlock.exit, label %ZSTD_decodeLiteralsBlock.exit.thread25

bb.j:                                             ; preds = %bb.b
  %.val47.i = load i32, ptr %3, align 1
  %i.ay = lshr i32 %.val47.i, 2
  %i.az = and i32 %i.ay, 4194303                  ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64              ; 10 uses
  %i.bb = add i64 %4, -11
  %i.bc = icmp ult i64 %i.bb, %i.ba
  br i1 %i.bc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp samesign ugt i32 %i.az, 131072
  %i.be = add nsw i64 %4, -3
  %i.bf = icmp samesign ult i64 %i.be, %i.ba
  %or.cond.i = or i1 %i.bd, %i.bf
  br i1 %or.cond.i, label %ZSTD_decompressSequences.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 1 %3, i64 %i.ba, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.ba, ptr %i.bi, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ba
  store i64 0, ptr %i.bj, align 1
  %i.bk = add nuw nsw i64 %i.ba, 3
  br label %ZSTD_decodeLiteralsBlock.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.ba, ptr %i.bn, align 8, !tbaa !26
  %i.bo = add nuw nsw i64 %i.ba, 3
  br label %ZSTD_decodeLiteralsBlock.exit.thread

bb.n:                                             ; preds = %bb.b
  %.val.i = load i32, ptr %3, align 1             ; 2 uses
  %i.bp = lshr i32 %.val.i, 2
  %i.bq = and i32 %i.bp, 4194303                  ; 2 uses
  %i.br = icmp samesign ugt i32 %i.bq, 131072
  br i1 %i.br, label %ZSTD_decompressSequences.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = lshr i32 %.val.i, 24
  %i.bt = trunc nuw i32 %i.bs to i8
  %i.bu = zext nneg i32 %i.bq to i64              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 3 uses
  %i.bw = add nuw nsw i64 %i.bu, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i8 %i.bt, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.bu, ptr %i.by, align 8, !tbaa !26
  br label %ZSTD_decodeLiteralsBlock.exit.thread

ZSTD_decodeLiteralsBlock.exit.thread25:           ; preds = %bb.c, %bb.d, %bb.e, %HUF_decompress.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.l, ptr %i.bz, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 131072, ptr %i.ca, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 141376
  store i64 0, ptr %i.cb, align 8
  br label %ZSTD_decompressSequences.exit

ZSTD_decodeLiteralsBlock.exit:                    ; preds = %bb.g, %bb.i, %HUF_decompress.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.l, ptr %i.cc, align 8, !tbaa !25
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.o, ptr %i.cd, align 8, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  store i64 0, ptr %i.ce, align 1
  br label %ZSTD_decodeLiteralsBlock.exit.thread

ZSTD_decodeLiteralsBlock.exit.thread:             ; preds = %bb.o, %bb.l, %bb.m, %ZSTD_decodeLiteralsBlock.exit
  %i.cf = phi i64 [ %i.o, %ZSTD_decodeLiteralsBlock.exit ], [ %i.bu, %bb.o ], [ %i.ba, %bb.l ], [ %i.ba, %bb.m ]
  %i.cg = phi ptr [ %i.l, %ZSTD_decodeLiteralsBlock.exit ], [ %i.bv, %bb.o ], [ %i.bg, %bb.l ], [ %i.bl, %bb.m ] ; 2 uses
  %.2.i19 = phi i64 [ %i.w, %ZSTD_decodeLiteralsBlock.exit ], [ 4, %bb.o ], [ %i.bk, %bb.l ], [ %i.bo, %bb.m ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 %.2.i19 ; 8 uses
  %i.ci = sub i64 %4, %.2.i19                     ; 5 uses
  %i.cj = getelementptr i8, ptr %1, i64 %2        ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4100 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 10264
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !12 ; 2 uses
  %i.cp = getelementptr i8, ptr %3, i64 %4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.cq = icmp ult i64 %i.ci, 5
  br i1 %i.cq, label %ZSTD_decodeSeqHeaders.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %ZSTD_decodeLiteralsBlock.exit.thread
  %.val.i.i15 = load i16, ptr %i.ch, align 1
  %i.cr = zext i16 %.val.i.i15 to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cu = zext i8 %i.ct to i32                    ; 5 uses
  %i.cv = lshr i32 %i.cu, 6
  %i.cw = lshr i32 %i.cu, 4
  %i.cx = and i32 %i.cw, 3
  %i.cy = lshr i32 %i.cu, 2
  %i.cz = and i32 %i.cy, 3
end_hunk_0
begin_hunk_1_@ZSTD_decompressBlock:bb.a
  %i.pq = icmp eq i8 %i.pp, 0
  br i1 %i.pq, label %ZSTD_decompressSequences.exit, label %BIT_initDStream.exit.thread154.i

BIT_initDStream.exit.thread154.i:                 ; preds = %bb.bn
  %i.pr = zext i8 %i.pp to i32
  %i.ps = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pr, i1 true)
  %i.pt = trunc nuw nsw i64 %gepdiff.i to i32
  %i.pu = shl nuw nsw i32 %i.pt, 3
  %reass.sub = sub nsw i32 %i.ps, %i.pu
  %i.pv = add nsw i32 %reass.sub, 41
  br label %bb.bo

BIT_initDStream.exit.i:                           ; preds = %bb.bf
  %i.pw = getelementptr inbounds i8, ptr %i.cp, i64 -8 ; 2 uses
  %.val.i75.i = load i64, ptr %i.pw, align 1
  %i.px = zext i8 %i.ob to i32
  %i.py = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.px, i1 true)
  %i.pz = xor i32 %i.py, 31
  %i.qa = sub nuw nsw i32 8, %i.pz
  %i.qb = icmp ult i64 %gepdiff.i, -119
  br i1 %i.qb, label %bb.bo, label %ZSTD_decompressSequences.exit

bb.bo:                                            ; preds = %BIT_initDStream.exit.i, %BIT_initDStream.exit.thread154.i
  %.sroa.42112.1163.i = phi ptr [ %i.nx, %BIT_initDStream.exit.thread154.i ], [ %i.pw, %BIT_initDStream.exit.i ] ; 6 uses
  %.sroa.20.1162.i = phi i32 [ %i.pv, %BIT_initDStream.exit.thread154.i ], [ %i.qa, %BIT_initDStream.exit.i ] ; 2 uses
  %.sroa.0.2161.i = phi i64 [ %.sroa.0.1.i, %BIT_initDStream.exit.thread154.i ], [ %.val.i75.i, %BIT_initDStream.exit.i ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %0, align 8
  %i.qc = zext i16 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.qd = and i32 %.sroa.20.1162.i, 63
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = shl i64 %.sroa.0.2161.i, %i.qe
  %i.qg = lshr i64 %i.qf, 1
  %i.qh = and i32 %i.qc, 63
  %i.qi = xor i32 %i.qh, 63
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = lshr i64 %i.qg, %i.qj
  %i.ql = add nuw nsw i32 %.sroa.20.1162.i, %i.qc ; 7 uses
  %i.qm = icmp samesign ugt i32 %i.ql, 64
  br i1 %i.qm, label %FSE_initDState.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qn = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %.not.i.i.i = icmp ult ptr %.sroa.42112.1163.i, %i.qn
  br i1 %.not.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qo = lshr i32 %i.ql, 3
  %i.qp = and i32 %i.ql, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i

bb.br:                                            ; preds = %bb.bp
  %i.qq = icmp eq ptr %.sroa.42112.1163.i, %.786120.i.i
  br i1 %i.qq, label %FSE_initDState.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qr = lshr i32 %i.ql, 3                       ; 2 uses
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = sub nsw i64 0, %i.qs
  %i.qu = getelementptr inbounds i8, ptr %.sroa.42112.1163.i, i64 %i.qt
  %i.qv = icmp ult ptr %i.qu, %.786120.i.i
  %i.qw = ptrtoint ptr %.sroa.42112.1163.i to i64
  %i.qx = sub i64 %i.qw, %i.nt
  %i.qy = trunc i64 %i.qx to i32
  %.024.i.i.i = select i1 %i.qv, i32 %i.qy, i32 %i.qr ; 2 uses
  %i.qz = shl i32 %.024.i.i.i, 3
  %i.ra = sub i32 %i.ql, %i.qz
  br label %BIT_reloadDStream.exit.sink.split.i.i

BIT_reloadDStream.exit.sink.split.i.i:            ; preds = %bb.bs, %bb.bq
  %.sroa.20.2.i = phi i32 [ %i.ra, %bb.bs ], [ %i.qp, %bb.bq ]
  %.pn181.in.i = phi i32 [ %.024.i.i.i, %bb.bs ], [ %i.qo, %bb.bq ]
  %.pn181.i = zext i32 %.pn181.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn181.i
  %.sroa.42112.2.i = getelementptr inbounds i8, ptr %.sroa.42112.1163.i, i64 %.pn.i ; 2 uses
  %.val30.i.sink.i.i = load i64, ptr %.sroa.42112.2.i, align 1
  br label %FSE_initDState.exit.i

FSE_initDState.exit.i:                            ; preds = %BIT_reloadDStream.exit.sink.split.i.i, %bb.br, %bb.bo
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2161.i, %bb.bo ], [ %.sroa.0.2161.i, %bb.br ], [ %.val30.i.sink.i.i, %BIT_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %.sroa.20.3.i = phi i32 [ %i.ql, %bb.bo ], [ %i.ql, %bb.br ], [ %.sroa.20.2.i, %BIT_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.sroa.42112.3.i = phi ptr [ %.sroa.42112.1163.i, %bb.bo ], [ %.786120.i.i, %bb.br ], [ %.sroa.42112.2.i, %BIT_reloadDStream.exit.sink.split.i.i ] ; 6 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i77.i = load i16, ptr %i.cm, align 4
  %i.rc = zext i16 %.sroa.0.0.copyload.i77.i to i32 ; 2 uses
  %i.rd = and i32 %.sroa.20.3.i, 63
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = shl i64 %.sroa.0.3.i, %i.re
  %i.rg = lshr i64 %i.rf, 1
  %i.rh = and i32 %i.rc, 63
  %i.ri = xor i32 %i.rh, 63
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = lshr i64 %i.rg, %i.rj
  %i.rl = add i32 %.sroa.20.3.i, %i.rc            ; 7 uses
  %i.rm = icmp ugt i32 %i.rl, 64
  br i1 %i.rm, label %FSE_initDState.exit85.i, label %bb.bt

bb.bt:                                            ; preds = %FSE_initDState.exit.i
  %i.rn = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %.not.i.i80.i = icmp ult ptr %.sroa.42112.3.i, %i.rn
  br i1 %.not.i.i80.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ro = lshr i32 %i.rl, 3
  %i.rp = and i32 %i.rl, 7
  br label %BIT_reloadDStream.exit.sink.split.i81.i

bb.bv:                                            ; preds = %bb.bt
  %i.rq = icmp eq ptr %.sroa.42112.3.i, %.786120.i.i
  br i1 %i.rq, label %FSE_initDState.exit85.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rr = lshr i32 %i.rl, 3                       ; 2 uses
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = sub nsw i64 0, %i.rs
  %i.ru = getelementptr inbounds i8, ptr %.sroa.42112.3.i, i64 %i.rt
  %i.rv = icmp ult ptr %i.ru, %.786120.i.i
  %i.rw = ptrtoint ptr %.sroa.42112.3.i to i64
  %i.rx = sub i64 %i.rw, %i.nt
  %i.ry = trunc i64 %i.rx to i32
  %.024.i.i84.i = select i1 %i.rv, i32 %i.ry, i32 %i.rr ; 2 uses
  %i.rz = shl i32 %.024.i.i84.i, 3
  %i.sa = sub i32 %i.rl, %i.rz
  br label %BIT_reloadDStream.exit.sink.split.i81.i

BIT_reloadDStream.exit.sink.split.i81.i:          ; preds = %bb.bw, %bb.bu
  %.sroa.20.4.i = phi i32 [ %i.sa, %bb.bw ], [ %i.rp, %bb.bu ]
  %.pn183.in.i = phi i32 [ %.024.i.i84.i, %bb.bw ], [ %i.ro, %bb.bu ]
  %.pn183.i = zext i32 %.pn183.in.i to i64
  %.pn182.i = sub nsw i64 0, %.pn183.i
  %.sroa.42112.4.i = getelementptr inbounds i8, ptr %.sroa.42112.3.i, i64 %.pn182.i ; 2 uses
  %.val30.i.sink.i83.i = load i64, ptr %.sroa.42112.4.i, align 1
  br label %FSE_initDState.exit85.i

FSE_initDState.exit85.i:                          ; preds = %BIT_reloadDStream.exit.sink.split.i81.i, %bb.bv, %FSE_initDState.exit.i
  %.sroa.0.4.i = phi i64 [ %.sroa.0.3.i, %FSE_initDState.exit.i ], [ %.sroa.0.3.i, %bb.bv ], [ %.val30.i.sink.i83.i, %BIT_reloadDStream.exit.sink.split.i81.i ] ; 2 uses
  %.sroa.20.5.i = phi i32 [ %i.rl, %FSE_initDState.exit.i ], [ %i.rl, %bb.bv ], [ %.sroa.20.4.i, %BIT_reloadDStream.exit.sink.split.i81.i ] ; 2 uses
  %.sroa.42112.5.i = phi ptr [ %.sroa.42112.3.i, %FSE_initDState.exit.i ], [ %.786120.i.i, %bb.bv ], [ %.sroa.42112.4.i, %BIT_reloadDStream.exit.sink.split.i81.i ] ; 6 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %.sroa.0.0.copyload.i86.i = load i16, ptr %i.cl, align 8
  %i.sc = zext i16 %.sroa.0.0.copyload.i86.i to i32 ; 2 uses
  %i.sd = and i32 %.sroa.20.5.i, 63
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = shl i64 %.sroa.0.4.i, %i.se
  %i.sg = lshr i64 %i.sf, 1
  %i.sh = and i32 %i.sc, 63
  %i.si = xor i32 %i.sh, 63
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = lshr i64 %i.sg, %i.sj
  %i.sl = add i32 %.sroa.20.5.i, %i.sc            ; 6 uses
  %i.sm = icmp ugt i32 %i.sl, 64
  br i1 %i.sm, label %ZSTD_decompressSequences.exit, label %bb.bx

bb.bx:                                            ; preds = %FSE_initDState.exit85.i
  %i.sn = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 2 uses
  %.not.i.i89.i = icmp ult ptr %.sroa.42112.5.i, %i.sn
  br i1 %.not.i.i89.i, label %bb.by, label %FSE_initDState.exit94.thread260.i

FSE_initDState.exit94.thread260.i:                ; preds = %bb.bx
  %i.so = lshr i32 %i.sl, 3
  %i.sp = and i32 %i.sl, 7
  %.pn185263.i = zext nneg i32 %i.so to i64
  %.pn184264.i = sub nsw i64 0, %.pn185263.i
  %.sroa.42112.6265.i = getelementptr inbounds i8, ptr %.sroa.42112.5.i, i64 %.pn184264.i ; 2 uses
  %.val30.i.sink.i92266.i = load i64, ptr %.sroa.42112.6265.i, align 1
  br label %.lr.ph.i

bb.by:                                            ; preds = %bb.bx
  %i.sq = icmp eq ptr %.sroa.42112.5.i, %.786120.i.i
  br i1 %i.sq, label %.lr.ph.i, label %FSE_initDState.exit94.i

FSE_initDState.exit94.i:                          ; preds = %bb.by
  %i.sr = lshr i32 %i.sl, 3                       ; 2 uses
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = sub nsw i64 0, %i.ss
  %i.su = getelementptr inbounds i8, ptr %.sroa.42112.5.i, i64 %i.st
  %i.sv = icmp ult ptr %i.su, %.786120.i.i
  %i.sw = ptrtoint ptr %.sroa.42112.5.i to i64
  %i.sx = sub i64 %i.sw, %i.nt
  %i.sy = trunc i64 %i.sx to i32
  %.024.i.i93.i = select i1 %i.sv, i32 %i.sy, i32 %i.sr ; 2 uses
  %i.sz = shl i32 %.024.i.i93.i, 3
  %i.ta = sub i32 %i.sl, %i.sz                    ; 2 uses
  %.pn185.i = zext i32 %.024.i.i93.i to i64
  %.pn184.i = sub nsw i64 0, %.pn185.i
  %.sroa.42112.6.i = getelementptr inbounds i8, ptr %.sroa.42112.5.i, i64 %.pn184.i ; 2 uses
  %.val30.i.sink.i92.i = load i64, ptr %.sroa.42112.6.i, align 1
  %i.tb = icmp ugt i32 %i.ta, 64
  br i1 %i.tb, label %ZSTD_decompressSequences.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.by, %FSE_initDState.exit94.i, %FSE_initDState.exit94.thread260.i
  %.sroa.42112.7259.i = phi ptr [ %.sroa.42112.6265.i, %FSE_initDState.exit94.thread260.i ], [ %.sroa.42112.6.i, %FSE_initDState.exit94.i ], [ %.786120.i.i, %bb.by ]
  %.sroa.20.7258.i = phi i32 [ %i.sp, %FSE_initDState.exit94.thread260.i ], [ %i.ta, %FSE_initDState.exit94.i ], [ %i.sl, %bb.by ]
  %.sroa.0.5257.i = phi i64 [ %.val30.i.sink.i92266.i, %FSE_initDState.exit94.thread260.i ], [ %.val30.i.sink.i92.i, %FSE_initDState.exit94.i ], [ %.sroa.0.4.i, %bb.by ]
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 6156
  %i.td = getelementptr inbounds i8, ptr %i.dr, i64 -1 ; 2 uses
  %i.te = getelementptr i8, ptr %i.cj, i64 -8     ; 5 uses
  %i.tf = ptrtoint ptr %i.cj to i64
  %i.tg = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.th = ptrtoint ptr %i.co to i64
  %i.ti = getelementptr inbounds i8, ptr %i.cj, i64 -12
  %i.tj = ptrtoint ptr %i.te to i64               ; 3 uses
  %6 = add i64 %2, %5
  %7 = add i64 %6, -8
  br label %bb.bz

bb.bz:                                            ; preds = %ZSTD_execSequence.exit.i, %.lr.ph.i
  %.060202.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ack, %ZSTD_execSequence.exit.i ] ; 10 uses
  %.sroa.63.0201.i = phi i64 [ %i.qk, %.lr.ph.i ], [ %i.ur, %ZSTD_execSequence.exit.i ]
  %.sroa.68.0200.i = phi i64 [ %i.rk, %.lr.ph.i ], [ %i.vr, %ZSTD_execSequence.exit.i ]
  %.0138199.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %i.xl, %ZSTD_execSequence.exit.i ] ; 10 uses
  %.sroa.73.0198.i = phi i64 [ %i.sk, %.lr.ph.i ], [ %i.wl, %ZSTD_execSequence.exit.i ]
  %.0140197.i = phi i32 [ %i.cr, %.lr.ph.i ], [ %i.ue, %ZSTD_execSequence.exit.i ] ; 2 uses
  %.sroa.81.0196.i = phi ptr [ %i.dq, %.lr.ph.i ], [ %.7.i98.i, %ZSTD_execSequence.exit.i ] ; 7 uses
  %.sroa.78.0195.i = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.5.0191.i, %ZSTD_execSequence.exit.i ]
  %.sroa.42112.0194.i = phi ptr [ %.sroa.42112.7259.i, %.lr.ph.i ], [ %.sroa.42112.8.i, %ZSTD_execSequence.exit.i ] ; 7 uses
  %.sroa.20.0193.i = phi i32 [ %.sroa.20.7258.i, %.lr.ph.i ], [ %i.wj, %ZSTD_execSequence.exit.i ] ; 5 uses
  %.sroa.0.0192.i = phi i64 [ %.sroa.0.5257.i, %.lr.ph.i ], [ %.sroa.0.6.i, %ZSTD_execSequence.exit.i ]
  %.sroa.5.0191.i = phi i64 [ 4, %.lr.ph.i ], [ %.058.i.i, %ZSTD_execSequence.exit.i ] ; 2 uses
  %.not.i95.i = icmp ult ptr %.sroa.42112.0194.i, %i.sn
  br i1 %.not.i95.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tk = lshr i32 %.sroa.20.0193.i, 3
  %i.tl = zext nneg i32 %i.tk to i64
  %i.tm = sub nsw i64 0, %i.tl
  %i.tn = getelementptr inbounds i8, ptr %.sroa.42112.0194.i, i64 %i.tm ; 2 uses
  %i.to = and i32 %.sroa.20.0193.i, 7
  %.val30.i.i = load i64, ptr %i.tn, align 1
  br label %BIT_reloadDStream.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.tp = icmp eq ptr %.sroa.42112.0194.i, %.786120.i.i
  br i1 %i.tp, label %BIT_reloadDStream.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tq = lshr i32 %.sroa.20.0193.i, 3            ; 2 uses
  %i.tr = zext nneg i32 %i.tq to i64
  %i.ts = sub nsw i64 0, %i.tr
  %i.tt = getelementptr inbounds i8, ptr %.sroa.42112.0194.i, i64 %i.ts
  %i.tu = icmp ult ptr %i.tt, %.786120.i.i
  %i.tv = ptrtoint ptr %.sroa.42112.0194.i to i64
  %i.tw = sub i64 %i.tv, %i.nt
  %i.tx = trunc i64 %i.tw to i32
  %.024.i.i = select i1 %i.tu, i32 %i.tx, i32 %i.tq ; 2 uses
  %i.ty = zext i32 %.024.i.i to i64
  %i.tz = sub nsw i64 0, %i.ty
  %i.ua = getelementptr inbounds i8, ptr %.sroa.42112.0194.i, i64 %i.tz ; 2 uses
  %i.ub = shl i32 %.024.i.i, 3
  %i.uc = sub i32 %.sroa.20.0193.i, %i.ub
  %.val.i96.i = load i64, ptr %i.ua, align 1
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.cc, %bb.cb, %bb.ca
  %.sroa.0.6.i = phi i64 [ %.val30.i.i, %bb.ca ], [ %.val.i96.i, %bb.cc ], [ %.sroa.0.0192.i, %bb.cb ] ; 5 uses
  %.sroa.20.8.i = phi i32 [ %i.to, %bb.ca ], [ %i.uc, %bb.cc ], [ %.sroa.20.0193.i, %bb.cb ] ; 3 uses
  %.sroa.42112.8.i = phi ptr [ %i.tn, %bb.ca ], [ %i.ua, %bb.cc ], [ %.sroa.42112.0194.i, %bb.cb ] ; 2 uses
  %i.ud = icmp sgt i32 %.0140197.i, 0
  br i1 %i.ud, label %bb.cd, label %BIT_reloadDStream.exit.thread.i

bb.cd:                                            ; preds = %BIT_reloadDStream.exit.i
  %i.ue = add nsw i32 %.0140197.i, -1
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %.sroa.63.0201.i ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.uf, align 2, !tbaa !37
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 2
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2, !tbaa !9 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 3
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !tbaa !9
  %i.ug = zext i8 %.sroa.5.0.copyload.i.i.i to i32 ; 2 uses
  %i.uh = and i32 %.sroa.20.8.i, 63
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = shl i64 %.sroa.0.6.i, %i.ui
  %i.uk = lshr i64 %i.uj, 1
  %i.ul = and i32 %i.ug, 63
  %i.um = xor i32 %i.ul, 63
  %i.un = zext nneg i32 %i.um to i64
  %i.uo = lshr i64 %i.uk, %i.un
  %i.up = add i32 %.sroa.20.8.i, %i.ug            ; 2 uses
  %i.uq = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ur = add nuw i64 %i.uo, %i.uq
  %i.us = zext i8 %.sroa.4.0.copyload.i.i.i to i64
  %.not.i97.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 0
  %.sroa.speculated.i = select i1 %.not.i97.i, i64 %.sroa.78.0195.i, i64 %.sroa.5.0191.i
  %i.ut = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 63
  br i1 %i.ut, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  %i.uu = icmp ult ptr %.sroa.81.0196.i, %i.dr
  br i1 %i.uu, label %bb.cf, label %.thread.i99.i

bb.cf:                                            ; preds = %bb.ce
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.81.0196.i, i64 1 ; 3 uses
  %i.uw = load i8, ptr %.sroa.81.0196.i, align 1, !tbaa !9 ; 2 uses
  %i.ux = zext i8 %i.uw to i64
  %.not75.i.i = icmp eq i8 %i.uw, -1
  br i1 %.not75.i.i, label %bb.cg, label %.thread.i99.i

.thread.i99.i:                                    ; preds = %bb.cf, %bb.ce
  %i.uy = phi i64 [ %i.ux, %bb.cf ], [ 0, %bb.ce ]
  %.061101.i.i = phi ptr [ %i.uv, %bb.cf ], [ %.sroa.81.0196.i, %bb.ce ]
  %narrow.i.i = add nuw nsw i64 %i.uy, 63
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.81.0196.i, i64 4 ; 2 uses
  %.not76.i.i = icmp ugt ptr %i.uz, %i.dr
  br i1 %.not76.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.061.val.i.i = load i16, ptr %i.uv, align 1
  %i.va = getelementptr i8, ptr %.sroa.81.0196.i, i64 3
  %.061.val84.i.i = load i8, ptr %i.va, align 1, !tbaa !9
  %i.vb = zext i16 %.061.val.i.i to i64
  %i.vc = zext i8 %.061.val84.i.i to i64
  %i.vd = shl nuw nsw i64 %i.vc, 16
  %i.ve = or disjoint i64 %i.vd, %i.vb
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %.thread.i99.i
  %.162.i.i = phi ptr [ %.061101.i.i, %.thread.i99.i ], [ %i.uz, %bb.ch ], [ %i.uv, %bb.cg ] ; 2 uses
  %.0.shrunk.i.i = phi i64 [ %narrow.i.i, %.thread.i99.i ], [ %i.ve, %bb.ch ], [ 63, %bb.cg ]
  %.not77.i.i = icmp ult ptr %.162.i.i, %i.dr
  %spec.select.i.i = select i1 %.not77.i.i, ptr %.162.i.i, ptr %i.td
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cd
  %.3.i.i = phi ptr [ %spec.select.i.i, %bb.ci ], [ %.sroa.81.0196.i, %bb.cd ] ; 7 uses
  %.1.i.i = phi i64 [ %.0.shrunk.i.i, %bb.ci ], [ %i.us, %bb.cd ] ; 14 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %.sroa.68.0200.i ; 3 uses
  %.sroa.0.0.copyload.i85.i.i = load i16, ptr %i.vf, align 2, !tbaa !37
  %.sroa.4.0..sroa_idx.i86.i.i = getelementptr inbounds nuw i8, ptr %i.vf, i64 2
  %.sroa.4.0.copyload.i87.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i86.i.i, align 2, !tbaa !9 ; 3 uses
  %.sroa.5.0..sroa_idx.i88.i.i = getelementptr inbounds nuw i8, ptr %i.vf, i64 3
  %.sroa.5.0.copyload.i89.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i88.i.i, align 1, !tbaa !9
  %i.vg = zext i8 %.sroa.5.0.copyload.i89.i.i to i32 ; 2 uses
  %i.vh = and i32 %i.up, 63
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = shl i64 %.sroa.0.6.i, %i.vi
  %i.vk = lshr i64 %i.vj, 1
  %i.vl = and i32 %i.vg, 63
  %i.vm = xor i32 %i.vl, 63
  %i.vn = zext nneg i32 %i.vm to i64
  %i.vo = lshr i64 %i.vk, %i.vn
  %i.vp = add i32 %i.up, %i.vg                    ; 2 uses
  %i.vq = zext i16 %.sroa.0.0.copyload.i85.i.i to i64
  %i.vr = add nuw i64 %i.vo, %i.vq
  %i.vs = zext i8 %.sroa.4.0.copyload.i87.i.i to i32
  %i.vt = add nsw i32 %i.vs, -1
  %i.vu = icmp eq i8 %.sroa.4.0.copyload.i87.i.i, 0 ; 2 uses
  %spec.store.select.i.i = select i1 %i.vu, i32 0, i32 %i.vt ; 2 uses
  %i.vv = zext i8 %.sroa.4.0.copyload.i87.i.i to i64
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_decodeSequence.offsetPrefix, i64 %i.vv
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !7
  %i.vy = add i32 %i.vp, %spec.store.select.i.i   ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.sroa.73.0198.i ; 3 uses
  %.sroa.0.0.copyload.i92.i.i = load i16, ptr %i.vz, align 2, !tbaa !37
  %.sroa.4.0..sroa_idx.i93.i.i = getelementptr inbounds nuw i8, ptr %i.vz, i64 2
  %.sroa.4.0.copyload.i94.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i93.i.i, align 2, !tbaa !9 ; 2 uses
  %.sroa.5.0..sroa_idx.i95.i.i = getelementptr inbounds nuw i8, ptr %i.vz, i64 3
  %.sroa.5.0.copyload.i96.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i95.i.i, align 1, !tbaa !9
  %i.wa = zext i8 %.sroa.5.0.copyload.i96.i.i to i32 ; 2 uses
  %i.wb = and i32 %i.vy, 63
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = shl i64 %.sroa.0.6.i, %i.wc
  %i.we = lshr i64 %i.wd, 1
  %i.wf = and i32 %i.wa, 63
  %i.wg = xor i32 %i.wf, 63
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = lshr i64 %i.we, %i.wh
  %i.wj = add i32 %i.vy, %i.wa                    ; 2 uses
  %i.wk = zext i16 %.sroa.0.0.copyload.i92.i.i to i64
  %i.wl = add nuw i64 %i.wi, %i.wk
  %i.wm = zext i8 %.sroa.4.0.copyload.i94.i.i to i64
  %i.wn = icmp eq i8 %.sroa.4.0.copyload.i94.i.i, 127
  br i1 %i.wn, label %bb.ck, label %ZSTD_decodeSequence.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.wo = icmp ult ptr %.3.i.i, %i.dr
  br i1 %i.wo, label %bb.cl, label %.thread102.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.wp = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 3 uses
  %i.wq = load i8, ptr %.3.i.i, align 1, !tbaa !9 ; 2 uses
  %i.wr = zext i8 %i.wq to i64
  %.not78.i.i = icmp eq i8 %i.wq, -1
  br i1 %.not78.i.i, label %bb.cm, label %.thread102.i.i

.thread102.i.i:                                   ; preds = %bb.cl, %bb.ck
  %i.ws = phi i64 [ %i.wr, %bb.cl ], [ 0, %bb.ck ]
  %.4105.i.i = phi ptr [ %i.wp, %bb.cl ], [ %.3.i.i, %bb.ck ]
  %narrow80.i.i = add nuw nsw i64 %i.ws, 127
  br label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.wt = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4 ; 2 uses
  %.not79.i.i = icmp ugt ptr %i.wt, %i.dr
  br i1 %.not79.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.4.val.i.i = load i16, ptr %i.wp, align 1
  %i.wu = getelementptr i8, ptr %.3.i.i, i64 3
  %.4.val83.i.i = load i8, ptr %i.wu, align 1, !tbaa !9
  %i.wv = zext i16 %.4.val.i.i to i64
  %i.ww = zext i8 %.4.val83.i.i to i64
end_hunk_1
begin_hunk_2_@ZSTD_decompressBlock:bb.a
  %i.yp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.yq = icmp ult ptr %i.yo, %i.xj
  br i1 %i.yq, label %.preheader.i.i, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !46

ZSTD_wildcopy.exit.i.i:                           ; preds = %.preheader.i.i, %middle.block166
  %i.yr = sub nsw i64 0, %.058.i.i
  %i.ys = getelementptr inbounds i8, ptr %i.xj, i64 %i.yr ; 8 uses
  %i.yt = icmp ugt i64 %.058.i.i, %i.xu
  %i.yu = icmp ult ptr %i.ys, %i.co
  %or.cond.i.i16 = select i1 %i.yt, i1 true, i1 %i.yu
  br i1 %or.cond.i.i16, label %ZSTD_decompressSequences.exit, label %bb.cu

bb.cu:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.yv = icmp samesign ult i64 %.058.i.i, 8
  br i1 %i.yv, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec64table, i64 %.058.i.i
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !3
  %i.yy = load i8, ptr %i.ys, align 1, !tbaa !9
  store i8 %i.yy, ptr %i.xj, align 1, !tbaa !9
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ys, i64 1
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !9
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xj, i64 1
  store i8 %i.za, ptr %i.zb, align 1, !tbaa !9
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ys, i64 2
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !9
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xj, i64 2
  store i8 %i.zd, ptr %i.ze, align 1, !tbaa !9
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ys, i64 3
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !9
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xj, i64 3
  store i8 %i.zg, ptr %i.zh, align 1, !tbaa !9
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec32table, i64 %.058.i.i
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !3
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds i8, ptr %i.ys, i64 %i.zk ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  %.val79.i.i = load i32, ptr %i.zl, align 1
  store i32 %.val79.i.i, ptr %i.zm, align 1
  %i.zn = sext i32 %i.yx to i64
  %i.zo = sub nsw i64 0, %i.zn
  %i.zp = getelementptr inbounds i8, ptr %i.zl, i64 %i.zo
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %.val.i100.i = load i64, ptr %i.ys, align 1
  store i64 %.val.i100.i, ptr %i.xj, align 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.065.i.i = phi ptr [ %i.zp, %bb.cv ], [ %i.ys, %bb.cw ] ; 2 uses
  %.065.i.i118 = ptrtoaddr ptr %.065.i.i to i64   ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.xj, i64 8 ; 11 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 8 ; 10 uses
  %i.zs = icmp ugt ptr %i.xk, %i.ti
  br i1 %i.zs, label %bb.cy, label %.preheader186.i.preheader

.preheader186.i.preheader:                        ; preds = %bb.cx
  %i.zt = add nsw i64 %.1.i.i, %.160.i.i
  %i.zu = add i64 %i.zt, %i.xn
  %i.zv = add i64 %i.zu, 4
  %i.zw = add i64 %.1.i.i, %i.xn
  %i.zx = add i64 %i.zw, 16
  %i.zy = tail call i64 @llvm.umax.i64(i64 %i.zv, i64 %i.zx)
  %i.zz = add i64 %.1.i.i, %i.xn
  %i.aaa = sub i64 %i.zy, %i.zz
  %i.aab = add i64 %i.aaa, -9                     ; 2 uses
  %i.aac = lshr i64 %i.aab, 3
  %i.aad = add nuw nsw i64 %i.aac, 1              ; 2 uses
  %min.iters.check137 = icmp ult i64 %i.aab, 56
  br i1 %min.iters.check137, label %.preheader186.i.preheader171, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.preheader186.i.preheader
  %i.aae = add i64 %.1.i.i, %i.xn
  %i.aaf = sub i64 %.065.i.i118, %i.aae
  %diff.check135 = icmp ugt i64 %i.aaf, -32
  br i1 %diff.check135, label %.preheader186.i.preheader171, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck134
  %n.vec140 = and i64 %i.aad, 4611686018427387900 ; 3 uses
  %i.aag = shl i64 %n.vec140, 3                   ; 2 uses
  %i.aah = getelementptr i8, ptr %i.zq, i64 %i.aag
  %i.aai = getelementptr i8, ptr %i.zr, i64 %i.aag
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next147, %vector.body141 ] ; 2 uses
  %i.aaj = shl i64 %index142, 3                   ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.zq, i64 %i.aaj ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.zr, i64 %i.aaj ; 2 uses
  %i.aak = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load145 = load <2 x i64>, ptr %next.gep144, align 1
  %wide.load146 = load <2 x i64>, ptr %i.aak, align 1
  %i.aal = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x i64> %wide.load145, ptr %next.gep143, align 1
  store <2 x i64> %wide.load146, ptr %i.aal, align 1
  %index.next147 = add nuw i64 %index142, 4       ; 2 uses
  %i.aam = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.aam, label %middle.block148, label %vector.body141, !llvm.loop !47

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %i.aad, %n.vec140
  br i1 %cmp.n149, label %ZSTD_execSequence.exit.i, label %.preheader186.i.preheader171

.preheader186.i.preheader171:                     ; preds = %vector.memcheck134, %.preheader186.i.preheader, %middle.block148
  %.09.i84.i.i.ph = phi ptr [ %i.zq, %vector.memcheck134 ], [ %i.zq, %.preheader186.i.preheader ], [ %i.aah, %middle.block148 ]
  %.0.i85.i.i.ph = phi ptr [ %i.zr, %vector.memcheck134 ], [ %i.zr, %.preheader186.i.preheader ], [ %i.aai, %middle.block148 ]
  br label %.preheader186.i

bb.cy:                                            ; preds = %bb.cx
  %i.aan = icmp ult ptr %i.zq, %i.te
  br i1 %i.aan, label %.preheader.i.preheader, label %bb.cz

.preheader.i.preheader:                           ; preds = %bb.cy
  %i.aao = add i64 %.1.i.i, %i.xn
  %i.aap = add i64 %i.aao, 16
  %i.aaq = tail call i64 @llvm.umax.i64(i64 %i.tj, i64 %i.aap)
  %i.aar = add i64 %.1.i.i, %i.xn
  %i.aas = sub i64 %i.aaq, %i.aar
  %i.aat = add i64 %i.aas, -9                     ; 2 uses
  %i.aau = lshr i64 %i.aat, 3
  %i.aav = add nuw nsw i64 %i.aau, 1              ; 2 uses
  %min.iters.check120 = icmp ult i64 %i.aat, 56
  br i1 %min.iters.check120, label %.preheader.i.preheader170, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.preheader.i.preheader
  %i.aaw = add i64 %.1.i.i, %i.xn
  %i.aax = sub i64 %.065.i.i118, %i.aaw
  %diff.check119 = icmp ugt i64 %i.aax, -32
  br i1 %diff.check119, label %.preheader.i.preheader170, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck117
  %n.vec123 = and i64 %i.aav, 4611686018427387900 ; 3 uses
  %i.aay = shl i64 %n.vec123, 3                   ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.zq, i64 %i.aay
  %i.aba = getelementptr i8, ptr %i.zr, i64 %i.aay
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph121
  %index125 = phi i64 [ 0, %vector.ph121 ], [ %index.next130, %vector.body124 ] ; 2 uses
  %i.abb = shl i64 %index125, 3                   ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.zq, i64 %i.abb ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.zr, i64 %i.abb ; 2 uses
  %i.abc = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load128 = load <2 x i64>, ptr %next.gep127, align 1
  %wide.load129 = load <2 x i64>, ptr %i.abc, align 1
  %i.abd = getelementptr i8, ptr %next.gep126, i64 16
  store <2 x i64> %wide.load128, ptr %next.gep126, align 1
  store <2 x i64> %wide.load129, ptr %i.abd, align 1
  %index.next130 = add nuw i64 %index125, 4       ; 2 uses
  %i.abe = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.abe, label %middle.block131, label %vector.body124, !llvm.loop !48

middle.block131:                                  ; preds = %vector.body124
  %cmp.n132 = icmp eq i64 %i.aav, %n.vec123
  br i1 %cmp.n132, label %ZSTD_wildcopy.exit83.i.i, label %.preheader.i.preheader170

.preheader.i.preheader170:                        ; preds = %vector.memcheck117, %.preheader.i.preheader, %middle.block131
  %.09.i80.i.i.ph = phi ptr [ %i.zq, %vector.memcheck117 ], [ %i.zq, %.preheader.i.preheader ], [ %i.aaz, %middle.block131 ]
  %.0.i81.i.i.ph = phi ptr [ %i.zr, %vector.memcheck117 ], [ %i.zr, %.preheader.i.preheader ], [ %i.aba, %middle.block131 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader170, %.preheader.i
  %.09.i80.i.i = phi ptr [ %i.abf, %.preheader.i ], [ %.09.i80.i.i.ph, %.preheader.i.preheader170 ] ; 2 uses
  %.0.i81.i.i = phi ptr [ %i.abg, %.preheader.i ], [ %.0.i81.i.i.ph, %.preheader.i.preheader170 ] ; 2 uses
  %.0.val.i82.i.i = load i64, ptr %.0.i81.i.i, align 1
  store i64 %.0.val.i82.i.i, ptr %.09.i80.i.i, align 1
  %i.abf = getelementptr inbounds nuw i8, ptr %.09.i80.i.i, i64 8 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.0.i81.i.i, i64 8
  %i.abh = icmp ult ptr %i.abf, %i.te
  br i1 %i.abh, label %.preheader.i, label %ZSTD_wildcopy.exit83.i.i, !llvm.loop !49

ZSTD_wildcopy.exit83.i.i:                         ; preds = %.preheader.i, %middle.block131
  %i.abi = ptrtoint ptr %i.zq to i64
  %i.abj = sub i64 %i.tj, %i.abi
  %i.abk = getelementptr inbounds i8, ptr %i.zr, i64 %i.abj
  br label %bb.cz

bb.cz:                                            ; preds = %ZSTD_wildcopy.exit83.i.i, %bb.cy
  %.068.i.i = phi ptr [ %i.te, %ZSTD_wildcopy.exit83.i.i ], [ %i.zq, %bb.cy ] ; 7 uses
  %.166.i.i = phi ptr [ %i.abk, %ZSTD_wildcopy.exit83.i.i ], [ %i.zr, %bb.cy ] ; 7 uses
  %.166.i.i101 = ptrtoaddr ptr %.166.i.i to i64
  %i.abl = icmp ult ptr %.068.i.i, %i.xk
  br i1 %i.abl, label %iter.check, label %ZSTD_execSequence.exit.i

iter.check:                                       ; preds = %bb.cz
  %i.abm = add nsw i64 %.1.i.i, 4
  %i.abn = add nsw i64 %i.abm, %.160.i.i
  %i.abo = add i64 %i.abn, %i.xn
  %i.abp = add nsw i64 %.1.i.i, 8
  %i.abq = add i64 %i.abp, %i.xn
  %umax102 = tail call i64 @llvm.umax.i64(i64 %i.tj, i64 %i.abq)
  %i.abr = sub i64 %i.abo, %umax102               ; 7 uses
  %min.iters.check = icmp ult i64 %i.abr, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.abs = add nsw i64 %.1.i.i, 8
  %i.abt = add i64 %i.abs, %i.xn
  %umax = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.abt)
  %i.abu = sub i64 %.166.i.i101, %umax
  %diff.check = icmp ugt i64 %i.abu, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check103 = icmp ult i64 %i.abr, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.abr, 28
  %n.vec = and i64 %i.abr, -32                    ; 5 uses
  %i.abv = getelementptr i8, ptr %.166.i.i, i64 %n.vec
  %i.abw = getelementptr i8, ptr %.068.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.166.i.i, i64 %index ; 2 uses
  %next.gep104 = getelementptr i8, ptr %.068.i.i, i64 %index ; 2 uses
  %i.abx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load105 = load <16 x i8>, ptr %i.abx, align 1, !tbaa !9
  %i.aby = getelementptr i8, ptr %next.gep104, i64 16
  store <16 x i8> %wide.load, ptr %next.gep104, align 1, !tbaa !9
  store <16 x i8> %wide.load105, ptr %i.aby, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.abz = icmp eq i64 %index.next, %n.vec
  br i1 %i.abz, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abr, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec108 = and i64 %i.abr, -4                  ; 4 uses
  %i.aca = getelementptr i8, ptr %.166.i.i, i64 %n.vec108
  %i.acb = getelementptr i8, ptr %.068.i.i, i64 %n.vec108
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 3 uses
  %next.gep110 = getelementptr i8, ptr %.166.i.i, i64 %index109
  %next.gep111 = getelementptr i8, ptr %.068.i.i, i64 %index109
  %wide.load112 = load <4 x i8>, ptr %next.gep110, align 1, !tbaa !9
  store <4 x i8> %wide.load112, ptr %next.gep111, align 1, !tbaa !9
  %index.next113 = add nuw i64 %index109, 4       ; 2 uses
  %i.acc = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.acc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %i.abr, %n.vec108
  br i1 %cmp.n114, label %ZSTD_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.291.i.i.ph = phi ptr [ %.166.i.i, %iter.check ], [ %.166.i.i, %vector.memcheck ], [ %i.abv, %vec.epilog.iter.check ], [ %i.aca, %vec.epilog.middle.block ]
  %.16990.i.i.ph = phi ptr [ %.068.i.i, %iter.check ], [ %.068.i.i, %vector.memcheck ], [ %i.abw, %vec.epilog.iter.check ], [ %i.acb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.291.i.i = phi ptr [ %i.acd, %.lr.ph.i.i ], [ %.291.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.16990.i.i = phi ptr [ %i.acf, %.lr.ph.i.i ], [ %.16990.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.291.i.i, i64 1
  %i.ace = load i8, ptr %.291.i.i, align 1, !tbaa !9
  %i.acf = getelementptr inbounds nuw i8, ptr %.16990.i.i, i64 1 ; 2 uses
  store i8 %i.ace, ptr %.16990.i.i, align 1, !tbaa !9
  %i.acg = icmp ult ptr %i.acf, %i.xk
  br i1 %i.acg, label %.lr.ph.i.i, label %ZSTD_execSequence.exit.i, !llvm.loop !53

.preheader186.i:                                  ; preds = %.preheader186.i.preheader171, %.preheader186.i
  %.09.i84.i.i = phi ptr [ %i.ach, %.preheader186.i ], [ %.09.i84.i.i.ph, %.preheader186.i.preheader171 ] ; 2 uses
  %.0.i85.i.i = phi ptr [ %i.aci, %.preheader186.i ], [ %.0.i85.i.i.ph, %.preheader186.i.preheader171 ] ; 2 uses
  %.0.val.i86.i.i = load i64, ptr %.0.i85.i.i, align 1
  store i64 %.0.val.i86.i.i, ptr %.09.i84.i.i, align 1
  %i.ach = getelementptr inbounds nuw i8, ptr %.09.i84.i.i, i64 8 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.0.i85.i.i, i64 8
  %i.acj = icmp ult ptr %i.ach, %i.xk
  br i1 %i.acj, label %.preheader186.i, label %ZSTD_execSequence.exit.i, !llvm.loop !54

ZSTD_execSequence.exit.i:                         ; preds = %.preheader186.i, %.lr.ph.i.i, %middle.block148, %middle.block, %vec.epilog.middle.block, %bb.cz
  %i.ack = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %i.xm
  %i.acl = icmp ugt i32 %i.wj, 64
  br i1 %i.acl, label %ZSTD_decompressSequences.exit, label %bb.bz

BIT_reloadDStream.exit.thread.i:                  ; preds = %BIT_reloadDStream.exit.i
  %i.acm = icmp ne i32 %.sroa.20.8.i, 64
  %i.acn = icmp ne ptr %.sroa.42112.8.i, %.786120.i.i
  %brmerge.i = select i1 %i.acn, i1 true, i1 %i.acm
  br i1 %brmerge.i, label %ZSTD_decompressSequences.exit, label %bb.da

bb.da:                                            ; preds = %BIT_reloadDStream.exit.thread.i
  %i.aco = ptrtoint ptr %.0138199.i to i64
  %i.acp = sub i64 %i.tg, %i.aco                  ; 2 uses
  %i.acq = icmp ugt ptr %.0138199.i, %i.ck
  br i1 %i.acq, label %ZSTD_decompressSequences.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acr = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %i.acp ; 3 uses
  %i.acs = icmp ugt ptr %i.acr, %i.cj
  br i1 %i.acs, label %ZSTD_decompressSequences.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not71.i = icmp eq ptr %i.ck, %.0138199.i
  br i1 %.not71.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not72.i = icmp eq ptr %.060202.i, %.0138199.i
  br i1 %.not72.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.060202.i, ptr align 1 %.0138199.i, i64 %i.acp, i1 false)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %.464.i = phi ptr [ %i.acr, %bb.dd ], [ %.060202.i, %bb.dc ], [ %i.acr, %bb.de ]
  %i.act = ptrtoint ptr %.464.i to i64
  %i.acu = ptrtoint ptr %1 to i64
  %i.acv = sub i64 %i.act, %i.acu
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %ZSTD_execSequence.exit.i, %ZSTD_wildcopy.exit.i.i, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %ZSTD_decodeSequence.exit.i, %FSE_initDState.exit85.i, %FSE_initDState.exit94.i, %bb.k, %bb.n, %bb.a, %bb.df, %bb.db, %bb.da, %BIT_reloadDStream.exit.thread.i, %BIT_initDStream.exit.i, %bb.bn, %bb.bf, %bb.bd, %ZSTD_decodeSeqHeaders.exit.i, %ZSTD_decodeSeqHeaders.exit.thread.i, %ZSTD_decodeLiteralsBlock.exit.thread25
  %.0 = phi i64 [ -20, %bb.k ], [ -20, %ZSTD_decodeLiteralsBlock.exit.thread25 ], [ %.7.i.ph.i, %ZSTD_decodeSeqHeaders.exit.thread.i ], [ %i.acv, %bb.df ], [ %i.nv, %ZSTD_decodeSeqHeaders.exit.i ], [ -20, %BIT_reloadDStream.exit.thread.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %bb.da ], [ -70, %bb.db ], [ -20, %bb.bf ], [ -20, %bb.bd ], [ -20, %bb.bn ], [ -20, %bb.a ], [ -20, %bb.n ], [ -20, %FSE_initDState.exit94.i ], [ -20, %FSE_initDState.exit85.i ], [ -20, %ZSTD_execSequence.exit.i ], [ -20, %bb.ct ], [ -20, %ZSTD_wildcopy.exit.i.i ], [ -70, %bb.cs ], [ -20, %bb.cr ], [ -70, %bb.cq ], [ -20, %bb.cp ], [ -70, %ZSTD_decodeSequence.exit.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @HUF_decompress4X2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #9 {
bb.a:
  %4 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %5 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %6 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %7 = alloca %struct.BIT_DStream_t, align 8      ; 12 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [17 x i32], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [4097 x i16], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.e, i8 0, i64 8194, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 24 uses
  %i.g = call fastcc i64 @HUF_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.b, label %HUF_readDTableX2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 4, !tbaa !3    ; 12 uses
  %i.j = icmp ugt i32 %i.i, 12
  br i1 %i.j, label %HUF_readDTableX2.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw nsw i32 %i.i to i16
  store i16 %i.k, ptr %i.e, align 16, !tbaa !37
  %.not3940.i = icmp eq i32 %i.i, 0
  br i1 %.not3940.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.l, 14
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.03641.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ac, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store i32 %.03641.i.epil.init, ptr %i.n, align 4, !tbaa !3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %HUF_readDTableX2.exit.thread23, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.p = trunc nuw nsw i32 %i.i to i8
  %i.q = add nuw nsw i8 %i.p, 1
  %wide.trip.count56.i = zext i32 %i.o to i64
end_hunk_2
