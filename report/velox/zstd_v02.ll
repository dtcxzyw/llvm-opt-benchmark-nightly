Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v02?download=true
inline.NumInlined: 356
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ZSTDv02_decompress:bb.a
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
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @ZSTDv02_createDCtx() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(141384) ptr @malloc(i64 noundef 141384) #21 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ZSTD_createDCtx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10272
  store i64 4, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 10284
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 10256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %ZSTD_createDCtx.exit

ZSTD_createDCtx.exit:                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @ZSTDv02_freeDCtx(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  tail call void @free(ptr noundef %0) #20
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @ZSTDv02_resetDCtx(ptr nofree noundef writeonly captures(none) initializes((10256, 10280), (10284, 10288)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10272
  store i64 4, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10284
  store i32 0, ptr %i.b, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTDv02_nextSrcSizeToDecompress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10272
  %.val = load i64, ptr %i.a, align 8, !tbaa !17
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv02_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10272 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %.not.i = icmp eq i64 %4, %i.b
  br i1 %.not.i, label %bb.b, label %ZSTD_decompressContinue.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %.not43.i = icmp eq ptr %1, %i.d
  br i1 %.not43.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10264
  store ptr %1, ptr %i.e, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10284 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  switch i32 %i.g, label %bb.k [
    i32 0, label %bb.e
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %.val.i = load i32, ptr %3, align 1
  %.not46.i = icmp eq i32 %.val.i, -47205086
  br i1 %.not46.i, label %bb.f, label %ZSTD_decompressContinue.exit

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.f, align 4, !tbaa !18
  store i64 3, ptr %i.a, align 8, !tbaa !17
  br label %ZSTD_decompressContinue.exit

bb.g:                                             ; preds = %bb.d
  %i.h = load i8, ptr %3, align 1, !tbaa !10
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
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.t, %i.p
  %i.v = zext nneg i32 %i.u to i64
  br label %bb.i

ZSTD_getcBlockSize.exit.i:                        ; preds = %bb.g
  store i64 0, ptr %i.a, align 8, !tbaa !17
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.ph.i = phi i64 [ %i.v, %bb.h ], [ 1, %bb.g ]
  store i64 %.0.i.ph.i, ptr %i.a, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10280
  store i32 %i.j, ptr %i.w, align 8, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ZSTD_getcBlockSize.exit.i
  %storemerge.i = phi i32 [ 2, %bb.i ], [ 0, %ZSTD_getcBlockSize.exit.i ]
  store i32 %storemerge.i, ptr %i.f, align 4, !tbaa !18
  br label %ZSTD_decompressContinue.exit

bb.k:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10280
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20
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
  store i32 1, ptr %i.f, align 4, !tbaa !18
  store i64 3, ptr %i.a, align 8, !tbaa !17
  br label %ZSTD_decompressContinue.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %ZSTD_copyUncompressedBlock.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %ZSTD_copyUncompressedBlock.exit.i

ZSTD_copyUncompressedBlock.exit.thread.i:         ; preds = %bb.n, %bb.k
  store i32 1, ptr %i.f, align 4, !tbaa !18
  store i64 3, ptr %i.a, align 8, !tbaa !17
  br label %bb.p

ZSTD_copyUncompressedBlock.exit.i:                ; preds = %bb.o, %bb.l
  %.0.i = phi i64 [ %i.z, %bb.l ], [ %4, %bb.o ]  ; 3 uses
  store i32 1, ptr %i.f, align 4, !tbaa !18
  store i64 3, ptr %i.a, align 8, !tbaa !17
  %i.ab = icmp ult i64 %.0.i, -119
  br i1 %i.ab, label %bb.p, label %ZSTD_decompressContinue.exit

bb.p:                                             ; preds = %ZSTD_copyUncompressedBlock.exit.i, %ZSTD_copyUncompressedBlock.exit.thread.i
  %.053.i = phi i64 [ 0, %ZSTD_copyUncompressedBlock.exit.thread.i ], [ %.0.i, %ZSTD_copyUncompressedBlock.exit.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.053.i
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !19
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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca [256 x i16], align 16             ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca [128 x i16], align 16             ; 12 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = icmp ult i64 %4, 11
  br i1 %i.j, label %ZSTD_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %3, align 1, !tbaa !10
  %i.l = and i8 %i.k, 3
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.j
    i8 2, label %bb.n
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 7 uses
  %.val16.i.i = load i32, ptr %3, align 1
  %i.n = lshr i32 %.val16.i.i, 2
  %i.o = and i32 %i.n, 524287                     ; 7 uses
  %i.p = zext nneg i32 %i.o to i64                ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.val.i.i = load i32, ptr %i.q, align 1         ; 2 uses
  %i.r = lshr i32 %.val.i.i, 5
  %i.s = and i32 %i.r, 524287                     ; 5 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = icmp samesign ugt i32 %i.o, 131072
  %i.v = lshr i32 %.val.i.i, 24
  %i.w = trunc nuw i32 %i.v to i8
  br i1 %i.u, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add nuw nsw i64 %i.t, 5                  ; 2 uses
  %i.y = icmp ugt i64 %i.x, %4
  br i1 %i.y, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.aa = lshr i32 %i.o, 8                        ; 3 uses
  %i.ab = icmp eq i32 %i.o, 0
  %i.ac = icmp samesign ugt i32 %i.s, %i.o
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i.i, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i32 %i.s, %i.o
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.z, i64 range(i64 0, 524288) %i.p, i1 false)
  br label %ZSTD_decodeLiteralsBlock.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.s, 1
  br i1 %i.ae, label %bb.i, label %HUF_decompress.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 %i.w, i64 range(i64 0, 524288) %i.p, i1 false)
  br label %ZSTD_decodeLiteralsBlock.exit

HUF_decompress.exit.i.i:                          ; preds = %bb.h
  %.lhs.trunc.i.i.i = shl nuw nsw i32 %i.s, 4
  %i.af = udiv i32 %.lhs.trunc.i.i.i, %i.o
  %.zext.i.i.i = zext nneg i32 %i.af to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr @algoTime, i64 %.zext.i.i.i ; 6 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !23
  %i.ak = mul i32 %i.aj, %i.aa
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !23
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = add i32 %i.aq, %i.an                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !23
  %i.aw = mul i32 %i.av, %i.aa
  %i.ax = add i32 %i.aw, %i.at                    ; 2 uses
  %i.ay = lshr i32 %i.ar, 4
  %i.az = add i32 %i.ay, %i.ar                    ; 2 uses
  %i.ba = lshr i32 %i.ax, 3
  %i.bb = add i32 %i.ba, %i.ax
  %i.bc = icmp ult i32 %i.az, %i.al
  %spec.select.i.i.i = zext i1 %i.bc to i64
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.al)
  %i.bd = icmp ult i32 %i.bb, %.sroa.speculated.i.i.i
  %spec.store.select.i.i.i = select i1 %i.bd, i64 2, i64 %spec.select.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @HUF_decompress.decompress, i64 %spec.store.select.i.i.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24
  %i.bg = tail call i64 %i.bf(ptr noundef nonnull %i.m, i64 noundef range(i64 0, 524288) %i.p, ptr noundef nonnull %i.z, i64 noundef range(i64 0, 524288) %i.t) #20, !inline_history !25
  %i.bh = icmp ult i64 %i.bg, -119
  br i1 %i.bh, label %ZSTD_decodeLiteralsBlock.exit, label %ZSTD_decodeLiteralsBlock.exit.thread25

bb.j:                                             ; preds = %bb.b
  %.val47.i = load i32, ptr %3, align 1
  %i.bi = lshr i32 %.val47.i, 2
  %i.bj = and i32 %i.bi, 4194303                  ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 10 uses
  %i.bl = add i64 %4, -11
  %i.bm = icmp ult i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bn = icmp samesign ugt i32 %i.bj, 131072
  %i.bo = add nsw i64 %4, -3
  %i.bp = icmp samesign ult i64 %i.bo, %i.bk
  %or.cond.i = or i1 %i.bn, %i.bp
  br i1 %or.cond.i, label %ZSTD_decompressSequences.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 1 %3, i64 %i.bk, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.bk, ptr %i.bs, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk
  store i64 0, ptr %i.bt, align 1
  %i.bu = add nuw nsw i64 %i.bk, 3
  br label %ZSTD_decodeLiteralsBlock.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !27
  %i.by = add nuw nsw i64 %i.bk, 3
  br label %ZSTD_decodeLiteralsBlock.exit.thread

bb.n:                                             ; preds = %bb.b
  %.val.i = load i32, ptr %3, align 1             ; 2 uses
  %i.bz = lshr i32 %.val.i, 2
  %i.ca = and i32 %i.bz, 4194303                  ; 2 uses
  %i.cb = icmp samesign ugt i32 %i.ca, 131072
  br i1 %i.cb, label %ZSTD_decompressSequences.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = lshr i32 %.val.i, 24
  %i.cd = trunc nuw i32 %i.cc to i8
  %i.ce = zext nneg i32 %i.ca to i64              ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 3 uses
  %i.cg = add nuw nsw i64 %i.ce, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i8 %i.cd, i64 %i.cg, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.ce, ptr %i.ci, align 8, !tbaa !27
  br label %ZSTD_decodeLiteralsBlock.exit.thread

ZSTD_decodeLiteralsBlock.exit.thread25:           ; preds = %bb.c, %bb.d, %bb.e, %HUF_decompress.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.m, ptr %i.cj, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 131072, ptr %i.ck, align 8, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 141376
  store i64 0, ptr %i.cl, align 8
  br label %ZSTD_decompressSequences.exit

ZSTD_decodeLiteralsBlock.exit:                    ; preds = %bb.g, %bb.i, %HUF_decompress.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.m, ptr %i.cm, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.p, ptr %i.cn, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  store i64 0, ptr %i.co, align 1
  br label %ZSTD_decodeLiteralsBlock.exit.thread

ZSTD_decodeLiteralsBlock.exit.thread:             ; preds = %bb.o, %bb.l, %bb.m, %ZSTD_decodeLiteralsBlock.exit
  %i.cp = phi i64 [ %i.p, %ZSTD_decodeLiteralsBlock.exit ], [ %i.ce, %bb.o ], [ %i.bk, %bb.l ], [ %i.bk, %bb.m ]
  %i.cq = phi ptr [ %i.m, %ZSTD_decodeLiteralsBlock.exit ], [ %i.cf, %bb.o ], [ %i.bq, %bb.l ], [ %i.bv, %bb.m ] ; 2 uses
  %.2.i19 = phi i64 [ %i.x, %ZSTD_decodeLiteralsBlock.exit ], [ 4, %bb.o ], [ %i.bu, %bb.l ], [ %i.by, %bb.m ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 %.2.i19 ; 8 uses
  %i.cs = sub i64 %4, %.2.i19                     ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4100 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 10264
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !13 ; 2 uses
  %i.cz = getelementptr i8, ptr %3, i64 %4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.da = icmp ult i64 %i.cs, 5
  br i1 %i.da, label %ZSTD_decodeSeqHeaders.exit.thread.i, label %bb.p

end_hunk_0
begin_hunk_1_@ZSTD_decompressBlock:bb.a
  br i1 %i.qa, label %ZSTD_decompressSequences.exit, label %BIT_initDStream.exit.thread151.i

BIT_initDStream.exit.thread151.i:                 ; preds = %bb.bn
  %i.qb = zext i8 %i.pz to i32
  %i.qc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qb, i1 true)
  %i.qd = trunc nuw nsw i64 %gepdiff.i to i32
  %i.qe = shl nuw nsw i32 %i.qd, 3
  %reass.sub = sub nsw i32 %i.qc, %i.qe
  %i.qf = add nsw i32 %reass.sub, 41
  br label %bb.bo

BIT_initDStream.exit.i:                           ; preds = %bb.bf
  %i.qg = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 2 uses
  %.val.i75.i = load i64, ptr %i.qg, align 1
  %i.qh = zext i8 %i.ol to i32
  %i.qi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qh, i1 true)
  %i.qj = xor i32 %i.qi, 31
  %i.qk = sub nuw nsw i32 8, %i.qj
  %i.ql = icmp ult i64 %gepdiff.i, -119
  br i1 %i.ql, label %bb.bo, label %ZSTD_decompressSequences.exit

bb.bo:                                            ; preds = %BIT_initDStream.exit.i, %BIT_initDStream.exit.thread151.i
  %.sroa.42111.1160.i = phi ptr [ %i.oh, %BIT_initDStream.exit.thread151.i ], [ %i.qg, %BIT_initDStream.exit.i ] ; 6 uses
  %.sroa.20.1159.i = phi i32 [ %i.qf, %BIT_initDStream.exit.thread151.i ], [ %i.qk, %BIT_initDStream.exit.i ] ; 2 uses
  %.sroa.0.2158.i = phi i64 [ %.sroa.0.1.i, %BIT_initDStream.exit.thread151.i ], [ %.val.i75.i, %BIT_initDStream.exit.i ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %0, align 8
  %i.qm = zext i16 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.qn = and i32 %.sroa.20.1159.i, 63
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = shl i64 %.sroa.0.2158.i, %i.qo
  %i.qq = lshr i64 %i.qp, 1
  %i.qr = and i32 %i.qm, 63
  %i.qs = xor i32 %i.qr, 63
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = lshr i64 %i.qq, %i.qt
  %i.qv = add nuw nsw i32 %.sroa.20.1159.i, %i.qm ; 7 uses
  %i.qw = icmp samesign ugt i32 %i.qv, 64
  br i1 %i.qw, label %FSE_initDState.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qx = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %.not.i.i.i = icmp ult ptr %.sroa.42111.1160.i, %i.qx
  br i1 %.not.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qy = lshr i32 %i.qv, 3
  %i.qz = and i32 %i.qv, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i

bb.br:                                            ; preds = %bb.bp
  %i.ra = icmp eq ptr %.sroa.42111.1160.i, %.7120.i.i
  br i1 %i.ra, label %FSE_initDState.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.rb = lshr i32 %i.qv, 3                       ; 2 uses
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = sub nsw i64 0, %i.rc
  %i.re = getelementptr inbounds i8, ptr %.sroa.42111.1160.i, i64 %i.rd
  %i.rf = icmp ult ptr %i.re, %.7120.i.i
  %i.rg = ptrtoint ptr %.sroa.42111.1160.i to i64
  %i.rh = sub i64 %i.rg, %i.od
  %i.ri = trunc i64 %i.rh to i32
  %.024.i.i.i = select i1 %i.rf, i32 %i.ri, i32 %i.rb ; 2 uses
  %i.rj = shl i32 %.024.i.i.i, 3
  %i.rk = sub i32 %i.qv, %i.rj
  br label %BIT_reloadDStream.exit.sink.split.i.i

BIT_reloadDStream.exit.sink.split.i.i:            ; preds = %bb.bs, %bb.bq
  %.sroa.20.2.i = phi i32 [ %i.rk, %bb.bs ], [ %i.qz, %bb.bq ]
  %.pn178.in.i = phi i32 [ %.024.i.i.i, %bb.bs ], [ %i.qy, %bb.bq ]
  %.pn178.i = zext i32 %.pn178.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn178.i
  %.sroa.42111.2.i = getelementptr inbounds i8, ptr %.sroa.42111.1160.i, i64 %.pn.i ; 2 uses
  %.val30.i.sink.i.i = load i64, ptr %.sroa.42111.2.i, align 1
  br label %FSE_initDState.exit.i

FSE_initDState.exit.i:                            ; preds = %BIT_reloadDStream.exit.sink.split.i.i, %bb.br, %bb.bo
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2158.i, %bb.bo ], [ %.sroa.0.2158.i, %bb.br ], [ %.val30.i.sink.i.i, %BIT_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %.sroa.20.3.i = phi i32 [ %i.qv, %bb.bo ], [ %i.qv, %bb.br ], [ %.sroa.20.2.i, %BIT_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.sroa.42111.3.i = phi ptr [ %.sroa.42111.1160.i, %bb.bo ], [ %.7120.i.i, %bb.br ], [ %.sroa.42111.2.i, %BIT_reloadDStream.exit.sink.split.i.i ] ; 6 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i77.i = load i16, ptr %i.cw, align 4
  %i.rm = zext i16 %.sroa.0.0.copyload.i77.i to i32 ; 2 uses
  %i.rn = and i32 %.sroa.20.3.i, 63
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = shl i64 %.sroa.0.3.i, %i.ro
  %i.rq = lshr i64 %i.rp, 1
  %i.rr = and i32 %i.rm, 63
  %i.rs = xor i32 %i.rr, 63
  %i.rt = zext nneg i32 %i.rs to i64
  %i.ru = lshr i64 %i.rq, %i.rt
  %i.rv = add i32 %.sroa.20.3.i, %i.rm            ; 7 uses
  %i.rw = icmp ugt i32 %i.rv, 64
  br i1 %i.rw, label %FSE_initDState.exit85.i, label %bb.bt

bb.bt:                                            ; preds = %FSE_initDState.exit.i
  %i.rx = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %.not.i.i80.i = icmp ult ptr %.sroa.42111.3.i, %i.rx
  br i1 %.not.i.i80.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ry = lshr i32 %i.rv, 3
  %i.rz = and i32 %i.rv, 7
  br label %BIT_reloadDStream.exit.sink.split.i81.i

bb.bv:                                            ; preds = %bb.bt
  %i.sa = icmp eq ptr %.sroa.42111.3.i, %.7120.i.i
  br i1 %i.sa, label %FSE_initDState.exit85.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sb = lshr i32 %i.rv, 3                       ; 2 uses
  %i.sc = zext nneg i32 %i.sb to i64
  %i.sd = sub nsw i64 0, %i.sc
  %i.se = getelementptr inbounds i8, ptr %.sroa.42111.3.i, i64 %i.sd
  %i.sf = icmp ult ptr %i.se, %.7120.i.i
  %i.sg = ptrtoint ptr %.sroa.42111.3.i to i64
  %i.sh = sub i64 %i.sg, %i.od
  %i.si = trunc i64 %i.sh to i32
  %.024.i.i84.i = select i1 %i.sf, i32 %i.si, i32 %i.sb ; 2 uses
  %i.sj = shl i32 %.024.i.i84.i, 3
  %i.sk = sub i32 %i.rv, %i.sj
  br label %BIT_reloadDStream.exit.sink.split.i81.i

BIT_reloadDStream.exit.sink.split.i81.i:          ; preds = %bb.bw, %bb.bu
  %.sroa.20.4.i = phi i32 [ %i.sk, %bb.bw ], [ %i.rz, %bb.bu ]
  %.pn180.in.i = phi i32 [ %.024.i.i84.i, %bb.bw ], [ %i.ry, %bb.bu ]
  %.pn180.i = zext i32 %.pn180.in.i to i64
  %.pn179.i = sub nsw i64 0, %.pn180.i
  %.sroa.42111.4.i = getelementptr inbounds i8, ptr %.sroa.42111.3.i, i64 %.pn179.i ; 2 uses
  %.val30.i.sink.i83.i = load i64, ptr %.sroa.42111.4.i, align 1
  br label %FSE_initDState.exit85.i

FSE_initDState.exit85.i:                          ; preds = %BIT_reloadDStream.exit.sink.split.i81.i, %bb.bv, %FSE_initDState.exit.i
  %.sroa.0.4.i = phi i64 [ %.sroa.0.3.i, %FSE_initDState.exit.i ], [ %.sroa.0.3.i, %bb.bv ], [ %.val30.i.sink.i83.i, %BIT_reloadDStream.exit.sink.split.i81.i ] ; 2 uses
  %.sroa.20.5.i = phi i32 [ %i.rv, %FSE_initDState.exit.i ], [ %i.rv, %bb.bv ], [ %.sroa.20.4.i, %BIT_reloadDStream.exit.sink.split.i81.i ] ; 2 uses
  %.sroa.42111.5.i = phi ptr [ %.sroa.42111.3.i, %FSE_initDState.exit.i ], [ %.7120.i.i, %bb.bv ], [ %.sroa.42111.4.i, %BIT_reloadDStream.exit.sink.split.i81.i ] ; 6 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %.sroa.0.0.copyload.i86.i = load i16, ptr %i.cv, align 8
  %i.sm = zext i16 %.sroa.0.0.copyload.i86.i to i32 ; 2 uses
  %i.sn = and i32 %.sroa.20.5.i, 63
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = shl i64 %.sroa.0.4.i, %i.so
  %i.sq = lshr i64 %i.sp, 1
  %i.sr = and i32 %i.sm, 63
  %i.ss = xor i32 %i.sr, 63
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = lshr i64 %i.sq, %i.st
  %i.sv = add i32 %.sroa.20.5.i, %i.sm            ; 6 uses
  %i.sw = icmp ugt i32 %i.sv, 64
  br i1 %i.sw, label %ZSTD_decompressSequences.exit, label %bb.bx

bb.bx:                                            ; preds = %FSE_initDState.exit85.i
  %i.sx = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %.not.i.i89.i = icmp ult ptr %.sroa.42111.5.i, %i.sx
  br i1 %.not.i.i89.i, label %bb.by, label %FSE_initDState.exit94.thread257.i

FSE_initDState.exit94.thread257.i:                ; preds = %bb.bx
  %i.sy = lshr i32 %i.sv, 3
  %i.sz = and i32 %i.sv, 7
  %.pn182260.i = zext nneg i32 %i.sy to i64
  %.pn181261.i = sub nsw i64 0, %.pn182260.i
  %.sroa.42111.6262.i = getelementptr inbounds i8, ptr %.sroa.42111.5.i, i64 %.pn181261.i ; 2 uses
  %.val30.i.sink.i92263.i = load i64, ptr %.sroa.42111.6262.i, align 1
  br label %.lr.ph.i

bb.by:                                            ; preds = %bb.bx
  %i.ta = icmp eq ptr %.sroa.42111.5.i, %.7120.i.i
  br i1 %i.ta, label %.lr.ph.i, label %FSE_initDState.exit94.i

FSE_initDState.exit94.i:                          ; preds = %bb.by
  %i.tb = lshr i32 %i.sv, 3                       ; 2 uses
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = sub nsw i64 0, %i.tc
  %i.te = getelementptr inbounds i8, ptr %.sroa.42111.5.i, i64 %i.td
  %i.tf = icmp ult ptr %i.te, %.7120.i.i
  %i.tg = ptrtoint ptr %.sroa.42111.5.i to i64
  %i.th = sub i64 %i.tg, %i.od
  %i.ti = trunc i64 %i.th to i32
  %.024.i.i93.i = select i1 %i.tf, i32 %i.ti, i32 %i.tb ; 2 uses
  %i.tj = shl i32 %.024.i.i93.i, 3
  %i.tk = sub i32 %i.sv, %i.tj                    ; 2 uses
  %.pn182.i = zext i32 %.024.i.i93.i to i64
  %.pn181.i = sub nsw i64 0, %.pn182.i
  %.sroa.42111.6.i = getelementptr inbounds i8, ptr %.sroa.42111.5.i, i64 %.pn181.i ; 2 uses
  %.val30.i.sink.i92.i = load i64, ptr %.sroa.42111.6.i, align 1
  %i.tl = icmp ugt i32 %i.tk, 64
  br i1 %i.tl, label %ZSTD_decompressSequences.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.by, %FSE_initDState.exit94.i, %FSE_initDState.exit94.thread257.i
  %.sroa.42111.7256.i = phi ptr [ %.sroa.42111.6262.i, %FSE_initDState.exit94.thread257.i ], [ %.sroa.42111.6.i, %FSE_initDState.exit94.i ], [ %.7120.i.i, %bb.by ]
  %.sroa.20.7255.i = phi i32 [ %i.sz, %FSE_initDState.exit94.thread257.i ], [ %i.tk, %FSE_initDState.exit94.i ], [ %i.sv, %bb.by ]
  %.sroa.0.5254.i = phi i64 [ %.val30.i.sink.i92263.i, %FSE_initDState.exit94.thread257.i ], [ %.val30.i.sink.i92.i, %FSE_initDState.exit94.i ], [ %.sroa.0.4.i, %bb.by ]
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 6156
  %i.tn = getelementptr inbounds i8, ptr %i.eb, i64 -1 ; 2 uses
  %i.to = getelementptr inbounds i8, ptr %i.ct, i64 -8 ; 5 uses
  %i.tp = ptrtoint ptr %i.ct to i64
  %i.tq = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.tr = ptrtoint ptr %i.cy to i64
  %i.ts = getelementptr inbounds i8, ptr %i.ct, i64 -12
  %i.tt = ptrtoint ptr %i.to to i64
  %5 = add i64 %2, %i.a
  %6 = add i64 %5, -8                             ; 2 uses
  %i.tu = add i64 %2, %i.a
  %i.tv = add i64 %i.tu, -17
  br label %bb.bz

bb.bz:                                            ; preds = %ZSTD_execSequence.exit.i, %.lr.ph.i
  %.057199.i = phi ptr [ %1, %.lr.ph.i ], [ %i.acu, %ZSTD_execSequence.exit.i ] ; 10 uses
  %.sroa.63.0198.i = phi i64 [ %i.qu, %.lr.ph.i ], [ %i.vd, %ZSTD_execSequence.exit.i ]
  %.sroa.68.0197.i = phi i64 [ %i.ru, %.lr.ph.i ], [ %i.wd, %ZSTD_execSequence.exit.i ]
  %.sroa.73.0196.i = phi i64 [ %i.su, %.lr.ph.i ], [ %i.wx, %ZSTD_execSequence.exit.i ]
  %.sroa.81.0195.i = phi ptr [ %i.ea, %.lr.ph.i ], [ %.7.i.i, %ZSTD_execSequence.exit.i ] ; 7 uses
  %.sroa.78.0194.i = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.5.0190.i, %ZSTD_execSequence.exit.i ]
  %.sroa.42111.0193.i = phi ptr [ %.sroa.42111.7256.i, %.lr.ph.i ], [ %.sroa.42111.8.i, %ZSTD_execSequence.exit.i ] ; 7 uses
  %.sroa.20.0192.i = phi i32 [ %.sroa.20.7255.i, %.lr.ph.i ], [ %i.wv, %ZSTD_execSequence.exit.i ] ; 5 uses
  %.sroa.0.0191.i = phi i64 [ %.sroa.0.5254.i, %.lr.ph.i ], [ %.sroa.0.6.i, %ZSTD_execSequence.exit.i ]
  %.sroa.5.0190.i = phi i64 [ 0, %.lr.ph.i ], [ %.060.i.i, %ZSTD_execSequence.exit.i ] ; 2 uses
  %.0136189.i = phi i32 [ %i.db, %.lr.ph.i ], [ %i.uq, %ZSTD_execSequence.exit.i ] ; 2 uses
  %.0137188.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %i.xx, %ZSTD_execSequence.exit.i ] ; 10 uses
  %.not.i95.i = icmp ult ptr %.sroa.42111.0193.i, %i.sx
  br i1 %.not.i95.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tw = lshr i32 %.sroa.20.0192.i, 3
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = sub nsw i64 0, %i.tx
  %i.tz = getelementptr inbounds i8, ptr %.sroa.42111.0193.i, i64 %i.ty ; 2 uses
  %i.ua = and i32 %.sroa.20.0192.i, 7
  %.val30.i.i = load i64, ptr %i.tz, align 1
  br label %BIT_reloadDStream.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.ub = icmp eq ptr %.sroa.42111.0193.i, %.7120.i.i
  br i1 %i.ub, label %BIT_reloadDStream.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.uc = lshr i32 %.sroa.20.0192.i, 3            ; 2 uses
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = sub nsw i64 0, %i.ud
  %i.uf = getelementptr inbounds i8, ptr %.sroa.42111.0193.i, i64 %i.ue
  %i.ug = icmp ult ptr %i.uf, %.7120.i.i
  %i.uh = ptrtoint ptr %.sroa.42111.0193.i to i64
  %i.ui = sub i64 %i.uh, %i.od
  %i.uj = trunc i64 %i.ui to i32
  %.024.i.i = select i1 %i.ug, i32 %i.uj, i32 %i.uc ; 2 uses
  %i.uk = zext i32 %.024.i.i to i64
  %i.ul = sub nsw i64 0, %i.uk
  %i.um = getelementptr inbounds i8, ptr %.sroa.42111.0193.i, i64 %i.ul ; 2 uses
  %i.un = shl i32 %.024.i.i, 3
  %i.uo = sub i32 %.sroa.20.0192.i, %i.un
  %.val.i96.i = load i64, ptr %i.um, align 1
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.cc, %bb.cb, %bb.ca
  %.sroa.0.6.i = phi i64 [ %.val30.i.i, %bb.ca ], [ %.val.i96.i, %bb.cc ], [ %.sroa.0.0191.i, %bb.cb ] ; 5 uses
  %.sroa.20.8.i = phi i32 [ %i.ua, %bb.ca ], [ %i.uo, %bb.cc ], [ %.sroa.20.0192.i, %bb.cb ] ; 3 uses
  %.sroa.42111.8.i = phi ptr [ %i.tz, %bb.ca ], [ %i.um, %bb.cc ], [ %.sroa.42111.0193.i, %bb.cb ] ; 2 uses
  %i.up = icmp sgt i32 %.0136189.i, 0
  br i1 %i.up, label %bb.cd, label %BIT_reloadDStream.exit.thread.i

bb.cd:                                            ; preds = %BIT_reloadDStream.exit.i
  %i.uq = add nsw i32 %.0136189.i, -1
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %.sroa.63.0198.i ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ur, align 2, !tbaa !39
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ur, i64 2
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2, !tbaa !10 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ur, i64 3
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !tbaa !10
  %i.us = zext i8 %.sroa.5.0.copyload.i.i.i to i32 ; 2 uses
  %i.ut = and i32 %.sroa.20.8.i, 63
  %i.uu = zext nneg i32 %i.ut to i64
  %i.uv = shl i64 %.sroa.0.6.i, %i.uu
  %i.uw = lshr i64 %i.uv, 1
  %i.ux = and i32 %i.us, 63
  %i.uy = xor i32 %i.ux, 63
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = lshr i64 %i.uw, %i.uz
  %i.vb = add i32 %.sroa.20.8.i, %i.us            ; 2 uses
  %i.vc = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.vd = add nuw i64 %i.va, %i.vc
  %i.ve = zext i8 %.sroa.4.0.copyload.i.i.i to i64
  %.not.i97.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 0
  %.sroa.speculated.i = select i1 %.not.i97.i, i64 %.sroa.78.0194.i, i64 %.sroa.5.0190.i
  %i.vf = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 63
  br i1 %i.vf, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  %i.vg = icmp ult ptr %.sroa.81.0195.i, %i.eb
  br i1 %i.vg, label %bb.cf, label %.thread.i98.i

bb.cf:                                            ; preds = %bb.ce
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.81.0195.i, i64 1 ; 3 uses
  %i.vi = load i8, ptr %.sroa.81.0195.i, align 1, !tbaa !10 ; 2 uses
  %i.vj = zext i8 %i.vi to i64
  %.not75.i.i = icmp eq i8 %i.vi, -1
  br i1 %.not75.i.i, label %bb.cg, label %.thread.i98.i

.thread.i98.i:                                    ; preds = %bb.cf, %bb.ce
  %i.vk = phi i64 [ %i.vj, %bb.cf ], [ 0, %bb.ce ]
  %.0101.i.i = phi ptr [ %i.vh, %bb.cf ], [ %.sroa.81.0195.i, %bb.ce ]
  %narrow.i.i = add nuw nsw i64 %i.vk, 63
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.81.0195.i, i64 4 ; 2 uses
  %.not76.i.i = icmp ugt ptr %i.vl, %i.eb
  br i1 %.not76.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.0.val.i.i = load i16, ptr %i.vh, align 1
  %i.vm = getelementptr i8, ptr %.sroa.81.0195.i, i64 3
  %.0.val84.i.i = load i8, ptr %i.vm, align 1, !tbaa !10
  %i.vn = zext i16 %.0.val.i.i to i64
  %i.vo = zext i8 %.0.val84.i.i to i64
  %i.vp = shl nuw nsw i64 %i.vo, 16
  %i.vq = or disjoint i64 %i.vp, %i.vn
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %.thread.i98.i
  %.061.shrunk.i.i = phi i64 [ %narrow.i.i, %.thread.i98.i ], [ %i.vq, %bb.ch ], [ 63, %bb.cg ]
  %.1.i.i = phi ptr [ %.0101.i.i, %.thread.i98.i ], [ %i.vl, %bb.ch ], [ %i.vh, %bb.cg ] ; 2 uses
  %.not77.i.i = icmp ult ptr %.1.i.i, %i.eb
  %spec.select.i.i = select i1 %.not77.i.i, ptr %.1.i.i, ptr %i.tn
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cd
  %.162.i.i = phi i64 [ %.061.shrunk.i.i, %bb.ci ], [ %i.ve, %bb.cd ] ; 14 uses
  %.3.i.i = phi ptr [ %spec.select.i.i, %bb.ci ], [ %.sroa.81.0195.i, %bb.cd ] ; 7 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %.sroa.68.0197.i ; 3 uses
  %.sroa.0.0.copyload.i85.i.i = load i16, ptr %i.vr, align 2, !tbaa !39
  %.sroa.4.0..sroa_idx.i86.i.i = getelementptr inbounds nuw i8, ptr %i.vr, i64 2
  %.sroa.4.0.copyload.i87.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i86.i.i, align 2, !tbaa !10 ; 3 uses
  %.sroa.5.0..sroa_idx.i88.i.i = getelementptr inbounds nuw i8, ptr %i.vr, i64 3
  %.sroa.5.0.copyload.i89.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i88.i.i, align 1, !tbaa !10
  %i.vs = zext i8 %.sroa.5.0.copyload.i89.i.i to i32 ; 2 uses
  %i.vt = and i32 %i.vb, 63
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = shl i64 %.sroa.0.6.i, %i.vu
  %i.vw = lshr i64 %i.vv, 1
  %i.vx = and i32 %i.vs, 63
  %i.vy = xor i32 %i.vx, 63
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = lshr i64 %i.vw, %i.vz
  %i.wb = add i32 %i.vb, %i.vs                    ; 2 uses
  %i.wc = zext i16 %.sroa.0.0.copyload.i85.i.i to i64
  %i.wd = add nuw i64 %i.wa, %i.wc
  %i.we = zext i8 %.sroa.4.0.copyload.i87.i.i to i32
  %i.wf = add nsw i32 %i.we, -1
  %i.wg = icmp eq i8 %.sroa.4.0.copyload.i87.i.i, 0 ; 2 uses
  %spec.store.select.i.i = select i1 %i.wg, i32 0, i32 %i.wf ; 2 uses
  %i.wh = zext i8 %.sroa.4.0.copyload.i87.i.i to i64
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_decodeSequence.offsetPrefix, i64 %i.wh
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !8
  %i.wk = add i32 %i.wb, %spec.store.select.i.i   ; 2 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %.sroa.73.0196.i ; 3 uses
  %.sroa.0.0.copyload.i92.i.i = load i16, ptr %i.wl, align 2, !tbaa !39
  %.sroa.4.0..sroa_idx.i93.i.i = getelementptr inbounds nuw i8, ptr %i.wl, i64 2
  %.sroa.4.0.copyload.i94.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i93.i.i, align 2, !tbaa !10 ; 2 uses
  %.sroa.5.0..sroa_idx.i95.i.i = getelementptr inbounds nuw i8, ptr %i.wl, i64 3
  %.sroa.5.0.copyload.i96.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i95.i.i, align 1, !tbaa !10
  %i.wm = zext i8 %.sroa.5.0.copyload.i96.i.i to i32 ; 2 uses
  %i.wn = and i32 %i.wk, 63
  %i.wo = zext nneg i32 %i.wn to i64
  %i.wp = shl i64 %.sroa.0.6.i, %i.wo
  %i.wq = lshr i64 %i.wp, 1
  %i.wr = and i32 %i.wm, 63
  %i.ws = xor i32 %i.wr, 63
  %i.wt = zext nneg i32 %i.ws to i64
  %i.wu = lshr i64 %i.wq, %i.wt
  %i.wv = add i32 %i.wk, %i.wm                    ; 2 uses
  %i.ww = zext i16 %.sroa.0.0.copyload.i92.i.i to i64
  %i.wx = add nuw i64 %i.wu, %i.ww
  %i.wy = zext i8 %.sroa.4.0.copyload.i94.i.i to i64
  %i.wz = icmp eq i8 %.sroa.4.0.copyload.i94.i.i, 127
  br i1 %i.wz, label %bb.ck, label %ZSTD_decodeSequence.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.xa = icmp ult ptr %.3.i.i, %i.eb
  br i1 %i.xa, label %bb.cl, label %.thread102.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.xb = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 3 uses
  %i.xc = load i8, ptr %.3.i.i, align 1, !tbaa !10 ; 2 uses
  %i.xd = zext i8 %i.xc to i64
  %.not78.i.i = icmp eq i8 %i.xc, -1
  br i1 %.not78.i.i, label %bb.cm, label %.thread102.i.i

.thread102.i.i:                                   ; preds = %bb.cl, %bb.ck
  %i.xe = phi i64 [ %i.xd, %bb.cl ], [ 0, %bb.ck ]
  %.4105.i.i = phi ptr [ %i.xb, %bb.cl ], [ %.3.i.i, %bb.ck ]
  %narrow80.i.i = add nuw nsw i64 %i.xe, 127
  br label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.xf = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4 ; 2 uses
  %.not79.i.i = icmp ugt ptr %i.xf, %i.eb
  br i1 %.not79.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.4.val.i.i = load i16, ptr %i.xb, align 1
  %i.xg = getelementptr i8, ptr %.3.i.i, i64 3
  %.4.val83.i.i = load i8, ptr %i.xg, align 1, !tbaa !10
  %i.xh = zext i16 %.4.val.i.i to i64
  %i.xi = zext i8 %.4.val83.i.i to i64
  %i.xj = shl nuw nsw i64 %i.xi, 16
  %i.xk = or disjoint i64 %i.xj, %i.xh
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %.thread102.i.i
  %.058.shrunk.i.i = phi i64 [ %narrow80.i.i, %.thread102.i.i ], [ %i.xk, %bb.cn ], [ 127, %bb.cm ]
  %.5.i.i = phi ptr [ %.4105.i.i, %.thread102.i.i ], [ %i.xf, %bb.cn ], [ %i.xb, %bb.cm ] ; 2 uses
  %.not81.i.i = icmp ult ptr %.5.i.i, %i.eb
  %spec.select82.i.i = select i1 %.not81.i.i, ptr %.5.i.i, ptr %i.tn
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.co, %bb.cj
  %.159.i.i = phi i64 [ %.058.shrunk.i.i, %bb.co ], [ %i.wy, %bb.cj ] ; 3 uses
  %.7.i.i = phi ptr [ %spec.select82.i.i, %bb.co ], [ %.3.i.i, %bb.cj ]
  %i.xl = and i32 %i.wb, 63
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = shl i64 %.sroa.0.6.i, %i.xm
  %i.xo = lshr i64 %i.xn, 1
  %i.xp = and i32 %spec.store.select.i.i, 63
  %i.xq = xor i32 %i.xp, 63
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = lshr i64 %i.xo, %i.xr
  %i.xt = add i64 %i.xs, %i.wj
  %.060.i.i = select i1 %i.wg, i64 %.sroa.speculated.i, i64 %i.xt ; 7 uses
  %i.xu = add nuw nsw i64 %.159.i.i, 4            ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.057199.i, i64 %.162.i.i ; 12 uses
  %i.xw = getelementptr i8, ptr %i.xv, i64 %i.xu  ; 5 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.0137188.i, i64 %.162.i.i ; 2 uses
  %i.xy = add nuw nsw i64 %i.xu, %.162.i.i        ; 2 uses
  %i.xz = ptrtoint ptr %.057199.i to i64          ; 14 uses
  %i.ya = sub i64 %i.tp, %i.xz
  %i.yb = icmp ugt i64 %i.xy, %i.ya
  br i1 %i.yb, label %ZSTD_decompressSequences.exit, label %bb.cp

bb.cp:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.yc = ptrtoint ptr %.0137188.i to i64         ; 2 uses
  %i.yd = sub i64 %i.tq, %i.yc
  %i.ye = icmp ugt i64 %.162.i.i, %i.yd
  br i1 %i.ye, label %ZSTD_decompressSequences.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.yf = icmp ugt ptr %i.xv, %i.to
  br i1 %i.yf, label %ZSTD_decompressSequences.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yg = ptrtoint ptr %i.xv to i64               ; 2 uses
  %i.yh = sub i64 %i.yg, %i.tr
  %i.yi = and i64 %i.yh, 4294967295
  %i.yj = icmp ugt i64 %.060.i.i, %i.yi
  br i1 %i.yj, label %ZSTD_decompressSequences.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yk = icmp ugt ptr %i.xw, %i.ct
  br i1 %i.yk, label %ZSTD_decompressSequences.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.yl = icmp ugt ptr %i.xx, %i.cu
  br i1 %i.yl, label %ZSTD_decompressSequences.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.ct
  %i.ym = add i64 %.162.i.i, %i.xz
  %i.yn = add i64 %i.xz, 8
  %i.yo = tail call i64 @llvm.umax.i64(i64 %i.ym, i64 %i.yn)
  %i.yp = xor i64 %i.xz, -1
  %i.yq = add i64 %i.yo, %i.yp                    ; 2 uses
  %i.yr = lshr i64 %i.yq, 3
  %i.ys = add nuw nsw i64 %i.yr, 1                ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.yq, 24
  %i.yt = sub i64 %i.yc, %i.xz
  %diff.check150 = icmp ugt i64 %i.yt, -32
  %or.cond = or i1 %min.iters.check152, %diff.check150
  br i1 %or.cond, label %.preheader.i.i.preheader169, label %vector.ph153

vector.ph153:                                     ; preds = %.preheader.i.i.preheader
  %n.vec154 = and i64 %i.ys, 4611686018427387900  ; 3 uses
  %i.yu = shl i64 %n.vec154, 3                    ; 2 uses
  %i.yv = getelementptr i8, ptr %.0137188.i, i64 %i.yu
  %i.yw = getelementptr i8, ptr %.057199.i, i64 %i.yu
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %i.yx = shl i64 %index156, 3                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.0137188.i, i64 %i.yx ; 2 uses
  %next.gep158 = getelementptr i8, ptr %.057199.i, i64 %i.yx ; 2 uses
  %i.yy = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load159 = load <2 x i64>, ptr %next.gep157, align 1
  %wide.load160 = load <2 x i64>, ptr %i.yy, align 1
  %i.yz = getelementptr i8, ptr %next.gep158, i64 16
  store <2 x i64> %wide.load159, ptr %next.gep158, align 1
  store <2 x i64> %wide.load160, ptr %i.yz, align 1
  %index.next161 = add nuw i64 %index156, 4       ; 2 uses
  %i.za = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.za, label %middle.block162, label %vector.body155, !llvm.loop !45

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.ys, %n.vec154
  br i1 %cmp.n163, label %ZSTD_wildcopy.exit.i.i, label %.preheader.i.i.preheader169

.preheader.i.i.preheader169:                      ; preds = %.preheader.i.i.preheader, %middle.block162
  %.09.i.i.i.ph = phi ptr [ %.0137188.i, %.preheader.i.i.preheader ], [ %i.yv, %middle.block162 ]
  %.0.i.i.i.ph = phi ptr [ %.057199.i, %.preheader.i.i.preheader ], [ %i.yw, %middle.block162 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader169, %.preheader.i.i
  %.09.i.i.i = phi ptr [ %i.zc, %.preheader.i.i ], [ %.09.i.i.i.ph, %.preheader.i.i.preheader169 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.zb, %.preheader.i.i ], [ %.0.i.i.i.ph, %.preheader.i.i.preheader169 ] ; 2 uses
  %.09.val.i.i.i = load i64, ptr %.09.i.i.i, align 1
  store i64 %.09.val.i.i.i, ptr %.0.i.i.i, align 1
  %i.zb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.zd = icmp ult ptr %i.zb, %i.xv
  br i1 %i.zd, label %.preheader.i.i, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !48

ZSTD_wildcopy.exit.i.i:                           ; preds = %.preheader.i.i, %middle.block162
  %i.ze = sub nsw i64 0, %.060.i.i
  %i.zf = getelementptr inbounds i8, ptr %i.xv, i64 %i.ze ; 8 uses
  %i.zg = icmp ugt i64 %.060.i.i, %i.yg
  %i.zh = icmp ult ptr %i.zf, %i.cy
  %or.cond.i.i16 = select i1 %i.zg, i1 true, i1 %i.zh
  br i1 %or.cond.i.i16, label %ZSTD_decompressSequences.exit, label %bb.cu

bb.cu:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.zi = icmp samesign ult i64 %.060.i.i, 8
  br i1 %i.zi, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec64table, i64 %.060.i.i
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !28
  %i.zl = load i8, ptr %i.zf, align 1, !tbaa !10
  store i8 %i.zl, ptr %i.xv, align 1, !tbaa !10
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zf, i64 1
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !10
  %i.zo = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  store i8 %i.zn, ptr %i.zo, align 1, !tbaa !10
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zf, i64 2
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !10
  %i.zr = getelementptr inbounds nuw i8, ptr %i.xv, i64 2
  store i8 %i.zq, ptr %i.zr, align 1, !tbaa !10
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zf, i64 3
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !10
  %i.zu = getelementptr inbounds nuw i8, ptr %i.xv, i64 3
  store i8 %i.zt, ptr %i.zu, align 1, !tbaa !10
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec32table, i64 %.060.i.i
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !28
  %i.zx = sext i32 %i.zw to i64
  %i.zy = getelementptr inbounds i8, ptr %i.zf, i64 %i.zx ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.xv, i64 4
  %.val79.i.i = load i32, ptr %i.zy, align 1
  store i32 %.val79.i.i, ptr %i.zz, align 1
  %i.aaa = sext i32 %i.zk to i64
  %i.aab = sub nsw i64 0, %i.aaa
  %i.aac = getelementptr inbounds i8, ptr %i.zy, i64 %i.aab
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %.val.i99.i = load i64, ptr %i.zf, align 1
  store i64 %.val.i99.i, ptr %i.xv, align 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.065.i.i = phi ptr [ %i.aac, %bb.cv ], [ %i.zf, %bb.cw ] ; 2 uses
  %.065.i.i117 = ptrtoaddr ptr %.065.i.i to i64   ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.xv, i64 8 ; 11 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 8 ; 10 uses
  %i.aaf = icmp ugt ptr %i.xw, %i.ts
  br i1 %i.aaf, label %bb.cy, label %.preheader183.i.preheader

.preheader183.i.preheader:                        ; preds = %bb.cx
  %i.aag = add nsw i64 %.162.i.i, %.159.i.i
  %i.aah = add i64 %i.aag, %i.xz
  %i.aai = add i64 %i.aah, 4
  %i.aaj = add i64 %.162.i.i, %i.xz
  %i.aak = add i64 %i.aaj, 16
  %i.aal = tail call i64 @llvm.umax.i64(i64 %i.aai, i64 %i.aak)
  %i.aam = add i64 %i.aal, -9
  %i.aan = add i64 %.162.i.i, %i.xz
  %i.aao = sub i64 %i.aam, %i.aan                 ; 2 uses
  %i.aap = lshr i64 %i.aao, 3
  %i.aaq = add nuw nsw i64 %i.aap, 1              ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.aao, 56
  br i1 %min.iters.check135, label %.preheader183.i.preheader167, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.preheader183.i.preheader
  %i.aar = add i64 %.162.i.i, %i.xz
  %i.aas = sub i64 %.065.i.i117, %i.aar
  %diff.check133 = icmp ugt i64 %i.aas, -32
  br i1 %diff.check133, label %.preheader183.i.preheader167, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck132
  %n.vec137 = and i64 %i.aaq, 4611686018427387900 ; 3 uses
  %i.aat = shl i64 %n.vec137, 3                   ; 2 uses
  %i.aau = getelementptr i8, ptr %i.aae, i64 %i.aat
  %i.aav = getelementptr i8, ptr %i.aad, i64 %i.aat
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next144, %vector.body138 ] ; 2 uses
  %i.aaw = shl i64 %index139, 3                   ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.aae, i64 %i.aaw ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.aad, i64 %i.aaw ; 2 uses
  %i.aax = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load142 = load <2 x i64>, ptr %next.gep140, align 1
  %wide.load143 = load <2 x i64>, ptr %i.aax, align 1
  %i.aay = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load142, ptr %next.gep141, align 1
  store <2 x i64> %wide.load143, ptr %i.aay, align 1
  %index.next144 = add nuw i64 %index139, 4       ; 2 uses
  %i.aaz = icmp eq i64 %index.next144, %n.vec137
  br i1 %i.aaz, label %middle.block145, label %vector.body138, !llvm.loop !49

middle.block145:                                  ; preds = %vector.body138
  %cmp.n146 = icmp eq i64 %i.aaq, %n.vec137
  br i1 %cmp.n146, label %ZSTD_execSequence.exit.i, label %.preheader183.i.preheader167

.preheader183.i.preheader167:                     ; preds = %vector.memcheck132, %.preheader183.i.preheader, %middle.block145
  %.09.i84.i.i.ph = phi ptr [ %i.aae, %vector.memcheck132 ], [ %i.aae, %.preheader183.i.preheader ], [ %i.aau, %middle.block145 ]
  %.0.i85.i.i.ph = phi ptr [ %i.aad, %vector.memcheck132 ], [ %i.aad, %.preheader183.i.preheader ], [ %i.aav, %middle.block145 ]
  br label %.preheader183.i

bb.cy:                                            ; preds = %bb.cx
  %i.aba = icmp ult ptr %i.aad, %i.to
  br i1 %i.aba, label %.preheader.i.preheader, label %bb.cz

.preheader.i.preheader:                           ; preds = %bb.cy
  %i.abb = add i64 %.162.i.i, %i.xz
  %i.abc = sub i64 %i.tv, %i.abb                  ; 2 uses
  %i.abd = lshr i64 %i.abc, 3
  %i.abe = add nuw nsw i64 %i.abd, 1              ; 2 uses
  %min.iters.check119 = icmp ult i64 %i.abc, 56
  br i1 %min.iters.check119, label %.preheader.i.preheader166, label %vector.memcheck116

vector.memcheck116:                               ; preds = %.preheader.i.preheader
  %i.abf = add i64 %.162.i.i, %i.xz
  %i.abg = sub i64 %.065.i.i117, %i.abf
  %diff.check118 = icmp ugt i64 %i.abg, -32
  br i1 %diff.check118, label %.preheader.i.preheader166, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck116
  %n.vec121 = and i64 %i.abe, 4611686018427387900 ; 3 uses
  %i.abh = shl i64 %n.vec121, 3                   ; 2 uses
  %i.abi = getelementptr i8, ptr %i.aae, i64 %i.abh
  %i.abj = getelementptr i8, ptr %i.aad, i64 %i.abh
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next128, %vector.body122 ] ; 2 uses
  %i.abk = shl i64 %index123, 3                   ; 2 uses
  %next.gep124 = getelementptr i8, ptr %i.aae, i64 %i.abk ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.aad, i64 %i.abk ; 2 uses
  %i.abl = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load126 = load <2 x i64>, ptr %next.gep124, align 1
  %wide.load127 = load <2 x i64>, ptr %i.abl, align 1
  %i.abm = getelementptr i8, ptr %next.gep125, i64 16
  store <2 x i64> %wide.load126, ptr %next.gep125, align 1
  store <2 x i64> %wide.load127, ptr %i.abm, align 1
  %index.next128 = add nuw i64 %index123, 4       ; 2 uses
  %i.abn = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.abn, label %middle.block129, label %vector.body122, !llvm.loop !50

