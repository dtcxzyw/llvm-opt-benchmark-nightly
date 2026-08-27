Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v07?download=true
inline.NumInlined: 402
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ZSTDv07_getFrameParams:bb.a
  store i64 %i.f, ptr %0, align 8, !tbaa !98
  br label %.thread94.sink.split

bb.f:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 4
  %.val91 = load i8, ptr %i.g, align 1, !tbaa !16
  %i.h = zext i8 %.val91 to i32                   ; 5 uses
  %i.i = and i32 %i.h, 3                          ; 3 uses
  %i.j = lshr i32 %i.h, 6                         ; 3 uses
  %i.k = and i32 %i.h, 32                         ; 3 uses
  %.not.i = icmp ne i32 %i.k, 0
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv07_did_fieldSize, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !99
  %i.o = zext nneg i32 %i.j to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv07_fcs_fieldSize, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !99
  %.not10.i = icmp eq i32 %i.j, 0
  %narrow1.i = and i1 %.not.i, %.not10.i
  %i.r = zext i1 %narrow1.i to i64
  %.lobit.i = lshr exact i32 %i.k, 5
  %narrow.i = sub nuw nsw i32 6, %.lobit.i
  %i.s = zext nneg i32 %narrow.i to i64
  %i.t = add i64 %i.q, %i.n
  %i.u = add i64 %i.t, %i.s
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %.not78 = icmp ult i64 %2, %i.v
  br i1 %.not78, label %.thread94, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = lshr i32 %i.h, 2
  %i.x = and i32 %i.w, 1
  %i.y = and i32 %i.h, 8
  %.not79 = icmp eq i32 %i.y, 0
  br i1 %.not79, label %bb.h, label %.thread94

bb.h:                                             ; preds = %bb.g
  %.not80 = icmp eq i32 %i.k, 0                   ; 2 uses
  br i1 %.not80, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16   ; 2 uses
  %i.ab = icmp ult i8 %i.aa, -112
  br i1 %i.ab, label %.thread, label %.thread94

