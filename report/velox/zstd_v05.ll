Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v05?download=true
inline.NumInlined: 338
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
begin_hunk_0_@HUFv05_decompress4X4:bb.a
  %i.f = call i64 @HUFv05_decompress4X4_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.a ], [ -72, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @HUFv05_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = lshr i64 %1, 8
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %3, %1
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %3, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %2, align 1, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %i.e, i64 %1, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = shl i64 %3, 4
  %i.g = udiv i64 %i.f, %1
  %i.h = and i64 %i.g, 4294967295
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @algoTime, i64 %i.h ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !94
  %i.m = mul i32 %i.l, %i.b
  %i.n = add i32 %i.m, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !94
  %i.s = mul i32 %i.r, %i.b
  %i.t = add i32 %i.s, %i.p                       ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = add i32 %i.u, %i.t
  %i.w = icmp ult i32 %i.v, %i.n
  %spec.select = zext i1 %i.w to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @HUFv05_decompress.decompress, i64 %spec.select
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95
  %i.z = tail call i64 %i.y(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.025 = phi i64 [ %i.z, %bb.e ], [ -70, %bb.a ], [ %1, %bb.d ], [ -20, %bb.b ]
  ret i64 %.025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ZSTDv05_isError(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @ZSTDv05_getErrorName(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i64 %0, -119
  %i.b = trunc nsw i64 %0 to i32
  %i.c = sub i32 0, %i.b
  %.0.i.i = select i1 %i.a, i32 0, i32 %i.c
  %i.d = tail call ptr @ERR_getErrorString(i32 noundef %.0.i.i) #27
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZSTDv05_sizeofDCtx() local_unnamed_addr #7 {
bb.a:
  ret i64 157848
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @ZSTDv05_decompressBegin(ptr nofree noundef writeonly captures(none) initializes((10252, 10256), (26640, 26680), (26732, 26740)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26672
  store i64 5, ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26732
  store i32 0, ptr %i.b, align 4, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26640
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.d, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26736
  store i32 0, ptr %i.e, align 8, !tbaa !100
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @ZSTDv05_createDCtx() local_unnamed_addr #15 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(157848) ptr @malloc(i64 noundef 157848) #26 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 26672
  store i64 5, ptr %i.c, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 26732
  store i32 0, ptr %i.d, align 4, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 26640
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 10252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.f, align 4, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 26736
  store i32 0, ptr %i.g, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @ZSTDv05_freeDCtx(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @free(ptr noundef %0) #27
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ZSTDv05_copyDCtx(ptr nofree noundef writeonly captures(none) initializes((0, 26763)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26763) %0, ptr noundef nonnull align 8 dereferenceable(26763) %1, i64 26763, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -14, 6) i64 @ZSTDv05_getFrameParams(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp ult i64 %2, 5
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 1, !tbaa !20
  %.not = icmp eq i32 %.val, -47205083
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29
  %i.d = and i8 %i.c, 15
  %narrow = add nuw nsw i8 %i.d, 11
  %i.e = zext nneg i8 %narrow to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !101
  %i.g = load i8, ptr %i.b, align 1, !tbaa !29
  %.not7 = icmp ult i8 %i.g, 16
  %. = select i1 %.not7, i64 0, i64 -14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ -10, %bb.b ], [ 5, %bb.a ], [ %., %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv05_decompressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %.not.i = icmp eq ptr %1, %i.b
  br i1 %.not.i, label %ZSTDv05_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26664
  store ptr %i.b, ptr %i.c, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26648 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %i.h, ptr %i.i, align 8, !tbaa !105
  store ptr %1, ptr %i.d, align 8, !tbaa !104
  store ptr %1, ptr %i.a, align 8, !tbaa !102
  br label %ZSTDv05_checkContinuity.exit

ZSTDv05_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv05_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv05_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %5 = ptrtoaddr ptr %1 to i64
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca [128 x i16], align 16             ; 9 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = icmp ugt i64 %4, 131071
  br i1 %i.h, label %ZSTDv05_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %4, 3
  br i1 %i.i, label %ZSTDv05_decompressSequences.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %3, align 1, !tbaa !29
  %i.k = zext i8 %i.j to i32                      ; 16 uses
  %i.l = lshr i32 %i.k, 6
  switch i32 %i.l, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.l
    i32 2, label %bb.q
    i32 3, label %bb.y
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i64 %4, 5
  br i1 %i.m, label %ZSTDv05_decompressSequences.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = lshr i32 %i.k, 4
  %i.o = and i32 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = zext i8 %i.q to i32                      ; 4 uses
  switch i32 %i.o, label %bb.g [
    i32 3, label %bb.f
    i32 2, label %.thread.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw nsw i32 %i.k, 14
  %i.t = and i32 %i.s, 245760
  %i.u = shl nuw nsw i32 %i.r, 6
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = lshr i32 %i.y, 2
  %i.aa = or disjoint i32 %i.v, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.y, 16
  %i.ac = and i32 %i.ab, 196608
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = or disjoint i32 %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak
  %.0127.i = zext nneg i32 %i.al to i64           ; 2 uses
  %.0128.i = zext nneg i32 %i.aa to i64
  %i.am = icmp samesign ugt i32 %i.aa, 131072
  %i.an = add nuw nsw i64 %.0127.i, 5             ; 2 uses
  %i.ao = icmp samesign ugt i64 %i.an, %4
  %or.cond.i = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %or.cond.i, label %ZSTDv05_decompressSequences.exit, label %.thread161.i

bb.g:                                             ; preds = %bb.e
  %i.ap = shl nuw nsw i32 %i.k, 6
  %i.aq = and i32 %i.ap, 960
  %i.ar = lshr i32 %i.r, 2
  %i.as = or disjoint i32 %i.ar, %i.aq
  %i.at = shl nuw nsw i32 %i.r, 8
  %i.au = and i32 %i.at, 768
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  %.0127146.i = zext nneg i32 %i.ay to i64        ; 3 uses
  %.0128147.i = zext nneg i32 %i.as to i64        ; 3 uses
  %i.az = add nuw nsw i64 %.0127146.i, 3          ; 3 uses
  %i.ba = icmp samesign ugt i64 %i.az, %4
  br i1 %i.ba, label %ZSTDv05_decompressSequences.exit, label %bb.h

.thread.i:                                        ; preds = %bb.e
  %i.bb = shl nuw nsw i32 %i.k, 10
  %i.bc = and i32 %i.bb, 15360
  %i.bd = shl nuw nsw i32 %i.r, 2
  %i.be = or disjoint i32 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = lshr i32 %i.bh, 6
  %i.bj = or disjoint i32 %i.be, %i.bi
  %i.bk = shl nuw nsw i32 %i.bh, 8
  %i.bl = and i32 %i.bk, 16128
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !29
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo
  %.0127146188.i = zext nneg i32 %i.bp to i64     ; 2 uses
  %.0128147189.i = zext nneg i32 %i.bj to i64
  %i.bq = add nuw nsw i64 %.0127146188.i, 4       ; 2 uses
  %i.br = icmp samesign ugt i64 %i.bq, %4
  br i1 %i.br, label %ZSTDv05_decompressSequences.exit, label %.thread161.i

bb.h:                                             ; preds = %bb.g
  %i.bs = and i32 %i.k, 16
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.thread161.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 26760
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bw = tail call i64 @HUFv05_decompress1X2(ptr noundef nonnull %i.bu, i64 noundef %.0128147.i, ptr noundef nonnull %i.bv, i64 noundef %.0127146.i)
  br label %bb.j

.thread161.i:                                     ; preds = %bb.h, %.thread.i, %bb.f
  %.0128151157169.i = phi i64 [ %.0128147.i, %bb.h ], [ %.0128.i, %bb.f ], [ %.0128147189.i, %.thread.i ] ; 2 uses
  %.0127150158167.i = phi i64 [ %.0127146.i, %bb.h ], [ %.0127.i, %bb.f ], [ %.0127146188.i, %.thread.i ]
  %.0125149159166.i = phi i64 [ 3, %bb.h ], [ 5, %bb.f ], [ 4, %.thread.i ]
  %i.bx = phi i64 [ %i.az, %bb.h ], [ %i.an, %bb.f ], [ %i.bq, %.thread.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 26760
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %.0125149159166.i
  %i.ca = tail call i64 @HUFv05_decompress(ptr noundef nonnull %i.by, i64 noundef %.0128151157169.i, ptr noundef nonnull %i.bz, i64 noundef %.0127150158167.i)
  br label %bb.j

bb.j:                                             ; preds = %.thread161.i, %bb.i
  %.0128151157168.i = phi i64 [ %.0128147.i, %bb.i ], [ %.0128151157169.i, %.thread161.i ] ; 3 uses
  %i.cb = phi i64 [ %i.az, %bb.i ], [ %i.bx, %.thread161.i ]
  %i.cc = phi i64 [ %i.bw, %bb.i ], [ %i.ca, %.thread161.i ]
  %i.cd = icmp ult i64 %i.cc, -119
  br i1 %i.cd, label %bb.k, label %ZSTDv05_decompressSequences.exit

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 26760 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !106
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0128151157168.i, ptr %i.cg, align 8, !tbaa !107
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.0128151157168.i
  store i64 0, ptr %i.ch, align 1
  br label %bb.ac

bb.l:                                             ; preds = %bb.c
  %i.ci = and i32 %i.k, 48
  %.not.i = icmp eq i32 %i.ci, 16
  br i1 %.not.i, label %bb.m, label %ZSTDv05_decompressSequences.exit

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 26736
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !100
  %.not138.i = icmp eq i32 %i.ck, 0
  br i1 %.not138.i, label %ZSTDv05_decompressSequences.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = shl nuw nsw i32 %i.k, 6
  %i.cm = and i32 %i.cl, 960
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !29
  %i.cp = zext i8 %i.co to i32                    ; 2 uses
  %i.cq = lshr i32 %i.cp, 2
  %i.cr = or disjoint i32 %i.cq, %i.cm
  %i.cs = zext nneg i32 %i.cr to i64              ; 4 uses
  %i.ct = shl nuw nsw i32 %i.cp, 8
  %i.cu = and i32 %i.ct, 768
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !29
  %i.cx = zext i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cu, %i.cx
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, 3                ; 2 uses
  %i.db = icmp samesign ugt i64 %i.da, %4
  br i1 %i.db, label %ZSTDv05_decompressSequences.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 26760 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 10252
  %i.df = tail call i64 @HUFv05_decompress1X4_usingDTable(ptr noundef nonnull %i.dc, i64 noundef %i.cs, ptr noundef nonnull %i.dd, i64 noundef %i.cz, ptr noundef nonnull %i.de)
  %i.dg = icmp ult i64 %i.df, -119
  br i1 %i.dg, label %bb.p, label %ZSTDv05_decompressSequences.exit

bb.p:                                             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.dc, ptr %i.dh, align 8, !tbaa !106
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %i.cs, ptr %i.di, align 8, !tbaa !107
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cs
  store i64 0, ptr %i.dj, align 1
  br label %bb.ac

bb.q:                                             ; preds = %bb.c
  %i.dk = lshr i32 %i.k, 4
  %i.dl = and i32 %i.dk, 3
  switch i32 %i.dl, label %bb.r [
    i32 3, label %bb.t
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.dm = and i32 %i.k, 31
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.dn = shl nuw nsw i32 %i.k, 8
  %i.do = and i32 %i.dn, 3840
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !29
  %i.dr = zext i8 %i.dq to i32
  %i.ds = or disjoint i32 %i.do, %i.dr
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.dt = shl nuw nsw i32 %i.k, 16
  %i.du = and i32 %i.dt, 983040
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !29
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 8
  %i.dz = or disjoint i32 %i.dy, %i.du
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !29
  %i.ec = zext i8 %i.eb to i32
  %i.ed = or disjoint i32 %i.dz, %i.ec
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0124.in.i = phi i32 [ %i.dm, %bb.r ], [ %i.ed, %bb.t ], [ %i.ds, %bb.s ]
  %.0123.i = phi i64 [ 1, %bb.r ], [ 3, %bb.t ], [ 2, %bb.s ] ; 3 uses
  %.0124.i = zext nneg i32 %.0124.in.i to i64     ; 7 uses
  %i.ee = add nuw nsw i64 %.0123.i, %.0124.i      ; 4 uses
  %i.ef = add nuw nsw i64 %i.ee, 8
  %i.eg = icmp samesign ugt i64 %i.ef, %4
  br i1 %i.eg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.eh = icmp samesign ugt i64 %i.ee, %4
  br i1 %i.eh, label %ZSTDv05_decompressSequences.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 26760 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 %.0123.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 1 %i.ej, i64 %.0124.i, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.ei, ptr %i.ek, align 8, !tbaa !106
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0124.i, ptr %i.el, align 8, !tbaa !107
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.0124.i
  store i64 0, ptr %i.em, align 1
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 %.0123.i ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !106
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0124.i, ptr %i.ep, align 8, !tbaa !107
  br label %bb.ac

bb.y:                                             ; preds = %bb.c
  %i.eq = lshr i32 %i.k, 4
  %i.er = and i32 %i.eq, 3
  switch i32 %i.er, label %bb.z [
    i32 3, label %bb.ab
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.es = and i32 %i.k, 31
  br label %.thread171.i

bb.aa:                                            ; preds = %bb.y
  %i.et = shl nuw nsw i32 %i.k, 8
  %i.eu = and i32 %i.et, 3840
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !29
  %i.ex = zext i8 %i.ew to i32
  %i.ey = or disjoint i32 %i.eu, %i.ex
  br label %.thread171.i

bb.ab:                                            ; preds = %bb.y
  %i.ez = shl nuw nsw i32 %i.k, 16
  %i.fa = and i32 %i.ez, 983040
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !29
  %i.fd = zext i8 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 8
  %i.ff = or disjoint i32 %i.fe, %i.fa
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !29
  %i.fi = zext i8 %i.fh to i32
  %i.fj = or disjoint i32 %i.ff, %i.fi            ; 2 uses
  %i.fk = icmp eq i64 %4, 3
  %i.fl = icmp samesign ugt i32 %i.fj, 131072
  %or.cond177.i = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %or.cond177.i, label %ZSTDv05_decompressSequences.exit, label %.thread171.i

.thread171.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z
  %.0175.i = phi i32 [ 3, %bb.ab ], [ 2, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %.0122.in174.i = phi i32 [ %i.fj, %bb.ab ], [ %i.ey, %bb.aa ], [ %i.es, %bb.z ]
  %.0122.i = zext nneg i32 %.0122.in174.i to i64  ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 26760 ; 3 uses
  %i.fn = zext nneg i32 %.0175.i to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !29
  %i.fq = add nuw nsw i64 %.0122.i, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fm, i8 %i.fp, i64 %i.fq, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.fm, ptr %i.fr, align 8, !tbaa !106
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0122.i, ptr %i.fs, align 8, !tbaa !107
  %i.ft = add nuw nsw i32 %.0175.i, 1
  %i.fu = zext nneg i32 %i.ft to i64
  br label %bb.ac

default.unreachable:                              ; preds = %FSEv05_buildDTable_raw.exit123.i.i, %FSEv05_buildDTable_raw.exit.i.i, %bb.ao, %bb.c
  unreachable

bb.ac:                                            ; preds = %.thread171.i, %bb.x, %bb.w, %bb.p, %bb.k
  %i.fv = phi i64 [ %.0124.i, %bb.w ], [ %.0122.i, %.thread171.i ], [ %i.cs, %bb.p ], [ %.0124.i, %bb.x ], [ %.0128151157168.i, %bb.k ]
  %i.fw = phi ptr [ %i.ei, %bb.w ], [ %i.fm, %.thread171.i ], [ %i.dc, %bb.p ], [ %i.en, %bb.x ], [ %i.ce, %bb.k ] ; 4 uses
  %.4.i = phi i64 [ %i.ee, %bb.w ], [ %i.fu, %.thread171.i ], [ %i.da, %bb.p ], [ %i.ee, %bb.x ], [ %i.cb, %bb.k ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 %.4.i ; 5 uses
  %i.fy = sub nsw i64 %4, %.4.i                   ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 4100 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 26648
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !104 ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 26656
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !105
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 26664
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !103
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 26736
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !100 ; 3 uses
  %i.gl = getelementptr i8, ptr %3, i64 %4        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.gm = icmp eq i64 %4, %.4.i
  br i1 %i.gm, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  %i.go = load i8, ptr %i.fx, align 1, !tbaa !29  ; 3 uses
  %i.gp = zext i8 %i.go to i32                    ; 2 uses
  %i.gq = icmp eq i8 %i.go, 0
  br i1 %i.gq, label %.thread.i18, label %bb.ae

.thread.i18:                                      ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %i.gr = icmp slt i8 %i.go, 0
  br i1 %i.gr, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not.not.i.i = icmp eq i64 %i.fy, 1
  br i1 %.not.not.i.i, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gs = shl nuw nsw i32 %i.gp, 8
  %i.gt = add nsw i32 %i.gs, -32768
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.gv = load i8, ptr %i.gn, align 1, !tbaa !29
  %i.gw = zext i8 %i.gv to i32
  %i.gx = or disjoint i32 %i.gt, %i.gw
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.1.i = phi i32 [ %i.gx, %bb.ag ], [ %i.gp, %bb.ae ] ; 2 uses
  %.090.i.i = phi ptr [ %i.gu, %bb.ag ], [ %i.gn, %bb.ae ] ; 7 uses
  %.not.i.i = icmp ult ptr %.090.i.i, %i.gl
  br i1 %.not.i.i, label %bb.ai, label %ZSTDv05_decodeSeqHeaders.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.gy = load i8, ptr %.090.i.i, align 1, !tbaa !29
  %i.gz = zext i8 %i.gy to i32                    ; 5 uses
  %i.ha = lshr i32 %i.gz, 6
  %i.hb = lshr i32 %i.gz, 4
  %i.hc = and i32 %i.hb, 3
  %i.hd = lshr i32 %i.gz, 2
  %i.he = and i32 %i.hd, 3
  %i.hf = and i32 %i.gz, 2
  %.not111.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not111.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 3 ; 2 uses
  %i.hh = icmp ugt ptr %i.hg, %i.gl
  br i1 %i.hh, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hi = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 2
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !29
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !29
  %i.hn = zext i8 %i.hm to i64
  %i.ho = shl nuw nsw i64 %i.hn, 8
  %i.hp = or disjoint i64 %i.ho, %i.hk
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.hq = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 2 ; 2 uses
  %i.hr = icmp ugt ptr %i.hq, %i.gl
  br i1 %i.hr, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hs = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !29
  %i.hu = shl nuw nsw i32 %i.gz, 8
  %i.hv = and i32 %i.hu, 256
  %i.hw = zext i8 %i.ht to i32
  %i.hx = or disjoint i32 %i.hv, %i.hw
  %i.hy = zext nneg i32 %i.hx to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.191.i.i = phi ptr [ %i.hg, %bb.ak ], [ %i.hq, %bb.am ] ; 2 uses
  %.089.i.i = phi i64 [ %i.hp, %bb.ak ], [ %i.hy, %bb.am ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.191.i.i, i64 %.089.i.i ; 16 uses
  %i.ia = getelementptr inbounds i8, ptr %i.gl, i64 -3
  %i.ib = icmp ugt ptr %i.hz, %i.ia
  br i1 %i.ib, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  switch i32 %i.ha, label %default.unreachable [
    i32 1, label %bb.ap
    i32 0, label %bb.aq
    i32 2, label %bb.as
    i32 3, label %bb.at
  ]

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  %i.id = load i8, ptr %i.hz, align 1, !tbaa !29
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 8, !tbaa !25
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.if, align 2, !tbaa !27
  store i16 0, ptr %i.ie, align 4, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.id, ptr %i.ig, align 2, !tbaa !10
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.ih, align 1, !tbaa !17
  br label %FSEv05_buildDTable_raw.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  store i32 6, ptr %i.a, align 4, !tbaa !20
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i16 6, ptr %0, align 8, !tbaa !25
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1, ptr %i.ij, align 2, !tbaa !27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv.i.i = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next.i.i.3, %bb.ar ] ; 6 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i.i ; 3 uses
  store i16 0, ptr %i.ik, align 2, !tbaa !18
  %i.il = trunc i64 %indvars.iv.i.i to i8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  store i8 %i.il, ptr %i.im, align 2, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 3
  store i8 6, ptr %i.in, align 1, !tbaa !17
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i.i ; 3 uses
  store i16 0, ptr %i.io, align 2, !tbaa !18
  %i.ip = trunc i64 %indvars.iv.next.i.i to i8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  store i8 %i.ip, ptr %i.iq, align 2, !tbaa !10
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 3
  store i8 6, ptr %i.ir, align 1, !tbaa !17
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i.i.1 ; 3 uses
  store i16 0, ptr %i.is, align 2, !tbaa !18
  %i.it = trunc i64 %indvars.iv.next.i.i.1 to i8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  store i8 %i.it, ptr %i.iu, align 2, !tbaa !10
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 3
  store i8 6, ptr %i.iv, align 1, !tbaa !17
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i.i.2 ; 3 uses
  store i16 0, ptr %i.iw, align 2, !tbaa !18
  %i.ix = trunc i64 %indvars.iv.next.i.i.2 to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  store i8 %i.ix, ptr %i.iy, align 2, !tbaa !10
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  store i8 6, ptr %i.iz, align 1, !tbaa !17
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 64
  br i1 %exitcond.not.i.i.3, label %FSEv05_buildDTable_raw.exit.i.i, label %bb.ar, !llvm.loop !28

bb.as:                                            ; preds = %bb.ao
  %.not112.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not112.i.i, label %.thread142.i.i, label %FSEv05_buildDTable_raw.exit.i.i

bb.at:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i32 63, ptr %i.e, align 4, !tbaa !20
  %i.ja = ptrtoint ptr %i.gl to i64
  %i.jb = ptrtoint ptr %i.hz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = call i64 @FSEv05_readNCount(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hz, i64 noundef %i.jc) ; 2 uses
  %i.je = icmp ult i64 %i.jd, -119
  br i1 %i.je, label %bb.au, label %.thread.i.i

bb.au:                                            ; preds = %bb.at
  %i.jf = load i32, ptr %i.a, align 4, !tbaa !20  ; 2 uses
  %i.jg = icmp ugt i32 %i.jf, 10
  br i1 %i.jg, label %.thread.i.i, label %bb.av

.thread.i.i:                                      ; preds = %bb.au, %bb.at
  %.094.ph.i.i = phi i64 [ -20, %bb.au ], [ -1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.thread142.i.i

bb.av:                                            ; preds = %bb.au
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.jd
end_hunk_0
begin_hunk_1_@ZSTDv05_decompressBlock_internal:bb.a

bb.bv:                                            ; preds = %bb.bu, %bb.bo
  %.sroa.0.1.i = phi i64 [ %i.pr, %bb.bo ], [ %i.ra, %bb.bu ]
  %i.rb = getelementptr i8, ptr %i.gl, i64 -1
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !29  ; 2 uses
  %i.rd = icmp eq i8 %i.rc, 0
  br i1 %i.rd, label %ZSTDv05_decompressSequences.exit, label %BITv05_initDStream.exit.thread163.i

BITv05_initDStream.exit.thread163.i:              ; preds = %bb.bv
  %i.re = zext i8 %i.rc to i32
  %i.rf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.re, i1 true)
  %i.rg = trunc nuw nsw i64 %gepdiff.i to i32
  %i.rh = shl nuw nsw i32 %i.rg, 3
  %reass.sub = sub nsw i32 %i.rf, %i.rh
  %i.ri = add nsw i32 %reass.sub, 41
  br label %bb.bw

BITv05_initDStream.exit.i:                        ; preds = %bb.bn
  %i.rj = getelementptr inbounds i8, ptr %i.gl, i64 -8 ; 2 uses
  %.val.i.i = load i64, ptr %i.rj, align 1, !tbaa !30
  %i.rk = zext i8 %i.po to i32
  %i.rl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.rk, i1 true)
  %i.rm = xor i32 %i.rl, 31
  %i.rn = sub nuw nsw i32 8, %i.rm
  %i.ro = icmp ult i64 %gepdiff.i, -119
  br i1 %i.ro, label %bb.bw, label %ZSTDv05_decompressSequences.exit

bb.bw:                                            ; preds = %BITv05_initDStream.exit.i, %BITv05_initDStream.exit.thread163.i
  %.sroa.42110.1172.i = phi ptr [ %i.pk, %BITv05_initDStream.exit.thread163.i ], [ %i.rj, %BITv05_initDStream.exit.i ] ; 6 uses
  %.sroa.20.1171.i = phi i32 [ %i.ri, %BITv05_initDStream.exit.thread163.i ], [ %i.rn, %BITv05_initDStream.exit.i ] ; 2 uses
  %.sroa.0.2170.i = phi i64 [ %.sroa.0.1.i, %BITv05_initDStream.exit.thread163.i ], [ %.val.i.i, %BITv05_initDStream.exit.i ] ; 3 uses
  %i.rp = load i16, ptr %0, align 8, !tbaa !25
  %i.rq = zext i16 %i.rp to i32                   ; 2 uses
  %i.rr = and i32 %.sroa.20.1171.i, 63
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = shl i64 %.sroa.0.2170.i, %i.rs
  %i.ru = lshr i64 %i.rt, 1
  %i.rv = and i32 %i.rq, 63
  %i.rw = xor i32 %i.rv, 63
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = lshr i64 %i.ru, %i.rx
  %i.rz = add nuw nsw i32 %.sroa.20.1171.i, %i.rq ; 7 uses
  %i.sa = icmp samesign ugt i32 %i.rz, 64
  br i1 %i.sa, label %FSEv05_initDState.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sb = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %.not.i.i.i = icmp ult ptr %.sroa.42110.1172.i, %i.sb
  br i1 %.not.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sc = lshr i32 %i.rz, 3
  %i.sd = and i32 %i.rz, 7
  br label %BITv05_reloadDStream.exit.sink.split.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.se = icmp eq ptr %.sroa.42110.1172.i, %.8.i.i
  br i1 %i.se, label %FSEv05_initDState.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sf = lshr i32 %i.rz, 3                       ; 2 uses
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = sub nsw i64 0, %i.sg
  %i.si = getelementptr inbounds i8, ptr %.sroa.42110.1172.i, i64 %i.sh
  %i.sj = icmp ult ptr %i.si, %.8.i.i
  %i.sk = ptrtoint ptr %.sroa.42110.1172.i to i64
  %i.sl = sub i64 %i.sk, %i.pg
  %i.sm = trunc i64 %i.sl to i32
  %.024.i.i.i = select i1 %i.sj, i32 %i.sm, i32 %i.sf ; 2 uses
  %i.sn = shl i32 %.024.i.i.i, 3
  %i.so = sub i32 %i.rz, %i.sn
  br label %BITv05_reloadDStream.exit.sink.split.i.i

BITv05_reloadDStream.exit.sink.split.i.i:         ; preds = %bb.ca, %bb.by
  %.sroa.20.2.i = phi i32 [ %i.so, %bb.ca ], [ %i.sd, %bb.by ]
  %.pn194.in.i = phi i32 [ %.024.i.i.i, %bb.ca ], [ %i.sc, %bb.by ]
  %.pn194.i = zext i32 %.pn194.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn194.i
  %.sroa.42110.2.i = getelementptr inbounds i8, ptr %.sroa.42110.1172.i, i64 %.pn.i ; 2 uses
  %.val30.i.sink.i.i = load i64, ptr %.sroa.42110.2.i, align 1, !tbaa !30
  br label %FSEv05_initDState.exit.i

FSEv05_initDState.exit.i:                         ; preds = %BITv05_reloadDStream.exit.sink.split.i.i, %bb.bz, %bb.bw
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2170.i, %bb.bw ], [ %.sroa.0.2170.i, %bb.bz ], [ %.val30.i.sink.i.i, %BITv05_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %.sroa.20.3.i = phi i32 [ %i.rz, %bb.bw ], [ %i.rz, %bb.bz ], [ %.sroa.20.2.i, %BITv05_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.sroa.42110.3.i = phi ptr [ %.sroa.42110.1172.i, %bb.bw ], [ %.8.i.i, %bb.bz ], [ %.sroa.42110.2.i, %BITv05_reloadDStream.exit.sink.split.i.i ] ; 7 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.sq = load i16, ptr %i.gc, align 4, !tbaa !25
  %i.sr = zext i16 %i.sq to i32                   ; 2 uses
  %i.ss = and i32 %.sroa.20.3.i, 63
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = shl i64 %.sroa.0.3.i, %i.st
  %i.sv = lshr i64 %i.su, 1
  %i.sw = and i32 %i.sr, 63
  %i.sx = xor i32 %i.sw, 63
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = lshr i64 %i.sv, %i.sy
  %i.ta = add i32 %.sroa.20.3.i, %i.sr            ; 7 uses
  %i.tb = icmp ugt i32 %i.ta, 64
  br i1 %i.tb, label %FSEv05_initDState.exit84.i, label %bb.cb

bb.cb:                                            ; preds = %FSEv05_initDState.exit.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %.not.i.i79.i = icmp ult ptr %.sroa.42110.3.i, %i.tc
  br i1 %.not.i.i79.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.td = lshr i32 %i.ta, 3
  %i.te = and i32 %i.ta, 7
  br label %BITv05_reloadDStream.exit.sink.split.i80.i

bb.cd:                                            ; preds = %bb.cb
  %i.tf = icmp eq ptr %.sroa.42110.3.i, %.8.i.i
  br i1 %i.tf, label %FSEv05_initDState.exit84.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.tg = lshr i32 %i.ta, 3                       ; 2 uses
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = sub nsw i64 0, %i.th
  %i.tj = getelementptr inbounds i8, ptr %.sroa.42110.3.i, i64 %i.ti
  %i.tk = icmp ult ptr %i.tj, %.8.i.i
  %i.tl = ptrtoint ptr %.sroa.42110.3.i to i64
  %i.tm = sub i64 %i.tl, %i.pg
  %i.tn = trunc i64 %i.tm to i32
  %.024.i.i83.i = select i1 %i.tk, i32 %i.tn, i32 %i.tg ; 2 uses
  %i.to = shl i32 %.024.i.i83.i, 3
  %i.tp = sub i32 %i.ta, %i.to
  br label %BITv05_reloadDStream.exit.sink.split.i80.i

BITv05_reloadDStream.exit.sink.split.i80.i:       ; preds = %bb.ce, %bb.cc
  %.sroa.20.4.i = phi i32 [ %i.tp, %bb.ce ], [ %i.te, %bb.cc ]
  %.pn196.in.i = phi i32 [ %.024.i.i83.i, %bb.ce ], [ %i.td, %bb.cc ]
  %.pn196.i = zext i32 %.pn196.in.i to i64
  %.pn195.i = sub nsw i64 0, %.pn196.i
  %.sroa.42110.4.i = getelementptr inbounds i8, ptr %.sroa.42110.3.i, i64 %.pn195.i ; 2 uses
  %.val30.i.sink.i82.i = load i64, ptr %.sroa.42110.4.i, align 1, !tbaa !30
  br label %FSEv05_initDState.exit84.i

FSEv05_initDState.exit84.i:                       ; preds = %BITv05_reloadDStream.exit.sink.split.i80.i, %bb.cd, %FSEv05_initDState.exit.i
  %.sroa.0.4.i = phi i64 [ %.sroa.0.3.i, %FSEv05_initDState.exit.i ], [ %.sroa.0.3.i, %bb.cd ], [ %.val30.i.sink.i82.i, %BITv05_reloadDStream.exit.sink.split.i80.i ] ; 2 uses
  %.sroa.20.5.i = phi i32 [ %i.ta, %FSEv05_initDState.exit.i ], [ %i.ta, %bb.cd ], [ %.sroa.20.4.i, %BITv05_reloadDStream.exit.sink.split.i80.i ] ; 2 uses
  %.sroa.42110.5.i = phi ptr [ %.sroa.42110.3.i, %FSEv05_initDState.exit.i ], [ %.sroa.42110.3.i, %bb.cd ], [ %.sroa.42110.4.i, %BITv05_reloadDStream.exit.sink.split.i80.i ] ; 7 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.tr = load i16, ptr %i.gb, align 8, !tbaa !25
  %i.ts = zext i16 %i.tr to i32                   ; 2 uses
  %i.tt = and i32 %.sroa.20.5.i, 63
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = shl i64 %.sroa.0.4.i, %i.tu
  %i.tw = lshr i64 %i.tv, 1
  %i.tx = and i32 %i.ts, 63
  %i.ty = xor i32 %i.tx, 63
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = lshr i64 %i.tw, %i.tz
  %i.ub = add i32 %.sroa.20.5.i, %i.ts            ; 6 uses
  %i.uc = icmp ugt i32 %i.ub, 64
  br i1 %i.uc, label %ZSTDv05_decompressSequences.exit, label %bb.cf

bb.cf:                                            ; preds = %FSEv05_initDState.exit84.i
  %i.ud = getelementptr inbounds nuw i8, ptr %i.pk, i64 8 ; 2 uses
  %.not.i.i87.i = icmp ult ptr %.sroa.42110.5.i, %i.ud
  br i1 %.not.i.i87.i, label %bb.cg, label %FSEv05_initDState.exit92.thread277.i

FSEv05_initDState.exit92.thread277.i:             ; preds = %bb.cf
  %i.ue = lshr i32 %i.ub, 3
  %i.uf = and i32 %i.ub, 7
  %.pn198280.i = zext nneg i32 %i.ue to i64
  %.pn197281.i = sub nsw i64 0, %.pn198280.i
  %.sroa.42110.6282.i = getelementptr inbounds i8, ptr %.sroa.42110.5.i, i64 %.pn197281.i ; 2 uses
  %.val30.i.sink.i90283.i = load i64, ptr %.sroa.42110.6282.i, align 1, !tbaa !30
  br label %.lr.ph.i

bb.cg:                                            ; preds = %bb.cf
  %i.ug = icmp eq ptr %.sroa.42110.5.i, %.8.i.i
  br i1 %i.ug, label %.lr.ph.i, label %FSEv05_initDState.exit92.i

FSEv05_initDState.exit92.i:                       ; preds = %bb.cg
  %i.uh = lshr i32 %i.ub, 3                       ; 2 uses
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = sub nsw i64 0, %i.ui
  %i.uk = getelementptr inbounds i8, ptr %.sroa.42110.5.i, i64 %i.uj
  %i.ul = icmp ult ptr %i.uk, %.8.i.i
  %i.um = ptrtoint ptr %.sroa.42110.5.i to i64
  %i.un = sub i64 %i.um, %i.pg
  %i.uo = trunc i64 %i.un to i32
  %.024.i.i91.i = select i1 %i.ul, i32 %i.uo, i32 %i.uh ; 2 uses
  %i.up = shl i32 %.024.i.i91.i, 3
  %i.uq = sub i32 %i.ub, %i.up                    ; 2 uses
  %.pn198.i = zext i32 %.024.i.i91.i to i64
  %.pn197.i = sub nsw i64 0, %.pn198.i
  %.sroa.42110.6.i = getelementptr inbounds i8, ptr %.sroa.42110.5.i, i64 %.pn197.i ; 2 uses
  %.val30.i.sink.i90.i = load i64, ptr %.sroa.42110.6.i, align 1, !tbaa !30
  %i.ur = icmp ugt i32 %i.uq, 64
  br i1 %i.ur, label %ZSTDv05_decompressSequences.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cg, %FSEv05_initDState.exit92.i, %FSEv05_initDState.exit92.thread277.i
  %.sroa.42110.7276.i = phi ptr [ %.sroa.42110.6282.i, %FSEv05_initDState.exit92.thread277.i ], [ %.sroa.42110.6.i, %FSEv05_initDState.exit92.i ], [ %.sroa.42110.5.i, %bb.cg ]
  %.sroa.20.7275.i = phi i32 [ %i.uf, %FSEv05_initDState.exit92.thread277.i ], [ %i.uq, %FSEv05_initDState.exit92.i ], [ %i.ub, %bb.cg ]
  %.sroa.0.5274.i = phi i64 [ %.val30.i.sink.i90283.i, %FSEv05_initDState.exit92.thread277.i ], [ %.val30.i.sink.i90.i, %FSEv05_initDState.exit92.i ], [ %.sroa.0.4.i, %bb.cg ]
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 6156
  %i.ut = getelementptr inbounds i8, ptr %i.hz, i64 -1 ; 2 uses
  %i.uu = getelementptr inbounds i8, ptr %i.fz, i64 -8 ; 6 uses
  %i.uv = ptrtoint ptr %i.fz to i64
  %i.uw = ptrtoint ptr %i.ga to i64
  %i.ux = ptrtoint ptr %i.ge to i64               ; 13 uses
  %i.uy = ptrtoint ptr %i.gg to i64
  %i.uz = getelementptr inbounds i8, ptr %i.fz, i64 -12
  %i.va = ptrtoint ptr %i.uu to i64
  %6 = add i64 %2, %5
  %7 = add i64 %6, -8                             ; 3 uses
  %i.vb = add i64 %i.ux, 8
  %i.vc = add i64 %i.ux, 8
  %i.vd = add i64 %i.ux, 1
  %invariant.op = add i64 %i.ux, 16
  %invariant.op236 = add i64 %i.ux, 16
  br label %bb.ch

BITv05_reloadDStream.exit.thread.i:               ; preds = %ZSTDv05_execSequence.exit.i
  %i.ve = icmp eq i32 %i.vy, 0
  br i1 %i.ve, label %.critedge.i, label %ZSTDv05_decompressSequences.exit

bb.ch:                                            ; preds = %ZSTDv05_execSequence.exit.i, %.lr.ph.i
  %.059218.i = phi ptr [ %1, %.lr.ph.i ], [ %i.zn, %ZSTDv05_execSequence.exit.i ] ; 7 uses
  %.sroa.61.0217.i = phi i64 [ %i.ry, %.lr.ph.i ], [ %i.xw, %ZSTDv05_execSequence.exit.i ]
  %.sroa.66.0216.i = phi i64 [ %i.sz, %.lr.ph.i ], [ %i.xk, %ZSTDv05_execSequence.exit.i ]
  %.sroa.71.0215.i = phi i64 [ %i.ua, %.lr.ph.i ], [ %i.yj, %ZSTDv05_execSequence.exit.i ]
  %.sroa.79.0214.i = phi ptr [ %.191.i.i, %.lr.ph.i ], [ %.8.i98.i, %ZSTDv05_execSequence.exit.i ] ; 5 uses
  %.sroa.76.0213.i = phi i64 [ 1, %.lr.ph.i ], [ %spec.select.i, %ZSTDv05_execSequence.exit.i ] ; 2 uses
  %.sroa.42110.0212.i = phi ptr [ %.sroa.42110.7276.i, %.lr.ph.i ], [ %.sroa.42110.8.i, %ZSTDv05_execSequence.exit.i ] ; 7 uses
  %.sroa.20.0211.i = phi i32 [ %.sroa.20.7275.i, %.lr.ph.i ], [ %i.yh, %ZSTDv05_execSequence.exit.i ] ; 5 uses
  %.sroa.0.0210.i = phi i64 [ %.sroa.0.5274.i, %.lr.ph.i ], [ %.sroa.0.6.i, %ZSTDv05_execSequence.exit.i ]
  %.sroa.6.0209.i = phi i64 [ 1, %.lr.ph.i ], [ %.077.i.i, %ZSTDv05_execSequence.exit.i ] ; 2 uses
  %.0131208.i = phi i32 [ %.1.i, %.lr.ph.i ], [ %i.vy, %ZSTDv05_execSequence.exit.i ] ; 2 uses
  %.0132207.i = phi ptr [ %i.fw, %.lr.ph.i ], [ %i.zo, %ZSTDv05_execSequence.exit.i ] ; 6 uses
  %.not.i93.i = icmp ult ptr %.sroa.42110.0212.i, %i.ud
  br i1 %.not.i93.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vf = lshr i32 %.sroa.20.0211.i, 3
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = sub nsw i64 0, %i.vg
  %i.vi = getelementptr inbounds i8, ptr %.sroa.42110.0212.i, i64 %i.vh ; 2 uses
  %i.vj = and i32 %.sroa.20.0211.i, 7
  %.val30.i.i = load i64, ptr %i.vi, align 1, !tbaa !30
  br label %BITv05_reloadDStream.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.vk = icmp eq ptr %.sroa.42110.0212.i, %.8.i.i
  br i1 %i.vk, label %BITv05_reloadDStream.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vl = lshr i32 %.sroa.20.0211.i, 3            ; 2 uses
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = sub nsw i64 0, %i.vm
  %i.vo = getelementptr inbounds i8, ptr %.sroa.42110.0212.i, i64 %i.vn
  %i.vp = icmp ult ptr %i.vo, %.8.i.i
  %i.vq = ptrtoint ptr %.sroa.42110.0212.i to i64
  %i.vr = sub i64 %i.vq, %i.pg
  %i.vs = trunc i64 %i.vr to i32
  %.024.i.i = select i1 %i.vp, i32 %i.vs, i32 %i.vl ; 2 uses
  %i.vt = zext i32 %.024.i.i to i64
  %i.vu = sub nsw i64 0, %i.vt
  %i.vv = getelementptr inbounds i8, ptr %.sroa.42110.0212.i, i64 %i.vu ; 2 uses
  %i.vw = shl i32 %.024.i.i, 3
  %i.vx = sub i32 %.sroa.20.0211.i, %i.vw
  %.val.i94.i = load i64, ptr %i.vv, align 1, !tbaa !30
  br label %BITv05_reloadDStream.exit.i

BITv05_reloadDStream.exit.i:                      ; preds = %bb.ck, %bb.cj, %bb.ci
  %.sroa.0.6.i = phi i64 [ %.val30.i.i, %bb.ci ], [ %.val.i94.i, %bb.ck ], [ %.sroa.0.0210.i, %bb.cj ] ; 5 uses
  %.sroa.20.8.i = phi i32 [ %i.vj, %bb.ci ], [ %i.vx, %bb.ck ], [ %.sroa.20.0211.i, %bb.cj ] ; 2 uses
  %.sroa.42110.8.i = phi ptr [ %i.vi, %bb.ci ], [ %i.vv, %bb.ck ], [ %.sroa.42110.0212.i, %bb.cj ]
  %.not.i17 = icmp eq i32 %.0131208.i, 0
  br i1 %.not.i17, label %.critedge.i, label %bb.cl

bb.cl:                                            ; preds = %BITv05_reloadDStream.exit.i
  %i.vy = add nsw i32 %.0131208.i, -1             ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %.sroa.61.0217.i ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vz, i64 2
  %.sroa.3.0.copyload.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i, align 2, !tbaa !29 ; 3 uses
  %i.wa = zext i8 %.sroa.3.0.copyload.i.i.i to i64
  %.not.i95.i = icmp eq i8 %.sroa.3.0.copyload.i.i.i, 0
  %.sroa.speculated.i = select i1 %.not.i95.i, i64 %.sroa.76.0213.i, i64 %.sroa.6.0209.i
  %i.wb = icmp eq i8 %.sroa.3.0.copyload.i.i.i, 63
  br i1 %i.wb, label %bb.cm, label %bb.ct

bb.cm:                                            ; preds = %bb.cl
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.79.0214.i, i64 1 ; 3 uses
  %i.wd = load i8, ptr %.sroa.79.0214.i, align 1, !tbaa !29 ; 2 uses
  %.not93.i.i = icmp eq i8 %i.wd, -1
  br i1 %.not93.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.we = zext i8 %i.wd to i64
  %i.wf = add nuw nsw i64 %i.we, 63
  br label %bb.cs

bb.co:                                            ; preds = %bb.cm
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.79.0214.i, i64 3 ; 4 uses
  %.not94.i.i = icmp ugt ptr %i.wg, %i.hz
  br i1 %.not94.i.i, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.val.i101.i = load i16, ptr %i.wc, align 1, !tbaa !8 ; 2 uses
  %i.wh = zext i16 %.val.i101.i to i64            ; 2 uses
  %.not95.i.i = trunc i16 %.val.i101.i to i1
  %i.wi = icmp ult ptr %i.wg, %i.hz
  %or.cond.i.i = and i1 %i.wi, %.not95.i.i
  br i1 %or.cond.i.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.wj = load i8, ptr %i.wg, align 1, !tbaa !29
  %i.wk = zext i8 %i.wj to i64
  %i.wl = shl nuw nsw i64 %i.wk, 16
  %i.wm = or disjoint i64 %i.wl, %i.wh
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.79.0214.i, i64 4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.078.i.i = phi i64 [ %i.wm, %bb.cq ], [ %i.wh, %bb.cp ]
  %.0.i102.i = phi ptr [ %i.wn, %bb.cq ], [ %i.wg, %bb.cp ]
  %i.wo = lshr i64 %.078.i.i, 1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co, %bb.cn
  %.179.i.i = phi i64 [ %i.wf, %bb.cn ], [ %i.wo, %bb.cr ], [ 63, %bb.co ]
  %.1.i.i = phi ptr [ %i.wc, %bb.cn ], [ %.0.i102.i, %bb.cr ], [ %i.wc, %bb.co ] ; 2 uses
  %.not96.i.i = icmp ult ptr %.1.i.i, %i.hz
  %spec.select.i.i = select i1 %.not96.i.i, ptr %.1.i.i, ptr %i.ut
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cl
  %.280.i.i = phi i64 [ %.179.i.i, %bb.cs ], [ %i.wa, %bb.cl ] ; 8 uses
  %.3.i.i = phi ptr [ %spec.select.i.i, %bb.cs ], [ %.sroa.79.0214.i, %bb.cl ] ; 7 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %.sroa.66.0216.i ; 3 uses
  %.sroa.3.0..sroa_idx.i109.i.i = getelementptr inbounds nuw i8, ptr %i.wp, i64 2
  %.sroa.3.0.copyload.i110.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i109.i.i, align 2, !tbaa !29 ; 3 uses
  %i.wq = zext i8 %.sroa.3.0.copyload.i110.i.i to i32 ; 2 uses
  %i.wr = add nsw i32 %i.wq, -1
  %i.ws = icmp eq i8 %.sroa.3.0.copyload.i110.i.i, 0 ; 2 uses
  %spec.store.select.i.i = select i1 %i.ws, i32 0, i32 %i.wr ; 2 uses
  %i.wt = zext i8 %.sroa.3.0.copyload.i110.i.i to i64
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv05_decodeSequence.offsetPrefix, i64 %i.wt
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !20
  %i.ww = add i32 %spec.store.select.i.i, %.sroa.20.8.i ; 2 uses
  %.not97.i.i = icmp eq i64 %.280.i.i, 0
  %i.wx = zext i1 %.not97.i.i to i32
  %i.wy = or i32 %i.wq, %i.wx
  %.not98.i.i = icmp eq i32 %i.wy, 0
  %spec.select.i = select i1 %.not98.i.i, i64 %.sroa.76.0213.i, i64 %.sroa.6.0209.i
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.wp, align 2, !tbaa !8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.wp, i64 3
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !tbaa !29
  %i.wz = zext i8 %.sroa.5.0.copyload.i.i.i to i32 ; 2 uses
  %i.xa = and i32 %i.ww, 63
  %i.xb = zext nneg i32 %i.xa to i64
  %i.xc = shl i64 %.sroa.0.6.i, %i.xb
  %i.xd = lshr i64 %i.xc, 1
  %i.xe = and i32 %i.wz, 63
  %i.xf = xor i32 %i.xe, 63
  %i.xg = zext nneg i32 %i.xf to i64
  %i.xh = lshr i64 %i.xd, %i.xg
  %i.xi = add i32 %i.ww, %i.wz                    ; 2 uses
  %i.xj = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.xk = add nuw i64 %i.xh, %i.xj
  %.sroa.0.0.copyload.i111.i.i = load i16, ptr %i.vz, align 2, !tbaa !8
  %.sroa.5.0..sroa_idx.i114.i.i = getelementptr inbounds nuw i8, ptr %i.vz, i64 3
  %.sroa.5.0.copyload.i115.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i114.i.i, align 1, !tbaa !29
  %i.xl = zext i8 %.sroa.5.0.copyload.i115.i.i to i32 ; 2 uses
  %i.xm = and i32 %i.xi, 63
  %i.xn = zext nneg i32 %i.xm to i64
  %i.xo = shl i64 %.sroa.0.6.i, %i.xn
  %i.xp = lshr i64 %i.xo, 1
  %i.xq = and i32 %i.xl, 63
  %i.xr = xor i32 %i.xq, 63
  %i.xs = zext nneg i32 %i.xr to i64
  %i.xt = lshr i64 %i.xp, %i.xs
  %i.xu = add i32 %i.xi, %i.xl                    ; 2 uses
  %i.xv = zext i16 %.sroa.0.0.copyload.i111.i.i to i64
  %i.xw = add nuw i64 %i.xt, %i.xv
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %.sroa.71.0215.i ; 3 uses
  %.sroa.0.0.copyload.i118.i.i = load i16, ptr %i.xx, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i119.i.i = getelementptr inbounds nuw i8, ptr %i.xx, i64 2
  %.sroa.4.0.copyload.i120.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i119.i.i, align 2, !tbaa !29 ; 2 uses
  %.sroa.5.0..sroa_idx.i121.i.i = getelementptr inbounds nuw i8, ptr %i.xx, i64 3
  %.sroa.5.0.copyload.i122.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i121.i.i, align 1, !tbaa !29
  %i.xy = zext i8 %.sroa.5.0.copyload.i122.i.i to i32 ; 2 uses
  %i.xz = and i32 %i.xu, 63
  %i.ya = zext nneg i32 %i.xz to i64
  %i.yb = shl i64 %.sroa.0.6.i, %i.ya
  %i.yc = lshr i64 %i.yb, 1
  %i.yd = and i32 %i.xy, 63
  %i.ye = xor i32 %i.yd, 63
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = lshr i64 %i.yc, %i.yf
  %i.yh = add i32 %i.xu, %i.xy                    ; 2 uses
  %i.yi = zext i16 %.sroa.0.0.copyload.i118.i.i to i64
  %i.yj = add nuw i64 %i.yg, %i.yi
  %i.yk = zext i8 %.sroa.4.0.copyload.i120.i.i to i64
  %i.yl = icmp eq i8 %.sroa.4.0.copyload.i120.i.i, 127
  br i1 %i.yl, label %bb.cu, label %ZSTDv05_decodeSequence.exit.i

bb.cu:                                            ; preds = %bb.ct
  %i.ym = icmp ult ptr %.3.i.i, %i.hz
  br i1 %i.ym, label %bb.cv, label %.thread.i99.i

bb.cv:                                            ; preds = %bb.cu
  %i.yn = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 3 uses
  %i.yo = load i8, ptr %.3.i.i, align 1, !tbaa !29 ; 2 uses
  %i.yp = zext i8 %i.yo to i64
end_hunk_1
begin_hunk_2_@ZSTDv05_decompressBlock_internal:bb.a
  %next.gep205 = getelementptr i8, ptr %.059218.i, i64 %i.aal ; 2 uses
  %i.aam = getelementptr i8, ptr %next.gep204, i64 16
  %wide.load206 = load <2 x i64>, ptr %next.gep204, align 1
  %wide.load207 = load <2 x i64>, ptr %i.aam, align 1
  %i.aan = getelementptr i8, ptr %next.gep205, i64 16
  store <2 x i64> %wide.load206, ptr %next.gep205, align 1
  store <2 x i64> %wide.load207, ptr %i.aan, align 1
  %index.next208 = add nuw i64 %index203, 4       ; 2 uses
  %i.aao = icmp eq i64 %index.next208, %n.vec201
  br i1 %i.aao, label %middle.block209, label %vector.body202, !llvm.loop !108

middle.block209:                                  ; preds = %vector.body202
  %cmp.n210 = icmp eq i64 %i.aag, %n.vec201
  br i1 %cmp.n210, label %ZSTDv05_wildcopy.exit.i.i, label %.preheader123.i.i.preheader217

.preheader123.i.i.preheader217:                   ; preds = %.preheader123.i.i.preheader, %middle.block209
  %.09.i.i.i.ph = phi ptr [ %.0132207.i, %.preheader123.i.i.preheader ], [ %i.aaj, %middle.block209 ]
  %.0.i.i.i.ph = phi ptr [ %.059218.i, %.preheader123.i.i.preheader ], [ %i.aak, %middle.block209 ]
  br label %.preheader123.i.i

.preheader123.i.i:                                ; preds = %.preheader123.i.i.preheader217, %.preheader123.i.i
  %.09.i.i.i = phi ptr [ %i.aaq, %.preheader123.i.i ], [ %.09.i.i.i.ph, %.preheader123.i.i.preheader217 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.aap, %.preheader123.i.i ], [ %.0.i.i.i.ph, %.preheader123.i.i.preheader217 ] ; 2 uses
  %.09.val.i.i.i = load i64, ptr %.09.i.i.i, align 1
  store i64 %.09.val.i.i.i, ptr %.0.i.i.i, align 1
  %i.aap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.aar = icmp ult ptr %i.aap, %i.zl
  br i1 %i.aar, label %.preheader123.i.i, label %ZSTDv05_wildcopy.exit.i.i, !llvm.loop !109

ZSTDv05_wildcopy.exit.i.i:                        ; preds = %.preheader123.i.i, %middle.block209
  %i.aas = ptrtoint ptr %i.zl to i64              ; 2 uses
  %i.aat = sub i64 %i.aas, %i.ux                  ; 8 uses
  %i.aau = icmp ugt i64 %.077.i.i, %i.aat
  br i1 %i.aau, label %bb.de, label %.thread.i104.i

bb.de:                                            ; preds = %ZSTDv05_wildcopy.exit.i.i
  %i.aav = sub i64 %i.aas, %i.uy
  %i.aaw = icmp ugt i64 %.077.i.i, %i.aav
  br i1 %i.aaw, label %ZSTDv05_decompressSequences.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aax = ptrtoint ptr %i.zq to i64
  %.neg.i.i = sub i64 %i.aax, %i.ux               ; 3 uses
  %i.aay = getelementptr inbounds i8, ptr %i.gi, i64 %.neg.i.i ; 2 uses
  %i.aaz = add nsw i64 %i.zk, %.neg.i.i           ; 3 uses
  %.not.i109.i = icmp sgt i64 %i.aaz, 0
  br i1 %.not.i109.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.zl, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.aay, i64 %i.zk, i1 false)
  br label %ZSTDv05_execSequence.exit.i

bb.dh:                                            ; preds = %bb.df
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.zl, ptr readonly align 1 %i.aay, i64 %gepdiff.i.i, i1 false)
  %i.aba = getelementptr inbounds nuw i8, ptr %i.zl, i64 %gepdiff.i.i ; 7 uses
  %i.abb = icmp ule ptr %i.aba, %i.uu
  %i.abc = icmp samesign ugt i64 %i.aaz, 3
  %or.cond.not.i.i = select i1 %i.abb, i1 %i.abc, i1 false
  br i1 %or.cond.not.i.i, label %.thread.i104.i, label %iter.check180

iter.check180:                                    ; preds = %bb.dh
  %i.abd = add i64 %.276.i.i, 4
  %i.abe = add i64 %i.abd, %.280.i.i
  %i.abf = add i64 %i.abe, %i.zr
  %i.abg = add i64 %i.vd, %.077.i.i
  %umax161 = tail call i64 @llvm.umax.i64(i64 %i.abf, i64 %i.abg)
  %i.abh = add i64 %.077.i.i, %i.ux
  %i.abi = sub i64 %umax161, %i.abh               ; 7 uses
  %min.iters.check163 = icmp ult i64 %i.abi, 4
  %diff.check160 = icmp ult i64 %.077.i.i, 32
  %or.cond213 = select i1 %min.iters.check163, i1 true, i1 %diff.check160
  br i1 %or.cond213, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check164

vector.main.loop.iter.check164:                   ; preds = %iter.check180
  %min.iters.check165 = icmp ult i64 %i.abi, 32
  br i1 %min.iters.check165, label %vec.epilog.ph184, label %vector.ph166

vector.ph166:                                     ; preds = %vector.main.loop.iter.check164
  %i.abj = and i64 %i.abi, 28
  %n.vec167 = and i64 %i.abi, -32                 ; 5 uses
  %i.abk = getelementptr i8, ptr %i.ge, i64 %n.vec167
  %i.abl = getelementptr i8, ptr %i.aba, i64 %n.vec167
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next174, %vector.body168 ] ; 3 uses
  %next.gep170 = getelementptr i8, ptr %i.ge, i64 %index169 ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.aba, i64 %index169 ; 2 uses
  %i.abm = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load172 = load <16 x i8>, ptr %next.gep170, align 1, !tbaa !29
  %wide.load173 = load <16 x i8>, ptr %i.abm, align 1, !tbaa !29
  %i.abn = getelementptr i8, ptr %next.gep171, i64 16
  store <16 x i8> %wide.load172, ptr %next.gep171, align 1, !tbaa !29
  store <16 x i8> %wide.load173, ptr %i.abn, align 1, !tbaa !29
  %index.next174 = add nuw i64 %index169, 32      ; 2 uses
  %i.abo = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.abo, label %middle.block175, label %vector.body168, !llvm.loop !110

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.abi, %n.vec167
  br i1 %cmp.n176, label %ZSTDv05_execSequence.exit.i, label %vec.epilog.iter.check182

vec.epilog.iter.check182:                         ; preds = %middle.block175
  %min.epilog.iters.check183 = icmp eq i64 %i.abj, 0
  br i1 %min.epilog.iters.check183, label %.lr.ph.i.i.preheader, label %vec.epilog.ph184, !prof !111

vec.epilog.ph184:                                 ; preds = %vector.main.loop.iter.check164, %vec.epilog.iter.check182
  %vec.epilog.resume.val177 = phi i64 [ %n.vec167, %vec.epilog.iter.check182 ], [ 0, %vector.main.loop.iter.check164 ]
  %n.vec185 = and i64 %i.abi, -4                  ; 4 uses
  %i.abp = getelementptr i8, ptr %i.ge, i64 %n.vec185
  %i.abq = getelementptr i8, ptr %i.aba, i64 %n.vec185
  br label %vec.epilog.vector.body186

vec.epilog.vector.body186:                        ; preds = %vec.epilog.vector.body186, %vec.epilog.ph184
  %index187 = phi i64 [ %vec.epilog.resume.val177, %vec.epilog.ph184 ], [ %index.next191, %vec.epilog.vector.body186 ] ; 3 uses
  %next.gep188 = getelementptr i8, ptr %i.ge, i64 %index187
  %next.gep189 = getelementptr i8, ptr %i.aba, i64 %index187
  %wide.load190 = load <4 x i8>, ptr %next.gep188, align 1, !tbaa !29
  store <4 x i8> %wide.load190, ptr %next.gep189, align 1, !tbaa !29
  %index.next191 = add nuw i64 %index187, 4       ; 2 uses
  %i.abr = icmp eq i64 %index.next191, %n.vec185
  br i1 %i.abr, label %vec.epilog.middle.block192, label %vec.epilog.vector.body186, !llvm.loop !112

vec.epilog.middle.block192:                       ; preds = %vec.epilog.vector.body186
  %cmp.n193 = icmp eq i64 %i.abi, %n.vec185
  br i1 %cmp.n193, label %ZSTDv05_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check180, %vec.epilog.iter.check182, %vec.epilog.middle.block192
  %.090125.i.i.ph = phi ptr [ %i.ge, %iter.check180 ], [ %i.abk, %vec.epilog.iter.check182 ], [ %i.abp, %vec.epilog.middle.block192 ]
  %.092124.i.i.ph = phi ptr [ %i.aba, %iter.check180 ], [ %i.abl, %vec.epilog.iter.check182 ], [ %i.abq, %vec.epilog.middle.block192 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.090125.i.i = phi ptr [ %i.abs, %.lr.ph.i.i ], [ %.090125.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.092124.i.i = phi ptr [ %i.abu, %.lr.ph.i.i ], [ %.092124.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.090125.i.i, i64 1
  %i.abt = load i8, ptr %.090125.i.i, align 1, !tbaa !29
  %i.abu = getelementptr inbounds nuw i8, ptr %.092124.i.i, i64 1 ; 2 uses
  store i8 %i.abt, ptr %.092124.i.i, align 1, !tbaa !29
  %i.abv = icmp ult ptr %i.abu, %i.zn
  br i1 %i.abv, label %.lr.ph.i.i, label %ZSTDv05_execSequence.exit.i, !llvm.loop !113

.thread.i104.i:                                   ; preds = %bb.dh, %ZSTDv05_wildcopy.exit.i.i
  %i.abw = phi i64 [ %i.aaz, %bb.dh ], [ %i.zk, %ZSTDv05_wildcopy.exit.i.i ]
  %.294.i.i = phi ptr [ %i.aba, %bb.dh ], [ %i.zl, %ZSTDv05_wildcopy.exit.i.i ] ; 8 uses
  %.2.i105.i = phi ptr [ %i.ge, %bb.dh ], [ %i.zq, %ZSTDv05_wildcopy.exit.i.i ] ; 7 uses
  %i.abx = icmp ult i64 %.077.i.i, 8
  br i1 %i.abx, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %.thread.i104.i
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv05_execSequence.dec64table, i64 %.077.i.i
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !20
  %i.aca = load i8, ptr %.2.i105.i, align 1, !tbaa !29
  store i8 %i.aca, ptr %.294.i.i, align 1, !tbaa !29
  %i.acb = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 1
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !29
  %i.acd = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 1
  store i8 %i.acc, ptr %i.acd, align 1, !tbaa !29
  %i.ace = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 2
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !29
  %i.acg = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 2
  store i8 %i.acf, ptr %i.acg, align 1, !tbaa !29
  %i.ach = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 3
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !29
  %i.acj = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 3
  store i8 %i.aci, ptr %i.acj, align 1, !tbaa !29
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv05_execSequence.dec32table, i64 %.077.i.i
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !20
  %i.acm = sext i32 %i.acl to i64
  %i.acn = getelementptr inbounds i8, ptr %.2.i105.i, i64 %i.acm ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 4
  %.val.i108.i = load i32, ptr %i.acn, align 1
  store i32 %.val.i108.i, ptr %i.aco, align 1
  %i.acp = sext i32 %i.abz to i64
  %i.acq = sub nsw i64 0, %i.acp
  %i.acr = getelementptr inbounds i8, ptr %i.acn, i64 %i.acq
  br label %bb.dk

bb.dj:                                            ; preds = %.thread.i104.i
  %.2.val.i.i = load i64, ptr %.2.i105.i, align 1
  store i64 %.2.val.i.i, ptr %.294.i.i, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.3.i106.i = phi ptr [ %i.acr, %bb.di ], [ %.2.i105.i, %bb.dj ] ; 2 uses
  %.3.i106.i126 = ptrtoaddr ptr %.3.i106.i to i64 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 8 ; 11 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.3.i106.i, i64 8 ; 10 uses
  %i.acu = icmp ugt ptr %i.zn, %i.uz
  br i1 %i.acu, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.acv = icmp ult ptr %i.acs, %i.uu
  br i1 %i.acv, label %.preheader.i.preheader, label %bb.dm

.preheader.i.preheader:                           ; preds = %bb.dl
  %i.acw = tail call i64 @llvm.umax.i64(i64 %.077.i.i, i64 %i.aat) ; 2 uses
  %.reass237 = add i64 %i.acw, %invariant.op236
  %i.acx = tail call i64 @llvm.umax.i64(i64 %7, i64 %.reass237)
  %i.acy = add i64 %i.acx, -9
  %i.acz = add i64 %i.acw, %i.ux
  %i.ada = sub i64 %i.acy, %i.acz                 ; 2 uses
  %i.adb = lshr i64 %i.ada, 3
  %i.adc = add nuw nsw i64 %i.adb, 1              ; 2 uses
  %min.iters.check128 = icmp ult i64 %i.ada, 56
  br i1 %min.iters.check128, label %.preheader.i.preheader214, label %vector.memcheck124

vector.memcheck124:                               ; preds = %.preheader.i.preheader
  %umax125 = tail call i64 @llvm.umax.i64(i64 %.077.i.i, i64 %i.aat)
  %i.add = add i64 %umax125, %i.ux
  %i.ade = sub i64 %.3.i106.i126, %i.add
  %diff.check127 = icmp ugt i64 %i.ade, -32
  br i1 %diff.check127, label %.preheader.i.preheader214, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck124
  %n.vec130 = and i64 %i.adc, 4611686018427387900 ; 3 uses
  %i.adf = shl i64 %n.vec130, 3                   ; 2 uses
  %i.adg = getelementptr i8, ptr %i.act, i64 %i.adf
  %i.adh = getelementptr i8, ptr %i.acs, i64 %i.adf
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next137, %vector.body131 ] ; 2 uses
  %i.adi = shl i64 %index132, 3                   ; 2 uses
  %next.gep133 = getelementptr i8, ptr %i.act, i64 %i.adi ; 2 uses
  %next.gep134 = getelementptr i8, ptr %i.acs, i64 %i.adi ; 2 uses
  %i.adj = getelementptr i8, ptr %next.gep133, i64 16
  %wide.load135 = load <2 x i64>, ptr %next.gep133, align 1
  %wide.load136 = load <2 x i64>, ptr %i.adj, align 1
  %i.adk = getelementptr i8, ptr %next.gep134, i64 16
  store <2 x i64> %wide.load135, ptr %next.gep134, align 1
  store <2 x i64> %wide.load136, ptr %i.adk, align 1
  %index.next137 = add nuw i64 %index132, 4       ; 2 uses
  %i.adl = icmp eq i64 %index.next137, %n.vec130
  br i1 %i.adl, label %middle.block138, label %vector.body131, !llvm.loop !114

middle.block138:                                  ; preds = %vector.body131
  %cmp.n139 = icmp eq i64 %i.adc, %n.vec130
  br i1 %cmp.n139, label %ZSTDv05_wildcopy.exit114.i.i, label %.preheader.i.preheader214

.preheader.i.preheader214:                        ; preds = %vector.memcheck124, %.preheader.i.preheader, %middle.block138
  %.09.i111.i.i.ph = phi ptr [ %i.act, %vector.memcheck124 ], [ %i.act, %.preheader.i.preheader ], [ %i.adg, %middle.block138 ]
  %.0.i112.i.i.ph = phi ptr [ %i.acs, %vector.memcheck124 ], [ %i.acs, %.preheader.i.preheader ], [ %i.adh, %middle.block138 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader214, %.preheader.i
  %.09.i111.i.i = phi ptr [ %i.adn, %.preheader.i ], [ %.09.i111.i.i.ph, %.preheader.i.preheader214 ] ; 2 uses
  %.0.i112.i.i = phi ptr [ %i.adm, %.preheader.i ], [ %.0.i112.i.i.ph, %.preheader.i.preheader214 ] ; 2 uses
  %.09.val.i113.i.i = load i64, ptr %.09.i111.i.i, align 1
  store i64 %.09.val.i113.i.i, ptr %.0.i112.i.i, align 1
  %i.adm = getelementptr inbounds nuw i8, ptr %.0.i112.i.i, i64 8 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.09.i111.i.i, i64 8
  %i.ado = icmp ult ptr %i.adm, %i.uu
  br i1 %i.ado, label %.preheader.i, label %ZSTDv05_wildcopy.exit114.i.i, !llvm.loop !115

ZSTDv05_wildcopy.exit114.i.i:                     ; preds = %.preheader.i, %middle.block138
  %i.adp = ptrtoint ptr %i.acs to i64
  %i.adq = sub i64 %i.va, %i.adp
  %i.adr = getelementptr inbounds i8, ptr %i.act, i64 %i.adq
  br label %bb.dm

bb.dm:                                            ; preds = %ZSTDv05_wildcopy.exit114.i.i, %bb.dl
  %.395.i.i = phi ptr [ %i.uu, %ZSTDv05_wildcopy.exit114.i.i ], [ %i.acs, %bb.dl ] ; 7 uses
  %.4.i.i = phi ptr [ %i.adr, %ZSTDv05_wildcopy.exit114.i.i ], [ %i.act, %bb.dl ] ; 7 uses
  %.4.i.i108 = ptrtoaddr ptr %.4.i.i to i64
  %i.ads = icmp ult ptr %.395.i.i, %i.zn
  br i1 %i.ads, label %iter.check, label %ZSTDv05_execSequence.exit.i

iter.check:                                       ; preds = %bb.dm
  %i.adt = add i64 %.276.i.i, 4
  %i.adu = add i64 %i.adt, %.280.i.i
  %i.adv = add i64 %i.adu, %i.zr
  %umax109 = tail call i64 @llvm.umax.i64(i64 %.077.i.i, i64 %i.aat)
  %i.adw = add i64 %i.vc, %umax109
  %umax110 = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.adw)
  %i.adx = sub i64 %i.adv, %umax110               ; 7 uses
  %min.iters.check = icmp ult i64 %i.adx, 4
  br i1 %min.iters.check, label %.lr.ph128.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %.077.i.i, i64 %i.aat)
  %i.ady = add i64 %i.vb, %umax
  %umax107 = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.ady)
  %i.adz = sub i64 %.4.i.i108, %umax107
  %diff.check = icmp ugt i64 %i.adz, -32
  br i1 %diff.check, label %.lr.ph128.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check111 = icmp ult i64 %i.adx, 32
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aea = and i64 %i.adx, 28
  %n.vec = and i64 %i.adx, -32                    ; 5 uses
  %i.aeb = getelementptr i8, ptr %.4.i.i, i64 %n.vec
  %i.aec = getelementptr i8, ptr %.395.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.4.i.i, i64 %index ; 2 uses
  %next.gep112 = getelementptr i8, ptr %.395.i.i, i64 %index ; 2 uses
  %i.aed = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !29
  %wide.load113 = load <16 x i8>, ptr %i.aed, align 1, !tbaa !29
  %i.aee = getelementptr i8, ptr %next.gep112, i64 16
  store <16 x i8> %wide.load, ptr %next.gep112, align 1, !tbaa !29
  store <16 x i8> %wide.load113, ptr %i.aee, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aef = icmp eq i64 %index.next, %n.vec
  br i1 %i.aef, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.adx, %n.vec
  br i1 %cmp.n, label %ZSTDv05_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aea, 0
  br i1 %min.epilog.iters.check, label %.lr.ph128.i.i.preheader, label %vec.epilog.ph, !prof !111

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.adx, -4                  ; 4 uses
  %i.aeg = getelementptr i8, ptr %.4.i.i, i64 %n.vec115
  %i.aeh = getelementptr i8, ptr %.395.i.i, i64 %n.vec115
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 3 uses
  %next.gep117 = getelementptr i8, ptr %.4.i.i, i64 %index116
  %next.gep118 = getelementptr i8, ptr %.395.i.i, i64 %index116
  %wide.load119 = load <4 x i8>, ptr %next.gep117, align 1, !tbaa !29
  store <4 x i8> %wide.load119, ptr %next.gep118, align 1, !tbaa !29
  %index.next120 = add nuw i64 %index116, 4       ; 2 uses
  %i.aei = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.aei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n121 = icmp eq i64 %i.adx, %n.vec115
  br i1 %cmp.n121, label %ZSTDv05_execSequence.exit.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5127.i.i.ph = phi ptr [ %.4.i.i, %iter.check ], [ %.4.i.i, %vector.memcheck ], [ %i.aeb, %vec.epilog.iter.check ], [ %i.aeg, %vec.epilog.middle.block ]
  %.496126.i.i.ph = phi ptr [ %.395.i.i, %iter.check ], [ %.395.i.i, %vector.memcheck ], [ %i.aec, %vec.epilog.iter.check ], [ %i.aeh, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.5127.i.i = phi ptr [ %i.aej, %.lr.ph128.i.i ], [ %.5127.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.496126.i.i = phi ptr [ %i.ael, %.lr.ph128.i.i ], [ %.496126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %.5127.i.i, i64 1
  %i.aek = load i8, ptr %.5127.i.i, align 1, !tbaa !29
  %i.ael = getelementptr inbounds nuw i8, ptr %.496126.i.i, i64 1 ; 2 uses
  store i8 %i.aek, ptr %.496126.i.i, align 1, !tbaa !29
  %i.aem = icmp ult ptr %i.ael, %i.zn
  br i1 %i.aem, label %.lr.ph128.i.i, label %ZSTDv05_execSequence.exit.i, !llvm.loop !118

bb.dn:                                            ; preds = %bb.dk
  %i.aen = getelementptr i8, ptr %.294.i.i, i64 %i.abw
  %i.aeo = tail call i64 @llvm.umin.i64(i64 %.077.i.i, i64 %i.aat)
  %i.aep = tail call i64 @llvm.umax.i64(i64 %.077.i.i, i64 %i.aat) ; 3 uses
  %i.aeq = add i64 %.276.i.i, %i.ux
  %i.aer = add i64 %i.aeq, %i.aeo
  %i.aes = add i64 %i.aer, %i.aep
  %i.aet = add i64 %i.aes, 4
  %i.aeu = sub i64 %i.aet, %.077.i.i
  %.reass = add i64 %i.aep, %invariant.op
  %i.aev = tail call i64 @llvm.umax.i64(i64 %i.aeu, i64 %.reass)
  %i.aew = add i64 %i.aev, -9
  %i.aex = add i64 %i.aep, %i.ux
  %i.aey = sub i64 %i.aew, %i.aex                 ; 2 uses
  %i.aez = lshr i64 %i.aey, 3
  %i.afa = add nuw nsw i64 %i.aez, 1              ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.aey, 56
  br i1 %min.iters.check145, label %scalar.ph144.preheader, label %vector.memcheck141

vector.memcheck141:                               ; preds = %bb.dn
  %umax142 = tail call i64 @llvm.umax.i64(i64 %.077.i.i, i64 %i.aat)
  %i.afb = add i64 %umax142, %i.ux
  %i.afc = sub i64 %.3.i106.i126, %i.afb
  %diff.check143 = icmp ugt i64 %i.afc, -32
  br i1 %diff.check143, label %scalar.ph144.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %vector.memcheck141
  %n.vec147 = and i64 %i.afa, 4611686018427387900 ; 3 uses
  %i.afd = shl i64 %n.vec147, 3                   ; 2 uses
  %i.afe = getelementptr i8, ptr %i.act, i64 %i.afd
  %i.aff = getelementptr i8, ptr %i.acs, i64 %i.afd
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body148 ] ; 2 uses
  %i.afg = shl i64 %index149, 3                   ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.act, i64 %i.afg ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.acs, i64 %i.afg ; 2 uses
  %i.afh = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load152 = load <2 x i64>, ptr %next.gep150, align 1
  %wide.load153 = load <2 x i64>, ptr %i.afh, align 1
  %i.afi = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x i64> %wide.load152, ptr %next.gep151, align 1
  store <2 x i64> %wide.load153, ptr %i.afi, align 1
  %index.next154 = add nuw i64 %index149, 4       ; 2 uses
  %i.afj = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.afj, label %middle.block155, label %vector.body148, !llvm.loop !119

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.afa, %n.vec147
  br i1 %cmp.n156, label %ZSTDv05_execSequence.exit.i, label %scalar.ph144.preheader

scalar.ph144.preheader:                           ; preds = %vector.memcheck141, %bb.dn, %middle.block155
  %.09.i115.i.i.ph = phi ptr [ %i.act, %vector.memcheck141 ], [ %i.act, %bb.dn ], [ %i.afe, %middle.block155 ]
  %.0.i116.i.i.ph = phi ptr [ %i.acs, %vector.memcheck141 ], [ %i.acs, %bb.dn ], [ %i.aff, %middle.block155 ]
  br label %scalar.ph144

scalar.ph144:                                     ; preds = %scalar.ph144.preheader, %scalar.ph144
  %.09.i115.i.i = phi ptr [ %i.afl, %scalar.ph144 ], [ %.09.i115.i.i.ph, %scalar.ph144.preheader ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.afk, %scalar.ph144 ], [ %.0.i116.i.i.ph, %scalar.ph144.preheader ] ; 2 uses
  %.09.val.i117.i.i = load i64, ptr %.09.i115.i.i, align 1
  store i64 %.09.val.i117.i.i, ptr %.0.i116.i.i, align 1
  %i.afk = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8
  %i.afm = icmp ult ptr %i.afk, %i.aen
  br i1 %i.afm, label %scalar.ph144, label %ZSTDv05_execSequence.exit.i, !llvm.loop !120

ZSTDv05_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %scalar.ph144, %.lr.ph128.i.i, %middle.block175, %vec.epilog.middle.block192, %middle.block155, %middle.block, %vec.epilog.middle.block, %bb.dm, %bb.dg
  %i.afn = icmp ugt i32 %i.yh, 64
  br i1 %i.afn, label %BITv05_reloadDStream.exit.thread.i, label %bb.ch

.critedge.i:                                      ; preds = %BITv05_reloadDStream.exit.i, %BITv05_reloadDStream.exit.thread.i, %bb.bk, %.thread.i18
  %.2134.i = phi ptr [ %i.fw, %bb.bk ], [ %i.zo, %BITv05_reloadDStream.exit.thread.i ], [ %i.fw, %.thread.i18 ], [ %.0132207.i, %BITv05_reloadDStream.exit.i ] ; 4 uses
  %.3.i = phi ptr [ %1, %bb.bk ], [ %i.zn, %BITv05_reloadDStream.exit.thread.i ], [ %1, %.thread.i18 ], [ %.059218.i, %BITv05_reloadDStream.exit.i ] ; 3 uses
  %i.afo = ptrtoint ptr %i.ga to i64
  %i.afp = ptrtoint ptr %.2134.i to i64
  %i.afq = sub i64 %i.afo, %i.afp                 ; 2 uses
  %i.afr = icmp ugt ptr %.2134.i, %i.ga
  br i1 %i.afr, label %ZSTDv05_decompressSequences.exit, label %bb.do

bb.do:                                            ; preds = %.critedge.i
  %i.afs = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.afq ; 2 uses
  %i.aft = icmp ugt ptr %i.afs, %i.fz
  br i1 %i.aft, label %ZSTDv05_decompressSequences.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.not75.i = icmp eq ptr %i.ga, %.2134.i
  br i1 %.not75.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.3.i, ptr align 1 %.2134.i, i64 %i.afq, i1 false)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.5.ph.i = phi ptr [ %.3.i, %bb.dp ], [ %i.afs, %bb.dq ]
  %i.afu = ptrtoint ptr %.5.ph.i to i64
  %i.afv = ptrtoint ptr %1 to i64
  %i.afw = sub i64 %i.afu, %i.afv
  br label %ZSTDv05_decompressSequences.exit

ZSTDv05_decompressSequences.exit:                 ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db, %ZSTDv05_decodeSequence.exit.i, %.thread.i, %bb.ab, %bb.n, %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.o, %bb.j, %bb.b, %bb.v, %bb.dr, %bb.do, %.critedge.i, %BITv05_reloadDStream.exit.thread.i, %FSEv05_initDState.exit92.i, %FSEv05_initDState.exit84.i, %BITv05_initDStream.exit.i, %bb.bv, %bb.bn, %bb.bl, %ZSTDv05_decodeSeqHeaders.exit.i, %ZSTDv05_decodeSeqHeaders.exit.thread.i, %bb.a
  %.0 = phi i64 [ -20, %bb.d ], [ -72, %bb.a ], [ -20, %BITv05_reloadDStream.exit.thread.i ], [ %i.afw, %bb.dr ], [ -20, %.critedge.i ], [ %i.pi, %ZSTDv05_decodeSeqHeaders.exit.i ], [ %.7101.i.ph.i, %ZSTDv05_decodeSeqHeaders.exit.thread.i ], [ -70, %bb.do ], [ -20, %BITv05_initDStream.exit.i ], [ -20, %bb.bl ], [ -20, %bb.bv ], [ -20, %bb.bn ], [ -20, %FSEv05_initDState.exit84.i ], [ -20, %FSEv05_initDState.exit92.i ], [ -20, %bb.o ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ], [ -20, %.thread.i ], [ -20, %bb.ab ], [ -20, %bb.n ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.de ], [ -20, %bb.dd ], [ -70, %bb.dc ], [ -20, %bb.db ], [ -70, %ZSTDv05_decodeSequence.exit.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv05_decompress_usingPreparedDCtx(ptr noundef initializes((0, 26763)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26763) %0, ptr noundef nonnull readonly align 8 dereferenceable(26763) %1, i64 26763, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %.not.i = icmp eq ptr %2, %i.b
  br i1 %.not.i, label %ZSTDv05_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26664
  store ptr %i.b, ptr %i.c, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26648 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %i.h, ptr %i.i, align 8, !tbaa !105
  store ptr %2, ptr %i.d, align 8, !tbaa !104
  store ptr %2, ptr %i.a, align 8, !tbaa !102
end_hunk_2
