inline.NumInlined: 338
inline.NumDeleted: 52
begin_hunk_0_@HUFv05_decompress:bb.a
  %i.f = shl i64 %3, 4
  %i.g = udiv i64 %i.f, %1
  %i.h = and i64 %i.g, 4294967295
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @algoTime, i64 %i.h ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !93
  %i.m = mul i32 %i.l, %i.b
  %i.n = add i32 %i.m, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !93
  %i.s = mul i32 %i.r, %i.b
  %i.t = add i32 %i.s, %i.p                       ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = add i32 %i.u, %i.t
  %i.w = icmp ult i32 %i.v, %i.n
  %spec.select = zext i1 %i.w to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @HUFv05_decompress.decompress, i64 %spec.select
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !94
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
define noundef i64 @ZSTDv05_decompressBegin(ptr noundef writeonly captures(none) initializes((10252, 10256), (26640, 26680), (26732, 26740)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26672
  store i64 5, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26732
  store i32 0, ptr %i.b, align 4, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26640
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26736
  store i32 0, ptr %i.e, align 8, !tbaa !99
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @ZSTDv05_createDCtx() local_unnamed_addr #15 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(157848) ptr @malloc(i64 noundef 157848) #26 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 26672
  store i64 5, ptr %i.c, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 26732
  store i32 0, ptr %i.d, align 4, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 26640
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 10252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.f, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 26736
  store i32 0, ptr %i.g, align 8, !tbaa !99
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
define void @ZSTDv05_copyDCtx(ptr noundef writeonly captures(none) initializes((0, 26763)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26763) %0, ptr noundef nonnull align 8 dereferenceable(26763) %1, i64 26763, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -14, 6) i64 @ZSTDv05_getFrameParams(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp ult i64 %2, 5
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 1, !tbaa !3
  %.not = icmp eq i32 %.val, -47205083
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !27
  %i.d = and i8 %i.c, 15
  %narrow = add nuw nsw i8 %i.d, 11
  %i.e = zext nneg i8 %narrow to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !100
  %i.g = load i8, ptr %i.b, align 1, !tbaa !27
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %.not.i = icmp eq ptr %1, %i.b
  br i1 %.not.i, label %ZSTDv05_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26664
  store ptr %i.b, ptr %i.c, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26648 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %i.h, ptr %i.i, align 8, !tbaa !104
  store ptr %1, ptr %i.d, align 8, !tbaa !103
  store ptr %1, ptr %i.a, align 8, !tbaa !101
  br label %ZSTDv05_checkContinuity.exit

ZSTDv05_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv05_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv05_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca [128 x i16], align 16             ; 9 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = icmp ugt i64 %4, 131071
  br i1 %i.i, label %ZSTDv05_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ult i64 %4, 3
  br i1 %i.j, label %ZSTDv05_decompressSequences.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %3, align 1, !tbaa !27
  %i.l = zext i8 %i.k to i32                      ; 16 uses
  %i.m = lshr i32 %i.l, 6
  switch i32 %i.m, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.l
    i32 2, label %bb.q
    i32 3, label %bb.y
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i64 %4, 5
  br i1 %i.n, label %ZSTDv05_decompressSequences.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %i.l, 48
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27
  %i.r = zext i8 %i.q to i32                      ; 4 uses
  switch i32 %i.o, label %bb.g [
    i32 48, label %bb.f
    i32 32, label %.thread.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw nsw i32 %i.l, 14
  %i.t = and i32 %i.s, 245760
  %i.u = shl nuw nsw i32 %i.r, 6
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !27
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = lshr i32 %i.y, 2
  %i.aa = or disjoint i32 %i.v, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.y, 16
  %i.ac = and i32 %i.ab, 196608
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = or disjoint i32 %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !27
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak
  %.0126.i = zext nneg i32 %i.aa to i64
  %.0129.i = zext nneg i32 %i.al to i64           ; 2 uses
  %i.am = icmp samesign ugt i32 %i.aa, 131072
  %i.an = add nuw nsw i64 %.0129.i, 5             ; 2 uses
  %i.ao = icmp samesign ugt i64 %i.an, %4
  %or.cond.i = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %or.cond.i, label %ZSTDv05_decompressSequences.exit, label %.thread161.i

bb.g:                                             ; preds = %bb.e
  %i.ap = shl nuw nsw i32 %i.l, 6
  %i.aq = and i32 %i.ap, 960
  %i.ar = lshr i32 %i.r, 2
  %i.as = or disjoint i32 %i.ar, %i.aq
  %i.at = shl nuw nsw i32 %i.r, 8
  %i.au = and i32 %i.at, 768
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  %.0126146.i = zext nneg i32 %i.as to i64        ; 3 uses
  %.0129147.i = zext nneg i32 %i.ay to i64        ; 3 uses
  %i.az = add nuw nsw i64 %.0129147.i, 3          ; 3 uses
  %i.ba = icmp samesign ugt i64 %i.az, %4
  br i1 %i.ba, label %ZSTDv05_decompressSequences.exit, label %bb.h

.thread.i:                                        ; preds = %bb.e
  %i.bb = shl nuw nsw i32 %i.l, 10
  %i.bc = and i32 %i.bb, 15360
  %i.bd = shl nuw nsw i32 %i.r, 2
  %i.be = or disjoint i32 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !27
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = lshr i32 %i.bh, 6
  %i.bj = or disjoint i32 %i.be, %i.bi
  %i.bk = shl nuw nsw i32 %i.bh, 8
  %i.bl = and i32 %i.bk, 16128
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !27
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo
  %.0126146188.i = zext nneg i32 %i.bj to i64
  %.0129147189.i = zext nneg i32 %i.bp to i64     ; 2 uses
  %i.bq = add nuw nsw i64 %.0129147189.i, 4       ; 2 uses
  %i.br = icmp samesign ugt i64 %i.bq, %4
  br i1 %i.br, label %ZSTDv05_decompressSequences.exit, label %.thread161.i

bb.h:                                             ; preds = %bb.g
  %i.bs = and i32 %i.l, 16
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.thread161.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 26760
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bw = tail call i64 @HUFv05_decompress1X2(ptr noundef nonnull %i.bu, i64 noundef %.0126146.i, ptr noundef nonnull %i.bv, i64 noundef %.0129147.i)
  br label %bb.j

.thread161.i:                                     ; preds = %bb.h, %.thread.i, %bb.f
  %.0129151157169.i = phi i64 [ %.0129147.i, %bb.h ], [ %.0129.i, %bb.f ], [ %.0129147189.i, %.thread.i ]
  %.0126150158168.i = phi i64 [ %.0126146.i, %bb.h ], [ %.0126.i, %bb.f ], [ %.0126146188.i, %.thread.i ] ; 2 uses
  %.0127149159166.i = phi i64 [ 3, %bb.h ], [ 5, %bb.f ], [ 4, %.thread.i ]
  %i.bx = phi i64 [ %i.az, %bb.h ], [ %i.an, %bb.f ], [ %i.bq, %.thread.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 26760
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %.0127149159166.i
  %i.ca = tail call i64 @HUFv05_decompress(ptr noundef nonnull %i.by, i64 noundef %.0126150158168.i, ptr noundef nonnull %i.bz, i64 noundef %.0129151157169.i)
  br label %bb.j

bb.j:                                             ; preds = %.thread161.i, %bb.i
  %.0126150158167.i = phi i64 [ %.0126146.i, %bb.i ], [ %.0126150158168.i, %.thread161.i ] ; 3 uses
  %i.cb = phi i64 [ %i.az, %bb.i ], [ %i.bx, %.thread161.i ]
  %i.cc = phi i64 [ %i.bw, %bb.i ], [ %i.ca, %.thread161.i ]
  %i.cd = icmp ult i64 %i.cc, -119
  br i1 %i.cd, label %bb.k, label %ZSTDv05_decompressSequences.exit

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 26760 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !105
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0126150158167.i, ptr %i.cg, align 8, !tbaa !106
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.0126150158167.i
  store i64 0, ptr %i.ch, align 1
  br label %bb.ac

bb.l:                                             ; preds = %bb.c
  %i.ci = and i32 %i.l, 48
  %.not.i = icmp eq i32 %i.ci, 16
  br i1 %.not.i, label %bb.m, label %ZSTDv05_decompressSequences.exit

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 26736
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !99
  %.not138.i = icmp eq i32 %i.ck, 0
  br i1 %.not138.i, label %ZSTDv05_decompressSequences.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = shl nuw nsw i32 %i.l, 6
  %i.cm = and i32 %i.cl, 960
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !27
  %i.cp = zext i8 %i.co to i32                    ; 2 uses
  %i.cq = lshr i32 %i.cp, 2
  %i.cr = or disjoint i32 %i.cq, %i.cm
  %i.cs = zext nneg i32 %i.cr to i64              ; 4 uses
  %i.ct = shl nuw nsw i32 %i.cp, 8
  %i.cu = and i32 %i.ct, 768
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !27
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
  store ptr %i.dc, ptr %i.dh, align 8, !tbaa !105
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %i.cs, ptr %i.di, align 8, !tbaa !106
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cs
  store i64 0, ptr %i.dj, align 1
  br label %bb.ac

bb.q:                                             ; preds = %bb.c
  %i.dk = and i32 %i.l, 48
  switch i32 %i.dk, label %bb.r [
    i32 48, label %bb.t
    i32 32, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.dl = and i32 %i.l, 31
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.dm = shl nuw nsw i32 %i.l, 8
  %i.dn = and i32 %i.dm, 3840
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !27
  %i.dq = zext i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.dn, %i.dq
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ds = shl nuw nsw i32 %i.l, 16
  %i.dt = and i32 %i.ds, 983040
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !27
  %i.dw = zext i8 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 8
  %i.dy = or disjoint i32 %i.dx, %i.dt
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !27
  %i.eb = zext i8 %i.ea to i32
  %i.ec = or disjoint i32 %i.dy, %i.eb
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0124.in.i = phi i32 [ %i.dl, %bb.r ], [ %i.ec, %bb.t ], [ %i.dr, %bb.s ]
  %.0123.i = phi i64 [ 1, %bb.r ], [ 3, %bb.t ], [ 2, %bb.s ] ; 3 uses
  %.0124.i = zext nneg i32 %.0124.in.i to i64     ; 7 uses
  %i.ed = add nuw nsw i64 %.0123.i, %.0124.i      ; 4 uses
  %i.ee = add nuw nsw i64 %i.ed, 8
  %i.ef = icmp samesign ugt i64 %i.ee, %4
  br i1 %i.ef, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.eg = icmp samesign ugt i64 %i.ed, %4
  br i1 %i.eg, label %ZSTDv05_decompressSequences.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 26760 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 %.0123.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 1 %i.ei, i64 %.0124.i, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !105
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0124.i, ptr %i.ek, align 8, !tbaa !106
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.0124.i
  store i64 0, ptr %i.el, align 1
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 %.0123.i ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.em, ptr %i.en, align 8, !tbaa !105
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0124.i, ptr %i.eo, align 8, !tbaa !106
  br label %bb.ac

bb.y:                                             ; preds = %bb.c
  %i.ep = and i32 %i.l, 48
  switch i32 %i.ep, label %bb.z [
    i32 48, label %bb.ab
    i32 32, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.eq = and i32 %i.l, 31
  br label %.thread171.i

bb.aa:                                            ; preds = %bb.y
  %i.er = shl nuw nsw i32 %i.l, 8
  %i.es = and i32 %i.er, 3840
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !27
  %i.ev = zext i8 %i.eu to i32
  %i.ew = or disjoint i32 %i.es, %i.ev
  br label %.thread171.i

bb.ab:                                            ; preds = %bb.y
  %i.ex = shl nuw nsw i32 %i.l, 16
  %i.ey = and i32 %i.ex, 983040
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !27
  %i.fb = zext i8 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 8
  %i.fd = or disjoint i32 %i.fc, %i.ey
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !27
  %i.fg = zext i8 %i.ff to i32
  %i.fh = or disjoint i32 %i.fd, %i.fg            ; 2 uses
  %i.fi = icmp eq i64 %4, 3
  %i.fj = icmp samesign ugt i32 %i.fh, 131072
  %or.cond177.i = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond177.i, label %ZSTDv05_decompressSequences.exit, label %.thread171.i

.thread171.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z
  %.0175.i = phi i32 [ 3, %bb.ab ], [ 2, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %.0122.in174.i = phi i32 [ %i.fh, %bb.ab ], [ %i.ew, %bb.aa ], [ %i.eq, %bb.z ]
  %.0122.i = zext nneg i32 %.0122.in174.i to i64  ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 26760 ; 3 uses
  %i.fl = zext nneg i32 %.0175.i to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !27
  %i.fo = add nuw nsw i64 %.0122.i, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fk, i8 %i.fn, i64 %i.fo, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 26744
  store ptr %i.fk, ptr %i.fp, align 8, !tbaa !105
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 26752
  store i64 %.0122.i, ptr %i.fq, align 8, !tbaa !106
  %i.fr = add nuw nsw i32 %.0175.i, 1
  %i.fs = zext nneg i32 %i.fr to i64
  br label %bb.ac

default.unreachable:                              ; preds = %bb.ao, %bb.c
  unreachable

bb.ac:                                            ; preds = %.thread171.i, %bb.x, %bb.w, %bb.p, %bb.k
  %i.ft = phi i64 [ %.0124.i, %bb.w ], [ %.0122.i, %.thread171.i ], [ %i.cs, %bb.p ], [ %.0124.i, %bb.x ], [ %.0126150158167.i, %bb.k ]
  %i.fu = phi ptr [ %i.eh, %bb.w ], [ %i.fk, %.thread171.i ], [ %i.dc, %bb.p ], [ %i.em, %bb.x ], [ %i.ce, %bb.k ] ; 4 uses
  %.4.i = phi i64 [ %i.ed, %bb.w ], [ %i.fs, %.thread171.i ], [ %i.da, %bb.p ], [ %i.ed, %bb.x ], [ %i.cb, %bb.k ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 %.4.i ; 5 uses
  %i.fw = sub nsw i64 %4, %.4.i                   ; 3 uses
  %i.fx = getelementptr i8, ptr %1, i64 %2        ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 4100 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 26648
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !103 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 26656
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !104
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 26664
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !102
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 26736
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !99 ; 3 uses
  %i.gj = getelementptr i8, ptr %3, i64 %4        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.gk = icmp eq i64 %4, %.4.i
  br i1 %i.gk, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 2 uses
  %i.gm = load i8, ptr %i.fv, align 1, !tbaa !27  ; 3 uses
  %i.gn = zext i8 %i.gm to i32                    ; 2 uses
  %i.go = icmp eq i8 %i.gm, 0
  br i1 %i.go, label %.thread.i18, label %bb.ae

.thread.i18:                                      ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %i.gp = icmp slt i8 %i.gm, 0
  br i1 %i.gp, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not.not.i.i = icmp eq i64 %i.fw, 1
  br i1 %.not.not.i.i, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = shl nuw nsw i32 %i.gn, 8
  %i.gr = add nsw i32 %i.gq, -32768
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.gt = load i8, ptr %i.gl, align 1, !tbaa !27
  %i.gu = zext i8 %i.gt to i32
  %i.gv = or disjoint i32 %i.gr, %i.gu
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.1138.i = phi i32 [ %i.gv, %bb.ag ], [ %i.gn, %bb.ae ] ; 2 uses
  %.094.i.i = phi ptr [ %i.gs, %bb.ag ], [ %i.gl, %bb.ae ] ; 7 uses
  %.not.i.i = icmp ult ptr %.094.i.i, %i.gj
  br i1 %.not.i.i, label %bb.ai, label %ZSTDv05_decodeSeqHeaders.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.gw = load i8, ptr %.094.i.i, align 1, !tbaa !27
  %i.gx = zext i8 %i.gw to i32                    ; 5 uses
  %i.gy = lshr i32 %i.gx, 6
  %i.gz = and i32 %i.gx, 2
  %.not111.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not111.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ha = getelementptr inbounds nuw i8, ptr %.094.i.i, i64 3 ; 2 uses
  %i.hb = icmp ugt ptr %i.ha, %i.gj
  br i1 %i.hb, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hc = getelementptr inbounds nuw i8, ptr %.094.i.i, i64 2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !27
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %.094.i.i, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !27
  %i.hh = zext i8 %i.hg to i64
  %i.hi = shl nuw nsw i64 %i.hh, 8
  %i.hj = or disjoint i64 %i.hi, %i.he
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.hk = getelementptr inbounds nuw i8, ptr %.094.i.i, i64 2 ; 2 uses
  %i.hl = icmp ugt ptr %i.hk, %i.gj
  br i1 %i.hl, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hm = getelementptr inbounds nuw i8, ptr %.094.i.i, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !27
  %i.ho = shl nuw nsw i32 %i.gx, 8
  %i.hp = and i32 %i.ho, 256
  %i.hq = zext i8 %i.hn to i32
  %i.hr = or disjoint i32 %i.hp, %i.hq
  %i.hs = zext nneg i32 %i.hr to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.195.i.i = phi ptr [ %i.ha, %bb.ak ], [ %i.hk, %bb.am ] ; 2 uses
  %.089.i.i = phi i64 [ %i.hj, %bb.ak ], [ %i.hs, %bb.am ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.195.i.i, i64 %.089.i.i ; 16 uses
  %i.hu = getelementptr inbounds i8, ptr %i.gj, i64 -3
  %i.hv = icmp ugt ptr %i.ht, %i.hu
  br i1 %i.hv, label %ZSTDv05_decodeSeqHeaders.exit.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  switch i32 %i.gy, label %default.unreachable [
    i32 1, label %bb.ap
    i32 0, label %bb.aq
    i32 2, label %bb.as
    i32 3, label %bb.at
  ]

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !27
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 2, !tbaa !23
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.hz, align 2, !tbaa !25
  store i16 0, ptr %i.hy, align 2, !tbaa !17
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.hx, ptr %i.ia, align 2, !tbaa !9
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.ib, align 1, !tbaa !16
  br label %FSEv05_buildDTable_raw.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  store i32 6, ptr %i.b, align 4, !tbaa !3
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i16 6, ptr %0, align 2, !tbaa !23
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1, ptr %i.id, align 2, !tbaa !25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv.i.i = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next.i.i.3, %bb.ar ] ; 6 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i.i ; 3 uses
  store i16 0, ptr %i.ie, align 2, !tbaa !17
  %i.if = trunc i64 %indvars.iv.i.i to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  store i8 %i.if, ptr %i.ig, align 2, !tbaa !9
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 3
  store i8 6, ptr %i.ih, align 1, !tbaa !16
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i ; 3 uses
  store i16 0, ptr %i.ii, align 2, !tbaa !17
  %i.ij = trunc i64 %indvars.iv.next.i.i to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  store i8 %i.ij, ptr %i.ik, align 2, !tbaa !9
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 3
  store i8 6, ptr %i.il, align 1, !tbaa !16
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i.1 ; 3 uses
  store i16 0, ptr %i.im, align 2, !tbaa !17
  %i.in = trunc i64 %indvars.iv.next.i.i.1 to i8
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  store i8 %i.in, ptr %i.io, align 2, !tbaa !9
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  store i8 6, ptr %i.ip, align 1, !tbaa !16
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.i.2 ; 3 uses
  store i16 0, ptr %i.iq, align 2, !tbaa !17
  %i.ir = trunc i64 %indvars.iv.next.i.i.2 to i8
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  store i8 %i.ir, ptr %i.is, align 2, !tbaa !9
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 3
  store i8 6, ptr %i.it, align 1, !tbaa !16
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 64
  br i1 %exitcond.not.i.i.3, label %FSEv05_buildDTable_raw.exit.i.i, label %bb.ar, !llvm.loop !26

bb.as:                                            ; preds = %bb.ao
  %.not112.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not112.i.i, label %.thread142.i.i, label %FSEv05_buildDTable_raw.exit.i.i

bb.at:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i32 63, ptr %i.f, align 4, !tbaa !3
  %i.iu = ptrtoint ptr %i.gj to i64
  %i.iv = ptrtoint ptr %i.ht to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = call i64 @FSEv05_readNCount(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ht, i64 noundef %i.iw) ; 2 uses
  %i.iy = icmp ult i64 %i.ix, -119
  br i1 %i.iy, label %bb.au, label %.thread.i.i

bb.au:                                            ; preds = %bb.at
  %i.iz = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.ja = icmp ugt i32 %i.iz, 10
  br i1 %i.ja, label %.thread.i.i, label %bb.av

.thread.i.i:                                      ; preds = %bb.au, %bb.at
  %.090.ph.i.i = phi i64 [ -20, %bb.au ], [ -1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %.thread142.i.i

bb.av:                                            ; preds = %bb.au
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.ix
  %i.jc = load i32, ptr %i.f, align 4, !tbaa !3
  %i.jd = call i64 @FSEv05_buildDTable(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef %i.jc, i32 noundef %i.iz) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %FSEv05_buildDTable_raw.exit.i.i

FSEv05_buildDTable_raw.exit.i.i:                  ; preds = %bb.ar, %bb.av, %bb.as, %bb.ap
  %.397.i.i = phi ptr [ %i.jb, %bb.av ], [ %i.hw, %bb.ap ], [ %i.ht, %bb.as ], [ %i.ht, %bb.ar ] ; 8 uses
  %5 = and i32 %i.gx, 48
  %6 = sub i32 %5, 0                              ; 2 uses
  %7 = call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 28)
  switch i32 %7, label %.unreachabledefault118.i.i [
    i32 1, label %bb.aw
    i32 0, label %FSEv05_buildDTable_raw.exit123.loopexit.i.i
    i32 2, label %bb.ay
    i32 3, label %bb.az
  ]

bb.aw:                                            ; preds = %FSEv05_buildDTable_raw.exit.i.i
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.je = getelementptr inbounds i8, ptr %i.gj, i64 -2
  %i.jf = icmp ugt ptr %.397.i.i, %i.je
  br i1 %i.jf, label %.thread142.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jg = getelementptr inbounds nuw i8, ptr %.397.i.i, i64 1
  %i.jh = load i8, ptr %.397.i.i, align 1, !tbaa !27
  %i.ji = and i8 %i.jh, 31
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 4104
  store i16 0, ptr %i.ga, align 2, !tbaa !23
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 4102
  store i16 0, ptr %i.jk, align 2, !tbaa !25
  store i16 0, ptr %i.jj, align 2, !tbaa !17
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 4106
  store i8 %i.ji, ptr %i.jl, align 2, !tbaa !9
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4107
  store i8 0, ptr %i.jm, align 1, !tbaa !16
  br label %FSEv05_buildDTable_raw.exit123.i.i

FSEv05_buildDTable_raw.exit123.loopexit.i.i:      ; preds = %FSEv05_buildDTable_raw.exit.i.i
  store i32 5, ptr %i.c, align 4, !tbaa !3
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4104
  store i16 5, ptr %i.ga, align 2, !tbaa !23
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 4102
  store i16 1, ptr %i.jo, align 2, !tbaa !25
  store i16 0, ptr %i.jn, align 2, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 4106
  store i8 0, ptr %i.jp, align 2, !tbaa !9
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 4107
  store i8 5, ptr %i.jq, align 1, !tbaa !16
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 4108
  store i16 0, ptr %i.jr, align 2, !tbaa !17
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 4110
  store i8 1, ptr %i.js, align 2, !tbaa !9
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 4111
  store i8 5, ptr %i.jt, align 1, !tbaa !16
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 4112
  store i16 0, ptr %i.ju, align 2, !tbaa !17
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4114
  store i8 2, ptr %i.jv, align 2, !tbaa !9
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 4115
  store i8 5, ptr %i.jw, align 1, !tbaa !16
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 4116
  store i16 0, ptr %i.jx, align 2, !tbaa !17
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 4118
  store i8 3, ptr %i.jy, align 2, !tbaa !9
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 4119
  store i8 5, ptr %i.jz, align 1, !tbaa !16
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 4120
  store i16 0, ptr %i.ka, align 2, !tbaa !17
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 4122
  store i8 4, ptr %i.kb, align 2, !tbaa !9
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 4123
  store i8 5, ptr %i.kc, align 1, !tbaa !16
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 4124
  store i16 0, ptr %i.kd, align 2, !tbaa !17
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 4126
  store i8 5, ptr %i.ke, align 2, !tbaa !9
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 4127
  store i8 5, ptr %i.kf, align 1, !tbaa !16
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 4128
  store i16 0, ptr %i.kg, align 2, !tbaa !17
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 4130
  store i8 6, ptr %i.kh, align 2, !tbaa !9
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 4131
  store i8 5, ptr %i.ki, align 1, !tbaa !16
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4132
  store i16 0, ptr %i.kj, align 2, !tbaa !17
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 4134
  store i8 7, ptr %i.kk, align 2, !tbaa !9
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 4135
  store i8 5, ptr %i.kl, align 1, !tbaa !16
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 4136
  store i16 0, ptr %i.km, align 2, !tbaa !17
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 4138
  store i8 8, ptr %i.kn, align 2, !tbaa !9
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 4139
  store i8 5, ptr %i.ko, align 1, !tbaa !16
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 4140
  store i16 0, ptr %i.kp, align 2, !tbaa !17
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 4142
  store i8 9, ptr %i.kq, align 2, !tbaa !9
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4143
  store i8 5, ptr %i.kr, align 1, !tbaa !16
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4144
  store i16 0, ptr %i.ks, align 2, !tbaa !17
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 4146
  store i8 10, ptr %i.kt, align 2, !tbaa !9
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 4147
  store i8 5, ptr %i.ku, align 1, !tbaa !16
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 4148
  store i16 0, ptr %i.kv, align 2, !tbaa !17
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 4150
  store i8 11, ptr %i.kw, align 2, !tbaa !9
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 4151
  store i8 5, ptr %i.kx, align 1, !tbaa !16
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 4152
  store i16 0, ptr %i.ky, align 2, !tbaa !17
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 4154
  store i8 12, ptr %i.kz, align 2, !tbaa !9
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 4155
  store i8 5, ptr %i.la, align 1, !tbaa !16
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 4156
  store i16 0, ptr %i.lb, align 2, !tbaa !17
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 4158
  store i8 13, ptr %i.lc, align 2, !tbaa !9
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 4159
  store i8 5, ptr %i.ld, align 1, !tbaa !16
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 4160
  store i16 0, ptr %i.le, align 2, !tbaa !17
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 4162
  store i8 14, ptr %i.lf, align 2, !tbaa !9
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 4163
  store i8 5, ptr %i.lg, align 1, !tbaa !16
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 4164
  store i16 0, ptr %i.lh, align 2, !tbaa !17
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 4166
  store i8 15, ptr %i.li, align 2, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 4167
  store i8 5, ptr %i.lj, align 1, !tbaa !16
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 4168
  store i16 0, ptr %i.lk, align 2, !tbaa !17
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 4170
  store i8 16, ptr %i.ll, align 2, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 4171
  store i8 5, ptr %i.lm, align 1, !tbaa !16
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 4172
  store i16 0, ptr %i.ln, align 2, !tbaa !17
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 4174
  store i8 17, ptr %i.lo, align 2, !tbaa !9
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 4175
  store i8 5, ptr %i.lp, align 1, !tbaa !16
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 4176
  store i16 0, ptr %i.lq, align 2, !tbaa !17
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 4178
  store i8 18, ptr %i.lr, align 2, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 4179
  store i8 5, ptr %i.ls, align 1, !tbaa !16
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 4180
  store i16 0, ptr %i.lt, align 2, !tbaa !17
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 4182
  store i8 19, ptr %i.lu, align 2, !tbaa !9
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 4183
  store i8 5, ptr %i.lv, align 1, !tbaa !16
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 4184
  store i16 0, ptr %i.lw, align 2, !tbaa !17
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 4186
  store i8 20, ptr %i.lx, align 2, !tbaa !9
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 4187
  store i8 5, ptr %i.ly, align 1, !tbaa !16
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 4188
  store i16 0, ptr %i.lz, align 2, !tbaa !17
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 4190
  store i8 21, ptr %i.ma, align 2, !tbaa !9
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 4191
  store i8 5, ptr %i.mb, align 1, !tbaa !16
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 4192
  store i16 0, ptr %i.mc, align 2, !tbaa !17
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 4194
  store i8 22, ptr %i.md, align 2, !tbaa !9
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 4195
  store i8 5, ptr %i.me, align 1, !tbaa !16
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 4196
  store i16 0, ptr %i.mf, align 2, !tbaa !17
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 4198
  store i8 23, ptr %i.mg, align 2, !tbaa !9
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 4199
  store i8 5, ptr %i.mh, align 1, !tbaa !16
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 4200
  store i16 0, ptr %i.mi, align 2, !tbaa !17
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 4202
  store i8 24, ptr %i.mj, align 2, !tbaa !9
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 4203
  store i8 5, ptr %i.mk, align 1, !tbaa !16
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 4204
  store i16 0, ptr %i.ml, align 2, !tbaa !17
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 4206
  store i8 25, ptr %i.mm, align 2, !tbaa !9
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 4207
  store i8 5, ptr %i.mn, align 1, !tbaa !16
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 4208
  store i16 0, ptr %i.mo, align 2, !tbaa !17
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 4210
  store i8 26, ptr %i.mp, align 2, !tbaa !9
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 4211
  store i8 5, ptr %i.mq, align 1, !tbaa !16
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 4212
  store i16 0, ptr %i.mr, align 2, !tbaa !17
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 4214
  store i8 27, ptr %i.ms, align 2, !tbaa !9
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 4215
  store i8 5, ptr %i.mt, align 1, !tbaa !16
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 4216
  store i16 0, ptr %i.mu, align 2, !tbaa !17
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 4218
  store i8 28, ptr %i.mv, align 2, !tbaa !9
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 4219
  store i8 5, ptr %i.mw, align 1, !tbaa !16
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 4220
  store i16 0, ptr %i.mx, align 2, !tbaa !17
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 4222
  store i8 29, ptr %i.my, align 2, !tbaa !9
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 4223
  store i8 5, ptr %i.mz, align 1, !tbaa !16
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 4224
  store i16 0, ptr %i.na, align 2, !tbaa !17
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 4226
  store i8 30, ptr %i.nb, align 2, !tbaa !9
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 4227
  store i8 5, ptr %i.nc, align 1, !tbaa !16
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 4228
  store i16 0, ptr %i.nd, align 2, !tbaa !17
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 4230
  store i8 31, ptr %i.ne, align 2, !tbaa !9
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 4231
  store i8 5, ptr %i.nf, align 1, !tbaa !16
  br label %FSEv05_buildDTable_raw.exit123.i.i

bb.ay:                                            ; preds = %FSEv05_buildDTable_raw.exit.i.i
  %.not114.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not114.i.i, label %.thread142.i.i, label %FSEv05_buildDTable_raw.exit123.i.i

.unreachabledefault118.i.i:                       ; preds = %FSEv05_buildDTable_raw.exit.i.i
  unreachable

bb.az:                                            ; preds = %FSEv05_buildDTable_raw.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i32 31, ptr %i.g, align 4, !tbaa !3
  %i.ng = ptrtoint ptr %i.gj to i64
  %i.nh = ptrtoint ptr %.397.i.i to i64
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = call i64 @FSEv05_readNCount(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %.397.i.i, i64 noundef %i.ni) ; 2 uses
  %i.nk = icmp ult i64 %i.nj, -119
  br i1 %i.nk, label %bb.ba, label %.thread132.i.i

bb.ba:                                            ; preds = %bb.az
  %i.nl = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.nm = icmp ugt i32 %i.nl, 9
  br i1 %i.nm, label %.thread132.i.i, label %bb.bb

.thread132.i.i:                                   ; preds = %bb.ba, %bb.az
  %.292.ph.i.i = phi i64 [ -20, %bb.ba ], [ -1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  br label %.thread142.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.nn = getelementptr inbounds nuw i8, ptr %.397.i.i, i64 %i.nj
  %i.no = load i32, ptr %i.g, align 4, !tbaa !3
  %i.np = call i64 @FSEv05_buildDTable(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.e, i32 noundef %i.no, i32 noundef %i.nl) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  br label %FSEv05_buildDTable_raw.exit123.i.i

FSEv05_buildDTable_raw.exit123.i.i:               ; preds = %bb.bb, %bb.ay, %FSEv05_buildDTable_raw.exit123.loopexit.i.i, %bb.ax
  %.599.i.i = phi ptr [ %i.nn, %bb.bb ], [ %i.jg, %bb.ax ], [ %.397.i.i, %bb.ay ], [ %.397.i.i, %FSEv05_buildDTable_raw.exit123.loopexit.i.i ] ; 8 uses
  %8 = and i32 %i.gx, 12
  %9 = sub i32 %8, 0                              ; 2 uses
  %10 = call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 30)
  switch i32 %10, label %.unreachabledefault119.i.i [
    i32 1, label %bb.bc
    i32 0, label %bb.be
    i32 2, label %bb.bg
    i32 3, label %bb.bh
  ]

bb.bc:                                            ; preds = %FSEv05_buildDTable_raw.exit123.i.i
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.nq = getelementptr inbounds i8, ptr %i.gj, i64 -2
  %i.nr = icmp ugt ptr %.599.i.i, %i.nq
  br i1 %i.nr, label %.thread142.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ns = getelementptr inbounds nuw i8, ptr %.599.i.i, i64 1
  %i.nt = load i8, ptr %.599.i.i, align 1, !tbaa !27
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 6156
  store i16 0, ptr %i.fz, align 2, !tbaa !23
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 6154
  store i16 0, ptr %i.nv, align 2, !tbaa !25
  store i16 0, ptr %i.nu, align 2, !tbaa !17
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 6158
  store i8 %i.nt, ptr %i.nw, align 2, !tbaa !9
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 6159
  store i8 0, ptr %i.nx, align 1, !tbaa !16
  br label %ZSTDv05_decodeSeqHeaders.exit.i

bb.be:                                            ; preds = %FSEv05_buildDTable_raw.exit123.i.i
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 6156 ; 4 uses
  store i16 7, ptr %i.fz, align 2, !tbaa !23
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 6154
  store i16 1, ptr %i.nz, align 2, !tbaa !25
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %indvars.iv151.i.i = phi i64 [ 0, %bb.be ], [ %indvars.iv.next152.i.i.3, %bb.bf ] ; 6 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv151.i.i ; 3 uses
  store i16 0, ptr %i.oa, align 2, !tbaa !17
  %i.ob = trunc i64 %indvars.iv151.i.i to i8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 2
  store i8 %i.ob, ptr %i.oc, align 2, !tbaa !9
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 3
  store i8 7, ptr %i.od, align 1, !tbaa !16
  %indvars.iv.next152.i.i = or disjoint i64 %indvars.iv151.i.i, 1 ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.next152.i.i ; 3 uses
  store i16 0, ptr %i.oe, align 2, !tbaa !17
  %i.of = trunc i64 %indvars.iv.next152.i.i to i8
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 2
  store i8 %i.of, ptr %i.og, align 2, !tbaa !9
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 3
  store i8 7, ptr %i.oh, align 1, !tbaa !16
  %indvars.iv.next152.i.i.1 = or disjoint i64 %indvars.iv151.i.i, 2 ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.next152.i.i.1 ; 3 uses
  store i16 0, ptr %i.oi, align 2, !tbaa !17
  %i.oj = trunc i64 %indvars.iv.next152.i.i.1 to i8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 2
  store i8 %i.oj, ptr %i.ok, align 2, !tbaa !9
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 3
  store i8 7, ptr %i.ol, align 1, !tbaa !16
  %indvars.iv.next152.i.i.2 = or disjoint i64 %indvars.iv151.i.i, 3 ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.next152.i.i.2 ; 3 uses
  store i16 0, ptr %i.om, align 2, !tbaa !17
  %i.on = trunc i64 %indvars.iv.next152.i.i.2 to i8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 2
  store i8 %i.on, ptr %i.oo, align 2, !tbaa !9
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 3
  store i8 7, ptr %i.op, align 1, !tbaa !16
  %indvars.iv.next152.i.i.3 = add nuw nsw i64 %indvars.iv151.i.i, 4 ; 2 uses
  %exitcond154.not.i.i.3 = icmp eq i64 %indvars.iv.next152.i.i.3, 128
  br i1 %exitcond154.not.i.i.3, label %ZSTDv05_decodeSeqHeaders.exit.i, label %bb.bf, !llvm.loop !26

bb.bg:                                            ; preds = %FSEv05_buildDTable_raw.exit123.i.i
  %.not116.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not116.i.i, label %.thread142.i.i, label %ZSTDv05_decodeSeqHeaders.exit.i

.unreachabledefault119.i.i:                       ; preds = %FSEv05_buildDTable_raw.exit123.i.i
  unreachable

bb.bh:                                            ; preds = %FSEv05_buildDTable_raw.exit123.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  store i32 127, ptr %i.h, align 4, !tbaa !3
  %i.oq = ptrtoint ptr %i.gj to i64
  %i.or = ptrtoint ptr %.599.i.i to i64
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = call i64 @FSEv05_readNCount(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, ptr noundef %.599.i.i, i64 noundef %i.os) ; 2 uses
  %i.ou = icmp ult i64 %i.ot, -119
  br i1 %i.ou, label %bb.bi, label %.thread137.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.ov = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  %i.ow = icmp ugt i32 %i.ov, 10
  br i1 %i.ow, label %.thread137.i.i, label %bb.bj

.thread137.i.i:                                   ; preds = %bb.bi, %bb.bh
  %.4.ph.i.i = phi i64 [ -20, %bb.bi ], [ -1, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %.thread142.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.ox = getelementptr inbounds nuw i8, ptr %.599.i.i, i64 %i.ot
  %i.oy = load i32, ptr %i.h, align 4, !tbaa !3
  %i.oz = call i64 @FSEv05_buildDTable(ptr noundef nonnull %i.fz, ptr noundef nonnull %i.e, i32 noundef %i.oy, i32 noundef %i.ov) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %ZSTDv05_decodeSeqHeaders.exit.i

.thread142.i.i:                                   ; preds = %.thread137.i.i, %bb.bg, %bb.bc, %.thread132.i.i, %bb.ay, %bb.aw, %.thread.i.i, %bb.as
  %.6.ph.i.i = phi i64 [ %.090.ph.i.i, %.thread.i.i ], [ -72, %bb.aw ], [ -20, %bb.as ], [ %.292.ph.i.i, %.thread132.i.i ], [ -72, %bb.bc ], [ -20, %bb.ay ], [ %.4.ph.i.i, %.thread137.i.i ], [ -20, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %ZSTDv05_decodeSeqHeaders.exit.thread.i

ZSTDv05_decodeSeqHeaders.exit.thread.i:           ; preds = %.thread142.i.i, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ac
  %.7.i.ph.i = phi i64 [ -72, %bb.an ], [ %.6.ph.i.i, %.thread142.i.i ], [ -72, %bb.al ], [ -72, %bb.ah ], [ -72, %bb.af ], [ -72, %bb.ac ], [ -72, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %ZSTDv05_decompressSequences.exit

ZSTDv05_decodeSeqHeaders.exit.i:                  ; preds = %bb.bf, %bb.bj, %bb.bg, %bb.bd
  %.8.i.i = phi ptr [ %i.ox, %bb.bj ], [ %i.ns, %bb.bd ], [ %.599.i.i, %bb.bg ], [ %.599.i.i, %bb.bf ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.pa = ptrtoint ptr %.8.i.i to i64             ; 5 uses
  %i.pb = ptrtoint ptr %i.fv to i64
  %i.pc = sub i64 %i.pa, %i.pb                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.pd = icmp ult i64 %i.pc, -119
  br i1 %i.pd, label %bb.bk, label %ZSTDv05_decompressSequences.exit

bb.bk:                                            ; preds = %ZSTDv05_decodeSeqHeaders.exit.i
  %.not72.i = icmp eq i32 %.1138.i, 0
  br i1 %.not72.i, label %.critedge.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pe = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.pc ; 11 uses
  %gepdiff.i = sub nsw i64 %i.fw, %i.pc           ; 4 uses
  %i.pf = icmp eq i64 %i.fw, %i.pc
  br i1 %i.pf, label %ZSTDv05_decompressSequences.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pg = icmp ugt i64 %gepdiff.i, 7
  br i1 %i.pg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ph = getelementptr i8, ptr %i.gj, i64 -1
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !27  ; 2 uses
  %i.pj = icmp eq i8 %i.pi, 0
  br i1 %i.pj, label %ZSTDv05_decompressSequences.exit, label %BITv05_initDStream.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.pk = load i8, ptr %i.pe, align 1, !tbaa !27
  %i.pl = zext i8 %i.pk to i64                    ; 7 uses
  switch i64 %gepdiff.i, label %bb.bv [
    i64 7, label %bb.bp
    i64 6, label %bb.bq
    i64 5, label %bb.br
    i64 4, label %bb.bs
    i64 3, label %bb.bt
    i64 2, label %bb.bu
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pe, i64 6
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !27
  %i.po = zext i8 %i.pn to i64
  %i.pp = shl nuw nsw i64 %i.po, 48
  %i.pq = or disjoint i64 %i.pp, %i.pl
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.pr = phi i64 [ %i.pq, %bb.bp ], [ %i.pl, %bb.bo ]
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pe, i64 5
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !27
  %i.pu = zext i8 %i.pt to i64
  %i.pv = shl nuw nsw i64 %i.pu, 40
  %i.pw = add nuw nsw i64 %i.pv, %i.pr
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.px = phi i64 [ %i.pw, %bb.bq ], [ %i.pl, %bb.bo ]
  %i.py = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !27
  %i.qa = zext i8 %i.pz to i64
  %i.qb = shl nuw nsw i64 %i.qa, 32
  %i.qc = add nuw nsw i64 %i.qb, %i.px
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %i.qd = phi i64 [ %i.qc, %bb.br ], [ %i.pl, %bb.bo ]
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pe, i64 3
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !27
  %i.qg = zext i8 %i.qf to i64
  %i.qh = shl nuw nsw i64 %i.qg, 24
  %i.qi = add nuw nsw i64 %i.qh, %i.qd
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bo
  %i.qj = phi i64 [ %i.qi, %bb.bs ], [ %i.pl, %bb.bo ]
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !27
  %i.qm = zext i8 %i.ql to i64
  %i.qn = shl nuw nsw i64 %i.qm, 16
  %i.qo = add nuw nsw i64 %i.qn, %i.qj
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bo
  %i.qp = phi i64 [ %i.qo, %bb.bt ], [ %i.pl, %bb.bo ]
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !27
  %i.qs = zext i8 %i.qr to i64
  %i.qt = shl nuw nsw i64 %i.qs, 8
  %i.qu = add nuw nsw i64 %i.qt, %i.qp
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bo
  %.sroa.0.1.i = phi i64 [ %i.pl, %bb.bo ], [ %i.qu, %bb.bu ]
  %i.qv = getelementptr i8, ptr %i.gj, i64 -1
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !27  ; 2 uses
  %i.qx = icmp eq i8 %i.qw, 0
  br i1 %i.qx, label %ZSTDv05_decompressSequences.exit, label %BITv05_initDStream.exit.thread167.i

BITv05_initDStream.exit.thread167.i:              ; preds = %bb.bv
  %i.qy = zext i8 %i.qw to i32
  %i.qz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qy, i1 true)
  %i.ra = trunc nuw nsw i64 %gepdiff.i to i32
  %i.rb = shl nuw nsw i32 %i.ra, 3
  %reass.sub = sub nsw i32 %i.qz, %i.rb
  %i.rc = add nsw i32 %reass.sub, 41
  br label %bb.bw

BITv05_initDStream.exit.i:                        ; preds = %bb.bn
  %i.rd = getelementptr inbounds i8, ptr %i.gj, i64 -8 ; 2 uses
  %.val.i.i = load i64, ptr %i.rd, align 1, !tbaa !28
  %i.re = zext i8 %i.pi to i32
  %i.rf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.re, i1 true)
  %i.rg = xor i32 %i.rf, 31
  %i.rh = sub nuw nsw i32 8, %i.rg
  %i.ri = icmp ult i64 %gepdiff.i, -119
  br i1 %i.ri, label %bb.bw, label %ZSTDv05_decompressSequences.exit

bb.bw:                                            ; preds = %BITv05_initDStream.exit.i, %BITv05_initDStream.exit.thread167.i
  %.sroa.42111.1176.i = phi ptr [ %i.pe, %BITv05_initDStream.exit.thread167.i ], [ %i.rd, %BITv05_initDStream.exit.i ] ; 6 uses
  %.sroa.20.1175.i = phi i32 [ %i.rc, %BITv05_initDStream.exit.thread167.i ], [ %i.rh, %BITv05_initDStream.exit.i ] ; 2 uses
  %.sroa.0.2174.i = phi i64 [ %.sroa.0.1.i, %BITv05_initDStream.exit.thread167.i ], [ %.val.i.i, %BITv05_initDStream.exit.i ] ; 3 uses
  %i.rj = load i16, ptr %0, align 2, !tbaa !23
  %i.rk = zext i16 %i.rj to i32                   ; 2 uses
  %i.rl = and i32 %.sroa.20.1175.i, 63
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = shl i64 %.sroa.0.2174.i, %i.rm
  %i.ro = lshr i64 %i.rn, 1
  %i.rp = and i32 %i.rk, 63
  %i.rq = xor i32 %i.rp, 63
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = lshr i64 %i.ro, %i.rr
  %i.rt = add nuw nsw i32 %.sroa.20.1175.i, %i.rk ; 7 uses
  %i.ru = icmp samesign ugt i32 %i.rt, 64
  br i1 %i.ru, label %FSEv05_initDState.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rv = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %.not.i.i.i = icmp ult ptr %.sroa.42111.1176.i, %i.rv
  br i1 %.not.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.rw = lshr i32 %i.rt, 3
  %i.rx = and i32 %i.rt, 7
  br label %BITv05_reloadDStream.exit.sink.split.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.ry = icmp eq ptr %.sroa.42111.1176.i, %.8.i.i
  br i1 %i.ry, label %FSEv05_initDState.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rz = lshr i32 %i.rt, 3                       ; 2 uses
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = sub nsw i64 0, %i.sa
  %i.sc = getelementptr inbounds i8, ptr %.sroa.42111.1176.i, i64 %i.sb
  %i.sd = icmp ult ptr %i.sc, %.8.i.i
end_hunk_0
begin_hunk_1_@ZBUFFv05_decompressContinue:bb.a

bb.u:                                             ; preds = %bb.t
  store i32 5, ptr %i.e, align 8, !tbaa !127
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge316, %bb.u
  %i.cb = phi i64 [ %i.bm, %bb.u ], [ %.pre318, %._crit_edge316 ] ; 2 uses
  %.5176 = phi ptr [ %.2173, %bb.u ], [ %.0171314.ph, %._crit_edge316 ] ; 3 uses
  %i.cc = load i64, ptr %i.o, align 8, !tbaa !130 ; 4 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = load i64, ptr %i.k, align 8, !tbaa !136
  %i.cf = sub i64 %i.ce, %i.cc
  %i.cg = icmp ugt i64 %i.cd, %i.cf
  br i1 %i.cg, label %.thread238, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = ptrtoint ptr %.5176 to i64
  %i.ci = sub i64 %i.p, %i.ch                     ; 2 uses
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.ci) ; 4 uses
  %.not.i225 = icmp eq i64 %i.cj, 0
  br i1 %.not.i225, label %ZBUFFv05_limitCopy.exit226, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr readonly align 1 %.5176, i64 %i.cj, i1 false)
  %.pre319 = load i64, ptr %i.o, align 8, !tbaa !130
  br label %ZBUFFv05_limitCopy.exit226

ZBUFFv05_limitCopy.exit226:                       ; preds = %bb.w, %bb.x
  %i.cm = phi i64 [ %i.cc, %bb.w ], [ %.pre319, %bb.x ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.5176, i64 %i.cj ; 3 uses
  %i.co = add i64 %i.cm, %i.cj
  store i64 %i.co, ptr %i.o, align 8, !tbaa !130
  %i.cp = icmp ult i64 %i.ci, %i.cd
  br i1 %i.cp, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %ZBUFFv05_limitCopy.exit226
  %i.cq = load ptr, ptr %0, align 8, !tbaa !124
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.cs = load i64, ptr %i.q, align 8, !tbaa !132 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = load i64, ptr %i.m, align 8, !tbaa !137
  %i.cv = sub i64 %i.cu, %i.cs
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.cx = tail call i64 @ZSTDv05_decompressContinue(ptr noundef %i.cq, ptr noundef %i.ct, i64 noundef %i.cv, ptr noundef %i.cw, i64 noundef %i.cb) ; 4 uses
  %i.cy = icmp ult i64 %i.cx, -119
  br i1 %i.cy, label %bb.z, label %.thread238

bb.z:                                             ; preds = %bb.y
  store i64 0, ptr %i.o, align 8, !tbaa !130
  %.not214 = icmp eq i64 %i.cx, 0
  br i1 %.not214, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 4, ptr %i.e, align 8, !tbaa !127
  br label %.thread260.outer.backedge

bb.ab:                                            ; preds = %bb.z
  %i.cz = load i64, ptr %i.q, align 8, !tbaa !132 ; 2 uses
  %i.da = add i64 %i.cz, %i.cx                    ; 2 uses
  store i64 %i.da, ptr %i.r, align 8, !tbaa !131
  store i32 6, ptr %i.e, align 8, !tbaa !127
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge320, %bb.ab
  %i.db = phi i64 [ %i.cz, %bb.ab ], [ %.pre322, %._crit_edge320 ] ; 3 uses
  %i.dc = phi i64 [ %i.da, %bb.ab ], [ %.pre321, %._crit_edge320 ]
  %.7178 = phi ptr [ %i.cn, %bb.ab ], [ %.0171314.ph, %._crit_edge320 ] ; 2 uses
  %i.dd = sub i64 %i.dc, %i.db                    ; 2 uses
  %i.de = ptrtoint ptr %.0180313.ph.ph to i64
  %i.df = sub i64 %i.s, %i.de                     ; 2 uses
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dd) ; 4 uses
  %.not.i227 = icmp eq i64 %i.dg, 0
  br i1 %.not.i227, label %ZBUFFv05_limitCopy.exit228, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0180313.ph.ph, ptr readonly align 1 %i.di, i64 %i.dg, i1 false)
  %.pre323 = load i64, ptr %i.q, align 8, !tbaa !132
  br label %ZBUFFv05_limitCopy.exit228

ZBUFFv05_limitCopy.exit228:                       ; preds = %bb.ac, %bb.ad
  %i.dj = phi i64 [ %i.db, %bb.ac ], [ %.pre323, %bb.ad ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0180313.ph.ph, i64 %i.dg ; 2 uses
  %i.dl = add i64 %i.dj, %i.dg                    ; 2 uses
  store i64 %i.dl, ptr %i.q, align 8, !tbaa !132
  %.not282 = icmp ugt i64 %i.dd, %i.df
  br i1 %.not282, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %ZBUFFv05_limitCopy.exit228
  store i32 4, ptr %i.e, align 8, !tbaa !127
  %i.dm = add i64 %i.dl, 131072
  %i.dn = load i64, ptr %i.m, align 8, !tbaa !137
  %i.do = icmp ugt i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.af, label %.thread260.outer.outer.backedge

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %.thread260.outer.outer.backedge

.thread260.outer.outer.backedge:                  ; preds = %bb.af, %bb.ae
  br label %.thread260.outer.outer, !llvm.loop !135

.loopexit:                                        ; preds = %bb.t, %ZBUFFv05_limitCopy.exit226, %ZBUFFv05_limitCopy.exit228, %bb.o
  %.1181.ph = phi ptr [ %.0180313.ph.ph, %bb.o ], [ %.0180313.ph.ph, %ZBUFFv05_limitCopy.exit226 ], [ %.0180313.ph.ph, %bb.t ], [ %i.dk, %ZBUFFv05_limitCopy.exit228 ]
  %.8179.ph = phi ptr [ %.2173, %bb.o ], [ %i.b, %bb.t ], [ %i.cn, %ZBUFFv05_limitCopy.exit226 ], [ %.7178, %ZBUFFv05_limitCopy.exit228 ]
  %i.dp = ptrtoint ptr %.8179.ph to i64
  %i.dq = ptrtoint ptr %3 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  store i64 %i.dr, ptr %4, align 8, !tbaa !28
  %i.ds = ptrtoint ptr %.1181.ph to i64
  %i.dt = ptrtoint ptr %1 to i64
  %i.du = sub i64 %i.ds, %i.dt
  store i64 %i.du, ptr %2, align 8, !tbaa !28
  %i.dv = load ptr, ptr %0, align 8, !tbaa !124
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 26672
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !95 ; 3 uses
  %i.dy = icmp ugt i64 %i.dx, 3
  %i.dz = add i64 %i.dx, 3
  %spec.select = select i1 %i.dy, i64 %i.dz, i64 %i.dx
  %i.ea = load i64, ptr %i.o, align 8, !tbaa !130
  %i.eb = sub i64 %spec.select, %i.ea
  br label %.thread238

.thread238.loopexit:                              ; preds = %.thread260
  br label %.thread238

.thread238:                                       ; preds = %bb.c, %ZSTDv05_getFrameParams.exit, %bb.g, %bb.i, %bb.k, %bb.q, %bb.v, %bb.y, %ZSTDv05_getFrameParams.exit224, %.thread260, %.thread238.loopexit, %.thread247, %.thread, %.loopexit
  %.13 = phi i64 [ -1, %.thread260 ], [ %i.eb, %.loopexit ], [ %i.at, %.thread247 ], [ %i.ag, %.thread ], [ -10, %bb.c ], [ -14, %ZSTDv05_getFrameParams.exit ], [ %i.cx, %bb.y ], [ -10, %bb.g ], [ -64, %bb.i ], [ -20, %bb.v ], [ -14, %ZSTDv05_getFrameParams.exit224 ], [ %i.bv, %bb.q ], [ -64, %bb.k ], [ -62, %.thread238.loopexit ]
  ret i64 %.13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ZBUFFv05_isError(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @ZBUFFv05_getErrorName(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i64 %0, -119
  %i.b = trunc nsw i64 %0 to i32
  %i.c = sub i32 0, %i.b
  %.0.i.i = select i1 %i.a, i32 0, i32 %i.c
  %i.d = tail call ptr @ERR_getErrorString(i32 noundef %.0.i.i) #27
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZBUFFv05_recommendedDInSize() local_unnamed_addr #7 {
bb.a:
  ret i64 131075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZBUFFv05_recommendedDOutSize() local_unnamed_addr #7 {
bb.a:
  ret i64 131072
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #21

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

attributes #0 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!10, !5, i64 2}
!10 = !{!"", !8, i64 0, !5, i64 2, !5, i64 3}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = !{!10, !5, i64 3}
!17 = !{!10, !8, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = !{!24, !8, i64 0}
!24 = !{!"", !8, i64 0, !8, i64 2}
!25 = !{!24, !8, i64 2}
!26 = distinct !{!26, !12}
!27 = !{!5, !5, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"long", !5, i64 0}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"branch_weights", i32 4, i32 12}
!36 = distinct !{!36, !12, !33, !34}
!37 = distinct !{!37, !12, !34, !33}
!38 = distinct !{!38, !12}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !12, !33, !34}
!45 = distinct !{!45, !12, !33, !34}
!46 = distinct !{!46, !12, !33}
!47 = distinct !{!47, !12}
!48 = !{!49, !50, i64 24}
!49 = !{!"", !29, i64 0, !4, i64 8, !50, i64 16, !50, i64 24}
!50 = !{!"p1 omnipotent char", !51, i64 0}
!51 = !{!"any pointer", !5, i64 0}
!52 = !{!49, !50, i64 16}
!53 = !{!49, !29, i64 0}
!54 = !{!49, !4, i64 8}
!55 = !{!56, !5, i64 0}
!56 = !{!"", !5, i64 0, !5, i64 1}
!57 = !{!56, !5, i64 1}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12, !33, !34}
!62 = distinct !{!62, !12, !33, !34}
!63 = distinct !{!63, !12, !34, !33}
!64 = distinct !{!64, !12}
!65 = !{!50, !50, i64 0}
!66 = distinct !{!66, !12, !33, !34}
!67 = distinct !{!67, !12, !33, !34}
!68 = distinct !{!68, !12, !34, !33}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12, !33, !34}
!76 = distinct !{!76, !72}
!77 = distinct !{!77, !12, !33}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12, !33, !34}
!80 = distinct !{!80, !12, !34, !33}
!81 = distinct !{!81, !12, !33, !34}
!82 = distinct !{!82, !12, !33}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12, !33, !34}
!85 = distinct !{!85, !12, !34, !33}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = !{!92, !4, i64 0}
!92 = !{!"", !4, i64 0, !4, i64 4}
!93 = !{!92, !4, i64 4}
!94 = !{!51, !51, i64 0}
!95 = !{!96, !29, i64 26672}
!96 = !{!"ZSTDv05_DCtx_s", !5, i64 0, !5, i64 4100, !5, i64 6152, !5, i64 10252, !51, i64 26640, !51, i64 26648, !51, i64 26656, !51, i64 26664, !29, i64 26672, !29, i64 26680, !97, i64 26688, !4, i64 26728, !4, i64 26732, !4, i64 26736, !50, i64 26744, !29, i64 26752, !5, i64 26760, !5, i64 157840}
!97 = !{!"", !29, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!98 = !{!96, !4, i64 26732}
!99 = !{!96, !4, i64 26736}
!100 = !{!97, !4, i64 8}
!101 = !{!96, !51, i64 26640}
!102 = !{!96, !51, i64 26664}
!103 = !{!96, !51, i64 26648}
!104 = !{!96, !51, i64 26656}
!105 = !{!96, !50, i64 26744}
!106 = !{!96, !29, i64 26752}
!107 = distinct !{!107, !12, !33, !34}
!108 = distinct !{!108, !12, !33}
!109 = distinct !{!109, !12, !33, !34}
!110 = !{!"branch_weights", i32 4, i32 28}
!111 = distinct !{!111, !12, !33, !34}
!112 = distinct !{!112, !12, !33}
!113 = distinct !{!113, !12, !33, !34}
!114 = distinct !{!114, !12, !33}
!115 = distinct !{!115, !12, !33, !34}
!116 = distinct !{!116, !12, !33, !34}
!117 = distinct !{!117, !12, !33}
!118 = distinct !{!118, !12, !33, !34}
!119 = distinct !{!119, !12, !33}
!120 = !{!96, !29, i64 26680}
!121 = !{!122, !122, i64 0}
!122 = !{!"long long", !5, i64 0}
!123 = !{!96, !4, i64 26728}
!124 = !{!125, !126, i64 0}
!125 = !{!"ZBUFFv05_DCtx_s", !126, i64 0, !97, i64 8, !50, i64 48, !29, i64 56, !29, i64 64, !50, i64 72, !29, i64 80, !29, i64 88, !29, i64 96, !29, i64 104, !4, i64 112, !5, i64 116}
!126 = !{!"p1 _ZTS14ZSTDv05_DCtx_s", !51, i64 0}
!127 = !{!125, !4, i64 112}
!128 = !{!125, !50, i64 48}
!129 = !{!125, !50, i64 72}
!130 = !{!125, !29, i64 64}
!131 = !{!125, !29, i64 96}
!132 = !{!125, !29, i64 88}
!133 = !{!125, !4, i64 16}
!134 = !{!125, !29, i64 104}
!135 = distinct !{!135, !12}
!136 = !{!125, !29, i64 56}
!137 = !{!125, !29, i64 80}
end_hunk_1