middle.block129:                                  ; preds = %vector.body122
  %cmp.n130 = icmp eq i64 %i.abe, %n.vec121
  br i1 %cmp.n130, label %ZSTD_wildcopy.exit83.i.i, label %.preheader.i.preheader166

.preheader.i.preheader166:                        ; preds = %vector.memcheck116, %.preheader.i.preheader, %middle.block129
  %.09.i80.i.i.ph = phi ptr [ %i.aae, %vector.memcheck116 ], [ %i.aae, %.preheader.i.preheader ], [ %i.abi, %middle.block129 ]
  %.0.i81.i.i.ph = phi ptr [ %i.aad, %vector.memcheck116 ], [ %i.aad, %.preheader.i.preheader ], [ %i.abj, %middle.block129 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader166, %.preheader.i
  %.09.i80.i.i = phi ptr [ %i.abp, %.preheader.i ], [ %.09.i80.i.i.ph, %.preheader.i.preheader166 ] ; 2 uses
  %.0.i81.i.i = phi ptr [ %i.abo, %.preheader.i ], [ %.0.i81.i.i.ph, %.preheader.i.preheader166 ] ; 2 uses
  %.09.val.i82.i.i = load i64, ptr %.09.i80.i.i, align 1
  store i64 %.09.val.i82.i.i, ptr %.0.i81.i.i, align 1
  %i.abo = getelementptr inbounds nuw i8, ptr %.0.i81.i.i, i64 8 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.09.i80.i.i, i64 8
  %i.abq = icmp ult ptr %i.abo, %i.to
  br i1 %i.abq, label %.preheader.i, label %ZSTD_wildcopy.exit83.i.i, !llvm.loop !51

ZSTD_wildcopy.exit83.i.i:                         ; preds = %.preheader.i, %middle.block129
  %i.abr = ptrtoint ptr %i.aad to i64
  %i.abs = sub i64 %i.tt, %i.abr
  %i.abt = getelementptr inbounds i8, ptr %i.aae, i64 %i.abs
  br label %bb.cz

bb.cz:                                            ; preds = %ZSTD_wildcopy.exit83.i.i, %bb.cy
  %.068.i.i = phi ptr [ %i.to, %ZSTD_wildcopy.exit83.i.i ], [ %i.aad, %bb.cy ] ; 7 uses
  %.166.i.i = phi ptr [ %i.abt, %ZSTD_wildcopy.exit83.i.i ], [ %i.aae, %bb.cy ] ; 7 uses
  %.166.i.i101 = ptrtoaddr ptr %.166.i.i to i64
  %i.abu = icmp ult ptr %.068.i.i, %i.xw
  br i1 %i.abu, label %iter.check, label %ZSTD_execSequence.exit.i

iter.check:                                       ; preds = %bb.cz
  %i.abv = add nsw i64 %.162.i.i, 4
  %i.abw = add nsw i64 %i.abv, %.159.i.i
  %i.abx = add i64 %i.abw, %i.xz
  %i.aby = add nsw i64 %.162.i.i, 8
  %i.abz = add i64 %i.aby, %i.xz
  %umax102 = tail call i64 @llvm.umax.i64(i64 %6, i64 %i.abz)
  %i.aca = sub i64 %i.abx, %umax102               ; 7 uses
  %min.iters.check = icmp ult i64 %i.aca, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.acb = add nsw i64 %.162.i.i, 8
  %i.acc = add i64 %i.acb, %i.xz
  %umax = tail call i64 @llvm.umax.i64(i64 %6, i64 %i.acc)
  %i.acd = sub i64 %.166.i.i101, %umax
  %diff.check = icmp ugt i64 %i.acd, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check103 = icmp ult i64 %i.aca, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ace = and i64 %i.aca, 28
  %n.vec = and i64 %i.aca, -32                    ; 5 uses
  %i.acf = getelementptr i8, ptr %.166.i.i, i64 %n.vec
  %i.acg = getelementptr i8, ptr %.068.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.166.i.i, i64 %index ; 2 uses
  %next.gep104 = getelementptr i8, ptr %.068.i.i, i64 %index ; 2 uses
  %i.ach = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !10
  %wide.load105 = load <16 x i8>, ptr %i.ach, align 1, !tbaa !10
  %i.aci = getelementptr i8, ptr %next.gep104, i64 16
  store <16 x i8> %wide.load, ptr %next.gep104, align 1, !tbaa !10
  store <16 x i8> %wide.load105, ptr %i.aci, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.acj = icmp eq i64 %index.next, %n.vec
  br i1 %i.acj, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aca, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ace, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec107 = and i64 %i.aca, -4                  ; 4 uses
  %i.ack = getelementptr i8, ptr %.166.i.i, i64 %n.vec107
  %i.acl = getelementptr i8, ptr %.068.i.i, i64 %n.vec107
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 3 uses
  %next.gep109 = getelementptr i8, ptr %.166.i.i, i64 %index108
  %next.gep110 = getelementptr i8, ptr %.068.i.i, i64 %index108
  %wide.load111 = load <4 x i8>, ptr %next.gep109, align 1, !tbaa !10
  store <4 x i8> %wide.load111, ptr %next.gep110, align 1, !tbaa !10
  %index.next112 = add nuw i64 %index108, 4       ; 2 uses
  %i.acm = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.acm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %i.aca, %n.vec107
  br i1 %cmp.n113, label %ZSTD_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.291.i.i.ph = phi ptr [ %.166.i.i, %iter.check ], [ %.166.i.i, %vector.memcheck ], [ %i.acf, %vec.epilog.iter.check ], [ %i.ack, %vec.epilog.middle.block ]
  %.16990.i.i.ph = phi ptr [ %.068.i.i, %iter.check ], [ %.068.i.i, %vector.memcheck ], [ %i.acg, %vec.epilog.iter.check ], [ %i.acl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.291.i.i = phi ptr [ %i.acn, %.lr.ph.i.i ], [ %.291.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.16990.i.i = phi ptr [ %i.acp, %.lr.ph.i.i ], [ %.16990.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.291.i.i, i64 1
  %i.aco = load i8, ptr %.291.i.i, align 1, !tbaa !10
  %i.acp = getelementptr inbounds nuw i8, ptr %.16990.i.i, i64 1 ; 2 uses
  store i8 %i.aco, ptr %.16990.i.i, align 1, !tbaa !10
  %i.acq = icmp ult ptr %i.acp, %i.xw
  br i1 %i.acq, label %.lr.ph.i.i, label %ZSTD_execSequence.exit.i, !llvm.loop !55

.preheader183.i:                                  ; preds = %.preheader183.i.preheader167, %.preheader183.i
  %.09.i84.i.i = phi ptr [ %i.acs, %.preheader183.i ], [ %.09.i84.i.i.ph, %.preheader183.i.preheader167 ] ; 2 uses
  %.0.i85.i.i = phi ptr [ %i.acr, %.preheader183.i ], [ %.0.i85.i.i.ph, %.preheader183.i.preheader167 ] ; 2 uses
  %.09.val.i86.i.i = load i64, ptr %.09.i84.i.i, align 1
  store i64 %.09.val.i86.i.i, ptr %.0.i85.i.i, align 1
  %i.acr = getelementptr inbounds nuw i8, ptr %.0.i85.i.i, i64 8 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.09.i84.i.i, i64 8
  %i.act = icmp ult ptr %i.acr, %i.xw
  br i1 %i.act, label %.preheader183.i, label %ZSTD_execSequence.exit.i, !llvm.loop !56

ZSTD_execSequence.exit.i:                         ; preds = %.preheader183.i, %.lr.ph.i.i, %middle.block145, %middle.block, %vec.epilog.middle.block, %bb.cz
  %i.acu = getelementptr inbounds nuw i8, ptr %.057199.i, i64 %i.xy
  %i.acv = icmp ugt i32 %i.wv, 64
  br i1 %i.acv, label %ZSTD_decompressSequences.exit, label %bb.bz

BIT_reloadDStream.exit.thread.i:                  ; preds = %BIT_reloadDStream.exit.i
  %i.acw = icmp ne i32 %.sroa.20.8.i, 64
  %i.acx = icmp ne ptr %.sroa.42111.8.i, %.7120.i.i
  %brmerge.i = select i1 %i.acx, i1 true, i1 %i.acw
  br i1 %brmerge.i, label %ZSTD_decompressSequences.exit, label %bb.da

bb.da:                                            ; preds = %BIT_reloadDStream.exit.thread.i
  %i.acy = ptrtoint ptr %.0137188.i to i64
  %i.acz = sub i64 %i.tq, %i.acy                  ; 2 uses
  %i.ada = icmp ugt ptr %.0137188.i, %i.cu
  br i1 %i.ada, label %ZSTD_decompressSequences.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.adb = getelementptr inbounds nuw i8, ptr %.057199.i, i64 %i.acz ; 3 uses
  %i.adc = icmp ugt ptr %i.adb, %i.ct
  br i1 %i.adc, label %ZSTD_decompressSequences.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not71.i = icmp eq ptr %i.cu, %.0137188.i
  br i1 %.not71.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not72.i = icmp eq ptr %.057199.i, %.0137188.i
  br i1 %.not72.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.057199.i, ptr align 1 %.0137188.i, i64 %i.acz, i1 false)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %.4.i = phi ptr [ %i.adb, %bb.dd ], [ %.057199.i, %bb.dc ], [ %i.adb, %bb.de ]
  %i.add = ptrtoint ptr %.4.i to i64
  %i.ade = ptrtoint ptr %1 to i64
  %i.adf = sub i64 %i.add, %i.ade
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %ZSTD_execSequence.exit.i, %ZSTD_wildcopy.exit.i.i, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %ZSTD_decodeSequence.exit.i, %FSE_initDState.exit85.i, %FSE_initDState.exit94.i, %bb.k, %bb.n, %bb.a, %bb.df, %bb.db, %bb.da, %BIT_reloadDStream.exit.thread.i, %BIT_initDStream.exit.i, %bb.bn, %bb.bf, %bb.bd, %ZSTD_decodeSeqHeaders.exit.i, %ZSTD_decodeSeqHeaders.exit.thread.i, %ZSTD_decodeLiteralsBlock.exit.thread25
  %.0 = phi i64 [ -20, %bb.k ], [ -20, %ZSTD_decodeLiteralsBlock.exit.thread25 ], [ %.786.i.ph.i, %ZSTD_decodeSeqHeaders.exit.thread.i ], [ %i.adf, %bb.df ], [ %i.of, %ZSTD_decodeSeqHeaders.exit.i ], [ -20, %BIT_reloadDStream.exit.thread.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %bb.da ], [ -70, %bb.db ], [ -20, %bb.bf ], [ -20, %bb.bd ], [ -20, %bb.bn ], [ -20, %bb.a ], [ -20, %bb.n ], [ -20, %FSE_initDState.exit94.i ], [ -20, %FSE_initDState.exit85.i ], [ -20, %ZSTD_execSequence.exit.i ], [ -20, %bb.ct ], [ -20, %ZSTD_wildcopy.exit.i.i ], [ -70, %bb.cs ], [ -20, %bb.cr ], [ -70, %bb.cq ], [ -20, %bb.cp ], [ -70, %ZSTD_decodeSequence.exit.i ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.e, i8 0, i64 8194, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 24 uses
  %i.g = call fastcc i64 @HUF_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.b, label %HUF_readDTableX2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 4, !tbaa !28   ; 12 uses
  %i.j = icmp ugt i32 %i.i, 12
  br i1 %i.j, label %HUF_readDTableX2.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw nsw i32 %i.i to i16
  store i16 %i.k, ptr %i.e, align 16, !tbaa !39
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
  %.03542.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ac, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod127 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store i32 %.03542.i.epil.init, ptr %i.n, align 4, !tbaa !28
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !28   ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %HUF_readDTableX2.exit.thread23, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.p = trunc nuw nsw i32 %i.i to i8
  %i.q = add nuw nsw i8 %i.p, 1
  %wide.trip.count56.i = zext i32 %i.o to i64
end_hunk_1