.thread:                                          ; preds = %bb.i
  %i.ac = zext i8 %i.aa to i32                    ; 2 uses
  %i.ad = lshr i32 %i.ac, 3                       ; 2 uses
  %i.ae = shl nuw nsw i32 1024, %i.ad
  %i.af = and i32 %i.ac, 7
  %i.ag = add nuw nsw i32 %i.ad, 7
  %i.ah = shl nuw nsw i32 %i.af, %i.ag
  %i.ai = add nuw nsw i32 %i.ah, %i.ae
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h
  %.068 = phi i64 [ 5, %bb.h ], [ 6, %.thread ]   ; 7 uses
  %.1 = phi i32 [ 0, %bb.h ], [ %i.ai, %.thread ] ; 2 uses
  switch i32 %i.i, label %default.unreachable [
    i32 3, label %bb.m
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 0, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.068
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = zext i8 %i.ak to i32
  %i.am = add nuw nsw i64 %.068, 1
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.068
  %.val90 = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.val90 to i32
  %i.ap = add nuw nsw i64 %.068, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.068
  %.val84 = load i32, ptr %i.aq, align 1
  %i.ar = add nuw nsw i64 %.068, 4
  br label %bb.n

default.unreachable:                              ; preds = %bb.n, %bb.j
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.k
  %.169 = phi i64 [ %.068, %bb.j ], [ %i.ar, %bb.m ], [ %i.am, %bb.k ], [ %i.ap, %bb.l ] ; 4 uses
  %.066 = phi i32 [ %i.i, %bb.j ], [ %.val84, %bb.m ], [ %i.al, %bb.k ], [ %i.ao, %bb.l ]
  switch i32 %i.j, label %default.unreachable [
    i32 3, label %bb.s
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 0, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br i1 %.not80, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %.169
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %i.au = zext i8 %i.at to i64
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.169
  %.val89 = load i16, ptr %i.av, align 1
  %i.aw = zext i16 %.val89 to i64
  %i.ax = add nuw nsw i64 %i.aw, 256
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.169
  %.val = load i32, ptr %i.ay, align 1
  %i.az = zext i32 %.val to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %.169
  %.val88 = load i64, ptr %i.ba, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.p, %bb.s, %bb.r, %bb.q
  %.0 = phi i64 [ %i.au, %bb.p ], [ 0, %bb.o ], [ %.val88, %bb.s ], [ %i.ax, %bb.q ], [ %i.az, %bb.r ] ; 2 uses
  %.not81 = icmp eq i32 %.1, 0
  %i.bb = trunc i64 %.0 to i32
  %spec.select = select i1 %.not81, i32 %i.bb, i32 %.1 ; 2 uses
  %i.bc = icmp ugt i32 %spec.select, 134217728
  br i1 %i.bc, label %.thread94, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %.0, ptr %0, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %spec.select, ptr %i.bd, align 8, !tbaa !100
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.066, ptr %i.be, align 4, !tbaa !101
  br label %.thread94.sink.split

.thread94.sink.split:                             ; preds = %bb.e, %bb.u
  %.sink101 = phi i64 [ 16, %bb.u ], [ 8, %bb.e ]
  %.sink = phi i32 [ %i.x, %bb.u ], [ 0, %bb.e ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink101
  store i32 %.sink, ptr %i.bf, align 8, !tbaa !8
  br label %.thread94

.thread94:                                        ; preds = %.thread94.sink.split, %bb.i, %bb.g, %bb.t, %bb.c, %bb.d, %bb.a, %bb.f
  %.4 = phi i64 [ %i.v, %bb.f ], [ 5, %bb.a ], [ -14, %bb.g ], [ 8, %bb.d ], [ -10, %bb.c ], [ -14, %bb.i ], [ -14, %bb.t ], [ 0, %.thread94.sink.split ]
  ret i64 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @ZSTDv07_getDecompressedSize(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %2 = alloca %struct.ZSTDv07_frameParams, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = call i64 @ZSTDv07_getFrameParams(ptr noundef nonnull %2, ptr noundef %0, i64 noundef %1)
  %.not = icmp eq i64 %i.a, 0
  %i.b = load i64, ptr %2, align 8
  %.0 = select i1 %.not, i64 %i.b, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ZSTDv07_decompressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %.not.i = icmp eq ptr %1, %i.b
  br i1 %.not.i, label %ZSTDv07_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !105
  store ptr %1, ptr %i.d, align 8, !tbaa !104
  store ptr %1, ptr %i.a, align 8, !tbaa !102
  br label %ZSTDv07_checkContinuity.exit

ZSTDv07_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv07_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  store ptr %i.k, ptr %i.a, align 8, !tbaa !102
  ret i64 %i.j
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTDv07_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #14 {
bb.a:
  %5 = ptrtoaddr ptr %1 to i64
  %6 = alloca %struct.seqState_t, align 8         ; 29 uses
  %i.a = icmp ugt i64 %4, 131071
  br i1 %i.a, label %ZSTDv07_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %4, 3
  br i1 %i.b, label %ZSTDv07_decompressSequences.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %3, align 1, !tbaa !16
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
  br i1 %i.f, label %ZSTDv07_decompressSequences.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = lshr i32 %i.d, 4
  %i.h = and i32 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
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
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = lshr i32 %i.r, 2
  %i.t = or disjoint i32 %i.o, %i.s               ; 2 uses
  %i.u = shl nuw nsw i32 %i.r, 16
  %i.v = and i32 %i.u, 196608
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad
  %.0131.i = zext nneg i32 %i.ae to i64           ; 2 uses
  %.0132.i = zext nneg i32 %i.t to i64
  %i.af = icmp samesign ugt i32 %i.t, 131072
  %i.ag = add nuw nsw i64 %.0131.i, 5             ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.ag, %4
  %or.cond.i = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond.i, label %ZSTDv07_decompressSequences.exit, label %.thread164.i

bb.g:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i32 %i.d, 6
  %i.aj = and i32 %i.ai, 960
  %i.ak = lshr i32 %i.k, 2
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = shl nuw nsw i32 %i.k, 8
  %i.an = and i32 %i.am, 768
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq
  %.0131149.i = zext nneg i32 %i.ar to i64        ; 3 uses
  %.0132150.i = zext nneg i32 %i.al to i64        ; 3 uses
  %i.as = add nuw nsw i64 %.0131149.i, 3          ; 3 uses
  %i.at = icmp samesign ugt i64 %i.as, %4
  br i1 %i.at, label %ZSTDv07_decompressSequences.exit, label %bb.h

.thread.i:                                        ; preds = %bb.e
  %i.au = shl nuw nsw i32 %i.d, 10
  %i.av = and i32 %i.au, 15360
  %i.aw = shl nuw nsw i32 %i.k, 2
  %i.ax = or disjoint i32 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = lshr i32 %i.ba, 6
  %i.bc = or disjoint i32 %i.ax, %i.bb
  %i.bd = shl nuw nsw i32 %i.ba, 8
  %i.be = and i32 %i.bd, 16128
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.be, %i.bh
  %.0131149193.i = zext nneg i32 %i.bi to i64     ; 2 uses
  %.0132150194.i = zext nneg i32 %i.bc to i64
  %i.bj = add nuw nsw i64 %.0131149193.i, 4       ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bj, %4
  br i1 %i.bk, label %ZSTDv07_decompressSequences.exit, label %.thread164.i

bb.h:                                             ; preds = %bb.g
  %i.bl = and i32 %i.d, 16
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.thread164.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5132
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 21760
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bq = tail call i64 @HUFv07_decompress1X2_DCtx(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, i64 noundef %.0132150.i, ptr noundef nonnull %i.bp, i64 noundef %.0131149.i)
  br label %bb.j

.thread164.i:                                     ; preds = %bb.h, %.thread.i, %bb.f
  %.0132154160172.i = phi i64 [ %.0132150.i, %bb.h ], [ %.0132.i, %bb.f ], [ %.0132150194.i, %.thread.i ] ; 2 uses
  %.0131153161170.i = phi i64 [ %.0131149.i, %bb.h ], [ %.0131.i, %bb.f ], [ %.0131149193.i, %.thread.i ]
  %.0129152162169.i = phi i64 [ 3, %bb.h ], [ 5, %bb.f ], [ 4, %.thread.i ]
  %i.br = phi i64 [ %i.as, %bb.h ], [ %i.ag, %bb.f ], [ %i.bj, %.thread.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5132
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 21760
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 %.0129152162169.i
  %i.bv = tail call i64 @HUFv07_decompress4X_hufOnly(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, i64 noundef %.0132154160172.i, ptr noundef nonnull %i.bu, i64 noundef %.0131153161170.i)
  br label %bb.j

bb.j:                                             ; preds = %.thread164.i, %bb.i
  %.0132154160171.i = phi i64 [ %.0132150.i, %bb.i ], [ %.0132154160172.i, %.thread164.i ] ; 3 uses
  %i.bw = phi i64 [ %i.as, %bb.i ], [ %i.br, %.thread164.i ]
  %i.bx = phi i64 [ %i.bq, %bb.i ], [ %i.bv, %.thread164.i ]
  %i.by = icmp ult i64 %i.bx, -119
  br i1 %i.by, label %bb.k, label %ZSTDv07_decompressSequences.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 21760 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 21720
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !106
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 21752
  store i64 %.0132154160171.i, ptr %i.cb, align 8, !tbaa !107
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i32 1, ptr %i.cc, align 8, !tbaa !90
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0132154160171.i
  store i64 0, ptr %i.cd, align 1
  br label %bb.ac

bb.l:                                             ; preds = %bb.c
  %i.ce = and i32 %i.d, 48
  %.not.i = icmp eq i32 %i.ce, 16
  br i1 %.not.i, label %bb.m, label %ZSTDv07_decompressSequences.exit

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 21608
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !90
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %ZSTDv07_decompressSequences.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = shl nuw nsw i32 %i.d, 6
  %i.cj = and i32 %i.ci, 960
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = lshr i32 %i.cm, 2
  %i.co = or disjoint i32 %i.cn, %i.cj
  %i.cp = zext nneg i32 %i.co to i64              ; 4 uses
  %i.cq = shl nuw nsw i32 %i.cm, 8
  %i.cr = and i32 %i.cq, 768
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = zext i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = add nuw nsw i64 %i.cw, 3                ; 2 uses
  %i.cy = icmp samesign ugt i64 %i.cx, %4
  br i1 %i.cy, label %ZSTDv07_decompressSequences.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 21760 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 5132 ; 2 uses
  %.val.i.i = load i32, ptr %i.da, align 4
  %i.db = and i32 %.val.i.i, 65280
  %.not.i.i = icmp eq i32 %i.db, 256
  br i1 %.not.i.i, label %HUFv07_decompress1X4_usingDTable.exit.i, label %ZSTDv07_decompressSequences.exit

HUFv07_decompress1X4_usingDTable.exit.i:          ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.dd = tail call fastcc i64 @HUFv07_decompress1X4_usingDTable_internal(ptr noundef nonnull %i.cz, i64 noundef %i.cp, ptr noundef nonnull %i.dc, i64 noundef %i.cw, ptr noundef nonnull readonly %i.da)
  %i.de = icmp ult i64 %i.dd, -119
  br i1 %i.de, label %bb.p, label %ZSTDv07_decompressSequences.exit

bb.p:                                             ; preds = %HUFv07_decompress1X4_usingDTable.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 21720
  store ptr %i.cz, ptr %i.df, align 8, !tbaa !106
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 21752
  store i64 %i.cp, ptr %i.dg, align 8, !tbaa !107
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cp
  store i64 0, ptr %i.dh, align 1
  br label %bb.ac

bb.q:                                             ; preds = %bb.c
  %i.di = lshr i32 %i.d, 4
  %i.dj = and i32 %i.di, 3
  switch i32 %i.dj, label %bb.r [
    i32 3, label %bb.t
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.dk = and i32 %i.d, 31
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.dl = shl nuw nsw i32 %i.d, 8
  %i.dm = and i32 %i.dl, 3840
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = zext i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dm, %i.dp
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.dr = shl nuw nsw i32 %i.d, 16
  %i.ds = and i32 %i.dr, 983040
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 8
  %i.dx = or disjoint i32 %i.dw, %i.ds
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !16
  %i.ea = zext i8 %i.dz to i32
  %i.eb = or disjoint i32 %i.dx, %i.ea
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0128.in.i = phi i32 [ %i.dk, %bb.r ], [ %i.eb, %bb.t ], [ %i.dq, %bb.s ]
  %.0127.i = phi i64 [ 1, %bb.r ], [ 3, %bb.t ], [ 2, %bb.s ] ; 3 uses
  %.0128.i = zext nneg i32 %.0128.in.i to i64     ; 7 uses
  %i.ec = add nuw nsw i64 %.0127.i, %.0128.i      ; 4 uses
  %i.ed = add nuw nsw i64 %i.ec, 8
  %i.ee = icmp samesign ugt i64 %i.ed, %4
  br i1 %i.ee, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ef = icmp samesign ugt i64 %i.ec, %4
  br i1 %i.ef, label %ZSTDv07_decompressSequences.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 21760 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 %.0127.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr nonnull align 1 %i.eh, i64 %.0128.i, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 21720
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !106
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 21752
  store i64 %.0128.i, ptr %i.ej, align 8, !tbaa !107
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.0128.i
  store i64 0, ptr %i.ek, align 1
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 %.0127.i ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 21720
  store ptr %i.el, ptr %i.em, align 8, !tbaa !106
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 21752
  store i64 %.0128.i, ptr %i.en, align 8, !tbaa !107
  br label %bb.ac

bb.y:                                             ; preds = %bb.c
  %i.eo = lshr i32 %i.d, 4
  %i.ep = and i32 %i.eo, 3
  switch i32 %i.ep, label %bb.z [
    i32 3, label %bb.ab
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.eq = and i32 %i.d, 31
  br label %.thread176.i

bb.aa:                                            ; preds = %bb.y
  %i.er = shl nuw nsw i32 %i.d, 8
  %i.es = and i32 %i.er, 3840
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !16
  %i.ev = zext i8 %i.eu to i32
  %i.ew = or disjoint i32 %i.es, %i.ev
  br label %.thread176.i

bb.ab:                                            ; preds = %bb.y
  %i.ex = shl nuw nsw i32 %i.d, 16
  %i.ey = and i32 %i.ex, 983040
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !16
  %i.fb = zext i8 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 8
  %i.fd = or disjoint i32 %i.fc, %i.ey
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !16
  %i.fg = zext i8 %i.ff to i32
  %i.fh = or disjoint i32 %i.fd, %i.fg            ; 2 uses
  %i.fi = icmp eq i64 %4, 3
  %i.fj = icmp samesign ugt i32 %i.fh, 131072
  %or.cond182.i = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond182.i, label %ZSTDv07_decompressSequences.exit, label %.thread176.i

.thread176.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z
  %.0180.i = phi i32 [ 3, %bb.ab ], [ 2, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %.0126.in179.i = phi i32 [ %i.fh, %bb.ab ], [ %i.ew, %bb.aa ], [ %i.eq, %bb.z ]
  %.0126.i = zext nneg i32 %.0126.in179.i to i64  ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 21760 ; 3 uses
  %i.fl = zext nneg i32 %.0180.i to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !16
  %i.fo = add nuw nsw i64 %.0126.i, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fk, i8 %i.fn, i64 %i.fo, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 21720
  store ptr %i.fk, ptr %i.fp, align 8, !tbaa !106
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 21752
  store i64 %.0126.i, ptr %i.fq, align 8, !tbaa !107
  %i.fr = add nuw nsw i32 %.0180.i, 1
  %i.fs = zext nneg i32 %i.fr to i64
  br label %bb.ac

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.ac:                                            ; preds = %.thread176.i, %bb.x, %bb.w, %bb.p, %bb.k
  %i.ft = phi i64 [ %.0128.i, %bb.w ], [ %.0126.i, %.thread176.i ], [ %i.cp, %bb.p ], [ %.0128.i, %bb.x ], [ %.0132154160171.i, %bb.k ]
  %i.fu = phi ptr [ %i.eg, %bb.w ], [ %i.fk, %.thread176.i ], [ %i.cz, %bb.p ], [ %i.el, %bb.x ], [ %i.bz, %bb.k ] ; 4 uses
  %.5.i = phi i64 [ %i.ec, %bb.w ], [ %i.fs, %.thread176.i ], [ %i.cx, %bb.p ], [ %i.ec, %bb.x ], [ %i.bw, %bb.k ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 %.5.i ; 6 uses
  %i.fw = sub nsw i64 %4, %.5.i                   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2052 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !104 ; 7 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 21536
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !105
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 21544
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !103
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 21612 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !89 ; 3 uses
  %i.gk = icmp eq i64 %4, %.5.i
  br i1 %i.gk, label %ZSTDv07_decompressSequences.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 3 uses
  %i.gm = load i8, ptr %i.fv, align 1, !tbaa !16  ; 4 uses
  %i.gn = zext i8 %i.gm to i32                    ; 2 uses
  %.not.i.i21 = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i21, label %.thread.i23, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.go = icmp slt i8 %i.gm, 0
  br i1 %i.go, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.gp = icmp eq i8 %i.gm, -1
  br i1 %i.gp, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gq = icmp samesign ult i64 %i.fw, 3
  br i1 %i.gq, label %ZSTDv07_decompressSequences.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fv, i64 3
  %.val.i.i24 = load i16, ptr %i.gl, align 1
  %i.gs = zext i16 %.val.i.i24 to i32
  %i.gt = add nuw nsw i32 %i.gs, 32512
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %.not81.not.i.i = icmp eq i64 %i.fw, 1
  br i1 %.not81.not.i.i, label %ZSTDv07_decompressSequences.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gu = shl nuw nsw i32 %i.gn, 8
  %i.gv = add nsw i32 %i.gu, -32768
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.gx = load i8, ptr %i.gl, align 1, !tbaa !16
  %i.gy = zext i8 %i.gx to i32
  %i.gz = or disjoint i32 %i.gv, %i.gy
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ae
  %.065.i.i = phi ptr [ %i.gr, %bb.ah ], [ %i.gw, %bb.aj ], [ %i.gl, %bb.ae ] ; 3 uses
  %.0.i.i = phi i32 [ %i.gt, %bb.ah ], [ %i.gz, %bb.aj ], [ %i.gn, %bb.ae ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 4
  %i.hb = icmp ugt ptr %i.ha, %i.fx
  br i1 %i.hb, label %ZSTDv07_decompressSequences.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hc = load i8, ptr %.065.i.i, align 1, !tbaa !16
  %i.hd = zext i8 %i.hc to i32                    ; 3 uses
  %i.he = lshr i32 %i.hd, 6
  %i.hf = lshr i32 %i.hd, 2
  %i.hg = and i32 %i.hf, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %.065.i.i, i64 1 ; 3 uses
  %i.hi = ptrtoint ptr %i.fx to i64               ; 4 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = tail call fastcc i64 @ZSTDv07_buildSeqTable(ptr noundef nonnull %0, i32 noundef %i.he, i32 noundef 35, i32 noundef 9, ptr noundef nonnull %i.hh, i64 noundef %i.hk, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef %i.gj) ; 2 uses
  %i.hm = icmp ult i64 %i.hl, -119
  br i1 %i.hm, label %bb.am, label %ZSTDv07_decompressSequences.exit

bb.am:                                            ; preds = %bb.al
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hl ; 3 uses
  %i.ho = lshr i32 %i.hd, 4
  %i.hp = and i32 %i.ho, 3
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hi, %i.hq
  %i.hs = tail call fastcc i64 @ZSTDv07_buildSeqTable(ptr noundef nonnull %i.gb, i32 noundef %i.hp, i32 noundef 28, i32 noundef 8, ptr noundef nonnull %i.hn, i64 noundef %i.hr, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %i.gj) ; 2 uses
  %i.ht = icmp ult i64 %i.hs, -119
  br i1 %i.ht, label %bb.an, label %ZSTDv07_decompressSequences.exit

bb.an:                                            ; preds = %bb.am
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hs ; 3 uses
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.hi, %i.hv
  %i.hx = tail call fastcc i64 @ZSTDv07_buildSeqTable(ptr noundef nonnull %i.ga, i32 noundef %i.hg, i32 noundef 52, i32 noundef 9, ptr noundef nonnull %i.hu, i64 noundef %i.hw, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef %i.gj) ; 2 uses
  %i.hy = icmp ult i64 %i.hx, -119
  br i1 %i.hy, label %ZSTDv07_decodeSeqHeaders.exit.i, label %ZSTDv07_decompressSequences.exit

ZSTDv07_decodeSeqHeaders.exit.i:                  ; preds = %bb.an
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hx ; 12 uses
  %i.ia = ptrtoint ptr %i.hz to i64               ; 7 uses
  %i.ib = ptrtoint ptr %i.fv to i64
  %i.ic = sub i64 %i.ia, %i.ib                    ; 3 uses
  %i.id = icmp ult i64 %i.ic, -119
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ic ; 30 uses
  br i1 %i.id, label %bb.ao, label %ZSTDv07_decompressSequences.exit

bb.ao:                                            ; preds = %ZSTDv07_decodeSeqHeaders.exit.i
  %.not89.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not89.i, label %.thread.i23, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 1, ptr %i.gi, align 4, !tbaa !89
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 21560 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.ih = load i32, ptr %i.if, align 8, !tbaa !8
  %i.ii = zext i32 %i.ih to i64                   ; 3 uses
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !99
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 21564 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !8
  %i.il = zext i32 %i.ik to i64                   ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  store i64 %i.il, ptr %i.im, align 8, !tbaa !99
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 21568 ; 2 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !8
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !99
  %i.ir = sub i64 %i.hi, %i.ia                    ; 6 uses
  %i.is = icmp eq ptr %i.fx, %i.hz
  br i1 %i.is, label %.thread166.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.it = icmp ugt i64 %i.ir, 7
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ie, ptr %i.iu, align 8, !tbaa !47
  br i1 %i.it, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.add.i = add nsw i64 %i.ir, -8                 ; 2 uses
  %.ptr277.i = getelementptr inbounds i8, ptr %i.ie, i64 %.add.i ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.ptr277.i, ptr %i.iv, align 8, !tbaa !52
  %.val.i95.i = load i64, ptr %.ptr277.i, align 1 ; 3 uses
  store i64 %.val.i95.i, ptr %6, align 8, !tbaa !53
  %i.iw = lshr i64 %.val.i95.i, 56                ; 2 uses
  %.not51.i.i = icmp eq i64 %i.iw, 0
  br i1 %.not51.i.i, label %.thread166.i, label %BITv07_initDStream.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ie, ptr %i.ix, align 8, !tbaa !52
  %i.iy = load i8, ptr %i.ie, align 1, !tbaa !16
  %i.iz = zext i8 %i.iy to i64                    ; 8 uses
  store i64 %i.iz, ptr %6, align 8, !tbaa !53
  switch i64 %i.ir, label %bb.az [
    i64 7, label %bb.at
    i64 6, label %bb.au
    i64 5, label %bb.av
    i64 4, label %bb.aw
    i64 3, label %bb.ax
    i64 2, label %bb.ay
  ]

bb.at:                                            ; preds = %bb.as
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ie, i64 6
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !16
  %i.jc = zext i8 %i.jb to i64
  %i.jd = shl nuw nsw i64 %i.jc, 48
  %i.je = or disjoint i64 %i.jd, %i.iz
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jf = phi i64 [ %i.je, %bb.at ], [ %i.iz, %bb.as ]
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ie, i64 5
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !16
  %i.ji = zext i8 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 40
  %i.jk = add nuw nsw i64 %i.jj, %i.jf
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as
  %i.jl = phi i64 [ %i.jk, %bb.au ], [ %i.iz, %bb.as ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !16
  %i.jo = zext i8 %i.jn to i64
  %i.jp = shl nuw nsw i64 %i.jo, 32
  %i.jq = add nuw nsw i64 %i.jp, %i.jl
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %i.jr = phi i64 [ %i.jq, %bb.av ], [ %i.iz, %bb.as ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.ie, i64 3
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !16
  %i.ju = zext i8 %i.jt to i64
  %i.jv = shl nuw nsw i64 %i.ju, 24
  %i.jw = add nuw nsw i64 %i.jv, %i.jr
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.as
  %i.jx = phi i64 [ %i.jw, %bb.aw ], [ %i.iz, %bb.as ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !16
  %i.ka = zext i8 %i.jz to i64
  %i.kb = shl nuw nsw i64 %i.ka, 16
  %i.kc = add nuw nsw i64 %i.kb, %i.jx
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.as
  %i.kd = phi i64 [ %i.kc, %bb.ax ], [ %i.iz, %bb.as ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !16
  %i.kg = zext i8 %i.kf to i64
  %i.kh = shl nuw nsw i64 %i.kg, 8
  %i.ki = add nuw nsw i64 %i.kh, %i.kd            ; 2 uses
  store i64 %i.ki, ptr %6, align 8, !tbaa !53
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.as
  %.val.i.i226.i = phi i64 [ %i.ki, %bb.ay ], [ %i.iz, %bb.as ]
  %i.kj = getelementptr i8, ptr %i.ie, i64 %i.ir
  %i.kk = getelementptr i8, ptr %i.kj, i64 -1
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !16  ; 2 uses
  %.not.i94.i = icmp eq i8 %i.kl, 0
  br i1 %.not.i94.i, label %.thread166.i, label %BITv07_initDStream.exit.thread155.i

BITv07_initDStream.exit.thread155.i:              ; preds = %bb.az
  %i.km = zext i8 %i.kl to i32
  %i.kn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.km, i1 true)
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.kp = trunc nuw nsw i64 %i.ir to i32
  %i.kq = shl nuw nsw i32 %i.kp, 3
  %reass.sub.i = sub nsw i32 %i.kn, %i.kq
  %i.kr = add nsw i32 %reass.sub.i, 41            ; 2 uses
  store i32 %i.kr, ptr %i.ko, align 8, !tbaa !54
  br label %bb.ba

BITv07_initDStream.exit.i:                        ; preds = %bb.ar
  %i.ks = trunc nuw nsw i64 %i.iw to i32
  %i.kt = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ks, i1 true)
  %i.ku = xor i32 %i.kt, 31
  %i.kv = sub nuw nsw i32 8, %i.ku
  %i.kw = icmp ult i64 %i.ir, -119
  br i1 %i.kw, label %bb.ba, label %.thread166.i

bb.ba:                                            ; preds = %BITv07_initDStream.exit.i, %BITv07_initDStream.exit.thread155.i
  %.idx.i = phi i64 [ 0, %BITv07_initDStream.exit.thread155.i ], [ %.add.i, %BITv07_initDStream.exit.i ] ; 5 uses
  %.val4.i.i.i = phi i32 [ %i.kr, %BITv07_initDStream.exit.thread155.i ], [ %i.kv, %BITv07_initDStream.exit.i ] ; 2 uses
  %.val.i.i.i = phi i64 [ %.val.i.i226.i, %BITv07_initDStream.exit.thread155.i ], [ %.val.i95.i, %BITv07_initDStream.exit.i ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds i8, ptr %i.ie, i64 %.idx.i ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ky = load i16, ptr %0, align 8, !tbaa !37
  %i.kz = zext i16 %i.ky to i32                   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lb = and i32 %.val4.i.i.i, 63
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = shl i64 %.val.i.i.i, %i.lc
  %i.le = lshr i64 %i.ld, 1
  %i.lf = and i32 %i.kz, 63
  %i.lg = xor i32 %i.lf, 63
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = lshr i64 %i.le, %i.lh                   ; 2 uses
  %i.lj = add nuw nsw i32 %.val4.i.i.i, %i.kz     ; 7 uses
  store i64 %i.li, ptr %i.kx, align 8, !tbaa !108
  %i.lk = icmp samesign ugt i32 %i.lj, 64
  br i1 %i.lk, label %FSEv07_initDState.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ll = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.not.i.i.i = icmp slt i64 %.idx.i, 8
  br i1 %.not.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lm = lshr i32 %i.lj, 3
  %i.ln = zext nneg i32 %i.lm to i64
  %.ptr.add279.i = sub nuw nsw i64 %.idx.i, %i.ln ; 2 uses
  %.ptr282.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.ptr.add279.i
  store ptr %.ptr282.i, ptr %i.ll, align 8, !tbaa !52
  %i.lo = and i32 %i.lj, 7
  br label %BITv07_reloadDStream.exit.sink.split.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.lp = icmp eq ptr %.ptr.ptr.i, %i.hz
  br i1 %i.lp, label %FSEv07_initDState.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lq = lshr i32 %i.lj, 3                       ; 2 uses
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = getelementptr inbounds i8, ptr %.ptr.ptr.i, i64 %i.ls
  %i.lu = icmp ult ptr %i.lt, %i.hz
  %i.lv = ptrtoint ptr %.ptr.ptr.i to i64
  %i.lw = sub i64 %i.lv, %i.ia
  %i.lx = trunc i64 %i.lw to i32
  %.024.i.i.i = select i1 %i.lu, i32 %i.lx, i32 %i.lq ; 2 uses
  %i.ly = zext i32 %.024.i.i.i to i64
  %.ptr.add.i = sub nsw i64 %.idx.i, %i.ly        ; 2 uses
  %.ptr281.i = getelementptr inbounds i8, ptr %i.ie, i64 %.ptr.add.i
  store ptr %.ptr281.i, ptr %i.ll, align 8, !tbaa !52
  %i.lz = shl i32 %.024.i.i.i, 3
  %i.ma = sub i32 %i.lj, %i.lz
  br label %BITv07_reloadDStream.exit.sink.split.i.i

BITv07_reloadDStream.exit.sink.split.i.i:         ; preds = %bb.be, %bb.bc
  %storemerge.i = phi i32 [ %i.lo, %bb.bc ], [ %i.ma, %bb.be ] ; 2 uses
  %.val30.i.sink.in.i.idx.i = phi i64 [ %.ptr.add279.i, %bb.bc ], [ %.ptr.add.i, %bb.be ] ; 2 uses
  %.val30.i.sink.in.i.ptr.i = getelementptr inbounds i8, ptr %i.ie, i64 %.val30.i.sink.in.i.idx.i
  store i32 %storemerge.i, ptr %i.la, align 8, !tbaa !54
  %.val30.i.sink.i.i = load i64, ptr %.val30.i.sink.in.i.ptr.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i.i, ptr %6, align 8, !tbaa !53
  br label %FSEv07_initDState.exit.i

FSEv07_initDState.exit.i:                         ; preds = %BITv07_reloadDStream.exit.sink.split.i.i, %bb.bd, %bb.ba
  %.idx278.i = phi i64 [ %.idx.i, %bb.ba ], [ 0, %bb.bd ], [ %.val30.i.sink.in.i.idx.i, %BITv07_reloadDStream.exit.sink.split.i.i ] ; 5 uses
  %.val4.i.i97.i = phi i32 [ %i.lj, %bb.ba ], [ %i.lj, %bb.bd ], [ %storemerge.i, %BITv07_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.val.i.i96.i = phi i64 [ %.val.i.i.i, %bb.ba ], [ %.val.i.i.i, %bb.bd ], [ %.val30.i.sink.i.i, %BITv07_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %.ptr280.ptr.i = getelementptr inbounds i8, ptr %i.ie, i64 %.idx278.i ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !110
  %i.md = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.me = load i16, ptr %i.gb, align 4, !tbaa !37
  %i.mf = zext i16 %i.me to i32                   ; 2 uses
  %i.mg = and i32 %.val4.i.i97.i, 63
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = shl i64 %.val.i.i96.i, %i.mh
  %i.mj = lshr i64 %i.mi, 1
  %i.mk = and i32 %i.mf, 63
  %i.ml = xor i32 %i.mk, 63
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = lshr i64 %i.mj, %i.mm                   ; 2 uses
  %i.mo = add i32 %.val4.i.i97.i, %i.mf           ; 7 uses
  store i64 %i.mn, ptr %i.md, align 8, !tbaa !108
  %i.mp = icmp ugt i32 %i.mo, 64
  br i1 %i.mp, label %FSEv07_initDState.exit103.i, label %bb.bf

bb.bf:                                            ; preds = %FSEv07_initDState.exit.i
  %i.mq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.not.i.i98.i = icmp slt i64 %.idx278.i, 8
  br i1 %.not.i.i98.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mr = lshr i32 %i.mo, 3
  %i.ms = zext nneg i32 %i.mr to i64
  %.ptr280.add284.i = sub nuw nsw i64 %.idx278.i, %i.ms ; 2 uses
  %.ptr286.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.ptr280.add284.i
  store ptr %.ptr286.i, ptr %i.mq, align 8, !tbaa !52
  %i.mt = and i32 %i.mo, 7
  br label %BITv07_reloadDStream.exit.sink.split.i99.i

bb.bh:                                            ; preds = %bb.bf
  %i.mu = icmp eq ptr %.ptr280.ptr.i, %i.hz
  br i1 %i.mu, label %FSEv07_initDState.exit103.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mv = lshr i32 %i.mo, 3                       ; 2 uses
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = sub nsw i64 0, %i.mw
  %i.my = getelementptr inbounds i8, ptr %.ptr280.ptr.i, i64 %i.mx
  %i.mz = icmp ult ptr %i.my, %i.hz
  %i.na = ptrtoint ptr %.ptr280.ptr.i to i64
  %i.nb = sub i64 %i.na, %i.ia
  %i.nc = trunc i64 %i.nb to i32
  %.024.i.i102.i = select i1 %i.mz, i32 %i.nc, i32 %i.mv ; 2 uses
  %i.nd = zext i32 %.024.i.i102.i to i64
  %.ptr280.add.i = sub nsw i64 %.idx278.i, %i.nd  ; 2 uses
  %.ptr285.i = getelementptr inbounds i8, ptr %i.ie, i64 %.ptr280.add.i
  store ptr %.ptr285.i, ptr %i.mq, align 8, !tbaa !52
  %i.ne = shl i32 %.024.i.i102.i, 3
  %i.nf = sub i32 %i.mo, %i.ne
  br label %BITv07_reloadDStream.exit.sink.split.i99.i

BITv07_reloadDStream.exit.sink.split.i99.i:       ; preds = %bb.bi, %bb.bg
  %storemerge176.i = phi i32 [ %i.mt, %bb.bg ], [ %i.nf, %bb.bi ]
  %.val30.i.sink.in.i100.idx.i = phi i64 [ %.ptr280.add284.i, %bb.bg ], [ %.ptr280.add.i, %bb.bi ] ; 2 uses
  %.val30.i.sink.in.i100.ptr.i = getelementptr inbounds i8, ptr %i.ie, i64 %.val30.i.sink.in.i100.idx.i
  %.val30.i.sink.i101.i = load i64, ptr %.val30.i.sink.in.i100.ptr.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i101.i, ptr %6, align 8, !tbaa !53
  br label %FSEv07_initDState.exit103.i

FSEv07_initDState.exit103.i:                      ; preds = %BITv07_reloadDStream.exit.sink.split.i99.i, %bb.bh, %FSEv07_initDState.exit.i
  %.idx283.i = phi i64 [ %.idx278.i, %FSEv07_initDState.exit.i ], [ 0, %bb.bh ], [ %.val30.i.sink.in.i100.idx.i, %BITv07_reloadDStream.exit.sink.split.i99.i ] ; 5 uses
  %.val4.i.i105.i = phi i32 [ %i.mo, %FSEv07_initDState.exit.i ], [ %i.mo, %bb.bh ], [ %storemerge176.i, %BITv07_reloadDStream.exit.sink.split.i99.i ] ; 2 uses
  %.val.i.i104.i = phi i64 [ %.val.i.i96.i, %FSEv07_initDState.exit.i ], [ %.val.i.i96.i, %bb.bh ], [ %.val30.i.sink.i101.i, %BITv07_reloadDStream.exit.sink.split.i99.i ] ; 3 uses
  %.ptr.ptr298.i = getelementptr inbounds i8, ptr %i.ie, i64 %.idx283.i ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !110
  %i.ni = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.nj = load i16, ptr %i.ga, align 8, !tbaa !37
  %i.nk = zext i16 %i.nj to i32                   ; 2 uses
  %i.nl = and i32 %.val4.i.i105.i, 63
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = shl i64 %.val.i.i104.i, %i.nm
  %i.no = lshr i64 %i.nn, 1
  %i.np = and i32 %i.nk, 63
  %i.nq = xor i32 %i.np, 63
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = lshr i64 %i.no, %i.nr                   ; 2 uses
  %i.nt = add i32 %.val4.i.i105.i, %i.nk          ; 7 uses
  store i64 %i.ns, ptr %i.ni, align 8, !tbaa !108
  %i.nu = icmp ugt i32 %i.nt, 64
  br i1 %i.nu, label %FSEv07_initDState.exit111.i, label %bb.bj

bb.bj:                                            ; preds = %FSEv07_initDState.exit103.i
  %i.nv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.not.i.i106.i = icmp slt i64 %.idx283.i, 8
  br i1 %.not.i.i106.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nw = lshr i32 %i.nt, 3
  %i.nx = zext nneg i32 %i.nw to i64
  %.ptr.add295.i = sub nuw nsw i64 %.idx283.i, %i.nx ; 2 uses
  %.ptr305.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.ptr.add295.i
  store ptr %.ptr305.i, ptr %i.nv, align 8, !tbaa !52
  %i.ny = and i32 %i.nt, 7
  br label %BITv07_reloadDStream.exit.sink.split.i107.i

bb.bl:                                            ; preds = %bb.bj
  %i.nz = icmp eq ptr %.ptr.ptr298.i, %i.hz
  br i1 %i.nz, label %FSEv07_initDState.exit111.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oa = lshr i32 %i.nt, 3                       ; 2 uses
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = sub nsw i64 0, %i.ob
  %i.od = getelementptr inbounds i8, ptr %.ptr.ptr298.i, i64 %i.oc
  %i.oe = icmp ult ptr %i.od, %i.hz
  %i.of = ptrtoint ptr %.ptr.ptr298.i to i64
  %i.og = sub i64 %i.of, %i.ia
  %i.oh = trunc i64 %i.og to i32
  %.024.i.i110.i = select i1 %i.oe, i32 %i.oh, i32 %i.oa ; 2 uses
  %i.oi = zext i32 %.024.i.i110.i to i64
  %.ptr.add294.i = sub nsw i64 %.idx283.i, %i.oi  ; 2 uses
  %.ptr304.i = getelementptr inbounds i8, ptr %i.ie, i64 %.ptr.add294.i
  store ptr %.ptr304.i, ptr %i.nv, align 8, !tbaa !52
  %i.oj = shl i32 %.024.i.i110.i, 3
  %i.ok = sub i32 %i.nt, %i.oj
  br label %BITv07_reloadDStream.exit.sink.split.i107.i

BITv07_reloadDStream.exit.sink.split.i107.i:      ; preds = %bb.bm, %bb.bk
  %storemerge177.i = phi i32 [ %i.ny, %bb.bk ], [ %i.ok, %bb.bm ]
  %.val30.i.sink.in.i108.idx.i = phi i64 [ %.ptr.add295.i, %bb.bk ], [ %.ptr.add294.i, %bb.bm ] ; 2 uses
  %.val30.i.sink.in.i108.ptr.i = getelementptr inbounds i8, ptr %i.ie, i64 %.val30.i.sink.in.i108.idx.i
  %.val30.i.sink.i109.i = load i64, ptr %.val30.i.sink.in.i108.ptr.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i109.i, ptr %6, align 8, !tbaa !53
  br label %FSEv07_initDState.exit111.i

FSEv07_initDState.exit111.i:                      ; preds = %BITv07_reloadDStream.exit.sink.split.i107.i, %bb.bl, %FSEv07_initDState.exit103.i
  %.promoted208.idx.i = phi i64 [ %.idx283.i, %FSEv07_initDState.exit103.i ], [ 0, %bb.bl ], [ %.val30.i.sink.in.i108.idx.i, %BITv07_reloadDStream.exit.sink.split.i107.i ]
  %.promoted198.i = phi i64 [ %.val.i.i104.i, %FSEv07_initDState.exit103.i ], [ %.val.i.i104.i, %bb.bl ], [ %.val30.i.sink.i109.i, %BITv07_reloadDStream.exit.sink.split.i107.i ]
  %.promoted.i = phi i32 [ %i.nt, %FSEv07_initDState.exit103.i ], [ %i.nt, %bb.bl ], [ %storemerge177.i, %BITv07_reloadDStream.exit.sink.split.i107.i ]
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 3084 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.ol, ptr %i.om, align 8, !tbaa !110
  %i.on = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.oo = getelementptr inbounds i8, ptr %i.fy, i64 -8 ; 5 uses
  %i.op = ptrtoint ptr %i.fy to i64
  %i.oq = ptrtoint ptr %i.fz to i64
  %i.or = ptrtoint ptr %i.gd to i64               ; 13 uses
  %i.os = ptrtoint ptr %i.gf to i64
  %i.ot = getelementptr inbounds i8, ptr %i.fy, i64 -13
  %i.ou = ptrtoint ptr %i.oo to i64
  %7 = add i64 %2, %5
  %8 = add i64 %7, -8                             ; 3 uses
  %i.ov = add i64 %i.or, 8
  %i.ow = add i64 %i.or, 8
  %i.ox = add i64 %i.or, 1
  %invariant.op = add i64 %i.or, 16
  %invariant.op279 = add i64 %i.or, 16
  br label %bb.bn

bb.bn:                                            ; preds = %ZSTDv07_execSequence.exit.i, %FSEv07_initDState.exit111.i
  %i.oy = phi i64 [ %i.ip, %FSEv07_initDState.exit111.i ], [ %i.re, %ZSTDv07_execSequence.exit.i ] ; 3 uses
  %i.oz = phi i64 [ %i.il, %FSEv07_initDState.exit111.i ], [ %i.rf, %ZSTDv07_execSequence.exit.i ] ; 2 uses
  %i.pa = phi i64 [ %i.ii, %FSEv07_initDState.exit111.i ], [ %i.rg, %ZSTDv07_execSequence.exit.i ] ; 2 uses
  %i.pb = phi i64 [ %i.ii, %FSEv07_initDState.exit111.i ], [ %i.rh, %ZSTDv07_execSequence.exit.i ] ; 4 uses
  %i.pc = phi i64 [ %i.il, %FSEv07_initDState.exit111.i ], [ %i.ri, %ZSTDv07_execSequence.exit.i ] ; 3 uses
  %.idx287.i = phi i64 [ %.promoted208.idx.i, %FSEv07_initDState.exit111.i ], [ %.idx288.i, %ZSTDv07_execSequence.exit.i ] ; 5 uses
  %.val.i115207.i = phi i64 [ %i.mn, %FSEv07_initDState.exit111.i ], [ %i.un, %ZSTDv07_execSequence.exit.i ]
  %.val60.i205.i = phi i64 [ %i.ns, %FSEv07_initDState.exit111.i ], [ %i.ub, %ZSTDv07_execSequence.exit.i ]
  %.val62.i203.i = phi i64 [ %i.li, %FSEv07_initDState.exit111.i ], [ %i.tp, %ZSTDv07_execSequence.exit.i ]
  %.val.i68.i199.i = phi i64 [ %.promoted198.i, %FSEv07_initDState.exit111.i ], [ %.val.i68.i200.i, %ZSTDv07_execSequence.exit.i ]
  %storemerge178192.i = phi i32 [ %.promoted.i, %FSEv07_initDState.exit111.i ], [ %i.ul, %ZSTDv07_execSequence.exit.i ] ; 6 uses
  %.0134.i = phi ptr [ %i.fu, %FSEv07_initDState.exit111.i ], [ %i.ur, %ZSTDv07_execSequence.exit.i ] ; 6 uses
  %.0133.i = phi i32 [ %.0.i.i, %FSEv07_initDState.exit111.i ], [ %i.pw, %ZSTDv07_execSequence.exit.i ] ; 3 uses
  %.075.i = phi ptr [ %1, %FSEv07_initDState.exit111.i ], [ %i.uq, %ZSTDv07_execSequence.exit.i ] ; 7 uses
  %.ptr296.i = getelementptr inbounds i8, ptr %i.ie, i64 %.idx287.i ; 3 uses
  %i.pd = icmp ugt i32 %storemerge178192.i, 64
  br i1 %i.pd, label %BITv07_reloadDStream.exit.thread.i, label %bb.bo

BITv07_reloadDStream.exit.thread.i:               ; preds = %bb.bn
  %.not179.i = icmp eq i32 %.0133.i, 0
  br i1 %.not179.i, label %.preheader.i, label %.thread166.i

bb.bo:                                            ; preds = %bb.bn
  %.not.i112.i = icmp slt i64 %.idx287.i, 8
  br i1 %.not.i112.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pe = lshr i32 %storemerge178192.i, 3
  %i.pf = zext nneg i32 %i.pe to i64
  %.add291.i = sub nuw nsw i64 %.idx287.i, %i.pf  ; 2 uses
  %.ptr301.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.add291.i ; 2 uses
  store ptr %.ptr301.i, ptr %i.on, align 8, !tbaa !52
  %i.pg = and i32 %storemerge178192.i, 7
  br label %BITv07_reloadDStream.exit.sink.split.i

bb.bq:                                            ; preds = %bb.bo
  %i.ph = icmp eq ptr %.ptr296.i, %i.hz
  br i1 %i.ph, label %BITv07_reloadDStream.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pi = lshr i32 %storemerge178192.i, 3         ; 2 uses
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = sub nsw i64 0, %i.pj
  %i.pl = getelementptr inbounds i8, ptr %.ptr296.i, i64 %i.pk
  %i.pm = icmp ult ptr %i.pl, %i.hz
  %i.pn = ptrtoint ptr %.ptr296.i to i64
  %i.po = sub i64 %i.pn, %i.ia
  %i.pp = trunc i64 %i.po to i32
  %.024.i.i = select i1 %i.pm, i32 %i.pp, i32 %i.pi ; 2 uses
  %i.pq = zext i32 %.024.i.i to i64
  %.add290.i = sub nsw i64 %.idx287.i, %i.pq      ; 2 uses
  %.ptr300.i = getelementptr inbounds i8, ptr %i.ie, i64 %.add290.i ; 2 uses
  store ptr %.ptr300.i, ptr %i.on, align 8, !tbaa !52
  %i.pr = shl i32 %.024.i.i, 3
  %i.ps = sub i32 %storemerge178192.i, %i.pr
  br label %BITv07_reloadDStream.exit.sink.split.i

BITv07_reloadDStream.exit.sink.split.i:           ; preds = %bb.br, %bb.bp
  %.val30.i.sink.in.i = phi ptr [ %.ptr301.i, %bb.bp ], [ %.ptr300.i, %bb.br ]
  %.idx289.ph.i = phi i64 [ %.add291.i, %bb.bp ], [ %.add290.i, %bb.br ]
  %storemerge178195.ph.i = phi i32 [ %i.pg, %bb.bp ], [ %i.ps, %bb.br ]
  %.val30.i.sink.i = load i64, ptr %.val30.i.sink.in.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i, ptr %6, align 8, !tbaa !53
  br label %BITv07_reloadDStream.exit.i

BITv07_reloadDStream.exit.i:                      ; preds = %BITv07_reloadDStream.exit.sink.split.i, %bb.bq
  %.idx289.i = phi i64 [ %.idx287.i, %bb.bq ], [ %.idx289.ph.i, %BITv07_reloadDStream.exit.sink.split.i ] ; 6 uses
  %.val.i68.i201.i = phi i64 [ %.val.i68.i199.i, %bb.bq ], [ %.val30.i.sink.i, %BITv07_reloadDStream.exit.sink.split.i ] ; 5 uses
  %storemerge178195.i = phi i32 [ %storemerge178192.i, %bb.bq ], [ %storemerge178195.ph.i, %BITv07_reloadDStream.exit.sink.split.i ] ; 3 uses
  %.ptr299.i = getelementptr inbounds i8, ptr %i.ie, i64 %.idx289.i ; 3 uses
  %.not.i22 = icmp eq i32 %.0133.i, 0
  br i1 %.not.i22, label %.preheader.i, label %bb.bs

.preheader.i:                                     ; preds = %BITv07_reloadDStream.exit.i, %BITv07_reloadDStream.exit.thread.i
  %i.pt = trunc i64 %i.pa to i32
  store i32 %i.pt, ptr %i.if, align 8, !tbaa !8
  %i.pu = trunc i64 %i.oz to i32
  store i32 %i.pu, ptr %i.ij, align 4, !tbaa !8
  %i.pv = trunc i64 %i.oy to i32
  store i32 %i.pv, ptr %i.in, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.thread.i23

bb.bs:                                            ; preds = %BITv07_reloadDStream.exit.i
  %i.pw = add nsw i32 %.0133.i, -1
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %.val62.i203.i ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.px, i64 2
  %.sroa.3.0.copyload.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i, align 2, !tbaa !16, !noalias !111 ; 3 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.val60.i205.i ; 3 uses
  %.sroa.3.0..sroa_idx.i64.i.i = getelementptr inbounds nuw i8, ptr %i.py, i64 2
  %.sroa.3.0.copyload.i65.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i64.i.i, align 2, !tbaa !16, !noalias !111 ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %.val.i115207.i ; 3 uses
  %.sroa.3.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 2
  %.sroa.3.0.copyload.i67.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i66.i.i, align 2, !tbaa !16, !noalias !111 ; 4 uses
  %i.qa = zext i8 %.sroa.3.0.copyload.i67.i.i to i32 ; 3 uses
  %i.qb = zext i8 %.sroa.3.0.copyload.i.i.i to i64 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr @LL_bits, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !8, !noalias !111 ; 3 uses
  %i.qe = zext i8 %.sroa.3.0.copyload.i65.i.i to i64 ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr @ML_bits, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !8, !noalias !111 ; 3 uses
  %i.qh = add i32 %i.qd, %i.qa
  %i.qi = add i32 %i.qh, %i.qg
  %.not.i116.i = icmp eq i8 %.sroa.3.0.copyload.i67.i.i, 0
  br i1 %.not.i116.i, label %.thread.i123.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qj = zext i8 %.sroa.3.0.copyload.i67.i.i to i64
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_decodeSequence.OF_base, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !8, !noalias !111
  %i.qm = zext i32 %i.ql to i64
  %i.qn = and i32 %storemerge178195.i, 63
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = shl i64 %.val.i68.i201.i, %i.qo
  %i.qq = lshr i64 %i.qp, 1
  %i.qr = and i32 %i.qa, 63
  %i.qs = xor i32 %i.qr, 63
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = lshr i64 %i.qq, %i.qt
  %i.qv = add i32 %storemerge178195.i, %i.qa      ; 2 uses
  %i.qw = add nuw i64 %i.qu, %i.qm                ; 2 uses
  %i.qx = icmp eq i8 %.sroa.3.0.copyload.i67.i.i, 1
  br i1 %i.qx, label %.thread.i123.i, label %.sink.split.sink.split.i

.thread.i123.i:                                   ; preds = %bb.bt, %bb.bs
  %storemerge178194.i = phi i32 [ %i.qv, %bb.bt ], [ %storemerge178195.i, %bb.bs ] ; 3 uses
  %.084.i.i = phi i64 [ %i.qw, %bb.bt ], [ 0, %bb.bs ] ; 3 uses
  %i.qy = icmp eq i8 %.sroa.3.0.copyload.i.i.i, 0
  %i.qz = icmp ult i64 %.084.i.i, 2
  %i.ra = and i1 %i.qy, %i.qz
  %i.rb = sub nuw nsw i64 1, %.084.i.i
  %spec.select.i.i = select i1 %i.ra, i64 %i.rb, i64 %.084.i.i ; 3 uses
  %.not57.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not57.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.thread.i123.i
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %spec.select.i.i
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !99, !noalias !111 ; 2 uses
  %.not58.i.i = icmp eq i64 %spec.select.i.i, 1
  br i1 %.not58.i.i, label %.sink.split.i, label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.bu, %bb.bt
  %.sink.ph.i = phi i64 [ %i.rd, %bb.bu ], [ %i.qw, %bb.bt ]
  %storemerge178193.ph.ph.i = phi i32 [ %storemerge178194.i, %bb.bu ], [ %i.qv, %bb.bt ]
  store i64 %i.pc, ptr %i.iq, align 8, !tbaa !99, !noalias !111
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bu
  %.sink.i = phi i64 [ %i.rd, %bb.bu ], [ %.sink.ph.i, %.sink.split.sink.split.i ] ; 3 uses
  %.ph.i = phi i64 [ %i.oy, %bb.bu ], [ %i.pc, %.sink.split.sink.split.i ]
  %storemerge178193.ph.i = phi i32 [ %storemerge178194.i, %bb.bu ], [ %storemerge178193.ph.ph.i, %.sink.split.sink.split.i ]
  store i64 %i.pb, ptr %i.im, align 8, !tbaa !99, !noalias !111
  store i64 %.sink.i, ptr %i.ig, align 8, !tbaa !99, !noalias !111
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split.i, %.thread.i123.i
  %i.re = phi i64 [ %i.oy, %.thread.i123.i ], [ %.ph.i, %.sink.split.i ]
  %i.rf = phi i64 [ %i.oz, %.thread.i123.i ], [ %i.pb, %.sink.split.i ]
  %i.rg = phi i64 [ %i.pa, %.thread.i123.i ], [ %.sink.i, %.sink.split.i ]
  %i.rh = phi i64 [ %i.pb, %.thread.i123.i ], [ %.sink.i, %.sink.split.i ] ; 18 uses
  %i.ri = phi i64 [ %i.pc, %.thread.i123.i ], [ %i.pb, %.sink.split.i ]
  %storemerge178193.i = phi i32 [ %storemerge178194.i, %.thread.i123.i ], [ %storemerge178193.ph.i, %.sink.split.i ] ; 3 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_decodeSequence.ML_base, i64 %i.qe
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !8, !noalias !111
  %i.rl = zext i32 %i.rk to i64                   ; 4 uses
  %i.rm = icmp ugt i8 %.sroa.3.0.copyload.i65.i.i, 31
  br i1 %i.rm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.rn = and i32 %storemerge178193.i, 63
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = shl i64 %.val.i68.i201.i, %i.ro
  %i.rq = lshr i64 %i.rp, 1
  %i.rr = and i32 %i.qg, 63
  %i.rs = xor i32 %i.rr, 63
  %i.rt = zext nneg i32 %i.rs to i64
  %i.ru = lshr i64 %i.rq, %i.rt
  %i.rv = add i32 %storemerge178193.i, %i.qg
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %storemerge178196.i = phi i32 [ %i.rv, %bb.bw ], [ %storemerge178193.i, %bb.bv ] ; 3 uses
  %i.rw = phi i64 [ %i.ru, %bb.bw ], [ 0, %bb.bv ] ; 4 uses
  %i.rx = add nuw i64 %i.rw, %i.rl                ; 4 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_decodeSequence.LL_base, i64 %i.qb
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !8, !noalias !111
  %i.sa = zext i32 %i.rz to i64                   ; 4 uses
  %i.sb = icmp ugt i8 %.sroa.3.0.copyload.i.i.i, 15
  br i1 %i.sb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.sc = and i32 %storemerge178196.i, 63
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = shl i64 %.val.i68.i201.i, %i.sd
  %i.sf = lshr i64 %i.se, 1
  %i.sg = and i32 %i.qd, 63
  %i.sh = xor i32 %i.sg, 63
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = lshr i64 %i.sf, %i.si
  %i.sk = add i32 %storemerge178196.i, %i.qd
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %storemerge178197.i = phi i32 [ %i.sk, %bb.by ], [ %storemerge178196.i, %bb.bx ] ; 7 uses
  %i.sl = phi i64 [ %i.sj, %bb.by ], [ 0, %bb.bx ] ; 4 uses
  %i.sm = add nuw i64 %i.sl, %i.sa                ; 6 uses
  %i.sn = icmp ult i32 %i.qi, 32
  %i.so = icmp ugt i32 %storemerge178197.i, 64
  %or.cond.i.i = select i1 %i.sn, i1 true, i1 %i.so
  br i1 %or.cond.i.i, label %ZSTDv07_decodeSequence.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.not.i.i120.i = icmp slt i64 %.idx289.i, 8
  br i1 %.not.i.i120.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sp = lshr i32 %storemerge178197.i, 3
  %i.sq = zext nneg i32 %i.sp to i64
  %.add293.i = sub nuw nsw i64 %.idx289.i, %i.sq  ; 2 uses
  %.ptr303.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.add293.i
  store ptr %.ptr303.i, ptr %i.on, align 8, !tbaa !52, !noalias !111
  %i.sr = and i32 %storemerge178197.i, 7
  br label %BITv07_reloadDStream.exit.sink.split.i121.i

bb.cc:                                            ; preds = %bb.ca
  %i.ss = icmp eq ptr %.ptr299.i, %i.hz
  br i1 %i.ss, label %ZSTDv07_decodeSequence.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.st = lshr i32 %storemerge178197.i, 3         ; 2 uses
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = sub nsw i64 0, %i.su
  %i.sw = getelementptr inbounds i8, ptr %.ptr299.i, i64 %i.sv
  %i.sx = icmp ult ptr %i.sw, %i.hz
  %i.sy = ptrtoint ptr %.ptr299.i to i64
  %i.sz = sub i64 %i.sy, %i.ia
  %i.ta = trunc i64 %i.sz to i32
  %.024.i.i122.i = select i1 %i.sx, i32 %i.ta, i32 %i.st ; 2 uses
  %i.tb = zext i32 %.024.i.i122.i to i64
  %.add292.i = sub nsw i64 %.idx289.i, %i.tb      ; 2 uses
  %.ptr302.i = getelementptr inbounds i8, ptr %i.ie, i64 %.add292.i
  store ptr %.ptr302.i, ptr %i.on, align 8, !tbaa !52, !noalias !111
  %i.tc = shl i32 %.024.i.i122.i, 3
  %i.td = sub i32 %storemerge178197.i, %i.tc
  br label %BITv07_reloadDStream.exit.sink.split.i121.i

BITv07_reloadDStream.exit.sink.split.i121.i:      ; preds = %bb.cd, %bb.cb
  %storemerge178.i = phi i32 [ %i.sr, %bb.cb ], [ %i.td, %bb.cd ]
  %.val.i72.sink.in.i.idx.i = phi i64 [ %.add293.i, %bb.cb ], [ %.add292.i, %bb.cd ] ; 2 uses
  %.val.i72.sink.in.i.ptr.i = getelementptr inbounds i8, ptr %i.ie, i64 %.val.i72.sink.in.i.idx.i
  %.val.i72.sink.i.i = load i64, ptr %.val.i72.sink.in.i.ptr.i, align 1, !noalias !111 ; 2 uses
  store i64 %.val.i72.sink.i.i, ptr %6, align 8, !tbaa !53, !noalias !111
  br label %ZSTDv07_decodeSequence.exit.i

ZSTDv07_decodeSequence.exit.i:                    ; preds = %BITv07_reloadDStream.exit.sink.split.i121.i, %bb.cc, %bb.bz
  %.idx288.i = phi i64 [ %.idx289.i, %bb.bz ], [ %.idx289.i, %bb.cc ], [ %.val.i72.sink.in.i.idx.i, %BITv07_reloadDStream.exit.sink.split.i121.i ]
  %.val.i68.i200.i = phi i64 [ %.val.i68.i201.i, %bb.bz ], [ %.val.i68.i201.i, %bb.cc ], [ %.val.i72.sink.i.i, %BITv07_reloadDStream.exit.sink.split.i121.i ] ; 4 uses
  %.val4.i.i.i.i = phi i32 [ %storemerge178197.i, %bb.bz ], [ %storemerge178197.i, %bb.cc ], [ %storemerge178.i, %BITv07_reloadDStream.exit.sink.split.i121.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.px, align 2, !tbaa !12, !noalias !111
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.px, i64 3
  %.sroa.42.0.copyload.i.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i.i.i, align 1, !tbaa !16, !noalias !111
  %i.te = zext i8 %.sroa.42.0.copyload.i.i.i to i32 ; 2 uses
  %i.tf = and i32 %.val4.i.i.i.i, 63
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = shl i64 %.val.i68.i200.i, %i.tg
  %i.ti = lshr i64 %i.th, 1
  %i.tj = and i32 %i.te, 63
  %i.tk = xor i32 %i.tj, 63
  %i.tl = zext nneg i32 %i.tk to i64
  %i.tm = lshr i64 %i.ti, %i.tl
  %i.tn = add i32 %.val4.i.i.i.i, %i.te           ; 2 uses
  %i.to = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.tp = add nuw i64 %i.tm, %i.to                ; 2 uses
  store i64 %i.tp, ptr %i.kx, align 8, !tbaa !108, !noalias !111
  %.sroa.0.0.copyload.i73.i.i = load i16, ptr %i.py, align 2, !tbaa !12, !noalias !111
  %.sroa.42.0..sroa_idx.i74.i.i = getelementptr inbounds nuw i8, ptr %i.py, i64 3
  %.sroa.42.0.copyload.i75.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i74.i.i, align 1, !tbaa !16, !noalias !111
  %i.tq = zext i8 %.sroa.42.0.copyload.i75.i.i to i32 ; 2 uses
  %i.tr = and i32 %i.tn, 63
  %i.ts = zext nneg i32 %i.tr to i64
  %i.tt = shl i64 %.val.i68.i200.i, %i.ts
  %i.tu = lshr i64 %i.tt, 1
  %i.tv = and i32 %i.tq, 63
  %i.tw = xor i32 %i.tv, 63
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = lshr i64 %i.tu, %i.tx
  %i.tz = add i32 %i.tn, %i.tq                    ; 2 uses
  %i.ua = zext i16 %.sroa.0.0.copyload.i73.i.i to i64
  %i.ub = add nuw i64 %i.ty, %i.ua                ; 2 uses
  store i64 %i.ub, ptr %i.ni, align 8, !tbaa !108, !noalias !111
  %.sroa.0.0.copyload.i78.i.i = load i16, ptr %i.pz, align 2, !tbaa !12, !noalias !111
  %.sroa.42.0..sroa_idx.i79.i.i = getelementptr inbounds nuw i8, ptr %i.pz, i64 3
  %.sroa.42.0.copyload.i80.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i79.i.i, align 1, !tbaa !16, !noalias !111
  %i.uc = zext i8 %.sroa.42.0.copyload.i80.i.i to i32 ; 2 uses
  %i.ud = and i32 %i.tz, 63
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = shl i64 %.val.i68.i200.i, %i.ue
  %i.ug = lshr i64 %i.uf, 1
  %i.uh = and i32 %i.uc, 63
  %i.ui = xor i32 %i.uh, 63
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = lshr i64 %i.ug, %i.uj
  %i.ul = add i32 %i.tz, %i.uc                    ; 2 uses
  store i32 %i.ul, ptr %i.la, align 8, !tbaa !54, !noalias !111
  %i.um = zext i16 %.sroa.0.0.copyload.i78.i.i to i64
  %i.un = add nuw i64 %i.uk, %i.um                ; 2 uses
  store i64 %i.un, ptr %i.md, align 8, !tbaa !108, !noalias !111
  %i.uo = getelementptr inbounds i8, ptr %.075.i, i64 %i.sm ; 7 uses
  %i.up = add i64 %i.sm, %i.rx                    ; 5 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.075.i, i64 %i.up ; 5 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.0134.i, i64 %i.sm
  %i.us = sub i64 0, %i.rh
  %i.ut = getelementptr inbounds i8, ptr %i.uo, i64 %i.us ; 2 uses
  %i.uu = add nuw i64 %i.sm, 8
  %i.uv = ptrtoint ptr %.075.i to i64             ; 7 uses
  %i.uw = sub i64 %i.op, %i.uv                    ; 2 uses
  %i.ux = icmp ugt i64 %i.uu, %i.uw
  %i.uy = icmp ugt i64 %i.up, %i.uw
  %or.cond.i124.i = select i1 %i.ux, i1 true, i1 %i.uy
  br i1 %or.cond.i124.i, label %.thread166.i, label %bb.ce

bb.ce:                                            ; preds = %ZSTDv07_decodeSequence.exit.i
  %i.uz = ptrtoint ptr %.0134.i to i64            ; 2 uses
  %i.va = sub i64 %i.oq, %i.uz
  %i.vb = icmp ugt i64 %i.sm, %i.va
  br i1 %i.vb, label %.thread166.i, label %.preheader117.i.i.preheader

.preheader117.i.i.preheader:                      ; preds = %bb.ce
  %i.vc = add i64 %i.sl, %i.uv
  %i.vd = add i64 %i.vc, %i.sa
  %i.ve = add i64 %i.uv, 8
  %i.vf = tail call i64 @llvm.umax.i64(i64 %i.vd, i64 %i.ve)
  %i.vg = xor i64 %i.uv, -1
  %i.vh = add i64 %i.vf, %i.vg                    ; 2 uses
  %i.vi = lshr i64 %i.vh, 3
  %i.vj = add nuw nsw i64 %i.vi, 1                ; 2 uses
  %min.iters.check228 = icmp ult i64 %i.vh, 24
  %i.vk = sub i64 %i.uz, %i.uv
  %diff.check226 = icmp ugt i64 %i.vk, -32
  %or.cond = or i1 %min.iters.check228, %diff.check226
  br i1 %or.cond, label %.preheader117.i.i.preheader246, label %vector.ph229

vector.ph229:                                     ; preds = %.preheader117.i.i.preheader
  %n.vec230 = and i64 %i.vj, 4611686018427387900  ; 3 uses
  %i.vl = shl i64 %n.vec230, 3                    ; 2 uses
  %i.vm = getelementptr i8, ptr %.0134.i, i64 %i.vl
  %i.vn = getelementptr i8, ptr %.075.i, i64 %i.vl
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph229
  %index232 = phi i64 [ 0, %vector.ph229 ], [ %index.next237, %vector.body231 ] ; 2 uses
  %i.vo = shl i64 %index232, 3                    ; 2 uses
  %next.gep233 = getelementptr i8, ptr %.0134.i, i64 %i.vo ; 2 uses
  %next.gep234 = getelementptr i8, ptr %.075.i, i64 %i.vo ; 2 uses
  %i.vp = getelementptr i8, ptr %next.gep233, i64 16
  %wide.load235 = load <2 x i64>, ptr %next.gep233, align 1
  %wide.load236 = load <2 x i64>, ptr %i.vp, align 1
  %i.vq = getelementptr i8, ptr %next.gep234, i64 16
  store <2 x i64> %wide.load235, ptr %next.gep234, align 1
  store <2 x i64> %wide.load236, ptr %i.vq, align 1
  %index.next237 = add nuw i64 %index232, 4       ; 2 uses
  %i.vr = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.vr, label %middle.block238, label %vector.body231, !llvm.loop !114

middle.block238:                                  ; preds = %vector.body231
  %cmp.n239 = icmp eq i64 %i.vj, %n.vec230
  br i1 %cmp.n239, label %ZSTDv07_wildcopy.exit.i.i, label %.preheader117.i.i.preheader246

.preheader117.i.i.preheader246:                   ; preds = %.preheader117.i.i.preheader, %middle.block238
  %.09.i.i.i.ph = phi ptr [ %.0134.i, %.preheader117.i.i.preheader ], [ %i.vm, %middle.block238 ]
  %.0.i.i.i.ph = phi ptr [ %.075.i, %.preheader117.i.i.preheader ], [ %i.vn, %middle.block238 ]
  br label %.preheader117.i.i

.preheader117.i.i:                                ; preds = %.preheader117.i.i.preheader246, %.preheader117.i.i
  %.09.i.i.i = phi ptr [ %i.vt, %.preheader117.i.i ], [ %.09.i.i.i.ph, %.preheader117.i.i.preheader246 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.vs, %.preheader117.i.i ], [ %.0.i.i.i.ph, %.preheader117.i.i.preheader246 ] ; 2 uses
  %.09.val.i.i.i = load i64, ptr %.09.i.i.i, align 1
  store i64 %.09.val.i.i.i, ptr %.0.i.i.i, align 1
  %i.vs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.vu = icmp ult ptr %i.vs, %i.uo
  br i1 %i.vu, label %.preheader117.i.i, label %ZSTDv07_wildcopy.exit.i.i, !llvm.loop !115

ZSTDv07_wildcopy.exit.i.i:                        ; preds = %.preheader117.i.i, %middle.block238
  %i.vv = ptrtoint ptr %i.uo to i64               ; 2 uses
  %i.vw = sub i64 %i.vv, %i.or                    ; 8 uses
  %i.vx = icmp ugt i64 %i.rh, %i.vw
  br i1 %i.vx, label %bb.cf, label %.thread.i125.i

bb.cf:                                            ; preds = %ZSTDv07_wildcopy.exit.i.i
  %i.vy = sub i64 %i.vv, %i.os
  %i.vz = icmp ugt i64 %i.rh, %i.vy
  br i1 %i.vz, label %.thread166.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wa = ptrtoint ptr %i.ut to i64
  %.neg.i.i = sub i64 %i.wa, %i.or                ; 4 uses
  %i.wb = getelementptr inbounds i8, ptr %i.gh, i64 %.neg.i.i ; 2 uses
  %i.wc = add nsw i64 %.neg.i.i, %i.rx            ; 3 uses
  %.not.i128.i = icmp sgt i64 %i.wc, 0
  br i1 %.not.i128.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.uo, ptr readonly align 1 %i.wb, i64 %i.rx, i1 false)
  br label %ZSTDv07_execSequence.exit.i

bb.ci:                                            ; preds = %bb.cg
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.uo, ptr readonly align 1 %i.wb, i64 %gepdiff.i.i, i1 false)
  %i.wd = getelementptr inbounds nuw i8, ptr %i.uo, i64 %gepdiff.i.i ; 7 uses
  %i.we = icmp ule ptr %i.wd, %i.oo
  %i.wf = icmp samesign ugt i64 %i.wc, 2
  %or.cond.not.i.i = select i1 %i.we, i1 %i.wf, i1 false
  br i1 %or.cond.not.i.i, label %.thread.i125.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ci
  %i.wg = sub nsw i64 %i.sm, %.neg.i.i
  %i.wh = icmp slt i64 %i.wg, %i.up
  br i1 %i.wh, label %iter.check209, label %ZSTDv07_execSequence.exit.i

iter.check209:                                    ; preds = %.preheader.i.i
  %i.wi = add i64 %i.rw, %i.sl
  %i.wj = add i64 %i.wi, %i.uv
  %i.wk = add i64 %i.wj, %i.rl
  %i.wl = add i64 %i.wk, %i.sa
  %i.wm = add i64 %i.ox, %i.rh
  %umax190 = tail call i64 @llvm.umax.i64(i64 %i.wl, i64 %i.wm)
  %i.wn = add i64 %i.rh, %i.or
  %i.wo = sub i64 %umax190, %i.wn                 ; 7 uses
  %min.iters.check192 = icmp ult i64 %i.wo, 4
  %diff.check189 = icmp ult i64 %i.rh, 32
  %or.cond242 = select i1 %min.iters.check192, i1 true, i1 %diff.check189
  br i1 %or.cond242, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check193

vector.main.loop.iter.check193:                   ; preds = %iter.check209
  %min.iters.check194 = icmp ult i64 %i.wo, 32
  br i1 %min.iters.check194, label %vec.epilog.ph213, label %vector.ph195

vector.ph195:                                     ; preds = %vector.main.loop.iter.check193
  %i.wp = and i64 %i.wo, 28
  %n.vec196 = and i64 %i.wo, -32                  ; 5 uses
  %i.wq = getelementptr i8, ptr %i.gd, i64 %n.vec196
  %i.wr = getelementptr i8, ptr %i.wd, i64 %n.vec196
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next203, %vector.body197 ] ; 3 uses
  %next.gep199 = getelementptr i8, ptr %i.gd, i64 %index198 ; 2 uses
  %next.gep200 = getelementptr i8, ptr %i.wd, i64 %index198 ; 2 uses
  %i.ws = getelementptr i8, ptr %next.gep199, i64 16
  %wide.load201 = load <16 x i8>, ptr %next.gep199, align 1, !tbaa !16
  %wide.load202 = load <16 x i8>, ptr %i.ws, align 1, !tbaa !16
  %i.wt = getelementptr i8, ptr %next.gep200, i64 16
  store <16 x i8> %wide.load201, ptr %next.gep200, align 1, !tbaa !16
  store <16 x i8> %wide.load202, ptr %i.wt, align 1, !tbaa !16
  %index.next203 = add nuw i64 %index198, 32      ; 2 uses
  %i.wu = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.wu, label %middle.block204, label %vector.body197, !llvm.loop !116

middle.block204:                                  ; preds = %vector.body197
  %cmp.n205 = icmp eq i64 %i.wo, %n.vec196
  br i1 %cmp.n205, label %ZSTDv07_execSequence.exit.i, label %vec.epilog.iter.check211

vec.epilog.iter.check211:                         ; preds = %middle.block204
  %min.epilog.iters.check212 = icmp eq i64 %i.wp, 0
  br i1 %min.epilog.iters.check212, label %.lr.ph.i.i.preheader, label %vec.epilog.ph213, !prof !117

vec.epilog.ph213:                                 ; preds = %vector.main.loop.iter.check193, %vec.epilog.iter.check211
  %vec.epilog.resume.val206 = phi i64 [ %n.vec196, %vec.epilog.iter.check211 ], [ 0, %vector.main.loop.iter.check193 ]
  %n.vec214 = and i64 %i.wo, -4                   ; 4 uses
  %i.wv = getelementptr i8, ptr %i.gd, i64 %n.vec214
  %i.ww = getelementptr i8, ptr %i.wd, i64 %n.vec214
  br label %vec.epilog.vector.body215

vec.epilog.vector.body215:                        ; preds = %vec.epilog.vector.body215, %vec.epilog.ph213
  %index216 = phi i64 [ %vec.epilog.resume.val206, %vec.epilog.ph213 ], [ %index.next220, %vec.epilog.vector.body215 ] ; 3 uses
  %next.gep217 = getelementptr i8, ptr %i.gd, i64 %index216
  %next.gep218 = getelementptr i8, ptr %i.wd, i64 %index216
  %wide.load219 = load <4 x i8>, ptr %next.gep217, align 1, !tbaa !16
  store <4 x i8> %wide.load219, ptr %next.gep218, align 1, !tbaa !16
  %index.next220 = add nuw i64 %index216, 4       ; 2 uses
  %i.wx = icmp eq i64 %index.next220, %n.vec214
  br i1 %i.wx, label %vec.epilog.middle.block221, label %vec.epilog.vector.body215, !llvm.loop !118

vec.epilog.middle.block221:                       ; preds = %vec.epilog.vector.body215
  %cmp.n222 = icmp eq i64 %i.wo, %n.vec214
  br i1 %cmp.n222, label %ZSTDv07_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check209, %vec.epilog.iter.check211, %vec.epilog.middle.block221
  %.086119.i.i.ph = phi ptr [ %i.gd, %iter.check209 ], [ %i.wq, %vec.epilog.iter.check211 ], [ %i.wv, %vec.epilog.middle.block221 ]
  %.088118.i.i.ph = phi ptr [ %i.wd, %iter.check209 ], [ %i.wr, %vec.epilog.iter.check211 ], [ %i.ww, %vec.epilog.middle.block221 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.086119.i.i = phi ptr [ %i.wy, %.lr.ph.i.i ], [ %.086119.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.088118.i.i = phi ptr [ %i.xa, %.lr.ph.i.i ], [ %.088118.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.086119.i.i, i64 1
  %i.wz = load i8, ptr %.086119.i.i, align 1, !tbaa !16
  %i.xa = getelementptr inbounds nuw i8, ptr %.088118.i.i, i64 1 ; 2 uses
  store i8 %i.wz, ptr %.088118.i.i, align 1, !tbaa !16
  %i.xb = icmp ult ptr %i.xa, %i.uq
  br i1 %i.xb, label %.lr.ph.i.i, label %ZSTDv07_execSequence.exit.i, !llvm.loop !119

.thread.i125.i:                                   ; preds = %bb.ci, %ZSTDv07_wildcopy.exit.i.i
  %i.xc = phi i64 [ %i.wc, %bb.ci ], [ %i.rx, %ZSTDv07_wildcopy.exit.i.i ]
  %.290.i.i = phi ptr [ %i.wd, %bb.ci ], [ %i.uo, %ZSTDv07_wildcopy.exit.i.i ] ; 8 uses
  %.2.i126.i = phi ptr [ %i.gd, %bb.ci ], [ %i.ut, %ZSTDv07_wildcopy.exit.i.i ] ; 7 uses
  %i.xd = icmp ult i64 %i.rh, 8
  br i1 %i.xd, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread.i125.i
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_execSequence.dec64table, i64 %i.rh
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !8
  %i.xg = load i8, ptr %.2.i126.i, align 1, !tbaa !16
  store i8 %i.xg, ptr %.290.i.i, align 1, !tbaa !16
  %i.xh = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 1
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !16
  %i.xj = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 1
  store i8 %i.xi, ptr %i.xj, align 1, !tbaa !16
  %i.xk = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 2
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !16
  %i.xm = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 2
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !16
  %i.xn = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 3
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !16
  %i.xp = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 3
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !16
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_execSequence.dec32table, i64 %i.rh
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !8
  %i.xs = zext i32 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 %i.xs ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 4
  %.val.i127.i = load i32, ptr %i.xt, align 1
  store i32 %.val.i127.i, ptr %i.xu, align 1
  %i.xv = sext i32 %i.xf to i64
  %i.xw = sub nsw i64 0, %i.xv
  %i.xx = getelementptr inbounds i8, ptr %i.xt, i64 %i.xw
  br label %bb.cl

bb.ck:                                            ; preds = %.thread.i125.i
  %.2.val.i.i = load i64, ptr %.2.i126.i, align 1
  store i64 %.2.val.i.i, ptr %.290.i.i, align 1
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.3.i.i = phi ptr [ %i.xx, %bb.cj ], [ %.2.i126.i, %bb.ck ] ; 2 uses
  %.3.i.i155 = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 8 ; 11 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8 ; 10 uses
  %i.ya = icmp ugt ptr %i.uq, %i.ot
  br i1 %i.ya, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.yb = icmp ult ptr %i.xy, %i.oo
  br i1 %i.yb, label %.preheader180.i.preheader, label %bb.cn

.preheader180.i.preheader:                        ; preds = %bb.cm
  %i.yc = tail call i64 @llvm.umax.i64(i64 %i.rh, i64 %i.vw) ; 2 uses
  %.reass280 = add i64 %i.yc, %invariant.op279
  %i.yd = tail call i64 @llvm.umax.i64(i64 %8, i64 %.reass280)
  %i.ye = add i64 %i.yd, -9
  %i.yf = add i64 %i.yc, %i.or
  %i.yg = sub i64 %i.ye, %i.yf                    ; 2 uses
  %i.yh = lshr i64 %i.yg, 3
  %i.yi = add nuw nsw i64 %i.yh, 1                ; 2 uses
  %min.iters.check157 = icmp ult i64 %i.yg, 56
  br i1 %min.iters.check157, label %.preheader180.i.preheader243, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.preheader180.i.preheader
  %umax154 = tail call i64 @llvm.umax.i64(i64 %i.rh, i64 %i.vw)
  %i.yj = add i64 %umax154, %i.or
  %i.yk = sub i64 %.3.i.i155, %i.yj
  %diff.check156 = icmp ugt i64 %i.yk, -32
  br i1 %diff.check156, label %.preheader180.i.preheader243, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck153
  %n.vec159 = and i64 %i.yi, 4611686018427387900  ; 3 uses
  %i.yl = shl i64 %n.vec159, 3                    ; 2 uses
  %i.ym = getelementptr i8, ptr %i.xz, i64 %i.yl
  %i.yn = getelementptr i8, ptr %i.xy, i64 %i.yl
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next166, %vector.body160 ] ; 2 uses
  %i.yo = shl i64 %index161, 3                    ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.xz, i64 %i.yo ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.xy, i64 %i.yo ; 2 uses
  %i.yp = getelementptr i8, ptr %next.gep162, i64 16
  %wide.load164 = load <2 x i64>, ptr %next.gep162, align 1
  %wide.load165 = load <2 x i64>, ptr %i.yp, align 1
  %i.yq = getelementptr i8, ptr %next.gep163, i64 16
  store <2 x i64> %wide.load164, ptr %next.gep163, align 1
  store <2 x i64> %wide.load165, ptr %i.yq, align 1
  %index.next166 = add nuw i64 %index161, 4       ; 2 uses
  %i.yr = icmp eq i64 %index.next166, %n.vec159
  br i1 %i.yr, label %middle.block167, label %vector.body160, !llvm.loop !120

middle.block167:                                  ; preds = %vector.body160
  %cmp.n168 = icmp eq i64 %i.yi, %n.vec159
  br i1 %cmp.n168, label %ZSTDv07_wildcopy.exit108.i.i, label %.preheader180.i.preheader243

.preheader180.i.preheader243:                     ; preds = %vector.memcheck153, %.preheader180.i.preheader, %middle.block167
  %.09.i105.i.i.ph = phi ptr [ %i.xz, %vector.memcheck153 ], [ %i.xz, %.preheader180.i.preheader ], [ %i.ym, %middle.block167 ]
  %.0.i106.i.i.ph = phi ptr [ %i.xy, %vector.memcheck153 ], [ %i.xy, %.preheader180.i.preheader ], [ %i.yn, %middle.block167 ]
  br label %.preheader180.i

.preheader180.i:                                  ; preds = %.preheader180.i.preheader243, %.preheader180.i
  %.09.i105.i.i = phi ptr [ %i.yt, %.preheader180.i ], [ %.09.i105.i.i.ph, %.preheader180.i.preheader243 ] ; 2 uses
  %.0.i106.i.i = phi ptr [ %i.ys, %.preheader180.i ], [ %.0.i106.i.i.ph, %.preheader180.i.preheader243 ] ; 2 uses
  %.09.val.i107.i.i = load i64, ptr %.09.i105.i.i, align 1
  store i64 %.09.val.i107.i.i, ptr %.0.i106.i.i, align 1
  %i.ys = getelementptr inbounds nuw i8, ptr %.0.i106.i.i, i64 8 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.09.i105.i.i, i64 8
  %i.yu = icmp ult ptr %i.ys, %i.oo
  br i1 %i.yu, label %.preheader180.i, label %ZSTDv07_wildcopy.exit108.i.i, !llvm.loop !121

ZSTDv07_wildcopy.exit108.i.i:                     ; preds = %.preheader180.i, %middle.block167
  %i.yv = ptrtoint ptr %i.xy to i64
  %i.yw = sub i64 %i.ou, %i.yv
  %i.yx = getelementptr inbounds i8, ptr %i.xz, i64 %i.yw
  br label %bb.cn

bb.cn:                                            ; preds = %ZSTDv07_wildcopy.exit108.i.i, %bb.cm
  %.391.i.i = phi ptr [ %i.oo, %ZSTDv07_wildcopy.exit108.i.i ], [ %i.xy, %bb.cm ] ; 7 uses
  %.4.i.i = phi ptr [ %i.yx, %ZSTDv07_wildcopy.exit108.i.i ], [ %i.xz, %bb.cm ] ; 7 uses
  %.4.i.i137 = ptrtoaddr ptr %.4.i.i to i64
  %i.yy = icmp ult ptr %.391.i.i, %i.uq
  br i1 %i.yy, label %iter.check, label %ZSTDv07_execSequence.exit.i

iter.check:                                       ; preds = %bb.cn
  %i.yz = add i64 %i.rw, %i.sl
  %i.za = add i64 %i.yz, %i.uv
  %i.zb = add i64 %i.za, %i.rl
  %i.zc = add i64 %i.zb, %i.sa
  %umax138 = tail call i64 @llvm.umax.i64(i64 %i.rh, i64 %i.vw)
  %i.zd = add i64 %i.ow, %umax138
  %umax139 = tail call i64 @llvm.umax.i64(i64 %8, i64 %i.zd)
  %i.ze = sub i64 %i.zc, %umax139                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ze, 4
  br i1 %min.iters.check, label %.lr.ph122.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %i.rh, i64 %i.vw)
  %i.zf = add i64 %i.ov, %umax
  %umax136 = tail call i64 @llvm.umax.i64(i64 %8, i64 %i.zf)
  %i.zg = sub i64 %.4.i.i137, %umax136
  %diff.check = icmp ugt i64 %i.zg, -32
  br i1 %diff.check, label %.lr.ph122.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check140 = icmp ult i64 %i.ze, 32
  br i1 %min.iters.check140, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zh = and i64 %i.ze, 28
  %n.vec = and i64 %i.ze, -32                     ; 5 uses
  %i.zi = getelementptr i8, ptr %.4.i.i, i64 %n.vec
  %i.zj = getelementptr i8, ptr %.391.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.4.i.i, i64 %index ; 2 uses
  %next.gep141 = getelementptr i8, ptr %.391.i.i, i64 %index ; 2 uses
  %i.zk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !16
  %wide.load142 = load <16 x i8>, ptr %i.zk, align 1, !tbaa !16
  %i.zl = getelementptr i8, ptr %next.gep141, i64 16
  store <16 x i8> %wide.load, ptr %next.gep141, align 1, !tbaa !16
  store <16 x i8> %wide.load142, ptr %i.zl, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zm = icmp eq i64 %index.next, %n.vec
  br i1 %i.zm, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ze, %n.vec
  br i1 %cmp.n, label %ZSTDv07_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph122.i.i.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec144 = and i64 %i.ze, -4                   ; 4 uses
  %i.zn = getelementptr i8, ptr %.4.i.i, i64 %n.vec144
  %i.zo = getelementptr i8, ptr %.391.i.i, i64 %n.vec144
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 3 uses
  %next.gep146 = getelementptr i8, ptr %.4.i.i, i64 %index145
  %next.gep147 = getelementptr i8, ptr %.391.i.i, i64 %index145
  %wide.load148 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !16
  store <4 x i8> %wide.load148, ptr %next.gep147, align 1, !tbaa !16
  %index.next149 = add nuw i64 %index145, 4       ; 2 uses
  %i.zp = icmp eq i64 %index.next149, %n.vec144
  br i1 %i.zp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !123

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n150 = icmp eq i64 %i.ze, %n.vec144
  br i1 %cmp.n150, label %ZSTDv07_execSequence.exit.i, label %.lr.ph122.i.i.preheader

.lr.ph122.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5121.i.i.ph = phi ptr [ %.4.i.i, %iter.check ], [ %.4.i.i, %vector.memcheck ], [ %i.zi, %vec.epilog.iter.check ], [ %i.zn, %vec.epilog.middle.block ]
  %.492120.i.i.ph = phi ptr [ %.391.i.i, %iter.check ], [ %.391.i.i, %vector.memcheck ], [ %i.zj, %vec.epilog.iter.check ], [ %i.zo, %vec.epilog.middle.block ]
  br label %.lr.ph122.i.i

.lr.ph122.i.i:                                    ; preds = %.lr.ph122.i.i.preheader, %.lr.ph122.i.i
  %.5121.i.i = phi ptr [ %i.zq, %.lr.ph122.i.i ], [ %.5121.i.i.ph, %.lr.ph122.i.i.preheader ] ; 2 uses
  %.492120.i.i = phi ptr [ %i.zs, %.lr.ph122.i.i ], [ %.492120.i.i.ph, %.lr.ph122.i.i.preheader ] ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.5121.i.i, i64 1
  %i.zr = load i8, ptr %.5121.i.i, align 1, !tbaa !16
  %i.zs = getelementptr inbounds nuw i8, ptr %.492120.i.i, i64 1 ; 2 uses
  store i8 %i.zr, ptr %.492120.i.i, align 1, !tbaa !16
  %i.zt = icmp ult ptr %i.zs, %i.uq
  br i1 %i.zt, label %.lr.ph122.i.i, label %ZSTDv07_execSequence.exit.i, !llvm.loop !124

bb.co:                                            ; preds = %bb.cl
  %i.zu = getelementptr i8, ptr %.290.i.i, i64 %i.xc
  %i.zv = tail call i64 @llvm.umin.i64(i64 %i.rh, i64 %i.vw)
  %i.zw = tail call i64 @llvm.umax.i64(i64 %i.rh, i64 %i.vw) ; 3 uses
  %i.zx = add i64 %i.rw, %i.or
  %i.zy = add i64 %i.zx, %i.zv
  %i.zz = add i64 %i.zy, %i.zw
  %i.aaa = add i64 %i.zz, %i.rl
  %i.aab = sub i64 %i.aaa, %i.rh
  %.reass = add i64 %i.zw, %invariant.op
  %i.aac = tail call i64 @llvm.umax.i64(i64 %i.aab, i64 %.reass)
  %i.aad = add i64 %i.aac, -9
  %i.aae = add i64 %i.zw, %i.or
  %i.aaf = sub i64 %i.aad, %i.aae                 ; 2 uses
  %i.aag = lshr i64 %i.aaf, 3
  %i.aah = add nuw nsw i64 %i.aag, 1              ; 2 uses
  %min.iters.check174 = icmp ult i64 %i.aaf, 56
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.memcheck170

vector.memcheck170:                               ; preds = %bb.co
  %umax171 = tail call i64 @llvm.umax.i64(i64 %i.rh, i64 %i.vw)
  %i.aai = add i64 %umax171, %i.or
  %i.aaj = sub i64 %.3.i.i155, %i.aai
  %diff.check172 = icmp ugt i64 %i.aaj, -32
  br i1 %diff.check172, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck170
  %n.vec176 = and i64 %i.aah, 4611686018427387900 ; 3 uses
  %i.aak = shl i64 %n.vec176, 3                   ; 2 uses
  %i.aal = getelementptr i8, ptr %i.xz, i64 %i.aak
  %i.aam = getelementptr i8, ptr %i.xy, i64 %i.aak
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next183, %vector.body177 ] ; 2 uses
  %i.aan = shl i64 %index178, 3                   ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.xz, i64 %i.aan ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.xy, i64 %i.aan ; 2 uses
  %i.aao = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load181 = load <2 x i64>, ptr %next.gep179, align 1
  %wide.load182 = load <2 x i64>, ptr %i.aao, align 1
  %i.aap = getelementptr i8, ptr %next.gep180, i64 16
  store <2 x i64> %wide.load181, ptr %next.gep180, align 1
  store <2 x i64> %wide.load182, ptr %i.aap, align 1
  %index.next183 = add nuw i64 %index178, 4       ; 2 uses
  %i.aaq = icmp eq i64 %index.next183, %n.vec176
  br i1 %i.aaq, label %middle.block184, label %vector.body177, !llvm.loop !125

middle.block184:                                  ; preds = %vector.body177
  %cmp.n185 = icmp eq i64 %i.aah, %n.vec176
  br i1 %cmp.n185, label %ZSTDv07_execSequence.exit.i, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %vector.memcheck170, %bb.co, %middle.block184
  %.09.i109.i.i.ph = phi ptr [ %i.xz, %vector.memcheck170 ], [ %i.xz, %bb.co ], [ %i.aal, %middle.block184 ]
  %.0.i110.i.i.ph = phi ptr [ %i.xy, %vector.memcheck170 ], [ %i.xy, %bb.co ], [ %i.aam, %middle.block184 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %.09.i109.i.i = phi ptr [ %i.aas, %scalar.ph173 ], [ %.09.i109.i.i.ph, %scalar.ph173.preheader ] ; 2 uses
  %.0.i110.i.i = phi ptr [ %i.aar, %scalar.ph173 ], [ %.0.i110.i.i.ph, %scalar.ph173.preheader ] ; 2 uses
  %.09.val.i111.i.i = load i64, ptr %.09.i109.i.i, align 1
  store i64 %.09.val.i111.i.i, ptr %.0.i110.i.i, align 1
  %i.aar = getelementptr inbounds nuw i8, ptr %.0.i110.i.i, i64 8 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.09.i109.i.i, i64 8
  %i.aat = icmp ult ptr %i.aar, %i.zu
  br i1 %i.aat, label %scalar.ph173, label %ZSTDv07_execSequence.exit.i, !llvm.loop !126

ZSTDv07_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %scalar.ph173, %.lr.ph122.i.i, %middle.block204, %vec.epilog.middle.block221, %middle.block184, %middle.block, %vec.epilog.middle.block, %bb.cn, %.preheader.i.i, %bb.ch
  %i.aau = icmp ult i64 %i.up, -119
  br i1 %i.aau, label %bb.bn, label %.thread166.i, !llvm.loop !127

.thread166.i:                                     ; preds = %ZSTDv07_execSequence.exit.i, %bb.cf, %bb.ce, %ZSTDv07_decodeSequence.exit.i, %BITv07_reloadDStream.exit.thread.i, %BITv07_initDStream.exit.i, %bb.az, %bb.ar, %bb.ap
  %.485.ph.i = phi i64 [ -20, %BITv07_reloadDStream.exit.thread.i ], [ -20, %bb.ap ], [ -20, %bb.az ], [ -20, %bb.ar ], [ -20, %BITv07_initDStream.exit.i ], [ %i.up, %ZSTDv07_execSequence.exit.i ], [ -70, %ZSTDv07_decodeSequence.exit.i ], [ -20, %bb.cf ], [ -20, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %ZSTDv07_decompressSequences.exit

.thread.i23:                                      ; preds = %.preheader.i, %bb.ao, %bb.ad
  %.2.i = phi ptr [ %i.fu, %bb.ao ], [ %.0134.i, %.preheader.i ], [ %i.fu, %bb.ad ] ; 3 uses
  %.378.i = phi ptr [ %1, %bb.ao ], [ %.075.i, %.preheader.i ], [ %1, %bb.ad ] ; 3 uses
  %i.aav = ptrtoint ptr %i.fz to i64
  %i.aaw = ptrtoint ptr %.2.i to i64
  %i.aax = sub i64 %i.aav, %i.aaw                 ; 3 uses
  %i.aay = ptrtoint ptr %i.fy to i64
  %i.aaz = ptrtoint ptr %.378.i to i64            ; 2 uses
  %i.aba = sub i64 %i.aay, %i.aaz
  %.not93.i = icmp ugt i64 %i.aax, %i.aba
  br i1 %.not93.i, label %ZSTDv07_decompressSequences.exit, label %bb.cp

bb.cp:                                            ; preds = %.thread.i23
  %.not92.i = icmp eq ptr %i.fz, %.2.i
  br i1 %.not92.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.378.i, ptr align 1 %.2.i, i64 %i.aax, i1 false)
  %i.abb = getelementptr inbounds nuw i8, ptr %.378.i, i64 %i.aax
  %.pre.i = ptrtoint ptr %i.abb to i64
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pre-phi.i = phi i64 [ %i.aaz, %bb.cp ], [ %.pre.i, %bb.cq ]
  %i.abc = ptrtoint ptr %1 to i64
  %i.abd = sub i64 %.pre-phi.i, %i.abc
  br label %ZSTDv07_decompressSequences.exit

ZSTDv07_decompressSequences.exit:                 ; preds = %.thread.i, %bb.o, %bb.ab, %bb.m, %bb.l, %HUFv07_decompress1X4_usingDTable.exit.i, %bb.g, %bb.f, %bb.d, %bb.n, %bb.j, %bb.b, %bb.v, %bb.cr, %.thread.i23, %.thread166.i, %ZSTDv07_decodeSeqHeaders.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ac, %bb.a
  %.1 = phi i64 [ -20, %bb.am ], [ -72, %bb.a ], [ %i.abd, %bb.cr ], [ -70, %.thread.i23 ], [ %.485.ph.i, %.thread166.i ], [ %i.ic, %ZSTDv07_decodeSeqHeaders.exit.i ], [ -20, %bb.al ], [ -72, %bb.ag ], [ -72, %bb.ai ], [ -72, %bb.ak ], [ -20, %bb.an ], [ -72, %bb.ac ], [ -20, %.thread.i ], [ -20, %bb.o ], [ -20, %bb.ab ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %HUFv07_decompress1X4_usingDTable.exit.i ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.d ], [ -20, %bb.n ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @ZSTDv07_insertBlock(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef returned %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %.not.i = icmp eq ptr %1, %i.b
  br i1 %.not.i, label %ZSTDv07_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !105
  store ptr %1, ptr %i.d, align 8, !tbaa !104
  br label %ZSTDv07_checkContinuity.exit

ZSTDv07_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.j, ptr %i.a, align 8, !tbaa !102
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv07_decompress_usingDict(ptr noundef initializes((5132, 5136), (21520, 21572), (21604, 21616), (21712, 21716)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @ZSTDv07_decompressBegin_usingDict(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102  ; 3 uses
  %.not.i = icmp eq ptr %1, %i.c
  br i1 %.not.i, label %ZSTDv07_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.c, ptr %i.d, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %.neg.i = sub i64 %i.h, %i.g
  %i.i = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.i, ptr %i.j, align 8, !tbaa !105
  store ptr %1, ptr %i.e, align 8, !tbaa !104
  store ptr %1, ptr %i.b, align 8, !tbaa !102
  br label %ZSTDv07_checkContinuity.exit

ZSTDv07_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.k = tail call fastcc i64 @ZSTDv07_decompressFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -30, 1) i64 @ZSTDv07_decompressBegin_usingDict(ptr nofree noundef captures(none) initializes((5132, 5136), (21520, 21572), (21604, 21616), (21712, 21716)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [29 x i16], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [53 x i16], align 16              ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [36 x i16], align 16              ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.k, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21604
  store i32 0, ptr %i.l, align 4, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5132 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.n, align 4, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 21612 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 21608 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 21712 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !91
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 21560 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !8
  %i.s = icmp ne ptr %1, null
  %i.t = icmp ne i64 %2, 0
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.b, label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.u = icmp ult i64 %2, 8
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %1, ptr %i.w, align 8, !tbaa !105
  store ptr %1, ptr %i.v, align 8, !tbaa !104
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.x, ptr %i.m, align 8, !tbaa !102
  br label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.d:                                             ; preds = %bb.b
  %.val33.i = load i32, ptr %1, align 1
  %.not.not.i = icmp eq i32 %.val33.i, -332356553
  br i1 %.not.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %1, ptr %i.z, align 8, !tbaa !105
  store ptr %1, ptr %i.y, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.aa, ptr %i.m, align 8, !tbaa !102
  br label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.ab, align 1
  store i32 %.val.i, ptr %i.q, align 8, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ad = add i64 %2, -8                          ; 5 uses
  %i.ae = getelementptr i8, ptr %1, i64 %2        ; 3 uses
  %i.af = tail call i64 @HUFv07_readDTableX4(ptr noundef nonnull %i.n, ptr noundef nonnull %i.ac, i64 noundef range(i64 0, -8) %i.ad) ; 3 uses
  %i.ag = icmp ult i64 %i.af, -119                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af ; 2 uses
  %.068.i.i = select i1 %i.ag, ptr %i.ah, ptr %i.ac
  br i1 %i.ag, label %bb.g, label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 28, ptr %i.c, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.ai = ptrtoint ptr %i.ae to i64               ; 2 uses
  %gepdiff.i.i = sub nsw i64 %i.ad, %i.af
  %i.aj = call i64 @FSEv07_readNCount(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ah, i64 noundef %gepdiff.i.i) ; 2 uses
  %i.ak = icmp ult i64 %i.aj, -119
  br i1 %i.ak, label %bb.h, label %.critedge.i.i

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.d, align 4, !tbaa !8   ; 5 uses
  %i.am = icmp ugt i32 %i.al, 8
  br i1 %i.am, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2052
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !8   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.aq = shl nuw nsw i32 1, %i.al                ; 5 uses
  %i.ar = add nsw i32 %i.aq, -1                   ; 5 uses
  %i.as = icmp ugt i32 %i.ao, 255
  br i1 %i.as, label %FSEv07_buildDTable.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.at = add nuw nsw i32 %i.ao, 1                ; 2 uses
  %sext.i.i.i = shl nuw nsw i32 32768, %i.al
  %i.au = lshr exact i32 %sext.i.i.i, 16          ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.at to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.av = icmp eq i32 %i.ao, 0
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.i.i.new
end_hunk_0
