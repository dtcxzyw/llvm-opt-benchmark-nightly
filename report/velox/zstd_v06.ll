Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v06?download=true
inline.NumInlined: 337
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@ZSTDv06_isError:bb.a
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @ZSTDv06_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, -119
  %i.b = trunc nsw i64 %0 to i32
  %i.c = sub i32 0, %i.b
  %.0.i.i = select i1 %i.a, i32 0, i32 %i.c
  %i.d = tail call ptr @ERR_getErrorString(i32 noundef %.0.i.i) #27
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ZBUFFv06_isError(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @ZBUFFv06_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, -119
  %i.b = trunc nsw i64 %0 to i32
  %i.c = sub i32 0, %i.b
  %.0.i.i = select i1 %i.a, i32 0, i32 %i.c
  %i.d = tail call ptr @ERR_getErrorString(i32 noundef %.0.i.i) #27
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZSTDv06_sizeofDCtx() local_unnamed_addr #0 {
bb.a:
  ret i64 152712
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @ZSTDv06_decompressBegin(ptr nofree noundef writeonly captures(none) initializes((5132, 5136), (21520, 21560), (21588, 21596)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21588
  store i32 0, ptr %i.b, align 4, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21520
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.d, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21592
  store i32 0, ptr %i.e, align 8, !tbaa !100
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @ZSTDv06_createDCtx() local_unnamed_addr #16 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(152712) ptr @malloc(i64 noundef 152712) #28 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 21552
  store i64 5, ptr %i.c, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 21588
  store i32 0, ptr %i.d, align 4, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 21520
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.f, align 4, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 21592
  store i32 0, ptr %i.g, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @ZSTDv06_freeDCtx(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %0) #27
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ZSTDv06_copyDCtx(ptr nofree noundef writeonly captures(none) initializes((0, 21619)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21619) %0, ptr noundef nonnull align 8 dereferenceable(21619) %1, i64 21619, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 5, 1) i64 @ZSTDv06_getFrameParams(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ult i64 %2, 5
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 1
  %.not = icmp eq i32 %.val, -47205082
  br i1 %.not, label %ZSTDv06_frameHeaderSize.exit, label %bb.h

ZSTDv06_frameHeaderSize.exit:                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29
  %i.d = lshr i8 %i.c, 6
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !101
  %i.h = add i64 %i.g, 5                          ; 2 uses
  %.not27 = icmp ult i64 %2, %i.h
  br i1 %.not27, label %bb.h, label %bb.c

bb.c:                                             ; preds = %ZSTDv06_frameHeaderSize.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.i = load i8, ptr %i.b, align 1, !tbaa !29
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = and i32 %i.j, 15
  %i.l = add nuw nsw i32 %i.k, 12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.l, ptr %i.m, align 8, !tbaa !102
  %i.n = and i32 %i.j, 32
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i32 %i.j, 6
  switch i32 %i.o, label %default.unreachable32 [
    i32 0, label %.sink.split
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

default.unreachable32:                            ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = zext i8 %i.q to i64
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val30 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.val30 to i64
  %i.u = add nuw nsw i64 %i.t, 256
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val29 = load i64, ptr %i.v, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.val29.sink = phi i64 [ %.val29, %bb.g ], [ %i.u, %bb.f ], [ %i.r, %bb.e ], [ 0, %bb.d ]
  store i64 %.val29.sink, ptr %0, align 8, !tbaa !103
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.c, %bb.b, %bb.a, %ZSTDv06_frameHeaderSize.exit
  %.2 = phi i64 [ %i.h, %ZSTDv06_frameHeaderSize.exit ], [ 5, %bb.a ], [ -10, %bb.b ], [ -14, %bb.c ], [ 0, %.sink.split ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %.not.i = icmp eq ptr %1, %i.b
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !107
  store ptr %1, ptr %i.d, align 8, !tbaa !106
  store ptr %1, ptr %i.a, align 8, !tbaa !104
  br label %ZSTDv06_checkContinuity.exit

ZSTDv06_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv06_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv06_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.seqState_t, align 8         ; 30 uses
  %i.a = icmp ugt i64 %4, 131071
  br i1 %i.a, label %ZSTDv06_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %4, 3
  br i1 %i.b, label %ZSTDv06_decompressSequences.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %3, align 1, !tbaa !29
  %i.d = zext i8 %i.c to i32                      ; 16 uses
  %i.e = lshr i32 %i.d, 6
  switch i32 %i.e, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.l
    i32 2, label %bb.q
    i32 3, label %bb.y
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = icmp samesign ult i64 %4, 5
  br i1 %i.f, label %ZSTDv06_decompressSequences.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = lshr i32 %i.d, 4
  %i.h = and i32 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !29
  %i.k = zext i8 %i.j to i32                      ; 4 uses
  switch i32 %i.h, label %bb.g [
    i32 3, label %bb.f
    i32 2, label %.thread.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw nsw i32 %i.d, 14
  %i.m = and i32 %i.l, 245760
  %i.n = shl nuw nsw i32 %i.k, 6
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = lshr i32 %i.r, 2
  %i.t = or disjoint i32 %i.o, %i.s               ; 2 uses
  %i.u = shl nuw nsw i32 %i.r, 16
  %i.v = and i32 %i.u, 196608
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !29
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad
  %.0128.i = zext nneg i32 %i.ae to i64           ; 2 uses
  %.0129.i = zext nneg i32 %i.t to i64
  %i.af = icmp samesign ugt i32 %i.t, 131072
  %i.ag = add nuw nsw i64 %.0128.i, 5             ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.ag, %4
  %or.cond.i = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond.i, label %ZSTDv06_decompressSequences.exit, label %.thread162.i

bb.g:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i32 %i.d, 6
  %i.aj = and i32 %i.ai, 960
  %i.ak = lshr i32 %i.k, 2
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = shl nuw nsw i32 %i.k, 8
  %i.an = and i32 %i.am, 768
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq
  %.0128147.i = zext nneg i32 %i.ar to i64        ; 3 uses
  %.0129148.i = zext nneg i32 %i.al to i64        ; 3 uses
  %i.as = add nuw nsw i64 %.0128147.i, 3          ; 3 uses
  %i.at = icmp samesign ugt i64 %i.as, %4
  br i1 %i.at, label %ZSTDv06_decompressSequences.exit, label %bb.h

.thread.i:                                        ; preds = %bb.e
  %i.au = shl nuw nsw i32 %i.d, 10
  %i.av = and i32 %i.au, 15360
  %i.aw = shl nuw nsw i32 %i.k, 2
  %i.ax = or disjoint i32 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !29
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = lshr i32 %i.ba, 6
  %i.bc = or disjoint i32 %i.ax, %i.bb
  %i.bd = shl nuw nsw i32 %i.ba, 8
  %i.be = and i32 %i.bd, 16128
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.be, %i.bh
  %.0128147189.i = zext nneg i32 %i.bi to i64     ; 2 uses
  %.0129148190.i = zext nneg i32 %i.bc to i64
  %i.bj = add nuw nsw i64 %.0128147189.i, 4       ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bj, %4
  br i1 %i.bk, label %ZSTDv06_decompressSequences.exit, label %.thread162.i

bb.h:                                             ; preds = %bb.g
  %i.bl = and i32 %i.d, 16
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.thread162.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 21616
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bp = tail call i64 @HUFv06_decompress1X2(ptr noundef nonnull %i.bn, i64 noundef %.0129148.i, ptr noundef nonnull %i.bo, i64 noundef %.0128147.i)
  br label %bb.j

.thread162.i:                                     ; preds = %bb.h, %.thread.i, %bb.f
  %.0129152158170.i = phi i64 [ %.0129148.i, %bb.h ], [ %.0129.i, %bb.f ], [ %.0129148190.i, %.thread.i ] ; 2 uses
  %.0128151159168.i = phi i64 [ %.0128147.i, %bb.h ], [ %.0128.i, %bb.f ], [ %.0128147189.i, %.thread.i ]
  %.0126150160167.i = phi i64 [ 3, %bb.h ], [ 5, %bb.f ], [ 4, %.thread.i ]
  %i.bq = phi i64 [ %i.as, %bb.h ], [ %i.ag, %bb.f ], [ %i.bj, %.thread.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 21616
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 %.0126150160167.i
  %i.bt = tail call i64 @HUFv06_decompress(ptr noundef nonnull %i.br, i64 noundef %.0129152158170.i, ptr noundef nonnull %i.bs, i64 noundef %.0128151159168.i)
  br label %bb.j

bb.j:                                             ; preds = %.thread162.i, %bb.i
  %.0129152158169.i = phi i64 [ %.0129148.i, %bb.i ], [ %.0129152158170.i, %.thread162.i ] ; 3 uses
  %i.bu = phi i64 [ %i.as, %bb.i ], [ %i.bq, %.thread162.i ]
  %i.bv = phi i64 [ %i.bp, %bb.i ], [ %i.bt, %.thread162.i ]
  %i.bw = icmp ult i64 %i.bv, -119
  br i1 %i.bw, label %bb.k, label %ZSTDv06_decompressSequences.exit

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 21616 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !108
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %.0129152158169.i, ptr %i.bz, align 8, !tbaa !109
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0129152158169.i
  store i64 0, ptr %i.ca, align 1
  br label %bb.ac

bb.l:                                             ; preds = %bb.c
  %i.cb = and i32 %i.d, 48
  %.not.i = icmp eq i32 %i.cb, 16
  br i1 %.not.i, label %bb.m, label %ZSTDv06_decompressSequences.exit

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 21592
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !100
  %.not139.i = icmp eq i32 %i.cd, 0
  br i1 %.not139.i, label %ZSTDv06_decompressSequences.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = shl nuw nsw i32 %i.d, 6
  %i.cf = and i32 %i.ce, 960
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !29
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = lshr i32 %i.ci, 2
  %i.ck = or disjoint i32 %i.cj, %i.cf
  %i.cl = zext nneg i32 %i.ck to i64              ; 4 uses
  %i.cm = shl nuw nsw i32 %i.ci, 8
  %i.cn = and i32 %i.cm, 768
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !29
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cn, %i.cq
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = add nuw nsw i64 %i.cs, 3                ; 2 uses
  %i.cu = icmp samesign ugt i64 %i.ct, %4
  br i1 %i.cu, label %ZSTDv06_decompressSequences.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 21616 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5132
  %i.cy = tail call i64 @HUFv06_decompress1X4_usingDTable(ptr noundef nonnull %i.cv, i64 noundef %i.cl, ptr noundef nonnull %i.cw, i64 noundef %i.cs, ptr noundef nonnull %i.cx)
  %i.cz = icmp ult i64 %i.cy, -119
  br i1 %i.cz, label %bb.p, label %ZSTDv06_decompressSequences.exit

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store ptr %i.cv, ptr %i.da, align 8, !tbaa !108
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %i.cl, ptr %i.db, align 8, !tbaa !109
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cl
  store i64 0, ptr %i.dc, align 1
  br label %bb.ac

bb.q:                                             ; preds = %bb.c
  %i.dd = lshr i32 %i.d, 4
  %i.de = and i32 %i.dd, 3
  switch i32 %i.de, label %bb.r [
    i32 3, label %bb.t
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.df = and i32 %i.d, 31
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.dg = shl nuw nsw i32 %i.d, 8
  %i.dh = and i32 %i.dg, 3840
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !29
  %i.dk = zext i8 %i.dj to i32
  %i.dl = or disjoint i32 %i.dh, %i.dk
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.dm = shl nuw nsw i32 %i.d, 16
  %i.dn = and i32 %i.dm, 983040
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !29
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 8
  %i.ds = or disjoint i32 %i.dr, %i.dn
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !29
  %i.dv = zext i8 %i.du to i32
  %i.dw = or disjoint i32 %i.ds, %i.dv
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0125.in.i = phi i32 [ %i.df, %bb.r ], [ %i.dw, %bb.t ], [ %i.dl, %bb.s ]
  %.0124.i = phi i64 [ 1, %bb.r ], [ 3, %bb.t ], [ 2, %bb.s ] ; 3 uses
  %.0125.i = zext nneg i32 %.0125.in.i to i64     ; 7 uses
  %i.dx = add nuw nsw i64 %.0124.i, %.0125.i      ; 4 uses
  %i.dy = add nuw nsw i64 %i.dx, 8
  %i.dz = icmp samesign ugt i64 %i.dy, %4
  br i1 %i.dz, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ea = icmp samesign ugt i64 %i.dx, %4
  br i1 %i.ea, label %ZSTDv06_decompressSequences.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 21616 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 %.0124.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull align 1 %i.ec, i64 %.0125.i, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !108
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %.0125.i, ptr %i.ee, align 8, !tbaa !109
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.0125.i
  store i64 0, ptr %i.ef, align 1
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 %.0124.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !108
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %.0125.i, ptr %i.ei, align 8, !tbaa !109
  br label %bb.ac

bb.y:                                             ; preds = %bb.c
  %i.ej = lshr i32 %i.d, 4
  %i.ek = and i32 %i.ej, 3
  switch i32 %i.ek, label %bb.z [
    i32 3, label %bb.ab
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.el = and i32 %i.d, 31
  br label %.thread172.i

bb.aa:                                            ; preds = %bb.y
  %i.em = shl nuw nsw i32 %i.d, 8
  %i.en = and i32 %i.em, 3840
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !29
  %i.eq = zext i8 %i.ep to i32
  %i.er = or disjoint i32 %i.en, %i.eq
  br label %.thread172.i

bb.ab:                                            ; preds = %bb.y
  %i.es = shl nuw nsw i32 %i.d, 16
  %i.et = and i32 %i.es, 983040
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !29
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 8
  %i.ey = or disjoint i32 %i.ex, %i.et
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !29
  %i.fb = zext i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ey, %i.fb            ; 2 uses
  %i.fd = icmp eq i64 %4, 3
  %i.fe = icmp samesign ugt i32 %i.fc, 131072
  %or.cond178.i = select i1 %i.fd, i1 true, i1 %i.fe
  br i1 %or.cond178.i, label %ZSTDv06_decompressSequences.exit, label %.thread172.i

.thread172.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z
  %.0176.i = phi i32 [ 3, %bb.ab ], [ 2, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %.0123.in175.i = phi i32 [ %i.fc, %bb.ab ], [ %i.er, %bb.aa ], [ %i.el, %bb.z ]
  %.0123.i = zext nneg i32 %.0123.in175.i to i64  ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 21616 ; 3 uses
  %i.fg = zext nneg i32 %.0176.i to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !29
  %i.fj = add nuw nsw i64 %.0123.i, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ff, i8 %i.fi, i64 %i.fj, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store ptr %i.ff, ptr %i.fk, align 8, !tbaa !108
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %.0123.i, ptr %i.fl, align 8, !tbaa !109
  %i.fm = add nuw nsw i32 %.0176.i, 1
  %i.fn = zext nneg i32 %i.fm to i64
  br label %bb.ac

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.ac:                                            ; preds = %.thread172.i, %bb.x, %bb.w, %bb.p, %bb.k
  %i.fo = phi i64 [ %.0125.i, %bb.w ], [ %i.cl, %bb.p ], [ %.0123.i, %.thread172.i ], [ %.0125.i, %bb.x ], [ %.0129152158169.i, %bb.k ]
  %i.fp = phi ptr [ %i.eb, %bb.w ], [ %i.cv, %bb.p ], [ %i.ff, %.thread172.i ], [ %i.eg, %bb.x ], [ %i.bx, %bb.k ] ; 4 uses
  %.5.i = phi i64 [ %i.dx, %bb.w ], [ %i.ct, %bb.p ], [ %i.fn, %.thread172.i ], [ %i.dx, %bb.x ], [ %i.bu, %bb.k ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 %.5.i ; 6 uses
  %i.fr = sub nsw i64 %4, %.5.i                   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 5 uses
  %i.ft = getelementptr i8, ptr %1, i64 %2        ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fo ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2052 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !106 ; 7 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 21536
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !107
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 21544
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !105
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 21592 ; 3 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !100 ; 3 uses
  %i.gf = icmp eq i64 %4, %.5.i
  br i1 %i.gf, label %ZSTDv06_decompressSequences.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 3 uses
  %i.gh = load i8, ptr %i.fq, align 1, !tbaa !29  ; 4 uses
  %i.gi = zext i8 %i.gh to i32                    ; 2 uses
  %.not.i.i = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i, label %.thread.i22, label %bb.ae

.thread.i22:                                      ; preds = %bb.ad
  store i32 0, ptr %i.gd, align 8, !tbaa !100
  br label %bb.ct

bb.ae:                                            ; preds = %bb.ad
  %i.gj = icmp slt i8 %i.gh, 0
  br i1 %i.gj, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.gk = icmp eq i8 %i.gh, -1
  br i1 %i.gk, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gl = icmp samesign ult i64 %i.fr, 3
  br i1 %i.gl, label %ZSTDv06_decompressSequences.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fq, i64 3
  %.val.i.i = load i16, ptr %i.gg, align 1
  %i.gn = zext i16 %.val.i.i to i32
  %i.go = add nuw nsw i32 %i.gn, 32512
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %.not81.not.i.i = icmp eq i64 %i.fr, 1
  br i1 %.not81.not.i.i, label %ZSTDv06_decompressSequences.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gp = shl nuw nsw i32 %i.gi, 8
  %i.gq = add nsw i32 %i.gp, -32768
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.gs = load i8, ptr %i.gg, align 1, !tbaa !29
  %i.gt = zext i8 %i.gs to i32
  %i.gu = or disjoint i32 %i.gq, %i.gt
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ae
  %.065.i.i = phi ptr [ %i.gm, %bb.ah ], [ %i.gr, %bb.aj ], [ %i.gg, %bb.ae ] ; 3 uses
  %.0.i.i = phi i32 [ %i.go, %bb.ah ], [ %i.gu, %bb.aj ], [ %i.gi, %bb.ae ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 4
  %i.gw = icmp ugt ptr %i.gv, %i.fs
  br i1 %i.gw, label %ZSTDv06_decompressSequences.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gx = load i8, ptr %.065.i.i, align 1, !tbaa !29
  %i.gy = zext i8 %i.gx to i32                    ; 3 uses
  %i.gz = lshr i32 %i.gy, 6
  %i.ha = lshr i32 %i.gy, 2
  %i.hb = and i32 %i.ha, 3
  %i.hc = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 1 ; 3 uses
  %i.hd = ptrtoint ptr %i.fs to i64               ; 4 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = tail call fastcc i64 @ZSTDv06_buildSeqTable(ptr noundef nonnull %0, i32 noundef %i.gz, i32 noundef 35, i32 noundef 9, ptr noundef nonnull %i.hc, i64 noundef %i.hf, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef %i.ge) ; 2 uses
  %i.hh = icmp ult i64 %i.hg, -119
  br i1 %i.hh, label %bb.am, label %ZSTDv06_decompressSequences.exit

bb.am:                                            ; preds = %bb.al
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hg ; 3 uses
  %i.hj = lshr i32 %i.gy, 4
  %i.hk = and i32 %i.hj, 3
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hd, %i.hl
  %i.hn = tail call fastcc i64 @ZSTDv06_buildSeqTable(ptr noundef nonnull %i.fw, i32 noundef %i.hk, i32 noundef 28, i32 noundef 8, ptr noundef nonnull %i.hi, i64 noundef %i.hm, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %i.ge) ; 2 uses
  %i.ho = icmp ult i64 %i.hn, -119
  br i1 %i.ho, label %bb.an, label %ZSTDv06_decompressSequences.exit

bb.an:                                            ; preds = %bb.am
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hn ; 3 uses
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.hd, %i.hq
  %i.hs = tail call fastcc i64 @ZSTDv06_buildSeqTable(ptr noundef nonnull %i.fv, i32 noundef %i.hb, i32 noundef 52, i32 noundef 9, ptr noundef nonnull %i.hp, i64 noundef %i.hr, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef %i.ge) ; 2 uses
  %i.ht = icmp ult i64 %i.hs, -119
  br i1 %i.ht, label %ZSTDv06_decodeSeqHeaders.exit.i, label %ZSTDv06_decompressSequences.exit

ZSTDv06_decodeSeqHeaders.exit.i:                  ; preds = %bb.an
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hs ; 12 uses
  %i.hv = ptrtoint ptr %i.hu to i64               ; 7 uses
  %i.hw = ptrtoint ptr %i.fq to i64
  %i.hx = sub i64 %i.hv, %i.hw                    ; 3 uses
  %i.hy = icmp ult i64 %i.hx, -119
  br i1 %i.hy, label %bb.ao, label %ZSTDv06_decompressSequences.exit

bb.ao:                                            ; preds = %ZSTDv06_decodeSeqHeaders.exit.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.hx ; 17 uses
  store i32 0, ptr %i.gd, align 8, !tbaa !100
  %.not84.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not84.i, label %bb.ct, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  store i64 1, ptr %i.ia, align 8, !tbaa !101
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store i64 1, ptr %i.ib, align 8, !tbaa !101
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store i64 1, ptr %i.ic, align 8, !tbaa !101
  %i.id = sub i64 %i.hd, %i.hv                    ; 4 uses
  %i.ie = icmp eq ptr %i.fs, %i.hu
  br i1 %i.ie, label %.thread155.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.if = icmp ugt i64 %i.id, 7
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.hz, ptr %i.ig, align 8, !tbaa !47
  br i1 %i.if, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ih = getelementptr inbounds i8, ptr %i.fs, i64 -8 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !52
  %.val.i89.i = load i64, ptr %i.ih, align 1      ; 3 uses
  store i64 %.val.i89.i, ptr %5, align 8, !tbaa !53
  %i.ij = lshr i64 %.val.i89.i, 56                ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %.thread155.i, label %BITv06_initDStream.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.hz, ptr %i.il, align 8, !tbaa !52
  %i.im = load i8, ptr %i.hz, align 1, !tbaa !29
  %i.in = zext i8 %i.im to i64                    ; 8 uses
  store i64 %i.in, ptr %5, align 8, !tbaa !53
  switch i64 %i.id, label %bb.az [
    i64 7, label %bb.at
    i64 6, label %bb.au
    i64 5, label %bb.av
    i64 4, label %bb.aw
    i64 3, label %bb.ax
    i64 2, label %bb.ay
  ]

bb.at:                                            ; preds = %bb.as
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 6
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !29
  %i.iq = zext i8 %i.ip to i64
  %i.ir = shl nuw nsw i64 %i.iq, 48
  %i.is = or disjoint i64 %i.ir, %i.in
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.it = phi i64 [ %i.is, %bb.at ], [ %i.in, %bb.as ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hz, i64 5
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !29
  %i.iw = zext i8 %i.iv to i64
  %i.ix = shl nuw nsw i64 %i.iw, 40
  %i.iy = add nuw nsw i64 %i.ix, %i.it
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as
  %i.iz = phi i64 [ %i.iy, %bb.au ], [ %i.in, %bb.as ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !29
  %i.jc = zext i8 %i.jb to i64
  %i.jd = shl nuw nsw i64 %i.jc, 32
  %i.je = add nuw nsw i64 %i.jd, %i.iz
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %i.jf = phi i64 [ %i.je, %bb.av ], [ %i.in, %bb.as ]
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hz, i64 3
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !29
  %i.ji = zext i8 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 24
  %i.jk = add nuw nsw i64 %i.jj, %i.jf
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.as
  %i.jl = phi i64 [ %i.jk, %bb.aw ], [ %i.in, %bb.as ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !29
  %i.jo = zext i8 %i.jn to i64
  %i.jp = shl nuw nsw i64 %i.jo, 16
  %i.jq = add nuw nsw i64 %i.jp, %i.jl
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.as
  %i.jr = phi i64 [ %i.jq, %bb.ax ], [ %i.in, %bb.as ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !29
  %i.ju = zext i8 %i.jt to i64
  %i.jv = shl nuw nsw i64 %i.ju, 8
  %i.jw = add nuw nsw i64 %i.jv, %i.jr            ; 2 uses
  store i64 %i.jw, ptr %5, align 8, !tbaa !53
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.as
  %.val.i.i212.i = phi i64 [ %i.jw, %bb.ay ], [ %i.in, %bb.as ]
  %i.jx = getelementptr i8, ptr %i.fs, i64 -1
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !29  ; 2 uses
  %i.jz = icmp eq i8 %i.jy, 0
  br i1 %i.jz, label %.thread155.i, label %BITv06_initDStream.exit.thread144.i

BITv06_initDStream.exit.thread144.i:              ; preds = %bb.az
  %i.ka = zext i8 %i.jy to i32
  %i.kb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ka, i1 true)
  %i.kc = trunc nuw nsw i64 %i.id to i32
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ke = shl nuw nsw i32 %i.kc, 3
  %reass.sub.i = sub nsw i32 %i.kb, %i.ke
  %i.kf = add nsw i32 %reass.sub.i, 41            ; 2 uses
  store i32 %i.kf, ptr %i.kd, align 8, !tbaa !54
  br label %bb.ba

BITv06_initDStream.exit.i:                        ; preds = %bb.ar
  %i.kg = trunc nuw nsw i64 %i.ij to i32
  %i.kh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kg, i1 true)
  %i.ki = xor i32 %i.kh, 31
  %i.kj = sub nuw nsw i32 8, %i.ki
  %i.kk = icmp ult i64 %i.id, -119
  br i1 %i.kk, label %bb.ba, label %.thread155.i

bb.ba:                                            ; preds = %BITv06_initDStream.exit.i, %BITv06_initDStream.exit.thread144.i
  %i.kl = phi ptr [ %i.hz, %BITv06_initDStream.exit.thread144.i ], [ %i.ih, %BITv06_initDStream.exit.i ] ; 7 uses
  %.val4.i.i.i = phi i32 [ %i.kf, %BITv06_initDStream.exit.thread144.i ], [ %i.kj, %BITv06_initDStream.exit.i ] ; 2 uses
  %.val.i.i.i = phi i64 [ %.val.i.i212.i, %BITv06_initDStream.exit.thread144.i ], [ %.val.i89.i, %BITv06_initDStream.exit.i ] ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.kn = load i16, ptr %0, align 8, !tbaa !25
  %i.ko = zext i16 %i.kn to i32                   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.kq = and i32 %.val4.i.i.i, 63
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = shl i64 %.val.i.i.i, %i.kr
  %i.kt = lshr i64 %i.ks, 1
  %i.ku = and i32 %i.ko, 63
  %i.kv = xor i32 %i.ku, 63
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = lshr i64 %i.kt, %i.kw                   ; 2 uses
  %i.ky = add nuw nsw i32 %.val4.i.i.i, %i.ko     ; 7 uses
  store i64 %i.kx, ptr %i.km, align 8, !tbaa !110
  %i.kz = icmp samesign ugt i32 %i.ky, 64
  br i1 %i.kz, label %FSEv06_initDState.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.la = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.not.i.i.i = icmp ult ptr %i.kl, %i.lb
  br i1 %.not.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lc = lshr i32 %i.ky, 3
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = sub nsw i64 0, %i.ld
  %i.lf = getelementptr inbounds i8, ptr %i.kl, i64 %i.le ; 2 uses
  store ptr %i.lf, ptr %i.la, align 8, !tbaa !52
  %i.lg = and i32 %i.ky, 7
  br label %BITv06_reloadDStream.exit.sink.split.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.lh = icmp eq ptr %i.kl, %i.hu
  br i1 %i.lh, label %FSEv06_initDState.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.li = lshr i32 %i.ky, 3                       ; 2 uses
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = sub nsw i64 0, %i.lj
  %i.ll = getelementptr inbounds i8, ptr %i.kl, i64 %i.lk
  %i.lm = icmp ult ptr %i.ll, %i.hu
  %i.ln = ptrtoint ptr %i.kl to i64
  %i.lo = sub i64 %i.ln, %i.hv
  %i.lp = trunc i64 %i.lo to i32
  %.024.i.i.i = select i1 %i.lm, i32 %i.lp, i32 %i.li ; 2 uses
  %i.lq = zext i32 %.024.i.i.i to i64
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr inbounds i8, ptr %i.kl, i64 %i.lr ; 2 uses
  store ptr %i.ls, ptr %i.la, align 8, !tbaa !52
  %i.lt = shl i32 %.024.i.i.i, 3
  %i.lu = sub i32 %i.ky, %i.lt
  br label %BITv06_reloadDStream.exit.sink.split.i.i

BITv06_reloadDStream.exit.sink.split.i.i:         ; preds = %bb.be, %bb.bc
  %storemerge.i = phi i32 [ %i.lg, %bb.bc ], [ %i.lu, %bb.be ]
  %.val30.i.sink.in.i.i = phi ptr [ %i.lf, %bb.bc ], [ %i.ls, %bb.be ] ; 2 uses
  %.val30.i.sink.i.i = load i64, ptr %.val30.i.sink.in.i.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i.i, ptr %5, align 8, !tbaa !53
  br label %FSEv06_initDState.exit.i

FSEv06_initDState.exit.i:                         ; preds = %BITv06_reloadDStream.exit.sink.split.i.i, %bb.bd, %bb.ba
  %i.lv = phi ptr [ %i.kl, %bb.ba ], [ %i.hz, %bb.bd ], [ %.val30.i.sink.in.i.i, %BITv06_reloadDStream.exit.sink.split.i.i ] ; 7 uses
  %.val4.i.i91.i = phi i32 [ %i.ky, %bb.ba ], [ %i.ky, %bb.bd ], [ %storemerge.i, %BITv06_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.val.i.i90.i = phi i64 [ %.val.i.i.i, %bb.ba ], [ %.val.i.i.i, %bb.bd ], [ %.val30.i.sink.i.i, %BITv06_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !112
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.lz = load i16, ptr %i.fw, align 4, !tbaa !25
  %i.ma = zext i16 %i.lz to i32                   ; 2 uses
  %i.mb = and i32 %.val4.i.i91.i, 63
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = shl i64 %.val.i.i90.i, %i.mc
  %i.me = lshr i64 %i.md, 1
  %i.mf = and i32 %i.ma, 63
  %i.mg = xor i32 %i.mf, 63
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = lshr i64 %i.me, %i.mh                   ; 2 uses
  %i.mj = add i32 %.val4.i.i91.i, %i.ma           ; 7 uses
  store i64 %i.mi, ptr %i.ly, align 8, !tbaa !110
  %i.mk = icmp ugt i32 %i.mj, 64
  br i1 %i.mk, label %FSEv06_initDState.exit97.i, label %bb.bf

bb.bf:                                            ; preds = %FSEv06_initDState.exit.i
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.not.i.i92.i = icmp ult ptr %i.lv, %i.mm
  br i1 %.not.i.i92.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mn = lshr i32 %i.mj, 3
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = sub nsw i64 0, %i.mo
  %i.mq = getelementptr inbounds i8, ptr %i.lv, i64 %i.mp ; 2 uses
  store ptr %i.mq, ptr %i.ml, align 8, !tbaa !52
  %i.mr = and i32 %i.mj, 7
  br label %BITv06_reloadDStream.exit.sink.split.i93.i

bb.bh:                                            ; preds = %bb.bf
  %i.ms = icmp eq ptr %i.lv, %i.hu
  br i1 %i.ms, label %FSEv06_initDState.exit97.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mt = lshr i32 %i.mj, 3                       ; 2 uses
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = sub nsw i64 0, %i.mu
  %i.mw = getelementptr inbounds i8, ptr %i.lv, i64 %i.mv
  %i.mx = icmp ult ptr %i.mw, %i.hu
  %i.my = ptrtoint ptr %i.lv to i64
  %i.mz = sub i64 %i.my, %i.hv
  %i.na = trunc i64 %i.mz to i32
  %.024.i.i96.i = select i1 %i.mx, i32 %i.na, i32 %i.mt ; 2 uses
  %i.nb = zext i32 %.024.i.i96.i to i64
  %i.nc = sub nsw i64 0, %i.nb
  %i.nd = getelementptr inbounds i8, ptr %i.lv, i64 %i.nc ; 2 uses
  store ptr %i.nd, ptr %i.ml, align 8, !tbaa !52
  %i.ne = shl i32 %.024.i.i96.i, 3
  %i.nf = sub i32 %i.mj, %i.ne
  br label %BITv06_reloadDStream.exit.sink.split.i93.i

BITv06_reloadDStream.exit.sink.split.i93.i:       ; preds = %bb.bi, %bb.bg
  %storemerge166.i = phi i32 [ %i.mr, %bb.bg ], [ %i.nf, %bb.bi ] ; 2 uses
  %.val30.i.sink.in.i94.i = phi ptr [ %i.mq, %bb.bg ], [ %i.nd, %bb.bi ] ; 2 uses
  store i32 %storemerge166.i, ptr %i.kp, align 8, !tbaa !54
  %.val30.i.sink.i95.i = load i64, ptr %.val30.i.sink.in.i94.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i95.i, ptr %5, align 8, !tbaa !53
  br label %FSEv06_initDState.exit97.i

FSEv06_initDState.exit97.i:                       ; preds = %BITv06_reloadDStream.exit.sink.split.i93.i, %bb.bh, %FSEv06_initDState.exit.i
  %i.ng = phi ptr [ %i.lv, %FSEv06_initDState.exit.i ], [ %i.hz, %bb.bh ], [ %.val30.i.sink.in.i94.i, %BITv06_reloadDStream.exit.sink.split.i93.i ] ; 7 uses
  %.val4.i.i99.i = phi i32 [ %i.mj, %FSEv06_initDState.exit.i ], [ %i.mj, %bb.bh ], [ %storemerge166.i, %BITv06_reloadDStream.exit.sink.split.i93.i ] ; 2 uses
  %.val.i.i98.i = phi i64 [ %.val.i.i90.i, %FSEv06_initDState.exit.i ], [ %.val.i.i90.i, %bb.bh ], [ %.val30.i.sink.i95.i, %BITv06_reloadDStream.exit.sink.split.i93.i ] ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.nh, ptr %i.ni, align 8, !tbaa !112
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.nk = load i16, ptr %i.fv, align 8, !tbaa !25
  %i.nl = zext i16 %i.nk to i32                   ; 2 uses
  %i.nm = and i32 %.val4.i.i99.i, 63
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = shl i64 %.val.i.i98.i, %i.nn
  %i.np = lshr i64 %i.no, 1
  %i.nq = and i32 %i.nl, 63
  %i.nr = xor i32 %i.nq, 63
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = lshr i64 %i.np, %i.ns                   ; 2 uses
  %i.nu = add i32 %.val4.i.i99.i, %i.nl           ; 7 uses
  store i64 %i.nt, ptr %i.nj, align 8, !tbaa !110
  %i.nv = icmp ugt i32 %i.nu, 64
  br i1 %i.nv, label %FSEv06_initDState.exit105.i, label %bb.bj

bb.bj:                                            ; preds = %FSEv06_initDState.exit97.i
  %i.nw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.not.i.i100.i = icmp ult ptr %i.ng, %i.nx
  br i1 %.not.i.i100.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ny = lshr i32 %i.nu, 3
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = sub nsw i64 0, %i.nz
  %i.ob = getelementptr inbounds i8, ptr %i.ng, i64 %i.oa ; 2 uses
  store ptr %i.ob, ptr %i.nw, align 8, !tbaa !52
  %i.oc = and i32 %i.nu, 7
  br label %BITv06_reloadDStream.exit.sink.split.i101.i

bb.bl:                                            ; preds = %bb.bj
  %i.od = icmp eq ptr %i.ng, %i.hu
  br i1 %i.od, label %FSEv06_initDState.exit105.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oe = lshr i32 %i.nu, 3                       ; 2 uses
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = sub nsw i64 0, %i.of
  %i.oh = getelementptr inbounds i8, ptr %i.ng, i64 %i.og
  %i.oi = icmp ult ptr %i.oh, %i.hu
  %i.oj = ptrtoint ptr %i.ng to i64
  %i.ok = sub i64 %i.oj, %i.hv
  %i.ol = trunc i64 %i.ok to i32
  %.024.i.i104.i = select i1 %i.oi, i32 %i.ol, i32 %i.oe ; 2 uses
  %i.om = zext i32 %.024.i.i104.i to i64
  %i.on = sub nsw i64 0, %i.om
  %i.oo = getelementptr inbounds i8, ptr %i.ng, i64 %i.on ; 2 uses
  store ptr %i.oo, ptr %i.nw, align 8, !tbaa !52
  %i.op = shl i32 %.024.i.i104.i, 3
  %i.oq = sub i32 %i.nu, %i.op
  br label %BITv06_reloadDStream.exit.sink.split.i101.i

BITv06_reloadDStream.exit.sink.split.i101.i:      ; preds = %bb.bm, %bb.bk
  %storemerge167.i = phi i32 [ %i.oc, %bb.bk ], [ %i.oq, %bb.bm ] ; 2 uses
  %.val30.i.sink.in.i102.i = phi ptr [ %i.ob, %bb.bk ], [ %i.oo, %bb.bm ] ; 2 uses
  store i32 %storemerge167.i, ptr %i.kp, align 8, !tbaa !54
  %.val30.i.sink.i103.i = load i64, ptr %.val30.i.sink.in.i102.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i103.i, ptr %5, align 8, !tbaa !53
  br label %FSEv06_initDState.exit105.i

FSEv06_initDState.exit105.i:                      ; preds = %BITv06_reloadDStream.exit.sink.split.i101.i, %bb.bl, %FSEv06_initDState.exit97.i
  %.promoted196.i = phi ptr [ %i.ng, %FSEv06_initDState.exit97.i ], [ %i.hz, %bb.bl ], [ %.val30.i.sink.in.i102.i, %BITv06_reloadDStream.exit.sink.split.i101.i ]
  %.promoted186.i = phi i64 [ %.val.i.i98.i, %FSEv06_initDState.exit97.i ], [ %.val.i.i98.i, %bb.bl ], [ %.val30.i.sink.i103.i, %BITv06_reloadDStream.exit.sink.split.i101.i ]
  %.promoted.i = phi i32 [ %i.nu, %FSEv06_initDState.exit97.i ], [ %i.nu, %bb.bl ], [ %storemerge167.i, %BITv06_reloadDStream.exit.sink.split.i101.i ]
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 3084 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.or, ptr %i.os, align 8, !tbaa !112
  %i.ot = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ov = getelementptr i8, ptr %i.ft, i64 -8     ; 6 uses
  %i.ow = ptrtoint ptr %i.ft to i64
  %i.ox = ptrtoint ptr %i.fu to i64
  %i.oy = ptrtoint ptr %i.fy to i64               ; 13 uses
  %i.oz = ptrtoint ptr %i.ga to i64
  %i.pa = getelementptr inbounds i8, ptr %i.ft, i64 -13
  %i.pb = ptrtoint ptr %i.ov to i64               ; 4 uses
  %i.pc = add i64 %i.oy, 8
  %i.pd = add i64 %i.oy, 8
  %i.pe = add i64 %i.oy, 1
  %invariant.op = add i64 %i.oy, 16
  %invariant.op242 = add i64 %i.oy, 16
  br label %bb.bn

bb.bn:                                            ; preds = %ZSTDv06_execSequence.exit.i, %FSEv06_initDState.exit105.i
  %i.pf = phi i64 [ 1, %FSEv06_initDState.exit105.i ], [ %i.rl, %ZSTDv06_execSequence.exit.i ] ; 3 uses
  %i.pg = phi i64 [ 1, %FSEv06_initDState.exit105.i ], [ %i.rm, %ZSTDv06_execSequence.exit.i ] ; 2 uses
  %i.ph = phi ptr [ %.promoted196.i, %FSEv06_initDState.exit105.i ], [ %i.tn, %ZSTDv06_execSequence.exit.i ] ; 7 uses
  %.val.i109195.i = phi i64 [ %i.mi, %FSEv06_initDState.exit105.i ], [ %i.ux, %ZSTDv06_execSequence.exit.i ]
  %.val66.i193.i = phi i64 [ %i.nt, %FSEv06_initDState.exit105.i ], [ %i.ul, %ZSTDv06_execSequence.exit.i ]
  %.val68.i191.i = phi i64 [ %i.kx, %FSEv06_initDState.exit105.i ], [ %i.tz, %ZSTDv06_execSequence.exit.i ]
  %.val.i74.i187.i = phi i64 [ %.promoted186.i, %FSEv06_initDState.exit105.i ], [ %.val.i74.i188.i, %ZSTDv06_execSequence.exit.i ]
  %storemerge168180.i = phi i32 [ %.promoted.i, %FSEv06_initDState.exit105.i ], [ %i.uv, %ZSTDv06_execSequence.exit.i ] ; 6 uses
  %.0127.i = phi ptr [ %i.fp, %FSEv06_initDState.exit105.i ], [ %i.vb, %ZSTDv06_execSequence.exit.i ] ; 6 uses
  %.0126.i = phi i32 [ %.0.i.i, %FSEv06_initDState.exit105.i ], [ %i.qd, %ZSTDv06_execSequence.exit.i ] ; 3 uses
  %.068.i = phi ptr [ %1, %FSEv06_initDState.exit105.i ], [ %i.va, %ZSTDv06_execSequence.exit.i ] ; 7 uses
  %i.pi = icmp ugt i32 %storemerge168180.i, 64
  br i1 %i.pi, label %.loopexit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not.i106.i = icmp ult ptr %i.ph, %i.ou
  br i1 %.not.i106.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pj = lshr i32 %storemerge168180.i, 3
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = sub nsw i64 0, %i.pk
  %i.pm = getelementptr inbounds i8, ptr %i.ph, i64 %i.pl ; 2 uses
  store ptr %i.pm, ptr %i.ot, align 8, !tbaa !52
  %i.pn = and i32 %storemerge168180.i, 7
  br label %BITv06_reloadDStream.exit.sink.split.i

bb.bq:                                            ; preds = %bb.bo
  %i.po = icmp eq ptr %i.ph, %i.hu
  br i1 %i.po, label %BITv06_reloadDStream.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pp = lshr i32 %storemerge168180.i, 3         ; 2 uses
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = sub nsw i64 0, %i.pq
  %i.ps = getelementptr inbounds i8, ptr %i.ph, i64 %i.pr
  %i.pt = icmp ult ptr %i.ps, %i.hu
  %i.pu = ptrtoint ptr %i.ph to i64
  %i.pv = sub i64 %i.pu, %i.hv
  %i.pw = trunc i64 %i.pv to i32
  %.024.i.i = select i1 %i.pt, i32 %i.pw, i32 %i.pp ; 2 uses
  %i.px = zext i32 %.024.i.i to i64
  %i.py = sub nsw i64 0, %i.px
  %i.pz = getelementptr inbounds i8, ptr %i.ph, i64 %i.py ; 2 uses
  store ptr %i.pz, ptr %i.ot, align 8, !tbaa !52
  %i.qa = shl i32 %.024.i.i, 3
  %i.qb = sub i32 %storemerge168180.i, %i.qa
  br label %BITv06_reloadDStream.exit.sink.split.i

BITv06_reloadDStream.exit.sink.split.i:           ; preds = %bb.br, %bb.bp
  %.ph.i = phi ptr [ %i.pm, %bb.bp ], [ %i.pz, %bb.br ] ; 2 uses
  %storemerge168183.ph.i = phi i32 [ %i.pn, %bb.bp ], [ %i.qb, %bb.br ] ; 2 uses
  store i32 %storemerge168183.ph.i, ptr %i.kp, align 8, !tbaa !54
  %.val30.i.sink.i = load i64, ptr %.ph.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i, ptr %5, align 8, !tbaa !53
  br label %BITv06_reloadDStream.exit.i

BITv06_reloadDStream.exit.i:                      ; preds = %BITv06_reloadDStream.exit.sink.split.i, %bb.bq
  %i.qc = phi ptr [ %i.ph, %bb.bq ], [ %.ph.i, %BITv06_reloadDStream.exit.sink.split.i ] ; 8 uses
  %.val.i74.i189.i = phi i64 [ %.val.i74.i187.i, %bb.bq ], [ %.val30.i.sink.i, %BITv06_reloadDStream.exit.sink.split.i ] ; 5 uses
  %storemerge168183.i = phi i32 [ %storemerge168180.i, %bb.bq ], [ %storemerge168183.ph.i, %BITv06_reloadDStream.exit.sink.split.i ] ; 3 uses
  %.not.i21 = icmp eq i32 %.0126.i, 0
  br i1 %.not.i21, label %.thread267.i, label %bb.bs

bb.bs:                                            ; preds = %BITv06_reloadDStream.exit.i
  %i.qd = add nsw i32 %.0126.i, -1
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.val68.i191.i ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qe, i64 2
  %.sroa.3.0.copyload.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i, align 2, !tbaa !29 ; 3 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %.val66.i193.i ; 3 uses
  %.sroa.3.0..sroa_idx.i70.i.i = getelementptr inbounds nuw i8, ptr %i.qf, i64 2
  %.sroa.3.0.copyload.i71.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i70.i.i, align 2, !tbaa !29 ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %.val.i109195.i ; 3 uses
  %.sroa.3.0..sroa_idx.i72.i.i = getelementptr inbounds nuw i8, ptr %i.qg, i64 2
  %.sroa.3.0.copyload.i73.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i72.i.i, align 2, !tbaa !29 ; 3 uses
  %i.qh = zext i8 %.sroa.3.0.copyload.i73.i.i to i32 ; 3 uses
  %i.qi = zext i8 %.sroa.3.0.copyload.i.i.i to i64 ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr @LL_bits, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !8  ; 3 uses
  %i.ql = zext i8 %.sroa.3.0.copyload.i71.i.i to i64 ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr @ML_bits, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !8  ; 3 uses
  %i.qo = add i32 %i.qk, %i.qh
  %i.qp = add i32 %i.qo, %i.qn
  %.not.i110.i = icmp eq i8 %.sroa.3.0.copyload.i73.i.i, 0
  br i1 %.not.i110.i, label %.thread.i117.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qq = zext i8 %.sroa.3.0.copyload.i73.i.i to i64
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.OF_base, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !8
  %i.qt = zext i32 %i.qs to i64
  %i.qu = and i32 %storemerge168183.i, 63
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = shl i64 %.val.i74.i189.i, %i.qv
  %i.qx = lshr i64 %i.qw, 1
  %i.qy = and i32 %i.qh, 63
  %i.qz = xor i32 %i.qy, 63
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = lshr i64 %i.qx, %i.ra
  %i.rc = add i32 %storemerge168183.i, %i.qh      ; 2 uses
  %i.rd = add nuw i64 %i.rb, %i.qt                ; 3 uses
  %i.re = icmp ult i64 %i.rd, 3
  br i1 %i.re, label %.thread.i117.i, label %bb.bv

.thread.i117.i:                                   ; preds = %bb.bt, %bb.bs
  %storemerge168182.i = phi i32 [ %i.rc, %bb.bt ], [ %storemerge168183.i, %bb.bs ] ; 3 uses
  %.090.i.i = phi i64 [ %i.rd, %bb.bt ], [ 0, %bb.bs ] ; 3 uses
  %i.rf = icmp eq i8 %.sroa.3.0.copyload.i.i.i, 0
  %i.rg = icmp ne i64 %.090.i.i, 2
  %or.cond.i.i = and i1 %i.rf, %i.rg
  %i.rh = sub nuw nsw i64 1, %.090.i.i
  %spec.select.i.i = select i1 %or.cond.i.i, i64 %i.rh, i64 %.090.i.i ; 3 uses
  %.not63.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not63.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %.thread.i117.i
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %spec.select.i.i
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !101 ; 2 uses
  %.not64.i.i = icmp eq i64 %spec.select.i.i, 1
  br i1 %.not64.i.i, label %.sink.split.i, label %.sink.split.sink.split.i

bb.bv:                                            ; preds = %bb.bt
  %i.rk = add i64 %i.rd, -2
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.bv, %bb.bu
  %.sink.ph.i = phi i64 [ %i.rk, %bb.bv ], [ %i.rj, %bb.bu ]
  %storemerge168181.ph.ph.i = phi i32 [ %i.rc, %bb.bv ], [ %storemerge168182.i, %bb.bu ]
  store i64 %i.pg, ptr %i.ic, align 8, !tbaa !101
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bu
  %.sink.i = phi i64 [ %i.rj, %bb.bu ], [ %.sink.ph.i, %.sink.split.sink.split.i ] ; 2 uses
  %storemerge168181.ph.i = phi i32 [ %storemerge168182.i, %bb.bu ], [ %storemerge168181.ph.ph.i, %.sink.split.sink.split.i ]
  store i64 %i.pf, ptr %i.ib, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.ia, align 8, !tbaa !101
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split.i, %.thread.i117.i
  %i.rl = phi i64 [ %i.pf, %.thread.i117.i ], [ %.sink.i, %.sink.split.i ] ; 18 uses
  %i.rm = phi i64 [ %i.pg, %.thread.i117.i ], [ %i.pf, %.sink.split.i ]
  %storemerge168181.i = phi i32 [ %storemerge168182.i, %.thread.i117.i ], [ %storemerge168181.ph.i, %.sink.split.i ] ; 3 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.ML_base, i64 %i.ql
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !8
  %i.rp = add i32 %i.ro, 3
  %i.rq = zext i32 %i.rp to i64                   ; 4 uses
  %i.rr = icmp ugt i8 %.sroa.3.0.copyload.i71.i.i, 31
  br i1 %i.rr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rs = and i32 %storemerge168181.i, 63
  %i.rt = zext nneg i32 %i.rs to i64
  %i.ru = shl i64 %.val.i74.i189.i, %i.rt
  %i.rv = lshr i64 %i.ru, 1
  %i.rw = and i32 %i.qn, 63
  %i.rx = xor i32 %i.rw, 63
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = lshr i64 %i.rv, %i.ry
  %i.sa = add i32 %storemerge168181.i, %i.qn
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %storemerge168184.i = phi i32 [ %i.sa, %bb.bx ], [ %storemerge168181.i, %bb.bw ] ; 3 uses
  %i.sb = phi i64 [ %i.rz, %bb.bx ], [ 0, %bb.bw ] ; 4 uses
  %i.sc = add nuw i64 %i.sb, %i.rq                ; 4 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.LL_base, i64 %i.qi
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !8
  %i.sf = zext i32 %i.se to i64                   ; 4 uses
  %i.sg = icmp ugt i8 %.sroa.3.0.copyload.i.i.i, 15
  br i1 %i.sg, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.sh = and i32 %storemerge168184.i, 63
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = shl i64 %.val.i74.i189.i, %i.si
  %i.sk = lshr i64 %i.sj, 1
  %i.sl = and i32 %i.qk, 63
  %i.sm = xor i32 %i.sl, 63
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = lshr i64 %i.sk, %i.sn
  %i.sp = add i32 %storemerge168184.i, %i.qk
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %storemerge168185.i = phi i32 [ %i.sp, %bb.bz ], [ %storemerge168184.i, %bb.by ] ; 7 uses
  %i.sq = phi i64 [ %i.so, %bb.bz ], [ 0, %bb.by ] ; 4 uses
  %i.sr = add nuw i64 %i.sq, %i.sf                ; 5 uses
  %i.ss = icmp ult i32 %i.qp, 32
  %i.st = icmp ugt i32 %storemerge168185.i, 64
  %or.cond97.i.i = select i1 %i.ss, i1 true, i1 %i.st
  br i1 %or.cond97.i.i, label %ZSTDv06_decodeSequence.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i114.i = icmp ult ptr %i.qc, %i.ou
  br i1 %.not.i.i114.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.su = lshr i32 %storemerge168185.i, 3
  %i.sv = zext nneg i32 %i.su to i64
  %i.sw = sub nsw i64 0, %i.sv
  %i.sx = getelementptr inbounds i8, ptr %i.qc, i64 %i.sw ; 2 uses
  store ptr %i.sx, ptr %i.ot, align 8, !tbaa !52
  %i.sy = and i32 %storemerge168185.i, 7
  br label %BITv06_reloadDStream.exit.sink.split.i115.i

bb.cd:                                            ; preds = %bb.cb
  %i.sz = icmp eq ptr %i.qc, %i.hu
  br i1 %i.sz, label %ZSTDv06_decodeSequence.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ta = lshr i32 %storemerge168185.i, 3         ; 2 uses
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = sub nsw i64 0, %i.tb
  %i.td = getelementptr inbounds i8, ptr %i.qc, i64 %i.tc
  %i.te = icmp ult ptr %i.td, %i.hu
  %i.tf = ptrtoint ptr %i.qc to i64
  %i.tg = sub i64 %i.tf, %i.hv
  %i.th = trunc i64 %i.tg to i32
  %.024.i.i116.i = select i1 %i.te, i32 %i.th, i32 %i.ta ; 2 uses
  %i.ti = zext i32 %.024.i.i116.i to i64
  %i.tj = sub nsw i64 0, %i.ti
  %i.tk = getelementptr inbounds i8, ptr %i.qc, i64 %i.tj ; 2 uses
  store ptr %i.tk, ptr %i.ot, align 8, !tbaa !52
  %i.tl = shl i32 %.024.i.i116.i, 3
  %i.tm = sub i32 %storemerge168185.i, %i.tl
  br label %BITv06_reloadDStream.exit.sink.split.i115.i

BITv06_reloadDStream.exit.sink.split.i115.i:      ; preds = %bb.ce, %bb.cc
  %storemerge168.i = phi i32 [ %i.sy, %bb.cc ], [ %i.tm, %bb.ce ] ; 2 uses
  %.val.i78.sink.in.i.i = phi ptr [ %i.sx, %bb.cc ], [ %i.tk, %bb.ce ] ; 2 uses
  store i32 %storemerge168.i, ptr %i.kp, align 8, !tbaa !54
  %.val.i78.sink.i.i = load i64, ptr %.val.i78.sink.in.i.i, align 1 ; 2 uses
  store i64 %.val.i78.sink.i.i, ptr %5, align 8, !tbaa !53
  br label %ZSTDv06_decodeSequence.exit.i

ZSTDv06_decodeSequence.exit.i:                    ; preds = %BITv06_reloadDStream.exit.sink.split.i115.i, %bb.cd, %bb.ca
  %i.tn = phi ptr [ %i.qc, %bb.ca ], [ %i.qc, %bb.cd ], [ %.val.i78.sink.in.i.i, %BITv06_reloadDStream.exit.sink.split.i115.i ]
  %.val.i74.i188.i = phi i64 [ %.val.i74.i189.i, %bb.ca ], [ %.val.i74.i189.i, %bb.cd ], [ %.val.i78.sink.i.i, %BITv06_reloadDStream.exit.sink.split.i115.i ] ; 4 uses
  %.val4.i.i.i.i = phi i32 [ %storemerge168185.i, %bb.ca ], [ %storemerge168185.i, %bb.cd ], [ %storemerge168.i, %BITv06_reloadDStream.exit.sink.split.i115.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.qe, align 2, !tbaa !12
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qe, i64 3
  %.sroa.42.0.copyload.i.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i.i.i, align 1, !tbaa !29
  %i.to = zext i8 %.sroa.42.0.copyload.i.i.i to i32 ; 2 uses
  %i.tp = and i32 %.val4.i.i.i.i, 63
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = shl i64 %.val.i74.i188.i, %i.tq
  %i.ts = lshr i64 %i.tr, 1
  %i.tt = and i32 %i.to, 63
  %i.tu = xor i32 %i.tt, 63
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = lshr i64 %i.ts, %i.tv
  %i.tx = add i32 %.val4.i.i.i.i, %i.to           ; 2 uses
  %i.ty = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.tz = add nuw i64 %i.tw, %i.ty                ; 2 uses
  store i64 %i.tz, ptr %i.km, align 8, !tbaa !110
  %.sroa.0.0.copyload.i79.i.i = load i16, ptr %i.qf, align 2, !tbaa !12
  %.sroa.42.0..sroa_idx.i80.i.i = getelementptr inbounds nuw i8, ptr %i.qf, i64 3
  %.sroa.42.0.copyload.i81.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i80.i.i, align 1, !tbaa !29
  %i.ua = zext i8 %.sroa.42.0.copyload.i81.i.i to i32 ; 2 uses
  %i.ub = and i32 %i.tx, 63
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = shl i64 %.val.i74.i188.i, %i.uc
  %i.ue = lshr i64 %i.ud, 1
  %i.uf = and i32 %i.ua, 63
  %i.ug = xor i32 %i.uf, 63
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = lshr i64 %i.ue, %i.uh
  %i.uj = add i32 %i.tx, %i.ua                    ; 2 uses
  %i.uk = zext i16 %.sroa.0.0.copyload.i79.i.i to i64
  %i.ul = add nuw i64 %i.ui, %i.uk                ; 2 uses
  store i64 %i.ul, ptr %i.nj, align 8, !tbaa !110
  %.sroa.0.0.copyload.i84.i.i = load i16, ptr %i.qg, align 2, !tbaa !12
  %.sroa.42.0..sroa_idx.i85.i.i = getelementptr inbounds nuw i8, ptr %i.qg, i64 3
  %.sroa.42.0.copyload.i86.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i85.i.i, align 1, !tbaa !29
  %i.um = zext i8 %.sroa.42.0.copyload.i86.i.i to i32 ; 2 uses
  %i.un = and i32 %i.uj, 63
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = shl i64 %.val.i74.i188.i, %i.uo
  %i.uq = lshr i64 %i.up, 1
  %i.ur = and i32 %i.um, 63
  %i.us = xor i32 %i.ur, 63
  %i.ut = zext nneg i32 %i.us to i64
  %i.uu = lshr i64 %i.uq, %i.ut
  %i.uv = add i32 %i.uj, %i.um                    ; 2 uses
  store i32 %i.uv, ptr %i.kp, align 8, !tbaa !54
  %i.uw = zext i16 %.sroa.0.0.copyload.i84.i.i to i64
  %i.ux = add nuw i64 %i.uu, %i.uw                ; 2 uses
  store i64 %i.ux, ptr %i.ly, align 8, !tbaa !110
  %i.uy = getelementptr inbounds i8, ptr %.068.i, i64 %i.sr ; 8 uses
  %i.uz = add i64 %i.sr, %i.sc                    ; 5 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.068.i, i64 %i.uz ; 6 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.0127.i, i64 %i.sr ; 2 uses
  %i.vc = sub i64 0, %i.rl
  %i.vd = getelementptr inbounds i8, ptr %i.uy, i64 %i.vc ; 2 uses
  %i.ve = ptrtoint ptr %.068.i to i64             ; 7 uses
  %i.vf = sub i64 %i.ow, %i.ve
  %i.vg = icmp ugt i64 %i.uz, %i.vf
  br i1 %i.vg, label %.thread155.i, label %bb.cf

bb.cf:                                            ; preds = %ZSTDv06_decodeSequence.exit.i
  %i.vh = ptrtoint ptr %.0127.i to i64            ; 2 uses
  %i.vi = sub i64 %i.ox, %i.vh
  %i.vj = icmp ugt i64 %i.sr, %i.vi
  br i1 %i.vj, label %.thread155.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.vk = icmp ugt ptr %i.uy, %i.ov
  %i.vl = icmp ugt ptr %i.va, %i.ft
  %or.cond.i118.i = select i1 %i.vk, i1 true, i1 %i.vl
  br i1 %or.cond.i118.i, label %.thread155.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vm = icmp ugt ptr %i.vb, %i.fu
  br i1 %i.vm, label %.thread155.i, label %.preheader123.i.i.preheader

.preheader123.i.i.preheader:                      ; preds = %bb.ch
  %i.vn = add i64 %i.sq, %i.ve
  %i.vo = add i64 %i.vn, %i.sf
  %i.vp = add i64 %i.ve, 8
  %i.vq = tail call i64 @llvm.umax.i64(i64 %i.vo, i64 %i.vp)
  %i.vr = xor i64 %i.ve, -1
  %i.vs = add i64 %i.vq, %i.vr                    ; 2 uses
  %i.vt = lshr i64 %i.vs, 3
  %i.vu = add nuw nsw i64 %i.vt, 1                ; 2 uses
  %min.iters.check207 = icmp ult i64 %i.vs, 24
  %i.vv = sub i64 %i.vh, %i.ve
  %diff.check205 = icmp ugt i64 %i.vv, -32
  %or.cond = or i1 %min.iters.check207, %diff.check205
  br i1 %or.cond, label %.preheader123.i.i.preheader225, label %vector.ph208

vector.ph208:                                     ; preds = %.preheader123.i.i.preheader
  %n.vec209 = and i64 %i.vu, 4611686018427387900  ; 3 uses
  %i.vw = shl i64 %n.vec209, 3                    ; 2 uses
  %i.vx = getelementptr i8, ptr %.0127.i, i64 %i.vw
  %i.vy = getelementptr i8, ptr %.068.i, i64 %i.vw
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body210 ] ; 2 uses
  %i.vz = shl i64 %index211, 3                    ; 2 uses
  %next.gep212 = getelementptr i8, ptr %.0127.i, i64 %i.vz ; 2 uses
  %next.gep213 = getelementptr i8, ptr %.068.i, i64 %i.vz ; 2 uses
  %i.wa = getelementptr i8, ptr %next.gep212, i64 16
  %wide.load214 = load <2 x i64>, ptr %next.gep212, align 1
  %wide.load215 = load <2 x i64>, ptr %i.wa, align 1
  %i.wb = getelementptr i8, ptr %next.gep213, i64 16
  store <2 x i64> %wide.load214, ptr %next.gep213, align 1
  store <2 x i64> %wide.load215, ptr %i.wb, align 1
  %index.next216 = add nuw i64 %index211, 4       ; 2 uses
  %i.wc = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.wc, label %middle.block217, label %vector.body210, !llvm.loop !113

middle.block217:                                  ; preds = %vector.body210
  %cmp.n218 = icmp eq i64 %i.vu, %n.vec209
  br i1 %cmp.n218, label %ZSTDv06_wildcopy.exit.i.i, label %.preheader123.i.i.preheader225

.preheader123.i.i.preheader225:                   ; preds = %.preheader123.i.i.preheader, %middle.block217
  %.09.i.i.i.ph = phi ptr [ %.0127.i, %.preheader123.i.i.preheader ], [ %i.vx, %middle.block217 ]
  %.0.i.i.i.ph = phi ptr [ %.068.i, %.preheader123.i.i.preheader ], [ %i.vy, %middle.block217 ]
  br label %.preheader123.i.i

.preheader123.i.i:                                ; preds = %.preheader123.i.i.preheader225, %.preheader123.i.i
  %.09.i.i.i = phi ptr [ %i.we, %.preheader123.i.i ], [ %.09.i.i.i.ph, %.preheader123.i.i.preheader225 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.wd, %.preheader123.i.i ], [ %.0.i.i.i.ph, %.preheader123.i.i.preheader225 ] ; 2 uses
  %.09.val.i.i.i = load i64, ptr %.09.i.i.i, align 1
  store i64 %.09.val.i.i.i, ptr %.0.i.i.i, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.wf = icmp ult ptr %i.wd, %i.uy
  br i1 %i.wf, label %.preheader123.i.i, label %ZSTDv06_wildcopy.exit.i.i, !llvm.loop !114

ZSTDv06_wildcopy.exit.i.i:                        ; preds = %.preheader123.i.i, %middle.block217
  %i.wg = ptrtoint ptr %i.uy to i64               ; 2 uses
  %i.wh = sub i64 %i.wg, %i.oy                    ; 8 uses
  %i.wi = icmp ugt i64 %i.rl, %i.wh
  br i1 %i.wi, label %bb.ci, label %.thread.i119.i

bb.ci:                                            ; preds = %ZSTDv06_wildcopy.exit.i.i
  %i.wj = sub i64 %i.wg, %i.oz
  %i.wk = icmp ugt i64 %i.rl, %i.wj
  br i1 %i.wk, label %.thread155.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.wl = ptrtoint ptr %i.vd to i64
  %.neg.i.i = sub i64 %i.wl, %i.oy                ; 4 uses
  %i.wm = getelementptr inbounds i8, ptr %i.gc, i64 %.neg.i.i ; 2 uses
  %i.wn = add nsw i64 %.neg.i.i, %i.sc            ; 3 uses
  %.not.i122.i = icmp sgt i64 %i.wn, 0
  br i1 %.not.i122.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.uy, ptr readonly align 1 %i.wm, i64 %i.sc, i1 false)
  br label %ZSTDv06_execSequence.exit.i

bb.cl:                                            ; preds = %bb.cj
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.uy, ptr readonly align 1 %i.wm, i64 %gepdiff.i.i, i1 false)
  %i.wo = getelementptr inbounds nuw i8, ptr %i.uy, i64 %gepdiff.i.i ; 7 uses
  %i.wp = icmp ule ptr %i.wo, %i.ov
  %i.wq = icmp samesign ugt i64 %i.wn, 2
  %or.cond.not.i.i = select i1 %i.wp, i1 %i.wq, i1 false
  br i1 %or.cond.not.i.i, label %.thread.i119.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cl
  %i.wr = sub nsw i64 %i.sr, %.neg.i.i
  %i.ws = icmp slt i64 %i.wr, %i.uz
  br i1 %i.ws, label %iter.check188, label %ZSTDv06_execSequence.exit.i

iter.check188:                                    ; preds = %.preheader.i.i
  %i.wt = add i64 %i.sb, %i.sq
  %i.wu = add i64 %i.wt, %i.ve
  %i.wv = add i64 %i.wu, %i.sf
  %i.ww = add i64 %i.wv, %i.rq
  %i.wx = add i64 %i.pe, %i.rl
  %umax169 = tail call i64 @llvm.umax.i64(i64 %i.ww, i64 %i.wx)
  %i.wy = add i64 %i.rl, %i.oy
  %i.wz = sub i64 %umax169, %i.wy                 ; 7 uses
  %min.iters.check171 = icmp ult i64 %i.wz, 4
  %diff.check168 = icmp ult i64 %i.rl, 32
  %or.cond221 = select i1 %min.iters.check171, i1 true, i1 %diff.check168
  br i1 %or.cond221, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check172

vector.main.loop.iter.check172:                   ; preds = %iter.check188
  %min.iters.check173 = icmp ult i64 %i.wz, 32
  br i1 %min.iters.check173, label %vec.epilog.ph192, label %vector.ph174

vector.ph174:                                     ; preds = %vector.main.loop.iter.check172
  %i.xa = and i64 %i.wz, 28
  %n.vec175 = and i64 %i.wz, -32                  ; 5 uses
  %i.xb = getelementptr i8, ptr %i.fy, i64 %n.vec175
  %i.xc = getelementptr i8, ptr %i.wo, i64 %n.vec175
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 3 uses
  %next.gep178 = getelementptr i8, ptr %i.fy, i64 %index177 ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.wo, i64 %index177 ; 2 uses
  %i.xd = getelementptr i8, ptr %next.gep178, i64 16
  %wide.load180 = load <16 x i8>, ptr %next.gep178, align 1, !tbaa !29
  %wide.load181 = load <16 x i8>, ptr %i.xd, align 1, !tbaa !29
  %i.xe = getelementptr i8, ptr %next.gep179, i64 16
  store <16 x i8> %wide.load180, ptr %next.gep179, align 1, !tbaa !29
  store <16 x i8> %wide.load181, ptr %i.xe, align 1, !tbaa !29
  %index.next182 = add nuw i64 %index177, 32      ; 2 uses
  %i.xf = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.xf, label %middle.block183, label %vector.body176, !llvm.loop !115

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.wz, %n.vec175
  br i1 %cmp.n184, label %ZSTDv06_execSequence.exit.i, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block183
  %min.epilog.iters.check191 = icmp eq i64 %i.xa, 0
  br i1 %min.epilog.iters.check191, label %.lr.ph.i.i.preheader, label %vec.epilog.ph192, !prof !116

vec.epilog.ph192:                                 ; preds = %vector.main.loop.iter.check172, %vec.epilog.iter.check190
  %vec.epilog.resume.val185 = phi i64 [ %n.vec175, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check172 ]
  %n.vec193 = and i64 %i.wz, -4                   ; 4 uses
  %i.xg = getelementptr i8, ptr %i.fy, i64 %n.vec193
  %i.xh = getelementptr i8, ptr %i.wo, i64 %n.vec193
  br label %vec.epilog.vector.body194

vec.epilog.vector.body194:                        ; preds = %vec.epilog.vector.body194, %vec.epilog.ph192
  %index195 = phi i64 [ %vec.epilog.resume.val185, %vec.epilog.ph192 ], [ %index.next199, %vec.epilog.vector.body194 ] ; 3 uses
  %next.gep196 = getelementptr i8, ptr %i.fy, i64 %index195
  %next.gep197 = getelementptr i8, ptr %i.wo, i64 %index195
  %wide.load198 = load <4 x i8>, ptr %next.gep196, align 1, !tbaa !29
  store <4 x i8> %wide.load198, ptr %next.gep197, align 1, !tbaa !29
  %index.next199 = add nuw i64 %index195, 4       ; 2 uses
  %i.xi = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.xi, label %vec.epilog.middle.block200, label %vec.epilog.vector.body194, !llvm.loop !117

vec.epilog.middle.block200:                       ; preds = %vec.epilog.vector.body194
  %cmp.n201 = icmp eq i64 %i.wz, %n.vec193
  br i1 %cmp.n201, label %ZSTDv06_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check188, %vec.epilog.iter.check190, %vec.epilog.middle.block200
  %.090125.i.i.ph = phi ptr [ %i.fy, %iter.check188 ], [ %i.xb, %vec.epilog.iter.check190 ], [ %i.xg, %vec.epilog.middle.block200 ]
  %.092124.i.i.ph = phi ptr [ %i.wo, %iter.check188 ], [ %i.xc, %vec.epilog.iter.check190 ], [ %i.xh, %vec.epilog.middle.block200 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.090125.i.i = phi ptr [ %i.xj, %.lr.ph.i.i ], [ %.090125.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.092124.i.i = phi ptr [ %i.xl, %.lr.ph.i.i ], [ %.092124.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.090125.i.i, i64 1
  %i.xk = load i8, ptr %.090125.i.i, align 1, !tbaa !29
  %i.xl = getelementptr inbounds nuw i8, ptr %.092124.i.i, i64 1 ; 2 uses
  store i8 %i.xk, ptr %.092124.i.i, align 1, !tbaa !29
  %i.xm = icmp ult ptr %i.xl, %i.va
  br i1 %i.xm, label %.lr.ph.i.i, label %ZSTDv06_execSequence.exit.i, !llvm.loop !118

.thread.i119.i:                                   ; preds = %bb.cl, %ZSTDv06_wildcopy.exit.i.i
  %i.xn = phi i64 [ %i.wn, %bb.cl ], [ %i.sc, %ZSTDv06_wildcopy.exit.i.i ]
  %.294.i.i = phi ptr [ %i.wo, %bb.cl ], [ %i.uy, %ZSTDv06_wildcopy.exit.i.i ] ; 8 uses
  %.2.i120.i = phi ptr [ %i.fy, %bb.cl ], [ %i.vd, %ZSTDv06_wildcopy.exit.i.i ] ; 7 uses
  %i.xo = icmp ult i64 %i.rl, 8
  br i1 %i.xo, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.thread.i119.i
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_execSequence.dec64table, i64 %i.rl
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !8
  %i.xr = load i8, ptr %.2.i120.i, align 1, !tbaa !29
  store i8 %i.xr, ptr %.294.i.i, align 1, !tbaa !29
  %i.xs = getelementptr inbounds nuw i8, ptr %.2.i120.i, i64 1
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !29
  %i.xu = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 1
  store i8 %i.xt, ptr %i.xu, align 1, !tbaa !29
  %i.xv = getelementptr inbounds nuw i8, ptr %.2.i120.i, i64 2
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !29
  %i.xx = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 2
  store i8 %i.xw, ptr %i.xx, align 1, !tbaa !29
  %i.xy = getelementptr inbounds nuw i8, ptr %.2.i120.i, i64 3
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !29
  %i.ya = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 3
  store i8 %i.xz, ptr %i.ya, align 1, !tbaa !29
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_execSequence.dec32table, i64 %i.rl
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !8
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %.2.i120.i, i64 %i.yd ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 4
  %.val.i121.i = load i32, ptr %i.ye, align 1
  store i32 %.val.i121.i, ptr %i.yf, align 1
  %i.yg = sext i32 %i.xq to i64
  %i.yh = sub nsw i64 0, %i.yg
  %i.yi = getelementptr inbounds i8, ptr %i.ye, i64 %i.yh
  br label %bb.co

bb.cn:                                            ; preds = %.thread.i119.i
  %.2.val.i.i = load i64, ptr %.2.i120.i, align 1
  store i64 %.2.val.i.i, ptr %.294.i.i, align 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.3.i.i = phi ptr [ %i.yi, %bb.cm ], [ %.2.i120.i, %bb.cn ] ; 2 uses
  %.3.i.i134 = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 8 ; 11 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8 ; 10 uses
  %i.yl = icmp ugt ptr %i.va, %i.pa
  br i1 %i.yl, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.ym = icmp ult ptr %i.yj, %i.ov
  br i1 %i.ym, label %.preheader.i.preheader, label %bb.cq

.preheader.i.preheader:                           ; preds = %bb.cp
  %i.yn = tail call i64 @llvm.umax.i64(i64 %i.rl, i64 %i.wh) ; 2 uses
  %.reass243 = add i64 %i.yn, %invariant.op242
  %i.yo = tail call i64 @llvm.umax.i64(i64 %i.pb, i64 %.reass243)
  %i.yp = add i64 %i.yo, -9
  %i.yq = add i64 %i.yn, %i.oy
  %i.yr = sub i64 %i.yp, %i.yq                    ; 2 uses
  %i.ys = lshr i64 %i.yr, 3
  %i.yt = add nuw nsw i64 %i.ys, 1                ; 2 uses
  %min.iters.check136 = icmp ult i64 %i.yr, 56
  br i1 %min.iters.check136, label %.preheader.i.preheader222, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.preheader.i.preheader
  %umax133 = tail call i64 @llvm.umax.i64(i64 %i.rl, i64 %i.wh)
  %i.yu = add i64 %umax133, %i.oy
  %i.yv = sub i64 %.3.i.i134, %i.yu
  %diff.check135 = icmp ugt i64 %i.yv, -32
  br i1 %diff.check135, label %.preheader.i.preheader222, label %vector.ph137

vector.ph137:                                     ; preds = %vector.memcheck132
  %n.vec138 = and i64 %i.yt, 4611686018427387900  ; 3 uses
  %i.yw = shl i64 %n.vec138, 3                    ; 2 uses
  %i.yx = getelementptr i8, ptr %i.yk, i64 %i.yw
  %i.yy = getelementptr i8, ptr %i.yj, i64 %i.yw
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.yz = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.yk, i64 %i.yz ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.yj, i64 %i.yz ; 2 uses
  %i.za = getelementptr i8, ptr %next.gep141, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep141, align 1
  %wide.load144 = load <2 x i64>, ptr %i.za, align 1
  %i.zb = getelementptr i8, ptr %next.gep142, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep142, align 1
  store <2 x i64> %wide.load144, ptr %i.zb, align 1
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.zc = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.zc, label %middle.block146, label %vector.body139, !llvm.loop !119

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.yt, %n.vec138
  br i1 %cmp.n147, label %ZSTDv06_wildcopy.exit114.i.i, label %.preheader.i.preheader222

.preheader.i.preheader222:                        ; preds = %vector.memcheck132, %.preheader.i.preheader, %middle.block146
  %.09.i111.i.i.ph = phi ptr [ %i.yk, %vector.memcheck132 ], [ %i.yk, %.preheader.i.preheader ], [ %i.yx, %middle.block146 ]
  %.0.i112.i.i.ph = phi ptr [ %i.yj, %vector.memcheck132 ], [ %i.yj, %.preheader.i.preheader ], [ %i.yy, %middle.block146 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader222, %.preheader.i
  %.09.i111.i.i = phi ptr [ %i.ze, %.preheader.i ], [ %.09.i111.i.i.ph, %.preheader.i.preheader222 ] ; 2 uses
  %.0.i112.i.i = phi ptr [ %i.zd, %.preheader.i ], [ %.0.i112.i.i.ph, %.preheader.i.preheader222 ] ; 2 uses
  %.09.val.i113.i.i = load i64, ptr %.09.i111.i.i, align 1
  store i64 %.09.val.i113.i.i, ptr %.0.i112.i.i, align 1
  %i.zd = getelementptr inbounds nuw i8, ptr %.0.i112.i.i, i64 8 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.09.i111.i.i, i64 8
  %i.zf = icmp ult ptr %i.zd, %i.ov
  br i1 %i.zf, label %.preheader.i, label %ZSTDv06_wildcopy.exit114.i.i, !llvm.loop !120

ZSTDv06_wildcopy.exit114.i.i:                     ; preds = %.preheader.i, %middle.block146
  %i.zg = ptrtoint ptr %i.yj to i64
  %i.zh = sub i64 %i.pb, %i.zg
  %i.zi = getelementptr inbounds i8, ptr %i.yk, i64 %i.zh
  br label %bb.cq

bb.cq:                                            ; preds = %ZSTDv06_wildcopy.exit114.i.i, %bb.cp
  %.395.i.i = phi ptr [ %i.ov, %ZSTDv06_wildcopy.exit114.i.i ], [ %i.yj, %bb.cp ] ; 7 uses
  %.4.i.i = phi ptr [ %i.zi, %ZSTDv06_wildcopy.exit114.i.i ], [ %i.yk, %bb.cp ] ; 7 uses
  %.4.i.i116 = ptrtoaddr ptr %.4.i.i to i64
  %i.zj = icmp ult ptr %.395.i.i, %i.va
  br i1 %i.zj, label %iter.check, label %ZSTDv06_execSequence.exit.i

iter.check:                                       ; preds = %bb.cq
  %i.zk = add i64 %i.sb, %i.sq
  %i.zl = add i64 %i.zk, %i.ve
  %i.zm = add i64 %i.zl, %i.sf
  %i.zn = add i64 %i.zm, %i.rq
  %umax117 = tail call i64 @llvm.umax.i64(i64 %i.rl, i64 %i.wh)
  %i.zo = add i64 %i.pd, %umax117
  %umax118 = tail call i64 @llvm.umax.i64(i64 %i.pb, i64 %i.zo)
  %i.zp = sub i64 %i.zn, %umax118                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.zp, 4
  br i1 %min.iters.check, label %.lr.ph128.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %i.rl, i64 %i.wh)
  %i.zq = add i64 %i.pc, %umax
  %umax115 = tail call i64 @llvm.umax.i64(i64 %i.pb, i64 %i.zq)
  %i.zr = sub i64 %.4.i.i116, %umax115
  %diff.check = icmp ugt i64 %i.zr, -32
  br i1 %diff.check, label %.lr.ph128.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check119 = icmp ult i64 %i.zp, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zs = and i64 %i.zp, 28
  %n.vec = and i64 %i.zp, -32                     ; 5 uses
  %i.zt = getelementptr i8, ptr %.4.i.i, i64 %n.vec
  %i.zu = getelementptr i8, ptr %.395.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.4.i.i, i64 %index ; 2 uses
  %next.gep120 = getelementptr i8, ptr %.395.i.i, i64 %index ; 2 uses
  %i.zv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !29
  %wide.load121 = load <16 x i8>, ptr %i.zv, align 1, !tbaa !29
  %i.zw = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load, ptr %next.gep120, align 1, !tbaa !29
  store <16 x i8> %wide.load121, ptr %i.zw, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zx = icmp eq i64 %index.next, %n.vec
  br i1 %i.zx, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zp, %n.vec
  br i1 %cmp.n, label %ZSTDv06_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph128.i.i.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec123 = and i64 %i.zp, -4                   ; 4 uses
  %i.zy = getelementptr i8, ptr %.4.i.i, i64 %n.vec123
  %i.zz = getelementptr i8, ptr %.395.i.i, i64 %n.vec123
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 3 uses
  %next.gep125 = getelementptr i8, ptr %.4.i.i, i64 %index124
  %next.gep126 = getelementptr i8, ptr %.395.i.i, i64 %index124
  %wide.load127 = load <4 x i8>, ptr %next.gep125, align 1, !tbaa !29
  store <4 x i8> %wide.load127, ptr %next.gep126, align 1, !tbaa !29
  %index.next128 = add nuw i64 %index124, 4       ; 2 uses
  %i.aaa = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.aaa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %i.zp, %n.vec123
  br i1 %cmp.n129, label %ZSTDv06_execSequence.exit.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5127.i.i.ph = phi ptr [ %.4.i.i, %iter.check ], [ %.4.i.i, %vector.memcheck ], [ %i.zt, %vec.epilog.iter.check ], [ %i.zy, %vec.epilog.middle.block ]
  %.496126.i.i.ph = phi ptr [ %.395.i.i, %iter.check ], [ %.395.i.i, %vector.memcheck ], [ %i.zu, %vec.epilog.iter.check ], [ %i.zz, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.5127.i.i = phi ptr [ %i.aab, %.lr.ph128.i.i ], [ %.5127.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.496126.i.i = phi ptr [ %i.aad, %.lr.ph128.i.i ], [ %.496126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.5127.i.i, i64 1
  %i.aac = load i8, ptr %.5127.i.i, align 1, !tbaa !29
  %i.aad = getelementptr inbounds nuw i8, ptr %.496126.i.i, i64 1 ; 2 uses
  store i8 %i.aac, ptr %.496126.i.i, align 1, !tbaa !29
  %i.aae = icmp ult ptr %i.aad, %i.va
  br i1 %i.aae, label %.lr.ph128.i.i, label %ZSTDv06_execSequence.exit.i, !llvm.loop !123

bb.cr:                                            ; preds = %bb.co
  %i.aaf = getelementptr i8, ptr %.294.i.i, i64 %i.xn
  %i.aag = tail call i64 @llvm.umin.i64(i64 %i.rl, i64 %i.wh)
  %i.aah = tail call i64 @llvm.umax.i64(i64 %i.rl, i64 %i.wh) ; 3 uses
  %i.aai = add i64 %i.sb, %i.oy
  %i.aaj = add i64 %i.aai, %i.aag
  %i.aak = add i64 %i.aaj, %i.aah
  %i.aal = add i64 %i.aak, %i.rq
  %i.aam = sub i64 %i.aal, %i.rl
  %.reass = add i64 %i.aah, %invariant.op
  %i.aan = tail call i64 @llvm.umax.i64(i64 %i.aam, i64 %.reass)
  %i.aao = add i64 %i.aan, -9
  %i.aap = add i64 %i.aah, %i.oy
  %i.aaq = sub i64 %i.aao, %i.aap                 ; 2 uses
  %i.aar = lshr i64 %i.aaq, 3
  %i.aas = add nuw nsw i64 %i.aar, 1              ; 2 uses
  %min.iters.check153 = icmp ult i64 %i.aaq, 56
  br i1 %min.iters.check153, label %scalar.ph152.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %bb.cr
  %umax150 = tail call i64 @llvm.umax.i64(i64 %i.rl, i64 %i.wh)
  %i.aat = add i64 %umax150, %i.oy
  %i.aau = sub i64 %.3.i.i134, %i.aat
  %diff.check151 = icmp ugt i64 %i.aau, -32
  br i1 %diff.check151, label %scalar.ph152.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck149
  %n.vec155 = and i64 %i.aas, 4611686018427387900 ; 3 uses
  %i.aav = shl i64 %n.vec155, 3                   ; 2 uses
  %i.aaw = getelementptr i8, ptr %i.yk, i64 %i.aav
  %i.aax = getelementptr i8, ptr %i.yj, i64 %i.aav
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 2 uses
  %i.aay = shl i64 %index157, 3                   ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.yk, i64 %i.aay ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.yj, i64 %i.aay ; 2 uses
  %i.aaz = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load160 = load <2 x i64>, ptr %next.gep158, align 1
  %wide.load161 = load <2 x i64>, ptr %i.aaz, align 1
  %i.aba = getelementptr i8, ptr %next.gep159, i64 16
  store <2 x i64> %wide.load160, ptr %next.gep159, align 1
  store <2 x i64> %wide.load161, ptr %i.aba, align 1
  %index.next162 = add nuw i64 %index157, 4       ; 2 uses
  %i.abb = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.abb, label %middle.block163, label %vector.body156, !llvm.loop !124

middle.block163:                                  ; preds = %vector.body156
  %cmp.n164 = icmp eq i64 %i.aas, %n.vec155
  br i1 %cmp.n164, label %ZSTDv06_execSequence.exit.i, label %scalar.ph152.preheader

scalar.ph152.preheader:                           ; preds = %vector.memcheck149, %bb.cr, %middle.block163
  %.09.i115.i.i.ph = phi ptr [ %i.yk, %vector.memcheck149 ], [ %i.yk, %bb.cr ], [ %i.aaw, %middle.block163 ]
  %.0.i116.i.i.ph = phi ptr [ %i.yj, %vector.memcheck149 ], [ %i.yj, %bb.cr ], [ %i.aax, %middle.block163 ]
  br label %scalar.ph152

scalar.ph152:                                     ; preds = %scalar.ph152.preheader, %scalar.ph152
  %.09.i115.i.i = phi ptr [ %i.abd, %scalar.ph152 ], [ %.09.i115.i.i.ph, %scalar.ph152.preheader ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.abc, %scalar.ph152 ], [ %.0.i116.i.i.ph, %scalar.ph152.preheader ] ; 2 uses
  %.09.val.i117.i.i = load i64, ptr %.09.i115.i.i, align 1
  store i64 %.09.val.i117.i.i, ptr %.0.i116.i.i, align 1
  %i.abc = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8
  %i.abe = icmp ult ptr %i.abc, %i.aaf
  br i1 %i.abe, label %scalar.ph152, label %ZSTDv06_execSequence.exit.i, !llvm.loop !125

ZSTDv06_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %scalar.ph152, %.lr.ph128.i.i, %middle.block183, %vec.epilog.middle.block200, %middle.block163, %middle.block, %vec.epilog.middle.block, %bb.cq, %.preheader.i.i, %bb.ck
  %i.abf = icmp ult i64 %i.uz, -119
  br i1 %i.abf, label %bb.bn, label %.thread155.i, !llvm.loop !126

.thread155.i:                                     ; preds = %ZSTDv06_execSequence.exit.i, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %ZSTDv06_decodeSequence.exit.i, %BITv06_initDStream.exit.i, %bb.az, %bb.ar, %bb.ap
  %.478.ph.i = phi i64 [ -20, %bb.ar ], [ -20, %bb.az ], [ -20, %BITv06_initDStream.exit.i ], [ -20, %bb.ap ], [ %i.uz, %ZSTDv06_execSequence.exit.i ], [ -20, %bb.ci ], [ -20, %bb.ch ], [ -70, %bb.cg ], [ -20, %bb.cf ], [ -70, %ZSTDv06_decodeSequence.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

.loopexit.i:                                      ; preds = %bb.bn
  %.not279.i = icmp eq i32 %.0126.i, 0
  br i1 %.not279.i, label %.thread267.i, label %bb.cs

.thread267.i:                                     ; preds = %BITv06_reloadDStream.exit.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ct

bb.cs:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

bb.ct:                                            ; preds = %.thread267.i, %bb.ao, %.thread.i22
  %.2.i = phi ptr [ %i.fp, %bb.ao ], [ %.0127.i, %.thread267.i ], [ %i.fp, %.thread.i22 ] ; 4 uses
  %.371.i = phi ptr [ %1, %bb.ao ], [ %.068.i, %.thread267.i ], [ %1, %.thread.i22 ] ; 3 uses
  %i.abg = ptrtoint ptr %i.fu to i64
  %i.abh = ptrtoint ptr %.2.i to i64
  %i.abi = sub i64 %i.abg, %i.abh                 ; 2 uses
  %i.abj = icmp ugt ptr %.2.i, %i.fu
  br i1 %i.abj, label %ZSTDv06_decompressSequences.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.abk = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.abi ; 2 uses
  %i.abl = icmp ugt ptr %i.abk, %i.ft
  br i1 %i.abl, label %ZSTDv06_decompressSequences.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not87.i = icmp eq ptr %i.fu, %.2.i
  br i1 %.not87.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.371.i, ptr align 1 %.2.i, i64 %i.abi, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.5.ph.i = phi ptr [ %.371.i, %bb.cv ], [ %i.abk, %bb.cw ]
  %i.abm = ptrtoint ptr %.5.ph.i to i64
  %i.abn = ptrtoint ptr %1 to i64
  %i.abo = sub i64 %i.abm, %i.abn
  br label %ZSTDv06_decompressSequences.exit

ZSTDv06_decompressSequences.exit:                 ; preds = %.thread.i, %bb.ab, %bb.o, %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.n, %bb.j, %bb.b, %bb.v, %bb.cx, %bb.cu, %bb.ct, %bb.cs, %.thread155.i, %ZSTDv06_decodeSeqHeaders.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ac, %bb.a
  %.1 = phi i64 [ -20, %bb.am ], [ -72, %bb.a ], [ %i.abo, %bb.cx ], [ %.478.ph.i, %.thread155.i ], [ -20, %bb.cs ], [ %i.hx, %ZSTDv06_decodeSeqHeaders.exit.i ], [ -20, %bb.ct ], [ -70, %bb.cu ], [ -20, %bb.al ], [ -72, %bb.ag ], [ -72, %bb.ai ], [ -72, %bb.ak ], [ -20, %bb.an ], [ -72, %bb.ac ], [ -20, %.thread.i ], [ -20, %bb.ab ], [ -20, %bb.o ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.d ], [ -20, %bb.n ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompress_usingPreparedDCtx(ptr noundef initializes((0, 21619)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21619) %0, ptr noundef nonnull readonly align 8 dereferenceable(21619) %1, i64 21619, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %.not.i = icmp eq ptr %2, %i.b
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !107
  store ptr %2, ptr %i.d, align 8, !tbaa !106
  store ptr %2, ptr %i.a, align 8, !tbaa !104
  br label %ZSTDv06_checkContinuity.exit

ZSTDv06_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv06_decompressFrame(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv06_decompressFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp ult i64 %4, 8
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %i.f = lshr i8 %i.e, 6
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %i.j = add i64 %i.i, 5                          ; 4 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %i.i, 8
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 21568 ; 2 uses
  %.val.i.i = load i32, ptr %3, align 1
  %.not.i.i = icmp eq i32 %.val.i.i, -47205082
  br i1 %.not.i.i, label %ZSTDv06_frameHeaderSize.exit.i.i, label %.thread

ZSTDv06_frameHeaderSize.exit.i.i:                 ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load i8, ptr %i.d, align 1, !tbaa !29
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = and i32 %i.p, 15
  %i.r = add nuw nsw i32 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 21576
  store i32 %i.r, ptr %i.s, align 8, !tbaa !102
  %i.t = and i32 %i.p, 32
  %.not28.i.i = icmp eq i32 %i.t, 0
  br i1 %.not28.i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %ZSTDv06_frameHeaderSize.exit.i.i
  %i.u = lshr i32 %i.p, 6
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.m, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29
  %i.x = zext i8 %i.w to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.val30.i.i = load i16, ptr %i.y, align 1
  %i.z = zext i16 %.val30.i.i to i64
  %i.aa = add nuw nsw i64 %i.z, 256
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.val29.i.i = load i64, ptr %i.ab, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.val29.sink.i.i = phi i64 [ %.val29.i.i, %bb.h ], [ %i.aa, %bb.g ], [ %i.x, %bb.f ], [ 0, %bb.e ]
  store i64 %.val29.sink.i.i, ptr %i.n, align 8, !tbaa !103
  %i.ac = ptrtoint ptr %i.a to i64
  %gepdiff = sub i64 %4, %i.j                     ; 2 uses
  %i.ad = icmp ult i64 %gepdiff, 3
  br i1 %i.ad, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %i.af = ptrtoint ptr %i.b to i64                ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.157113 = phi i64 [ %gepdiff, %.lr.ph ], [ %i.bl, %bb.r ] ; 2 uses
  %.058112 = phi ptr [ %1, %.lr.ph ], [ %i.bj, %bb.r ] ; 7 uses
  %.161111 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bk, %bb.r ] ; 5 uses
  %i.ag = load i8, ptr %.161111, align 1, !tbaa !29 ; 2 uses
  %i.ah = lshr i8 %i.ag, 6                        ; 2 uses
  switch i8 %i.ah, label %bb.k [
    i8 3, label %.thread91
    i8 2, label %bb.l
  ]

.thread91:                                        ; preds = %bb.j
  %.not72 = icmp eq i64 %.157113, 3
  br i1 %.not72, label %ZSTDv06_copyRawBlock.exit, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = and i8 %i.ag, 7
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 16
  %i.al = getelementptr inbounds nuw i8, ptr %.161111, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.161111, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  %i.at = or disjoint i64 %i.as, %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0.i.ph = phi i64 [ %i.at, %bb.k ], [ 1, %bb.j ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.161111, i64 3 ; 2 uses
  %i.av = add i64 %.157113, -3                    ; 3 uses
  %i.aw = icmp ugt i64 %.0.i.ph, %i.av
  br i1 %i.aw, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i8 %i.ah, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %.thread
  ]

bb.n:                                             ; preds = %bb.m
  %i.ax = ptrtoint ptr %.058112 to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = tail call fastcc i64 @ZSTDv06_decompressBlock_internal(ptr noundef %0, ptr noundef %.058112, i64 noundef %i.ay, ptr noundef nonnull %i.au, i64 noundef %.0.i.ph)
  br label %ZSTDv06_copyRawBlock.exit

end_hunk_0
