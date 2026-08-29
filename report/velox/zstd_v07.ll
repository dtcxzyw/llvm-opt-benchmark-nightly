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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %5 = alloca %struct.seqState_t, align 8         ; 29 uses
  %i.b = icmp ugt i64 %4, 131071
  br i1 %i.b, label %ZSTDv07_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %4, 3
  br i1 %i.c, label %ZSTDv07_decompressSequences.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %3, align 1, !tbaa !16
  %i.e = zext i8 %i.d to i32                      ; 16 uses
  %i.f = lshr i32 %i.e, 6
  switch i32 %i.f, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.l
    i32 2, label %bb.q
    i32 3, label %bb.y
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ult i64 %4, 5
  br i1 %i.g, label %ZSTDv07_decompressSequences.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i32 %i.e, 4
  %i.i = and i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i32                      ; 4 uses
  switch i32 %i.i, label %bb.g [
    i32 3, label %bb.f
    i32 2, label %.thread.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw nsw i32 %i.e, 14
  %i.n = and i32 %i.m, 245760
  %i.o = shl nuw nsw i32 %i.l, 6
  %i.p = or disjoint i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = lshr i32 %i.s, 2
  %i.u = or disjoint i32 %i.p, %i.t               ; 2 uses
  %i.v = shl nuw nsw i32 %i.s, 16
  %i.w = and i32 %i.v, 196608
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = or disjoint i32 %i.w, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %.0131.i = zext nneg i32 %i.af to i64           ; 2 uses
  %.0132.i = zext nneg i32 %i.u to i64
  %i.ag = icmp samesign ugt i32 %i.u, 131072
  %i.ah = add nuw nsw i64 %.0131.i, 5             ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.ah, %4
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.ai
  br i1 %or.cond.i, label %ZSTDv07_decompressSequences.exit, label %.thread164.i

bb.g:                                             ; preds = %bb.e
  %i.aj = shl nuw nsw i32 %i.e, 6
  %i.ak = and i32 %i.aj, 960
  %i.al = lshr i32 %i.l, 2
  %i.am = or disjoint i32 %i.al, %i.ak
  %i.an = shl nuw nsw i32 %i.l, 8
  %i.ao = and i32 %i.an, 768
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = zext i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ao, %i.ar
  %.0131149.i = zext nneg i32 %i.as to i64        ; 3 uses
  %.0132150.i = zext nneg i32 %i.am to i64        ; 3 uses
  %i.at = add nuw nsw i64 %.0131149.i, 3          ; 3 uses
  %i.au = icmp samesign ugt i64 %i.at, %4
  br i1 %i.au, label %ZSTDv07_decompressSequences.exit, label %bb.h

.thread.i:                                        ; preds = %bb.e
  %i.av = shl nuw nsw i32 %i.e, 10
  %i.aw = and i32 %i.av, 15360
  %i.ax = shl nuw nsw i32 %i.l, 2
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = lshr i32 %i.bb, 6
  %i.bd = or disjoint i32 %i.ay, %i.bc
  %i.be = shl nuw nsw i32 %i.bb, 8
  %i.bf = and i32 %i.be, 16128
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bi = zext i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bf, %i.bi
  %.0131149193.i = zext nneg i32 %i.bj to i64     ; 2 uses
  %.0132150194.i = zext nneg i32 %i.bd to i64
  %i.bk = add nuw nsw i64 %.0131149193.i, 4       ; 2 uses
  %i.bl = icmp samesign ugt i64 %i.bk, %4
  br i1 %i.bl, label %ZSTDv07_decompressSequences.exit, label %.thread164.i

bb.h:                                             ; preds = %bb.g
  %i.bm = and i32 %i.e, 16
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread164.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 5132
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 21760
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.br = tail call i64 @HUFv07_decompress1X2_DCtx(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp, i64 noundef %.0132150.i, ptr noundef nonnull %i.bq, i64 noundef %.0131149.i)
  br label %bb.j

.thread164.i:                                     ; preds = %bb.h, %.thread.i, %bb.f
  %.0132154160172.i = phi i64 [ %.0132150.i, %bb.h ], [ %.0132.i, %bb.f ], [ %.0132150194.i, %.thread.i ] ; 2 uses
  %.0131153161170.i = phi i64 [ %.0131149.i, %bb.h ], [ %.0131.i, %bb.f ], [ %.0131149193.i, %.thread.i ]
  %.0129152162169.i = phi i64 [ 3, %bb.h ], [ 5, %bb.f ], [ 4, %.thread.i ]
  %i.bs = phi i64 [ %i.at, %bb.h ], [ %i.ah, %bb.f ], [ %i.bk, %.thread.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5132
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 21760
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %.0129152162169.i
  %i.bw = tail call i64 @HUFv07_decompress4X_hufOnly(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bu, i64 noundef %.0132154160172.i, ptr noundef nonnull %i.bv, i64 noundef %.0131153161170.i)
  br label %bb.j

bb.j:                                             ; preds = %.thread164.i, %bb.i
  %.0132154160171.i = phi i64 [ %.0132150.i, %bb.i ], [ %.0132154160172.i, %.thread164.i ] ; 3 uses
  %i.bx = phi i64 [ %i.at, %bb.i ], [ %i.bs, %.thread164.i ]
  %i.by = phi i64 [ %i.br, %bb.i ], [ %i.bw, %.thread164.i ]
  %i.bz = icmp ult i64 %i.by, -119
  br i1 %i.bz, label %bb.k, label %ZSTDv07_decompressSequences.exit

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 21760 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 21720
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !106
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 21752
  store i64 %.0132154160171.i, ptr %i.cc, align 8, !tbaa !107
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i32 1, ptr %i.cd, align 8, !tbaa !90
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.0132154160171.i
  store i64 0, ptr %i.ce, align 1
  br label %bb.ac

bb.l:                                             ; preds = %bb.c
  %i.cf = and i32 %i.e, 48
  %.not.i = icmp eq i32 %i.cf, 16
  br i1 %.not.i, label %bb.m, label %ZSTDv07_decompressSequences.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 21608
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !90
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %ZSTDv07_decompressSequences.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = shl nuw nsw i32 %i.e, 6
  %i.ck = and i32 %i.cj, 960
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !16
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = lshr i32 %i.cn, 2
  %i.cp = or disjoint i32 %i.co, %i.ck
  %i.cq = zext nneg i32 %i.cp to i64              ; 4 uses
  %i.cr = shl nuw nsw i32 %i.cn, 8
  %i.cs = and i32 %i.cr, 768
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !16
  %i.cv = zext i8 %i.cu to i32
  %i.cw = or disjoint i32 %i.cs, %i.cv
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = add nuw nsw i64 %i.cx, 3                ; 2 uses
  %i.cz = icmp samesign ugt i64 %i.cy, %4
  br i1 %i.cz, label %ZSTDv07_decompressSequences.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 21760 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 5132 ; 2 uses
  %.val.i.i = load i32, ptr %i.db, align 4
  %i.dc = and i32 %.val.i.i, 65280
  %.not.i.i = icmp eq i32 %i.dc, 256
  br i1 %.not.i.i, label %HUFv07_decompress1X4_usingDTable.exit.i, label %ZSTDv07_decompressSequences.exit

HUFv07_decompress1X4_usingDTable.exit.i:          ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.de = tail call fastcc i64 @HUFv07_decompress1X4_usingDTable_internal(ptr noundef nonnull %i.da, i64 noundef %i.cq, ptr noundef nonnull %i.dd, i64 noundef %i.cx, ptr noundef nonnull readonly %i.db)
  %i.df = icmp ult i64 %i.de, -119
  br i1 %i.df, label %bb.p, label %ZSTDv07_decompressSequences.exit

bb.p:                                             ; preds = %HUFv07_decompress1X4_usingDTable.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 21720
  store ptr %i.da, ptr %i.dg, align 8, !tbaa !106
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 21752
  store i64 %i.cq, ptr %i.dh, align 8, !tbaa !107
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cq
  store i64 0, ptr %i.di, align 1
  br label %bb.ac

bb.q:                                             ; preds = %bb.c
  %i.dj = lshr i32 %i.e, 4
end_hunk_0
begin_hunk_1_@ZSTDv07_decompressBlock_internal:bb.a
  %i.lh = xor i32 %i.lg, 63
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = lshr i64 %i.lf, %i.li                   ; 2 uses
  %i.lk = add nuw nsw i32 %.val4.i.i.i, %i.la     ; 7 uses
  store i64 %i.lj, ptr %i.ky, align 8, !tbaa !108
  %i.ll = icmp samesign ugt i32 %i.lk, 64
  br i1 %i.ll, label %FSEv07_initDState.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not.i.i.i = icmp slt i64 %.idx.i, 8
  br i1 %.not.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ln = lshr i32 %i.lk, 3
  %i.lo = zext nneg i32 %i.ln to i64
  %.ptr.add279.i = sub nuw nsw i64 %.idx.i, %i.lo ; 2 uses
  %.ptr282.i = getelementptr inbounds nuw i8, ptr %i.if, i64 %.ptr.add279.i
  store ptr %.ptr282.i, ptr %i.lm, align 8, !tbaa !52
  %i.lp = and i32 %i.lk, 7
  br label %BITv07_reloadDStream.exit.sink.split.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.lq = icmp eq ptr %.ptr.ptr.i, %i.ia
  br i1 %i.lq, label %FSEv07_initDState.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lr = lshr i32 %i.lk, 3                       ; 2 uses
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = sub nsw i64 0, %i.ls
  %i.lu = getelementptr inbounds i8, ptr %.ptr.ptr.i, i64 %i.lt
  %i.lv = icmp ult ptr %i.lu, %i.ia
  %i.lw = ptrtoint ptr %.ptr.ptr.i to i64
  %i.lx = sub i64 %i.lw, %i.ib
  %i.ly = trunc i64 %i.lx to i32
  %.024.i.i.i = select i1 %i.lv, i32 %i.ly, i32 %i.lr ; 2 uses
  %i.lz = zext i32 %.024.i.i.i to i64
  %.ptr.add.i = sub nsw i64 %.idx.i, %i.lz        ; 2 uses
  %.ptr281.i = getelementptr inbounds i8, ptr %i.if, i64 %.ptr.add.i
  store ptr %.ptr281.i, ptr %i.lm, align 8, !tbaa !52
  %i.ma = shl i32 %.024.i.i.i, 3
  %i.mb = sub i32 %i.lk, %i.ma
  br label %BITv07_reloadDStream.exit.sink.split.i.i

BITv07_reloadDStream.exit.sink.split.i.i:         ; preds = %bb.be, %bb.bc
  %storemerge.i = phi i32 [ %i.lp, %bb.bc ], [ %i.mb, %bb.be ] ; 2 uses
  %.val30.i.sink.in.i.idx.i = phi i64 [ %.ptr.add279.i, %bb.bc ], [ %.ptr.add.i, %bb.be ] ; 2 uses
  %.val30.i.sink.in.i.ptr.i = getelementptr inbounds i8, ptr %i.if, i64 %.val30.i.sink.in.i.idx.i
  store i32 %storemerge.i, ptr %i.lb, align 8, !tbaa !54
  %.val30.i.sink.i.i = load i64, ptr %.val30.i.sink.in.i.ptr.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i.i, ptr %5, align 8, !tbaa !53
  br label %FSEv07_initDState.exit.i

FSEv07_initDState.exit.i:                         ; preds = %BITv07_reloadDStream.exit.sink.split.i.i, %bb.bd, %bb.ba
  %.idx278.i = phi i64 [ %.idx.i, %bb.ba ], [ 0, %bb.bd ], [ %.val30.i.sink.in.i.idx.i, %BITv07_reloadDStream.exit.sink.split.i.i ] ; 5 uses
  %.val4.i.i97.i = phi i32 [ %i.lk, %bb.ba ], [ %i.lk, %bb.bd ], [ %storemerge.i, %BITv07_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.val.i.i96.i = phi i64 [ %.val.i.i.i, %bb.ba ], [ %.val.i.i.i, %bb.bd ], [ %.val30.i.sink.i.i, %BITv07_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %.ptr280.ptr.i = getelementptr inbounds i8, ptr %i.if, i64 %.idx278.i ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !110
  %i.me = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.mf = load i16, ptr %i.gc, align 4, !tbaa !37
  %i.mg = zext i16 %i.mf to i32                   ; 2 uses
  %i.mh = and i32 %.val4.i.i97.i, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = shl i64 %.val.i.i96.i, %i.mi
  %i.mk = lshr i64 %i.mj, 1
  %i.ml = and i32 %i.mg, 63
  %i.mm = xor i32 %i.ml, 63
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = lshr i64 %i.mk, %i.mn                   ; 2 uses
  %i.mp = add i32 %.val4.i.i97.i, %i.mg           ; 7 uses
  store i64 %i.mo, ptr %i.me, align 8, !tbaa !108
  %i.mq = icmp ugt i32 %i.mp, 64
  br i1 %i.mq, label %FSEv07_initDState.exit103.i, label %bb.bf

bb.bf:                                            ; preds = %FSEv07_initDState.exit.i
  %i.mr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not.i.i98.i = icmp slt i64 %.idx278.i, 8
  br i1 %.not.i.i98.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ms = lshr i32 %i.mp, 3
  %i.mt = zext nneg i32 %i.ms to i64
  %.ptr280.add284.i = sub nuw nsw i64 %.idx278.i, %i.mt ; 2 uses
  %.ptr286.i = getelementptr inbounds nuw i8, ptr %i.if, i64 %.ptr280.add284.i
  store ptr %.ptr286.i, ptr %i.mr, align 8, !tbaa !52
  %i.mu = and i32 %i.mp, 7
  br label %BITv07_reloadDStream.exit.sink.split.i99.i

bb.bh:                                            ; preds = %bb.bf
  %i.mv = icmp eq ptr %.ptr280.ptr.i, %i.ia
  br i1 %i.mv, label %FSEv07_initDState.exit103.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mw = lshr i32 %i.mp, 3                       ; 2 uses
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = sub nsw i64 0, %i.mx
  %i.mz = getelementptr inbounds i8, ptr %.ptr280.ptr.i, i64 %i.my
  %i.na = icmp ult ptr %i.mz, %i.ia
  %i.nb = ptrtoint ptr %.ptr280.ptr.i to i64
  %i.nc = sub i64 %i.nb, %i.ib
  %i.nd = trunc i64 %i.nc to i32
  %.024.i.i102.i = select i1 %i.na, i32 %i.nd, i32 %i.mw ; 2 uses
  %i.ne = zext i32 %.024.i.i102.i to i64
  %.ptr280.add.i = sub nsw i64 %.idx278.i, %i.ne  ; 2 uses
  %.ptr285.i = getelementptr inbounds i8, ptr %i.if, i64 %.ptr280.add.i
  store ptr %.ptr285.i, ptr %i.mr, align 8, !tbaa !52
  %i.nf = shl i32 %.024.i.i102.i, 3
  %i.ng = sub i32 %i.mp, %i.nf
  br label %BITv07_reloadDStream.exit.sink.split.i99.i

BITv07_reloadDStream.exit.sink.split.i99.i:       ; preds = %bb.bi, %bb.bg
  %storemerge176.i = phi i32 [ %i.mu, %bb.bg ], [ %i.ng, %bb.bi ]
  %.val30.i.sink.in.i100.idx.i = phi i64 [ %.ptr280.add284.i, %bb.bg ], [ %.ptr280.add.i, %bb.bi ] ; 2 uses
  %.val30.i.sink.in.i100.ptr.i = getelementptr inbounds i8, ptr %i.if, i64 %.val30.i.sink.in.i100.idx.i
  %.val30.i.sink.i101.i = load i64, ptr %.val30.i.sink.in.i100.ptr.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i101.i, ptr %5, align 8, !tbaa !53
  br label %FSEv07_initDState.exit103.i

FSEv07_initDState.exit103.i:                      ; preds = %BITv07_reloadDStream.exit.sink.split.i99.i, %bb.bh, %FSEv07_initDState.exit.i
  %.idx283.i = phi i64 [ %.idx278.i, %FSEv07_initDState.exit.i ], [ 0, %bb.bh ], [ %.val30.i.sink.in.i100.idx.i, %BITv07_reloadDStream.exit.sink.split.i99.i ] ; 5 uses
  %.val4.i.i105.i = phi i32 [ %i.mp, %FSEv07_initDState.exit.i ], [ %i.mp, %bb.bh ], [ %storemerge176.i, %BITv07_reloadDStream.exit.sink.split.i99.i ] ; 2 uses
  %.val.i.i104.i = phi i64 [ %.val.i.i96.i, %FSEv07_initDState.exit.i ], [ %.val.i.i96.i, %bb.bh ], [ %.val30.i.sink.i101.i, %BITv07_reloadDStream.exit.sink.split.i99.i ] ; 3 uses
  %.ptr.ptr298.i = getelementptr inbounds i8, ptr %i.if, i64 %.idx283.i ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.nh, ptr %i.ni, align 8, !tbaa !110
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.nk = load i16, ptr %i.gb, align 8, !tbaa !37
  %i.nl = zext i16 %i.nk to i32                   ; 2 uses
  %i.nm = and i32 %.val4.i.i105.i, 63
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = shl i64 %.val.i.i104.i, %i.nn
  %i.np = lshr i64 %i.no, 1
  %i.nq = and i32 %i.nl, 63
  %i.nr = xor i32 %i.nq, 63
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = lshr i64 %i.np, %i.ns                   ; 2 uses
  %i.nu = add i32 %.val4.i.i105.i, %i.nl          ; 7 uses
  store i64 %i.nt, ptr %i.nj, align 8, !tbaa !108
  %i.nv = icmp ugt i32 %i.nu, 64
  br i1 %i.nv, label %FSEv07_initDState.exit111.i, label %bb.bj

bb.bj:                                            ; preds = %FSEv07_initDState.exit103.i
  %i.nw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not.i.i106.i = icmp slt i64 %.idx283.i, 8
  br i1 %.not.i.i106.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nx = lshr i32 %i.nu, 3
  %i.ny = zext nneg i32 %i.nx to i64
  %.ptr.add295.i = sub nuw nsw i64 %.idx283.i, %i.ny ; 2 uses
  %.ptr305.i = getelementptr inbounds nuw i8, ptr %i.if, i64 %.ptr.add295.i
  store ptr %.ptr305.i, ptr %i.nw, align 8, !tbaa !52
  %i.nz = and i32 %i.nu, 7
  br label %BITv07_reloadDStream.exit.sink.split.i107.i

bb.bl:                                            ; preds = %bb.bj
  %i.oa = icmp eq ptr %.ptr.ptr298.i, %i.ia
  br i1 %i.oa, label %FSEv07_initDState.exit111.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ob = lshr i32 %i.nu, 3                       ; 2 uses
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = sub nsw i64 0, %i.oc
  %i.oe = getelementptr inbounds i8, ptr %.ptr.ptr298.i, i64 %i.od
  %i.of = icmp ult ptr %i.oe, %i.ia
  %i.og = ptrtoint ptr %.ptr.ptr298.i to i64
  %i.oh = sub i64 %i.og, %i.ib
  %i.oi = trunc i64 %i.oh to i32
  %.024.i.i110.i = select i1 %i.of, i32 %i.oi, i32 %i.ob ; 2 uses
  %i.oj = zext i32 %.024.i.i110.i to i64
  %.ptr.add294.i = sub nsw i64 %.idx283.i, %i.oj  ; 2 uses
  %.ptr304.i = getelementptr inbounds i8, ptr %i.if, i64 %.ptr.add294.i
  store ptr %.ptr304.i, ptr %i.nw, align 8, !tbaa !52
  %i.ok = shl i32 %.024.i.i110.i, 3
  %i.ol = sub i32 %i.nu, %i.ok
  br label %BITv07_reloadDStream.exit.sink.split.i107.i

BITv07_reloadDStream.exit.sink.split.i107.i:      ; preds = %bb.bm, %bb.bk
  %storemerge177.i = phi i32 [ %i.nz, %bb.bk ], [ %i.ol, %bb.bm ]
  %.val30.i.sink.in.i108.idx.i = phi i64 [ %.ptr.add295.i, %bb.bk ], [ %.ptr.add294.i, %bb.bm ] ; 2 uses
  %.val30.i.sink.in.i108.ptr.i = getelementptr inbounds i8, ptr %i.if, i64 %.val30.i.sink.in.i108.idx.i
  %.val30.i.sink.i109.i = load i64, ptr %.val30.i.sink.in.i108.ptr.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i109.i, ptr %5, align 8, !tbaa !53
  br label %FSEv07_initDState.exit111.i

FSEv07_initDState.exit111.i:                      ; preds = %BITv07_reloadDStream.exit.sink.split.i107.i, %bb.bl, %FSEv07_initDState.exit103.i
  %.promoted208.idx.i = phi i64 [ %.idx283.i, %FSEv07_initDState.exit103.i ], [ 0, %bb.bl ], [ %.val30.i.sink.in.i108.idx.i, %BITv07_reloadDStream.exit.sink.split.i107.i ]
  %.promoted198.i = phi i64 [ %.val.i.i104.i, %FSEv07_initDState.exit103.i ], [ %.val.i.i104.i, %bb.bl ], [ %.val30.i.sink.i109.i, %BITv07_reloadDStream.exit.sink.split.i107.i ]
  %.promoted.i = phi i32 [ %i.nu, %FSEv07_initDState.exit103.i ], [ %i.nu, %bb.bl ], [ %storemerge177.i, %BITv07_reloadDStream.exit.sink.split.i107.i ]
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 3084 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.om, ptr %i.on, align 8, !tbaa !110
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.op = getelementptr inbounds i8, ptr %i.fz, i64 -8 ; 5 uses
  %i.oq = ptrtoint ptr %i.fz to i64
  %i.or = ptrtoint ptr %i.ga to i64
  %i.os = ptrtoint ptr %i.ge to i64               ; 12 uses
  %i.ot = ptrtoint ptr %i.gg to i64
  %i.ou = getelementptr inbounds i8, ptr %i.fz, i64 -13
  %i.ov = ptrtoint ptr %i.op to i64
  %i.ow = add i64 %2, %i.a
  %6 = add i64 %i.ow, -8                          ; 2 uses
  %i.ox = add i64 %i.os, 8
  %i.oy = add i64 %i.os, 8
  %i.oz = add i64 %i.os, 1
  %i.pa = add i64 %i.os, 16
  %invariant.op = add i64 %2, %i.a
  %invariant.op279 = add i64 %invariant.op, -17
  br label %bb.bn

bb.bn:                                            ; preds = %ZSTDv07_execSequence.exit.i, %FSEv07_initDState.exit111.i
  %i.pb = phi i64 [ %i.iq, %FSEv07_initDState.exit111.i ], [ %i.rh, %ZSTDv07_execSequence.exit.i ] ; 3 uses
  %i.pc = phi i64 [ %i.im, %FSEv07_initDState.exit111.i ], [ %i.ri, %ZSTDv07_execSequence.exit.i ] ; 2 uses
  %i.pd = phi i64 [ %i.ij, %FSEv07_initDState.exit111.i ], [ %i.rj, %ZSTDv07_execSequence.exit.i ] ; 2 uses
  %i.pe = phi i64 [ %i.ij, %FSEv07_initDState.exit111.i ], [ %i.rk, %ZSTDv07_execSequence.exit.i ] ; 4 uses
  %i.pf = phi i64 [ %i.im, %FSEv07_initDState.exit111.i ], [ %i.rl, %ZSTDv07_execSequence.exit.i ] ; 3 uses
  %.idx287.i = phi i64 [ %.promoted208.idx.i, %FSEv07_initDState.exit111.i ], [ %.idx288.i, %ZSTDv07_execSequence.exit.i ] ; 5 uses
  %.val.i115207.i = phi i64 [ %i.mo, %FSEv07_initDState.exit111.i ], [ %i.uq, %ZSTDv07_execSequence.exit.i ]
  %.val60.i205.i = phi i64 [ %i.nt, %FSEv07_initDState.exit111.i ], [ %i.ue, %ZSTDv07_execSequence.exit.i ]
  %.val62.i203.i = phi i64 [ %i.lj, %FSEv07_initDState.exit111.i ], [ %i.ts, %ZSTDv07_execSequence.exit.i ]
  %.val.i68.i199.i = phi i64 [ %.promoted198.i, %FSEv07_initDState.exit111.i ], [ %.val.i68.i200.i, %ZSTDv07_execSequence.exit.i ]
  %storemerge178192.i = phi i32 [ %.promoted.i, %FSEv07_initDState.exit111.i ], [ %i.uo, %ZSTDv07_execSequence.exit.i ] ; 6 uses
  %.0134.i = phi ptr [ %i.fv, %FSEv07_initDState.exit111.i ], [ %i.uu, %ZSTDv07_execSequence.exit.i ] ; 6 uses
  %.0133.i = phi i32 [ %.0.i.i, %FSEv07_initDState.exit111.i ], [ %i.pz, %ZSTDv07_execSequence.exit.i ] ; 3 uses
  %.075.i = phi ptr [ %1, %FSEv07_initDState.exit111.i ], [ %i.ut, %ZSTDv07_execSequence.exit.i ] ; 7 uses
  %.ptr296.i = getelementptr inbounds i8, ptr %i.if, i64 %.idx287.i ; 3 uses
  %i.pg = icmp ugt i32 %storemerge178192.i, 64
  br i1 %i.pg, label %BITv07_reloadDStream.exit.thread.i, label %bb.bo

BITv07_reloadDStream.exit.thread.i:               ; preds = %bb.bn
  %.not179.i = icmp eq i32 %.0133.i, 0
  br i1 %.not179.i, label %.preheader.i, label %.thread166.i

bb.bo:                                            ; preds = %bb.bn
  %.not.i112.i = icmp slt i64 %.idx287.i, 8
  br i1 %.not.i112.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ph = lshr i32 %storemerge178192.i, 3
  %i.pi = zext nneg i32 %i.ph to i64
  %.add291.i = sub nuw nsw i64 %.idx287.i, %i.pi  ; 2 uses
  %.ptr301.i = getelementptr inbounds nuw i8, ptr %i.if, i64 %.add291.i ; 2 uses
  store ptr %.ptr301.i, ptr %i.oo, align 8, !tbaa !52
  %i.pj = and i32 %storemerge178192.i, 7
  br label %BITv07_reloadDStream.exit.sink.split.i

bb.bq:                                            ; preds = %bb.bo
  %i.pk = icmp eq ptr %.ptr296.i, %i.ia
  br i1 %i.pk, label %BITv07_reloadDStream.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pl = lshr i32 %storemerge178192.i, 3         ; 2 uses
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = sub nsw i64 0, %i.pm
  %i.po = getelementptr inbounds i8, ptr %.ptr296.i, i64 %i.pn
  %i.pp = icmp ult ptr %i.po, %i.ia
  %i.pq = ptrtoint ptr %.ptr296.i to i64
  %i.pr = sub i64 %i.pq, %i.ib
  %i.ps = trunc i64 %i.pr to i32
  %.024.i.i = select i1 %i.pp, i32 %i.ps, i32 %i.pl ; 2 uses
  %i.pt = zext i32 %.024.i.i to i64
  %.add290.i = sub nsw i64 %.idx287.i, %i.pt      ; 2 uses
  %.ptr300.i = getelementptr inbounds i8, ptr %i.if, i64 %.add290.i ; 2 uses
  store ptr %.ptr300.i, ptr %i.oo, align 8, !tbaa !52
  %i.pu = shl i32 %.024.i.i, 3
  %i.pv = sub i32 %storemerge178192.i, %i.pu
  br label %BITv07_reloadDStream.exit.sink.split.i

BITv07_reloadDStream.exit.sink.split.i:           ; preds = %bb.br, %bb.bp
  %.val30.i.sink.in.i = phi ptr [ %.ptr301.i, %bb.bp ], [ %.ptr300.i, %bb.br ]
  %.idx289.ph.i = phi i64 [ %.add291.i, %bb.bp ], [ %.add290.i, %bb.br ]
  %storemerge178195.ph.i = phi i32 [ %i.pj, %bb.bp ], [ %i.pv, %bb.br ]
  %.val30.i.sink.i = load i64, ptr %.val30.i.sink.in.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i, ptr %5, align 8, !tbaa !53
  br label %BITv07_reloadDStream.exit.i

BITv07_reloadDStream.exit.i:                      ; preds = %BITv07_reloadDStream.exit.sink.split.i, %bb.bq
  %.idx289.i = phi i64 [ %.idx287.i, %bb.bq ], [ %.idx289.ph.i, %BITv07_reloadDStream.exit.sink.split.i ] ; 6 uses
  %.val.i68.i201.i = phi i64 [ %.val.i68.i199.i, %bb.bq ], [ %.val30.i.sink.i, %BITv07_reloadDStream.exit.sink.split.i ] ; 5 uses
  %storemerge178195.i = phi i32 [ %storemerge178192.i, %bb.bq ], [ %storemerge178195.ph.i, %BITv07_reloadDStream.exit.sink.split.i ] ; 3 uses
  %.ptr299.i = getelementptr inbounds i8, ptr %i.if, i64 %.idx289.i ; 3 uses
  %.not.i22 = icmp eq i32 %.0133.i, 0
  br i1 %.not.i22, label %.preheader.i, label %bb.bs

.preheader.i:                                     ; preds = %BITv07_reloadDStream.exit.i, %BITv07_reloadDStream.exit.thread.i
  %i.pw = trunc i64 %i.pd to i32
  store i32 %i.pw, ptr %i.ig, align 8, !tbaa !8
  %i.px = trunc i64 %i.pc to i32
  store i32 %i.px, ptr %i.ik, align 4, !tbaa !8
  %i.py = trunc i64 %i.pb to i32
  store i32 %i.py, ptr %i.io, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.thread.i23

bb.bs:                                            ; preds = %BITv07_reloadDStream.exit.i
  %i.pz = add nsw i32 %.0133.i, -1
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.val62.i203.i ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qa, i64 2
  %.sroa.3.0.copyload.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i, align 2, !tbaa !16, !noalias !111 ; 3 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %.val60.i205.i ; 3 uses
  %.sroa.3.0..sroa_idx.i64.i.i = getelementptr inbounds nuw i8, ptr %i.qb, i64 2
  %.sroa.3.0.copyload.i65.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i64.i.i, align 2, !tbaa !16, !noalias !111 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %.val.i115207.i ; 3 uses
  %.sroa.3.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 2
  %.sroa.3.0.copyload.i67.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i66.i.i, align 2, !tbaa !16, !noalias !111 ; 4 uses
  %i.qd = zext i8 %.sroa.3.0.copyload.i67.i.i to i32 ; 3 uses
  %i.qe = zext i8 %.sroa.3.0.copyload.i.i.i to i64 ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr @LL_bits, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !8, !noalias !111 ; 3 uses
  %i.qh = zext i8 %.sroa.3.0.copyload.i65.i.i to i64 ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr @ML_bits, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !8, !noalias !111 ; 3 uses
  %i.qk = add i32 %i.qg, %i.qd
  %i.ql = add i32 %i.qk, %i.qj
  %.not.i116.i = icmp eq i8 %.sroa.3.0.copyload.i67.i.i, 0
  br i1 %.not.i116.i, label %.thread.i123.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qm = zext i8 %.sroa.3.0.copyload.i67.i.i to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_decodeSequence.OF_base, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !8, !noalias !111
  %i.qp = zext i32 %i.qo to i64
  %i.qq = and i32 %storemerge178195.i, 63
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = shl i64 %.val.i68.i201.i, %i.qr
  %i.qt = lshr i64 %i.qs, 1
  %i.qu = and i32 %i.qd, 63
  %i.qv = xor i32 %i.qu, 63
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = lshr i64 %i.qt, %i.qw
  %i.qy = add i32 %storemerge178195.i, %i.qd      ; 2 uses
  %i.qz = add nuw i64 %i.qx, %i.qp                ; 2 uses
  %i.ra = icmp eq i8 %.sroa.3.0.copyload.i67.i.i, 1
  br i1 %i.ra, label %.thread.i123.i, label %.sink.split.sink.split.i

.thread.i123.i:                                   ; preds = %bb.bt, %bb.bs
  %storemerge178194.i = phi i32 [ %i.qy, %bb.bt ], [ %storemerge178195.i, %bb.bs ] ; 3 uses
  %.084.i.i = phi i64 [ %i.qz, %bb.bt ], [ 0, %bb.bs ] ; 3 uses
  %i.rb = icmp eq i8 %.sroa.3.0.copyload.i.i.i, 0
  %i.rc = icmp ult i64 %.084.i.i, 2
  %i.rd = and i1 %i.rb, %i.rc
  %i.re = sub nuw nsw i64 1, %.084.i.i
  %spec.select.i.i = select i1 %i.rd, i64 %i.re, i64 %.084.i.i ; 3 uses
  %.not57.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not57.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.thread.i123.i
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %spec.select.i.i
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !99, !noalias !111 ; 2 uses
  %.not58.i.i = icmp eq i64 %spec.select.i.i, 1
  br i1 %.not58.i.i, label %.sink.split.i, label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.bu, %bb.bt
  %.sink.ph.i = phi i64 [ %i.rg, %bb.bu ], [ %i.qz, %bb.bt ]
  %storemerge178193.ph.ph.i = phi i32 [ %storemerge178194.i, %bb.bu ], [ %i.qy, %bb.bt ]
  store i64 %i.pf, ptr %i.ir, align 8, !tbaa !99, !noalias !111
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bu
  %.sink.i = phi i64 [ %i.rg, %bb.bu ], [ %.sink.ph.i, %.sink.split.sink.split.i ] ; 3 uses
  %.ph.i = phi i64 [ %i.pb, %bb.bu ], [ %i.pf, %.sink.split.sink.split.i ]
  %storemerge178193.ph.i = phi i32 [ %storemerge178194.i, %bb.bu ], [ %storemerge178193.ph.ph.i, %.sink.split.sink.split.i ]
  store i64 %i.pe, ptr %i.in, align 8, !tbaa !99, !noalias !111
  store i64 %.sink.i, ptr %i.ih, align 8, !tbaa !99, !noalias !111
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split.i, %.thread.i123.i
  %i.rh = phi i64 [ %i.pb, %.thread.i123.i ], [ %.ph.i, %.sink.split.i ]
  %i.ri = phi i64 [ %i.pc, %.thread.i123.i ], [ %i.pe, %.sink.split.i ]
  %i.rj = phi i64 [ %i.pd, %.thread.i123.i ], [ %.sink.i, %.sink.split.i ]
  %i.rk = phi i64 [ %i.pe, %.thread.i123.i ], [ %.sink.i, %.sink.split.i ] ; 18 uses
  %i.rl = phi i64 [ %i.pf, %.thread.i123.i ], [ %i.pe, %.sink.split.i ]
  %storemerge178193.i = phi i32 [ %storemerge178194.i, %.thread.i123.i ], [ %storemerge178193.ph.i, %.sink.split.i ] ; 3 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_decodeSequence.ML_base, i64 %i.qh
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !8, !noalias !111
  %i.ro = zext i32 %i.rn to i64                   ; 4 uses
  %i.rp = icmp ugt i8 %.sroa.3.0.copyload.i65.i.i, 31
  br i1 %i.rp, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.rq = and i32 %storemerge178193.i, 63
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = shl i64 %.val.i68.i201.i, %i.rr
  %i.rt = lshr i64 %i.rs, 1
  %i.ru = and i32 %i.qj, 63
  %i.rv = xor i32 %i.ru, 63
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = lshr i64 %i.rt, %i.rw
  %i.ry = add i32 %storemerge178193.i, %i.qj
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %storemerge178196.i = phi i32 [ %i.ry, %bb.bw ], [ %storemerge178193.i, %bb.bv ] ; 3 uses
  %i.rz = phi i64 [ %i.rx, %bb.bw ], [ 0, %bb.bv ] ; 4 uses
  %i.sa = add nuw i64 %i.rz, %i.ro                ; 4 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_decodeSequence.LL_base, i64 %i.qe
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !8, !noalias !111
  %i.sd = zext i32 %i.sc to i64                   ; 4 uses
  %i.se = icmp ugt i8 %.sroa.3.0.copyload.i.i.i, 15
  br i1 %i.se, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.sf = and i32 %storemerge178196.i, 63
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = shl i64 %.val.i68.i201.i, %i.sg
  %i.si = lshr i64 %i.sh, 1
  %i.sj = and i32 %i.qg, 63
  %i.sk = xor i32 %i.sj, 63
end_hunk_1
begin_hunk_2_@ZSTDv07_decompressBlock_internal:bb.a
  %i.sv = icmp eq ptr %.ptr299.i, %i.ia
  br i1 %i.sv, label %ZSTDv07_decodeSequence.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sw = lshr i32 %storemerge178197.i, 3         ; 2 uses
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = sub nsw i64 0, %i.sx
  %i.sz = getelementptr inbounds i8, ptr %.ptr299.i, i64 %i.sy
  %i.ta = icmp ult ptr %i.sz, %i.ia
  %i.tb = ptrtoint ptr %.ptr299.i to i64
  %i.tc = sub i64 %i.tb, %i.ib
  %i.td = trunc i64 %i.tc to i32
  %.024.i.i122.i = select i1 %i.ta, i32 %i.td, i32 %i.sw ; 2 uses
  %i.te = zext i32 %.024.i.i122.i to i64
  %.add292.i = sub nsw i64 %.idx289.i, %i.te      ; 2 uses
  %.ptr302.i = getelementptr inbounds i8, ptr %i.if, i64 %.add292.i
  store ptr %.ptr302.i, ptr %i.oo, align 8, !tbaa !52, !noalias !111
  %i.tf = shl i32 %.024.i.i122.i, 3
  %i.tg = sub i32 %storemerge178197.i, %i.tf
  br label %BITv07_reloadDStream.exit.sink.split.i121.i

BITv07_reloadDStream.exit.sink.split.i121.i:      ; preds = %bb.cd, %bb.cb
  %storemerge178.i = phi i32 [ %i.su, %bb.cb ], [ %i.tg, %bb.cd ]
  %.val.i72.sink.in.i.idx.i = phi i64 [ %.add293.i, %bb.cb ], [ %.add292.i, %bb.cd ] ; 2 uses
  %.val.i72.sink.in.i.ptr.i = getelementptr inbounds i8, ptr %i.if, i64 %.val.i72.sink.in.i.idx.i
  %.val.i72.sink.i.i = load i64, ptr %.val.i72.sink.in.i.ptr.i, align 1, !noalias !111 ; 2 uses
  store i64 %.val.i72.sink.i.i, ptr %5, align 8, !tbaa !53, !noalias !111
  br label %ZSTDv07_decodeSequence.exit.i

ZSTDv07_decodeSequence.exit.i:                    ; preds = %BITv07_reloadDStream.exit.sink.split.i121.i, %bb.cc, %bb.bz
  %.idx288.i = phi i64 [ %.idx289.i, %bb.bz ], [ %.idx289.i, %bb.cc ], [ %.val.i72.sink.in.i.idx.i, %BITv07_reloadDStream.exit.sink.split.i121.i ]
  %.val.i68.i200.i = phi i64 [ %.val.i68.i201.i, %bb.bz ], [ %.val.i68.i201.i, %bb.cc ], [ %.val.i72.sink.i.i, %BITv07_reloadDStream.exit.sink.split.i121.i ] ; 4 uses
  %.val4.i.i.i.i = phi i32 [ %storemerge178197.i, %bb.bz ], [ %storemerge178197.i, %bb.cc ], [ %storemerge178.i, %BITv07_reloadDStream.exit.sink.split.i121.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.qa, align 2, !tbaa !12, !noalias !111
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qa, i64 3
  %.sroa.42.0.copyload.i.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i.i.i, align 1, !tbaa !16, !noalias !111
  %i.th = zext i8 %.sroa.42.0.copyload.i.i.i to i32 ; 2 uses
  %i.ti = and i32 %.val4.i.i.i.i, 63
  %i.tj = zext nneg i32 %i.ti to i64
  %i.tk = shl i64 %.val.i68.i200.i, %i.tj
  %i.tl = lshr i64 %i.tk, 1
  %i.tm = and i32 %i.th, 63
  %i.tn = xor i32 %i.tm, 63
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = lshr i64 %i.tl, %i.to
  %i.tq = add i32 %.val4.i.i.i.i, %i.th           ; 2 uses
  %i.tr = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ts = add nuw i64 %i.tp, %i.tr                ; 2 uses
  store i64 %i.ts, ptr %i.ky, align 8, !tbaa !108, !noalias !111
  %.sroa.0.0.copyload.i73.i.i = load i16, ptr %i.qb, align 2, !tbaa !12, !noalias !111
  %.sroa.42.0..sroa_idx.i74.i.i = getelementptr inbounds nuw i8, ptr %i.qb, i64 3
  %.sroa.42.0.copyload.i75.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i74.i.i, align 1, !tbaa !16, !noalias !111
  %i.tt = zext i8 %.sroa.42.0.copyload.i75.i.i to i32 ; 2 uses
  %i.tu = and i32 %i.tq, 63
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = shl i64 %.val.i68.i200.i, %i.tv
  %i.tx = lshr i64 %i.tw, 1
  %i.ty = and i32 %i.tt, 63
  %i.tz = xor i32 %i.ty, 63
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = lshr i64 %i.tx, %i.ua
  %i.uc = add i32 %i.tq, %i.tt                    ; 2 uses
  %i.ud = zext i16 %.sroa.0.0.copyload.i73.i.i to i64
  %i.ue = add nuw i64 %i.ub, %i.ud                ; 2 uses
  store i64 %i.ue, ptr %i.nj, align 8, !tbaa !108, !noalias !111
  %.sroa.0.0.copyload.i78.i.i = load i16, ptr %i.qc, align 2, !tbaa !12, !noalias !111
  %.sroa.42.0..sroa_idx.i79.i.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 3
  %.sroa.42.0.copyload.i80.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i79.i.i, align 1, !tbaa !16, !noalias !111
  %i.uf = zext i8 %.sroa.42.0.copyload.i80.i.i to i32 ; 2 uses
  %i.ug = and i32 %i.uc, 63
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = shl i64 %.val.i68.i200.i, %i.uh
  %i.uj = lshr i64 %i.ui, 1
  %i.uk = and i32 %i.uf, 63
  %i.ul = xor i32 %i.uk, 63
  %i.um = zext nneg i32 %i.ul to i64
  %i.un = lshr i64 %i.uj, %i.um
  %i.uo = add i32 %i.uc, %i.uf                    ; 2 uses
  store i32 %i.uo, ptr %i.lb, align 8, !tbaa !54, !noalias !111
  %i.up = zext i16 %.sroa.0.0.copyload.i78.i.i to i64
  %i.uq = add nuw i64 %i.un, %i.up                ; 2 uses
  store i64 %i.uq, ptr %i.me, align 8, !tbaa !108, !noalias !111
  %i.ur = getelementptr inbounds i8, ptr %.075.i, i64 %i.sp ; 7 uses
  %i.us = add i64 %i.sp, %i.sa                    ; 5 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.075.i, i64 %i.us ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.0134.i, i64 %i.sp
  %i.uv = sub i64 0, %i.rk
  %i.uw = getelementptr inbounds i8, ptr %i.ur, i64 %i.uv ; 2 uses
  %i.ux = add nuw i64 %i.sp, 8
  %i.uy = ptrtoint ptr %.075.i to i64             ; 7 uses
  %i.uz = sub i64 %i.oq, %i.uy                    ; 2 uses
  %i.va = icmp ugt i64 %i.ux, %i.uz
  %i.vb = icmp ugt i64 %i.us, %i.uz
  %or.cond.i124.i = select i1 %i.va, i1 true, i1 %i.vb
  br i1 %or.cond.i124.i, label %.thread166.i, label %bb.ce

bb.ce:                                            ; preds = %ZSTDv07_decodeSequence.exit.i
  %i.vc = ptrtoint ptr %.0134.i to i64            ; 2 uses
  %i.vd = sub i64 %i.or, %i.vc
  %i.ve = icmp ugt i64 %i.sp, %i.vd
  br i1 %i.ve, label %.thread166.i, label %.preheader117.i.i.preheader

.preheader117.i.i.preheader:                      ; preds = %bb.ce
  %i.vf = add i64 %i.so, %i.uy
  %i.vg = add i64 %i.vf, %i.sd
  %i.vh = add i64 %i.uy, 8
  %i.vi = tail call i64 @llvm.umax.i64(i64 %i.vg, i64 %i.vh)
  %i.vj = xor i64 %i.uy, -1
  %i.vk = add i64 %i.vi, %i.vj                    ; 2 uses
  %i.vl = lshr i64 %i.vk, 3
  %i.vm = add nuw nsw i64 %i.vl, 1                ; 2 uses
  %min.iters.check228 = icmp ult i64 %i.vk, 24
  %i.vn = sub i64 %i.vc, %i.uy
  %diff.check226 = icmp ugt i64 %i.vn, -32
  %or.cond = or i1 %min.iters.check228, %diff.check226
  br i1 %or.cond, label %.preheader117.i.i.preheader246, label %vector.ph229

vector.ph229:                                     ; preds = %.preheader117.i.i.preheader
  %n.vec230 = and i64 %i.vm, 4611686018427387900  ; 3 uses
  %i.vo = shl i64 %n.vec230, 3                    ; 2 uses
  %i.vp = getelementptr i8, ptr %.0134.i, i64 %i.vo
  %i.vq = getelementptr i8, ptr %.075.i, i64 %i.vo
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph229
  %index232 = phi i64 [ 0, %vector.ph229 ], [ %index.next237, %vector.body231 ] ; 2 uses
  %i.vr = shl i64 %index232, 3                    ; 2 uses
  %next.gep233 = getelementptr i8, ptr %.0134.i, i64 %i.vr ; 2 uses
  %next.gep234 = getelementptr i8, ptr %.075.i, i64 %i.vr ; 2 uses
  %i.vs = getelementptr i8, ptr %next.gep233, i64 16
  %wide.load235 = load <2 x i64>, ptr %next.gep233, align 1
  %wide.load236 = load <2 x i64>, ptr %i.vs, align 1
  %i.vt = getelementptr i8, ptr %next.gep234, i64 16
  store <2 x i64> %wide.load235, ptr %next.gep234, align 1
  store <2 x i64> %wide.load236, ptr %i.vt, align 1
  %index.next237 = add nuw i64 %index232, 4       ; 2 uses
  %i.vu = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.vu, label %middle.block238, label %vector.body231, !llvm.loop !114

middle.block238:                                  ; preds = %vector.body231
  %cmp.n239 = icmp eq i64 %i.vm, %n.vec230
  br i1 %cmp.n239, label %ZSTDv07_wildcopy.exit.i.i, label %.preheader117.i.i.preheader246

.preheader117.i.i.preheader246:                   ; preds = %.preheader117.i.i.preheader, %middle.block238
  %.09.i.i.i.ph = phi ptr [ %.0134.i, %.preheader117.i.i.preheader ], [ %i.vp, %middle.block238 ]
  %.0.i.i.i.ph = phi ptr [ %.075.i, %.preheader117.i.i.preheader ], [ %i.vq, %middle.block238 ]
  br label %.preheader117.i.i

.preheader117.i.i:                                ; preds = %.preheader117.i.i.preheader246, %.preheader117.i.i
  %.09.i.i.i = phi ptr [ %i.vw, %.preheader117.i.i ], [ %.09.i.i.i.ph, %.preheader117.i.i.preheader246 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.vv, %.preheader117.i.i ], [ %.0.i.i.i.ph, %.preheader117.i.i.preheader246 ] ; 2 uses
  %.09.val.i.i.i = load i64, ptr %.09.i.i.i, align 1
  store i64 %.09.val.i.i.i, ptr %.0.i.i.i, align 1
  %i.vv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.vx = icmp ult ptr %i.vv, %i.ur
  br i1 %i.vx, label %.preheader117.i.i, label %ZSTDv07_wildcopy.exit.i.i, !llvm.loop !115

ZSTDv07_wildcopy.exit.i.i:                        ; preds = %.preheader117.i.i, %middle.block238
  %i.vy = ptrtoint ptr %i.ur to i64               ; 2 uses
  %i.vz = sub i64 %i.vy, %i.os                    ; 8 uses
  %i.wa = icmp ugt i64 %i.rk, %i.vz
  br i1 %i.wa, label %bb.cf, label %.thread.i125.i

bb.cf:                                            ; preds = %ZSTDv07_wildcopy.exit.i.i
  %i.wb = sub i64 %i.vy, %i.ot
  %i.wc = icmp ugt i64 %i.rk, %i.wb
  br i1 %i.wc, label %.thread166.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wd = ptrtoint ptr %i.uw to i64
  %.neg.i.i = sub i64 %i.wd, %i.os                ; 4 uses
  %i.we = getelementptr inbounds i8, ptr %i.gi, i64 %.neg.i.i ; 2 uses
  %i.wf = add nsw i64 %.neg.i.i, %i.sa            ; 3 uses
  %.not.i128.i = icmp sgt i64 %i.wf, 0
  br i1 %.not.i128.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ur, ptr readonly align 1 %i.we, i64 %i.sa, i1 false)
  br label %ZSTDv07_execSequence.exit.i

bb.ci:                                            ; preds = %bb.cg
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ur, ptr readonly align 1 %i.we, i64 %gepdiff.i.i, i1 false)
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ur, i64 %gepdiff.i.i ; 7 uses
  %i.wh = icmp ule ptr %i.wg, %i.op
  %i.wi = icmp samesign ugt i64 %i.wf, 2
  %or.cond.not.i.i = select i1 %i.wh, i1 %i.wi, i1 false
  br i1 %or.cond.not.i.i, label %.thread.i125.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ci
  %i.wj = sub nsw i64 %i.sp, %.neg.i.i
  %i.wk = icmp slt i64 %i.wj, %i.us
  br i1 %i.wk, label %iter.check209, label %ZSTDv07_execSequence.exit.i

iter.check209:                                    ; preds = %.preheader.i.i
  %i.wl = add i64 %i.rz, %i.so
  %i.wm = add i64 %i.wl, %i.uy
  %i.wn = add i64 %i.wm, %i.ro
  %i.wo = add i64 %i.wn, %i.sd
  %i.wp = add i64 %i.oz, %i.rk
  %umax190 = tail call i64 @llvm.umax.i64(i64 %i.wo, i64 %i.wp)
  %i.wq = add i64 %i.rk, %i.os
  %i.wr = sub i64 %umax190, %i.wq                 ; 7 uses
  %min.iters.check192 = icmp ult i64 %i.wr, 4
  %diff.check189 = icmp ult i64 %i.rk, 32
  %or.cond242 = select i1 %min.iters.check192, i1 true, i1 %diff.check189
  br i1 %or.cond242, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check193

vector.main.loop.iter.check193:                   ; preds = %iter.check209
  %min.iters.check194 = icmp ult i64 %i.wr, 32
  br i1 %min.iters.check194, label %vec.epilog.ph213, label %vector.ph195

vector.ph195:                                     ; preds = %vector.main.loop.iter.check193
  %i.ws = and i64 %i.wr, 28
  %n.vec196 = and i64 %i.wr, -32                  ; 5 uses
  %i.wt = getelementptr i8, ptr %i.ge, i64 %n.vec196
  %i.wu = getelementptr i8, ptr %i.wg, i64 %n.vec196
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next203, %vector.body197 ] ; 3 uses
  %next.gep199 = getelementptr i8, ptr %i.ge, i64 %index198 ; 2 uses
  %next.gep200 = getelementptr i8, ptr %i.wg, i64 %index198 ; 2 uses
  %i.wv = getelementptr i8, ptr %next.gep199, i64 16
  %wide.load201 = load <16 x i8>, ptr %next.gep199, align 1, !tbaa !16
  %wide.load202 = load <16 x i8>, ptr %i.wv, align 1, !tbaa !16
  %i.ww = getelementptr i8, ptr %next.gep200, i64 16
  store <16 x i8> %wide.load201, ptr %next.gep200, align 1, !tbaa !16
  store <16 x i8> %wide.load202, ptr %i.ww, align 1, !tbaa !16
  %index.next203 = add nuw i64 %index198, 32      ; 2 uses
  %i.wx = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.wx, label %middle.block204, label %vector.body197, !llvm.loop !116

middle.block204:                                  ; preds = %vector.body197
  %cmp.n205 = icmp eq i64 %i.wr, %n.vec196
  br i1 %cmp.n205, label %ZSTDv07_execSequence.exit.i, label %vec.epilog.iter.check211

vec.epilog.iter.check211:                         ; preds = %middle.block204
  %min.epilog.iters.check212 = icmp eq i64 %i.ws, 0
  br i1 %min.epilog.iters.check212, label %.lr.ph.i.i.preheader, label %vec.epilog.ph213, !prof !117

vec.epilog.ph213:                                 ; preds = %vector.main.loop.iter.check193, %vec.epilog.iter.check211
  %vec.epilog.resume.val206 = phi i64 [ %n.vec196, %vec.epilog.iter.check211 ], [ 0, %vector.main.loop.iter.check193 ]
  %n.vec214 = and i64 %i.wr, -4                   ; 4 uses
  %i.wy = getelementptr i8, ptr %i.ge, i64 %n.vec214
  %i.wz = getelementptr i8, ptr %i.wg, i64 %n.vec214
  br label %vec.epilog.vector.body215

vec.epilog.vector.body215:                        ; preds = %vec.epilog.vector.body215, %vec.epilog.ph213
  %index216 = phi i64 [ %vec.epilog.resume.val206, %vec.epilog.ph213 ], [ %index.next220, %vec.epilog.vector.body215 ] ; 3 uses
  %next.gep217 = getelementptr i8, ptr %i.ge, i64 %index216
  %next.gep218 = getelementptr i8, ptr %i.wg, i64 %index216
  %wide.load219 = load <4 x i8>, ptr %next.gep217, align 1, !tbaa !16
  store <4 x i8> %wide.load219, ptr %next.gep218, align 1, !tbaa !16
  %index.next220 = add nuw i64 %index216, 4       ; 2 uses
  %i.xa = icmp eq i64 %index.next220, %n.vec214
  br i1 %i.xa, label %vec.epilog.middle.block221, label %vec.epilog.vector.body215, !llvm.loop !118

vec.epilog.middle.block221:                       ; preds = %vec.epilog.vector.body215
  %cmp.n222 = icmp eq i64 %i.wr, %n.vec214
  br i1 %cmp.n222, label %ZSTDv07_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check209, %vec.epilog.iter.check211, %vec.epilog.middle.block221
  %.086119.i.i.ph = phi ptr [ %i.ge, %iter.check209 ], [ %i.wt, %vec.epilog.iter.check211 ], [ %i.wy, %vec.epilog.middle.block221 ]
  %.088118.i.i.ph = phi ptr [ %i.wg, %iter.check209 ], [ %i.wu, %vec.epilog.iter.check211 ], [ %i.wz, %vec.epilog.middle.block221 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.086119.i.i = phi ptr [ %i.xb, %.lr.ph.i.i ], [ %.086119.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.088118.i.i = phi ptr [ %i.xd, %.lr.ph.i.i ], [ %.088118.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.086119.i.i, i64 1
  %i.xc = load i8, ptr %.086119.i.i, align 1, !tbaa !16
  %i.xd = getelementptr inbounds nuw i8, ptr %.088118.i.i, i64 1 ; 2 uses
  store i8 %i.xc, ptr %.088118.i.i, align 1, !tbaa !16
  %i.xe = icmp ult ptr %i.xd, %i.ut
  br i1 %i.xe, label %.lr.ph.i.i, label %ZSTDv07_execSequence.exit.i, !llvm.loop !119

.thread.i125.i:                                   ; preds = %bb.ci, %ZSTDv07_wildcopy.exit.i.i
  %i.xf = phi i64 [ %i.wf, %bb.ci ], [ %i.sa, %ZSTDv07_wildcopy.exit.i.i ]
  %.290.i.i = phi ptr [ %i.wg, %bb.ci ], [ %i.ur, %ZSTDv07_wildcopy.exit.i.i ] ; 8 uses
  %.2.i126.i = phi ptr [ %i.ge, %bb.ci ], [ %i.uw, %ZSTDv07_wildcopy.exit.i.i ] ; 7 uses
  %i.xg = icmp ult i64 %i.rk, 8
  br i1 %i.xg, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread.i125.i
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_execSequence.dec64table, i64 %i.rk
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !8
  %i.xj = load i8, ptr %.2.i126.i, align 1, !tbaa !16
  store i8 %i.xj, ptr %.290.i.i, align 1, !tbaa !16
  %i.xk = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 1
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !16
  %i.xm = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 1
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !16
  %i.xn = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 2
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !16
  %i.xp = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 2
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !16
  %i.xq = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 3
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !16
  %i.xs = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 3
  store i8 %i.xr, ptr %i.xs, align 1, !tbaa !16
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_execSequence.dec32table, i64 %i.rk
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !8
  %i.xv = zext i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 %i.xv ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 4
  %.val.i127.i = load i32, ptr %i.xw, align 1
  store i32 %.val.i127.i, ptr %i.xx, align 1
  %i.xy = sext i32 %i.xi to i64
  %i.xz = sub nsw i64 0, %i.xy
  %i.ya = getelementptr inbounds i8, ptr %i.xw, i64 %i.xz
  br label %bb.cl

bb.ck:                                            ; preds = %.thread.i125.i
  %.2.val.i.i = load i64, ptr %.2.i126.i, align 1
  store i64 %.2.val.i.i, ptr %.290.i.i, align 1
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.3.i.i = phi ptr [ %i.ya, %bb.cj ], [ %.2.i126.i, %bb.ck ] ; 2 uses
  %.3.i.i155 = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 8 ; 11 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8 ; 10 uses
  %i.yd = icmp ugt ptr %i.ut, %i.ou
  br i1 %i.yd, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.ye = icmp ult ptr %i.yb, %i.op
  br i1 %i.ye, label %.preheader180.i.preheader, label %bb.cn

.preheader180.i.preheader:                        ; preds = %bb.cm
  %i.yf = tail call i64 @llvm.umax.i64(i64 %i.rk, i64 %i.vz)
  %i.yg = add i64 %i.yf, %i.os
  %i.yh = sub i64 %invariant.op279, %i.yg         ; 2 uses
  %i.yi = lshr i64 %i.yh, 3
  %i.yj = add nuw nsw i64 %i.yi, 1                ; 2 uses
  %min.iters.check157 = icmp ult i64 %i.yh, 56
  br i1 %min.iters.check157, label %.preheader180.i.preheader243, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.preheader180.i.preheader
  %umax154 = tail call i64 @llvm.umax.i64(i64 %i.rk, i64 %i.vz)
  %i.yk = add i64 %umax154, %i.os
  %i.yl = sub i64 %.3.i.i155, %i.yk
  %diff.check156 = icmp ugt i64 %i.yl, -32
  br i1 %diff.check156, label %.preheader180.i.preheader243, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck153
  %n.vec159 = and i64 %i.yj, 4611686018427387900  ; 3 uses
  %i.ym = shl i64 %n.vec159, 3                    ; 2 uses
  %i.yn = getelementptr i8, ptr %i.yc, i64 %i.ym
  %i.yo = getelementptr i8, ptr %i.yb, i64 %i.ym
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next166, %vector.body160 ] ; 2 uses
  %i.yp = shl i64 %index161, 3                    ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.yc, i64 %i.yp ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.yb, i64 %i.yp ; 2 uses
  %i.yq = getelementptr i8, ptr %next.gep162, i64 16
  %wide.load164 = load <2 x i64>, ptr %next.gep162, align 1
  %wide.load165 = load <2 x i64>, ptr %i.yq, align 1
  %i.yr = getelementptr i8, ptr %next.gep163, i64 16
  store <2 x i64> %wide.load164, ptr %next.gep163, align 1
  store <2 x i64> %wide.load165, ptr %i.yr, align 1
  %index.next166 = add nuw i64 %index161, 4       ; 2 uses
  %i.ys = icmp eq i64 %index.next166, %n.vec159
  br i1 %i.ys, label %middle.block167, label %vector.body160, !llvm.loop !120

middle.block167:                                  ; preds = %vector.body160
  %cmp.n168 = icmp eq i64 %i.yj, %n.vec159
  br i1 %cmp.n168, label %ZSTDv07_wildcopy.exit108.i.i, label %.preheader180.i.preheader243

.preheader180.i.preheader243:                     ; preds = %vector.memcheck153, %.preheader180.i.preheader, %middle.block167
  %.09.i105.i.i.ph = phi ptr [ %i.yc, %vector.memcheck153 ], [ %i.yc, %.preheader180.i.preheader ], [ %i.yn, %middle.block167 ]
  %.0.i106.i.i.ph = phi ptr [ %i.yb, %vector.memcheck153 ], [ %i.yb, %.preheader180.i.preheader ], [ %i.yo, %middle.block167 ]
  br label %.preheader180.i

.preheader180.i:                                  ; preds = %.preheader180.i.preheader243, %.preheader180.i
  %.09.i105.i.i = phi ptr [ %i.yu, %.preheader180.i ], [ %.09.i105.i.i.ph, %.preheader180.i.preheader243 ] ; 2 uses
  %.0.i106.i.i = phi ptr [ %i.yt, %.preheader180.i ], [ %.0.i106.i.i.ph, %.preheader180.i.preheader243 ] ; 2 uses
  %.09.val.i107.i.i = load i64, ptr %.09.i105.i.i, align 1
  store i64 %.09.val.i107.i.i, ptr %.0.i106.i.i, align 1
  %i.yt = getelementptr inbounds nuw i8, ptr %.0.i106.i.i, i64 8 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.09.i105.i.i, i64 8
  %i.yv = icmp ult ptr %i.yt, %i.op
  br i1 %i.yv, label %.preheader180.i, label %ZSTDv07_wildcopy.exit108.i.i, !llvm.loop !121

ZSTDv07_wildcopy.exit108.i.i:                     ; preds = %.preheader180.i, %middle.block167
  %i.yw = ptrtoint ptr %i.yb to i64
  %i.yx = sub i64 %i.ov, %i.yw
  %i.yy = getelementptr inbounds i8, ptr %i.yc, i64 %i.yx
  br label %bb.cn

bb.cn:                                            ; preds = %ZSTDv07_wildcopy.exit108.i.i, %bb.cm
  %.391.i.i = phi ptr [ %i.op, %ZSTDv07_wildcopy.exit108.i.i ], [ %i.yb, %bb.cm ] ; 7 uses
  %.4.i.i = phi ptr [ %i.yy, %ZSTDv07_wildcopy.exit108.i.i ], [ %i.yc, %bb.cm ] ; 7 uses
  %.4.i.i137 = ptrtoaddr ptr %.4.i.i to i64
  %i.yz = icmp ult ptr %.391.i.i, %i.ut
  br i1 %i.yz, label %iter.check, label %ZSTDv07_execSequence.exit.i

iter.check:                                       ; preds = %bb.cn
  %i.za = add i64 %i.rz, %i.so
  %i.zb = add i64 %i.za, %i.uy
  %i.zc = add i64 %i.zb, %i.ro
  %i.zd = add i64 %i.zc, %i.sd
  %umax138 = tail call i64 @llvm.umax.i64(i64 %i.rk, i64 %i.vz)
  %i.ze = add i64 %i.oy, %umax138
  %umax139 = tail call i64 @llvm.umax.i64(i64 %6, i64 %i.ze)
  %i.zf = sub i64 %i.zd, %umax139                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.zf, 4
  br i1 %min.iters.check, label %.lr.ph122.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %i.rk, i64 %i.vz)
  %i.zg = add i64 %i.ox, %umax
  %umax136 = tail call i64 @llvm.umax.i64(i64 %6, i64 %i.zg)
  %i.zh = sub i64 %.4.i.i137, %umax136
  %diff.check = icmp ugt i64 %i.zh, -32
  br i1 %diff.check, label %.lr.ph122.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check140 = icmp ult i64 %i.zf, 32
  br i1 %min.iters.check140, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zi = and i64 %i.zf, 28
  %n.vec = and i64 %i.zf, -32                     ; 5 uses
  %i.zj = getelementptr i8, ptr %.4.i.i, i64 %n.vec
  %i.zk = getelementptr i8, ptr %.391.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.4.i.i, i64 %index ; 2 uses
  %next.gep141 = getelementptr i8, ptr %.391.i.i, i64 %index ; 2 uses
  %i.zl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !16
  %wide.load142 = load <16 x i8>, ptr %i.zl, align 1, !tbaa !16
  %i.zm = getelementptr i8, ptr %next.gep141, i64 16
  store <16 x i8> %wide.load, ptr %next.gep141, align 1, !tbaa !16
  store <16 x i8> %wide.load142, ptr %i.zm, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zn = icmp eq i64 %index.next, %n.vec
  br i1 %i.zn, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zf, %n.vec
  br i1 %cmp.n, label %ZSTDv07_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph122.i.i.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec144 = and i64 %i.zf, -4                   ; 4 uses
  %i.zo = getelementptr i8, ptr %.4.i.i, i64 %n.vec144
  %i.zp = getelementptr i8, ptr %.391.i.i, i64 %n.vec144
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 3 uses
  %next.gep146 = getelementptr i8, ptr %.4.i.i, i64 %index145
  %next.gep147 = getelementptr i8, ptr %.391.i.i, i64 %index145
  %wide.load148 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !16
  store <4 x i8> %wide.load148, ptr %next.gep147, align 1, !tbaa !16
  %index.next149 = add nuw i64 %index145, 4       ; 2 uses
  %i.zq = icmp eq i64 %index.next149, %n.vec144
  br i1 %i.zq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !123

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n150 = icmp eq i64 %i.zf, %n.vec144
  br i1 %cmp.n150, label %ZSTDv07_execSequence.exit.i, label %.lr.ph122.i.i.preheader

.lr.ph122.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5121.i.i.ph = phi ptr [ %.4.i.i, %iter.check ], [ %.4.i.i, %vector.memcheck ], [ %i.zj, %vec.epilog.iter.check ], [ %i.zo, %vec.epilog.middle.block ]
  %.492120.i.i.ph = phi ptr [ %.391.i.i, %iter.check ], [ %.391.i.i, %vector.memcheck ], [ %i.zk, %vec.epilog.iter.check ], [ %i.zp, %vec.epilog.middle.block ]
  br label %.lr.ph122.i.i

.lr.ph122.i.i:                                    ; preds = %.lr.ph122.i.i.preheader, %.lr.ph122.i.i
  %.5121.i.i = phi ptr [ %i.zr, %.lr.ph122.i.i ], [ %.5121.i.i.ph, %.lr.ph122.i.i.preheader ] ; 2 uses
  %.492120.i.i = phi ptr [ %i.zt, %.lr.ph122.i.i ], [ %.492120.i.i.ph, %.lr.ph122.i.i.preheader ] ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.5121.i.i, i64 1
  %i.zs = load i8, ptr %.5121.i.i, align 1, !tbaa !16
  %i.zt = getelementptr inbounds nuw i8, ptr %.492120.i.i, i64 1 ; 2 uses
  store i8 %i.zs, ptr %.492120.i.i, align 1, !tbaa !16
  %i.zu = icmp ult ptr %i.zt, %i.ut
  br i1 %i.zu, label %.lr.ph122.i.i, label %ZSTDv07_execSequence.exit.i, !llvm.loop !124

bb.co:                                            ; preds = %bb.cl
  %i.zv = getelementptr i8, ptr %.290.i.i, i64 %i.xf
  %i.zw = tail call i64 @llvm.umin.i64(i64 %i.rk, i64 %i.vz)
  %i.zx = tail call i64 @llvm.umax.i64(i64 %i.rk, i64 %i.vz) ; 3 uses
  %i.zy = add i64 %i.rz, %i.os
  %i.zz = add i64 %i.zy, %i.zw
  %i.aaa = add i64 %i.zz, %i.zx
  %i.aab = add i64 %i.aaa, %i.ro
  %i.aac = sub i64 %i.aab, %i.rk
  %.reass = add i64 %i.zx, %i.pa
  %i.aad = tail call i64 @llvm.umax.i64(i64 %i.aac, i64 %.reass)
  %i.aae = add i64 %i.aad, -9
  %i.aaf = add i64 %i.zx, %i.os
  %i.aag = sub i64 %i.aae, %i.aaf                 ; 2 uses
  %i.aah = lshr i64 %i.aag, 3
  %i.aai = add nuw nsw i64 %i.aah, 1              ; 2 uses
  %min.iters.check174 = icmp ult i64 %i.aag, 56
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.memcheck170

vector.memcheck170:                               ; preds = %bb.co
  %umax171 = tail call i64 @llvm.umax.i64(i64 %i.rk, i64 %i.vz)
  %i.aaj = add i64 %umax171, %i.os
  %i.aak = sub i64 %.3.i.i155, %i.aaj
  %diff.check172 = icmp ugt i64 %i.aak, -32
  br i1 %diff.check172, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck170
  %n.vec176 = and i64 %i.aai, 4611686018427387900 ; 3 uses
  %i.aal = shl i64 %n.vec176, 3                   ; 2 uses
  %i.aam = getelementptr i8, ptr %i.yc, i64 %i.aal
  %i.aan = getelementptr i8, ptr %i.yb, i64 %i.aal
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next183, %vector.body177 ] ; 2 uses
  %i.aao = shl i64 %index178, 3                   ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.yc, i64 %i.aao ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.yb, i64 %i.aao ; 2 uses
  %i.aap = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load181 = load <2 x i64>, ptr %next.gep179, align 1
  %wide.load182 = load <2 x i64>, ptr %i.aap, align 1
  %i.aaq = getelementptr i8, ptr %next.gep180, i64 16
  store <2 x i64> %wide.load181, ptr %next.gep180, align 1
  store <2 x i64> %wide.load182, ptr %i.aaq, align 1
  %index.next183 = add nuw i64 %index178, 4       ; 2 uses
  %i.aar = icmp eq i64 %index.next183, %n.vec176
  br i1 %i.aar, label %middle.block184, label %vector.body177, !llvm.loop !125

middle.block184:                                  ; preds = %vector.body177
  %cmp.n185 = icmp eq i64 %i.aai, %n.vec176
  br i1 %cmp.n185, label %ZSTDv07_execSequence.exit.i, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %vector.memcheck170, %bb.co, %middle.block184
  %.09.i109.i.i.ph = phi ptr [ %i.yc, %vector.memcheck170 ], [ %i.yc, %bb.co ], [ %i.aam, %middle.block184 ]
  %.0.i110.i.i.ph = phi ptr [ %i.yb, %vector.memcheck170 ], [ %i.yb, %bb.co ], [ %i.aan, %middle.block184 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %.09.i109.i.i = phi ptr [ %i.aat, %scalar.ph173 ], [ %.09.i109.i.i.ph, %scalar.ph173.preheader ] ; 2 uses
  %.0.i110.i.i = phi ptr [ %i.aas, %scalar.ph173 ], [ %.0.i110.i.i.ph, %scalar.ph173.preheader ] ; 2 uses
  %.09.val.i111.i.i = load i64, ptr %.09.i109.i.i, align 1
  store i64 %.09.val.i111.i.i, ptr %.0.i110.i.i, align 1
  %i.aas = getelementptr inbounds nuw i8, ptr %.0.i110.i.i, i64 8 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.09.i109.i.i, i64 8
  %i.aau = icmp ult ptr %i.aas, %i.zv
  br i1 %i.aau, label %scalar.ph173, label %ZSTDv07_execSequence.exit.i, !llvm.loop !126

ZSTDv07_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %scalar.ph173, %.lr.ph122.i.i, %middle.block204, %vec.epilog.middle.block221, %middle.block184, %middle.block, %vec.epilog.middle.block, %bb.cn, %.preheader.i.i, %bb.ch
  %i.aav = icmp ult i64 %i.us, -119
  br i1 %i.aav, label %bb.bn, label %.thread166.i, !llvm.loop !127

.thread166.i:                                     ; preds = %ZSTDv07_execSequence.exit.i, %bb.cf, %bb.ce, %ZSTDv07_decodeSequence.exit.i, %BITv07_reloadDStream.exit.thread.i, %BITv07_initDStream.exit.i, %bb.az, %bb.ar, %bb.ap
  %.485.ph.i = phi i64 [ -20, %BITv07_reloadDStream.exit.thread.i ], [ -20, %bb.ap ], [ -20, %bb.az ], [ -20, %bb.ar ], [ -20, %BITv07_initDStream.exit.i ], [ %i.us, %ZSTDv07_execSequence.exit.i ], [ -70, %ZSTDv07_decodeSequence.exit.i ], [ -20, %bb.cf ], [ -20, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv07_decompressSequences.exit

.thread.i23:                                      ; preds = %.preheader.i, %bb.ao, %bb.ad
  %.2.i = phi ptr [ %i.fv, %bb.ao ], [ %.0134.i, %.preheader.i ], [ %i.fv, %bb.ad ] ; 3 uses
  %.378.i = phi ptr [ %1, %bb.ao ], [ %.075.i, %.preheader.i ], [ %1, %bb.ad ] ; 3 uses
  %i.aaw = ptrtoint ptr %i.ga to i64
  %i.aax = ptrtoint ptr %.2.i to i64
  %i.aay = sub i64 %i.aaw, %i.aax                 ; 3 uses
  %i.aaz = ptrtoint ptr %i.fz to i64
  %i.aba = ptrtoint ptr %.378.i to i64            ; 2 uses
  %i.abb = sub i64 %i.aaz, %i.aba
  %.not93.i = icmp ugt i64 %i.aay, %i.abb
  br i1 %.not93.i, label %ZSTDv07_decompressSequences.exit, label %bb.cp

bb.cp:                                            ; preds = %.thread.i23
  %.not92.i = icmp eq ptr %i.ga, %.2.i
  br i1 %.not92.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.378.i, ptr align 1 %.2.i, i64 %i.aay, i1 false)
  %i.abc = getelementptr inbounds nuw i8, ptr %.378.i, i64 %i.aay
  %.pre.i = ptrtoint ptr %i.abc to i64
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pre-phi.i = phi i64 [ %i.aba, %bb.cp ], [ %.pre.i, %bb.cq ]
  %i.abd = ptrtoint ptr %1 to i64
  %i.abe = sub i64 %.pre-phi.i, %i.abd
  br label %ZSTDv07_decompressSequences.exit

ZSTDv07_decompressSequences.exit:                 ; preds = %.thread.i, %bb.o, %bb.ab, %bb.m, %bb.l, %HUFv07_decompress1X4_usingDTable.exit.i, %bb.g, %bb.f, %bb.d, %bb.n, %bb.j, %bb.b, %bb.v, %bb.cr, %.thread.i23, %.thread166.i, %ZSTDv07_decodeSeqHeaders.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ac, %bb.a
  %.1 = phi i64 [ -20, %bb.am ], [ -72, %bb.a ], [ %i.abe, %bb.cr ], [ -70, %.thread.i23 ], [ %.485.ph.i, %.thread166.i ], [ %i.id, %ZSTDv07_decodeSeqHeaders.exit.i ], [ -20, %bb.al ], [ -72, %bb.ag ], [ -72, %bb.ai ], [ -72, %bb.ak ], [ -20, %bb.an ], [ -72, %bb.ac ], [ -20, %.thread.i ], [ -20, %bb.o ], [ -20, %bb.ab ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %HUFv07_decompress1X4_usingDTable.exit.i ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.d ], [ -20, %bb.n ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ]
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
end_hunk_2
