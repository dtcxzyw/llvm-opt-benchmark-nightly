inline.NumInlined: 337
inline.NumDeleted: 52
begin_hunk_0_@ZBUFFv06_getErrorName
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
define noundef i64 @ZSTDv06_decompressBegin(ptr noundef writeonly captures(none) initializes((5132, 5136), (21520, 21560), (21588, 21596)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.a, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21588
  store i32 0, ptr %i.b, align 4, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21520
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21592
  store i32 0, ptr %i.e, align 8, !tbaa !99
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @ZSTDv06_createDCtx() local_unnamed_addr #16 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(152712) ptr @malloc(i64 noundef 152712) #28 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 21552
  store i64 5, ptr %i.c, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 21588
  store i32 0, ptr %i.d, align 4, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 21520
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.f, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 21592
  store i32 0, ptr %i.g, align 8, !tbaa !99
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
define void @ZSTDv06_copyDCtx(ptr noundef writeonly captures(none) initializes((0, 21619)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21619) %0, ptr noundef nonnull align 8 dereferenceable(21619) %1, i64 21619, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 5, 1) i64 @ZSTDv06_getFrameParams(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ult i64 %2, 5
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 1
  %.not = icmp eq i32 %.val, -47205082
  br i1 %.not, label %ZSTDv06_frameHeaderSize.exit, label %bb.h

ZSTDv06_frameHeaderSize.exit:                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !27
  %i.d = lshr i8 %i.c, 6
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !100
  %i.h = add i64 %i.g, 5                          ; 2 uses
  %.not26 = icmp ult i64 %2, %i.h
  br i1 %.not26, label %bb.h, label %bb.c

bb.c:                                             ; preds = %ZSTDv06_frameHeaderSize.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.i = load i8, ptr %i.b, align 1, !tbaa !27
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = and i32 %i.j, 15
  %i.l = add nuw nsw i32 %i.k, 12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.l, ptr %i.m, align 8, !tbaa !101
  %i.n = and i32 %i.j, 32
  %.not27 = icmp eq i32 %i.n, 0
  br i1 %.not27, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i32 %i.j, 6
  switch i32 %i.o, label %default.unreachable31 [
    i32 0, label %.sink.split
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

default.unreachable31:                            ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27
  %i.r = zext i8 %i.q to i64
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val29 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.val29 to i64
  %i.u = add nuw nsw i64 %i.t, 256
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val28 = load i64, ptr %i.v, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.val28.sink = phi i64 [ %.val28, %bb.g ], [ %i.u, %bb.f ], [ %i.r, %bb.e ], [ 0, %bb.d ]
  store i64 %.val28.sink, ptr %0, align 8, !tbaa !102
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.c, %bb.b, %bb.a, %ZSTDv06_frameHeaderSize.exit
  %.2 = phi i64 [ %i.h, %ZSTDv06_frameHeaderSize.exit ], [ 5, %bb.a ], [ -10, %bb.b ], [ -14, %bb.c ], [ 0, %.sink.split ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %.not.i = icmp eq ptr %1, %i.b
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !106
  store ptr %1, ptr %i.d, align 8, !tbaa !105
  store ptr %1, ptr %i.a, align 8, !tbaa !103
  br label %ZSTDv06_checkContinuity.exit

ZSTDv06_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv06_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv06_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %5 = alloca %struct.seqState_t, align 8         ; 30 uses
  %i.b = icmp ugt i64 %4, 131071
  br i1 %i.b, label %ZSTDv06_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %4, 3
  br i1 %i.c, label %ZSTDv06_decompressSequences.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %3, align 1, !tbaa !27
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
  br i1 %i.g, label %ZSTDv06_decompressSequences.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %i.e, 48
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27
  %i.k = zext i8 %i.j to i32                      ; 4 uses
  switch i32 %i.h, label %bb.g [
    i32 48, label %bb.f
    i32 32, label %.thread.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw nsw i32 %i.e, 14
  %i.m = and i32 %i.l, 245760
  %i.n = shl nuw nsw i32 %i.k, 6
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = lshr i32 %i.r, 2
  %i.t = or disjoint i32 %i.o, %i.s               ; 2 uses
  %i.u = shl nuw nsw i32 %i.r, 16
  %i.v = and i32 %i.u, 196608
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !27
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !27
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad
  %.0128.i = zext nneg i32 %i.t to i64
  %.0131.i = zext nneg i32 %i.ae to i64           ; 2 uses
  %i.af = icmp samesign ugt i32 %i.t, 131072
  %i.ag = add nuw nsw i64 %.0131.i, 5             ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.ag, %4
  %or.cond.i = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond.i, label %ZSTDv06_decompressSequences.exit, label %.thread162.i

bb.g:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i32 %i.e, 6
  %i.aj = and i32 %i.ai, 960
  %i.ak = lshr i32 %i.k, 2
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = shl nuw nsw i32 %i.k, 8
  %i.an = and i32 %i.am, 768
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !27
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq
  %.0128147.i = zext nneg i32 %i.al to i64        ; 3 uses
  %.0131148.i = zext nneg i32 %i.ar to i64        ; 3 uses
  %i.as = add nuw nsw i64 %.0131148.i, 3          ; 3 uses
  %i.at = icmp samesign ugt i64 %i.as, %4
  br i1 %i.at, label %ZSTDv06_decompressSequences.exit, label %bb.h

.thread.i:                                        ; preds = %bb.e
  %i.au = shl nuw nsw i32 %i.e, 10
  %i.av = and i32 %i.au, 15360
  %i.aw = shl nuw nsw i32 %i.k, 2
  %i.ax = or disjoint i32 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !27
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = lshr i32 %i.ba, 6
  %i.bc = or disjoint i32 %i.ax, %i.bb
  %i.bd = shl nuw nsw i32 %i.ba, 8
  %i.be = and i32 %i.bd, 16128
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !27
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.be, %i.bh
  %.0128147189.i = zext nneg i32 %i.bc to i64
  %.0131148190.i = zext nneg i32 %i.bi to i64     ; 2 uses
  %i.bj = add nuw nsw i64 %.0131148190.i, 4       ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bj, %4
  br i1 %i.bk, label %ZSTDv06_decompressSequences.exit, label %.thread162.i

bb.h:                                             ; preds = %bb.g
  %i.bl = and i32 %i.e, 16
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.thread162.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 21616
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bp = tail call i64 @HUFv06_decompress1X2(ptr noundef nonnull %i.bn, i64 noundef %.0128147.i, ptr noundef nonnull %i.bo, i64 noundef %.0131148.i)
  br label %bb.j

.thread162.i:                                     ; preds = %bb.h, %.thread.i, %bb.f
  %.0131152158170.i = phi i64 [ %.0131148.i, %bb.h ], [ %.0131.i, %bb.f ], [ %.0131148190.i, %.thread.i ]
  %.0128151159169.i = phi i64 [ %.0128147.i, %bb.h ], [ %.0128.i, %bb.f ], [ %.0128147189.i, %.thread.i ] ; 2 uses
  %.0129150160167.i = phi i64 [ 3, %bb.h ], [ 5, %bb.f ], [ 4, %.thread.i ]
  %i.bq = phi i64 [ %i.as, %bb.h ], [ %i.ag, %bb.f ], [ %i.bj, %.thread.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 21616
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 %.0129150160167.i
  %i.bt = tail call i64 @HUFv06_decompress(ptr noundef nonnull %i.br, i64 noundef %.0128151159169.i, ptr noundef nonnull %i.bs, i64 noundef %.0131152158170.i)
  br label %bb.j

bb.j:                                             ; preds = %.thread162.i, %bb.i
  %.0128151159168.i = phi i64 [ %.0128147.i, %bb.i ], [ %.0128151159169.i, %.thread162.i ] ; 3 uses
  %i.bu = phi i64 [ %i.as, %bb.i ], [ %i.bq, %.thread162.i ]
  %i.bv = phi i64 [ %i.bp, %bb.i ], [ %i.bt, %.thread162.i ]
  %i.bw = icmp ult i64 %i.bv, -119
  br i1 %i.bw, label %bb.k, label %ZSTDv06_decompressSequences.exit

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 21616 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !107
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %.0128151159168.i, ptr %i.bz, align 8, !tbaa !108
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0128151159168.i
  store i64 0, ptr %i.ca, align 1
  br label %bb.ac

bb.l:                                             ; preds = %bb.c
  %i.cb = and i32 %i.e, 48
  %.not.i = icmp eq i32 %i.cb, 16
  br i1 %.not.i, label %bb.m, label %ZSTDv06_decompressSequences.exit

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 21592
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !99
  %.not139.i = icmp eq i32 %i.cd, 0
  br i1 %.not139.i, label %ZSTDv06_decompressSequences.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = shl nuw nsw i32 %i.e, 6
  %i.cf = and i32 %i.ce, 960
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !27
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = lshr i32 %i.ci, 2
  %i.ck = or disjoint i32 %i.cj, %i.cf
  %i.cl = zext nneg i32 %i.ck to i64              ; 4 uses
  %i.cm = shl nuw nsw i32 %i.ci, 8
  %i.cn = and i32 %i.cm, 768
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !27
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
  store ptr %i.cv, ptr %i.da, align 8, !tbaa !107
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %i.cl, ptr %i.db, align 8, !tbaa !108
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cl
  store i64 0, ptr %i.dc, align 1
  br label %bb.ac

bb.q:                                             ; preds = %bb.c
  %i.dd = and i32 %i.e, 48
  switch i32 %i.dd, label %bb.r [
    i32 48, label %bb.t
    i32 32, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.de = and i32 %i.e, 31
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.df = shl nuw nsw i32 %i.e, 8
  %i.dg = and i32 %i.df, 3840
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !27
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dg, %i.dj
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.dl = shl nuw nsw i32 %i.e, 16
  %i.dm = and i32 %i.dl, 983040
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !27
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 8
  %i.dr = or disjoint i32 %i.dq, %i.dm
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !27
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.dr, %i.du
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0125.in.i = phi i32 [ %i.de, %bb.r ], [ %i.dv, %bb.t ], [ %i.dk, %bb.s ]
  %.0124.i = phi i64 [ 1, %bb.r ], [ 3, %bb.t ], [ 2, %bb.s ] ; 3 uses
  %.0125.i = zext nneg i32 %.0125.in.i to i64     ; 7 uses
  %i.dw = add nuw nsw i64 %.0124.i, %.0125.i      ; 4 uses
  %i.dx = add nuw nsw i64 %i.dw, 8
  %i.dy = icmp samesign ugt i64 %i.dx, %4
  br i1 %i.dy, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dz = icmp samesign ugt i64 %i.dw, %4
  br i1 %i.dz, label %ZSTDv06_decompressSequences.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 21616 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 %.0124.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull align 1 %i.eb, i64 %.0125.i, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store ptr %i.ea, ptr %i.ec, align 8, !tbaa !107
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %.0125.i, ptr %i.ed, align 8, !tbaa !108
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.0125.i
  store i64 0, ptr %i.ee, align 1
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 %.0124.i ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !107
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %.0125.i, ptr %i.eh, align 8, !tbaa !108
  br label %bb.ac

bb.y:                                             ; preds = %bb.c
  %i.ei = and i32 %i.e, 48
  switch i32 %i.ei, label %bb.z [
    i32 48, label %bb.ab
    i32 32, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.ej = and i32 %i.e, 31
  br label %.thread172.i

bb.aa:                                            ; preds = %bb.y
  %i.ek = shl nuw nsw i32 %i.e, 8
  %i.el = and i32 %i.ek, 3840
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !27
  %i.eo = zext i8 %i.en to i32
  %i.ep = or disjoint i32 %i.el, %i.eo
  br label %.thread172.i

bb.ab:                                            ; preds = %bb.y
  %i.eq = shl nuw nsw i32 %i.e, 16
  %i.er = and i32 %i.eq, 983040
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !27
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 8
  %i.ew = or disjoint i32 %i.ev, %i.er
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !27
  %i.ez = zext i8 %i.ey to i32
  %i.fa = or disjoint i32 %i.ew, %i.ez            ; 2 uses
  %i.fb = icmp eq i64 %4, 3
  %i.fc = icmp samesign ugt i32 %i.fa, 131072
  %or.cond178.i = select i1 %i.fb, i1 true, i1 %i.fc
  br i1 %or.cond178.i, label %ZSTDv06_decompressSequences.exit, label %.thread172.i

.thread172.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z
  %.0176.i = phi i32 [ 3, %bb.ab ], [ 2, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %.0123.in175.i = phi i32 [ %i.fa, %bb.ab ], [ %i.ep, %bb.aa ], [ %i.ej, %bb.z ]
  %.0123.i = zext nneg i32 %.0123.in175.i to i64  ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 21616 ; 3 uses
  %i.fe = zext nneg i32 %.0176.i to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !27
  %i.fh = add nuw nsw i64 %.0123.i, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fd, i8 %i.fg, i64 %i.fh, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store ptr %i.fd, ptr %i.fi, align 8, !tbaa !107
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i64 %.0123.i, ptr %i.fj, align 8, !tbaa !108
  %i.fk = add nuw nsw i32 %.0176.i, 1
  %i.fl = zext nneg i32 %i.fk to i64
  br label %bb.ac

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.ac:                                            ; preds = %.thread172.i, %bb.x, %bb.w, %bb.p, %bb.k
  %i.fm = phi i64 [ %.0125.i, %bb.w ], [ %i.cl, %bb.p ], [ %.0123.i, %.thread172.i ], [ %.0125.i, %bb.x ], [ %.0128151159168.i, %bb.k ]
  %i.fn = phi ptr [ %i.ea, %bb.w ], [ %i.cv, %bb.p ], [ %i.fd, %.thread172.i ], [ %i.ef, %bb.x ], [ %i.bx, %bb.k ] ; 4 uses
  %.5.i = phi i64 [ %i.dw, %bb.w ], [ %i.ct, %bb.p ], [ %i.fl, %.thread172.i ], [ %i.dw, %bb.x ], [ %i.bu, %bb.k ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 %.5.i ; 6 uses
  %i.fp = sub nsw i64 %4, %.5.i                   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 5 uses
  %i.fr = getelementptr i8, ptr %1, i64 %2        ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 2052 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !105 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 21536
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !106
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 21544
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !104
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 21592 ; 3 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !99 ; 3 uses
  %i.gd = icmp eq i64 %4, %.5.i
  br i1 %i.gd, label %ZSTDv06_decompressSequences.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 3 uses
  %i.gf = load i8, ptr %i.fo, align 1, !tbaa !27  ; 4 uses
  %i.gg = zext i8 %i.gf to i32                    ; 2 uses
  %.not.i.i = icmp eq i8 %i.gf, 0
  br i1 %.not.i.i, label %.thread.i22, label %bb.ae

.thread.i22:                                      ; preds = %bb.ad
  store i32 0, ptr %i.gb, align 8, !tbaa !99
  br label %bb.ct

bb.ae:                                            ; preds = %bb.ad
  %i.gh = icmp slt i8 %i.gf, 0
  br i1 %i.gh, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.gi = icmp eq i8 %i.gf, -1
  br i1 %i.gi, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gj = icmp samesign ult i64 %i.fp, 3
  br i1 %i.gj, label %ZSTDv06_decompressSequences.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fo, i64 3
  %.val.i.i = load i16, ptr %i.ge, align 1
  %i.gl = zext i16 %.val.i.i to i32
  %i.gm = add nuw nsw i32 %i.gl, 32512
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %.not81.not.i.i = icmp eq i64 %i.fp, 1
  br i1 %.not81.not.i.i, label %ZSTDv06_decompressSequences.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gn = shl nuw nsw i32 %i.gg, 8
  %i.go = add nsw i32 %i.gn, -32768
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.gq = load i8, ptr %i.ge, align 1, !tbaa !27
  %i.gr = zext i8 %i.gq to i32
  %i.gs = or disjoint i32 %i.go, %i.gr
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ae
  %.075.i.i = phi i32 [ %i.gm, %bb.ah ], [ %i.gs, %bb.aj ], [ %i.gg, %bb.ae ] ; 2 uses
  %.064.i.i = phi ptr [ %i.gk, %bb.ah ], [ %i.gp, %bb.aj ], [ %i.ge, %bb.ae ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.064.i.i, i64 4
  %i.gu = icmp ugt ptr %i.gt, %i.fq
  br i1 %i.gu, label %ZSTDv06_decompressSequences.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gv = load i8, ptr %.064.i.i, align 1, !tbaa !27
  %i.gw = zext i8 %i.gv to i32                    ; 3 uses
  %i.gx = lshr i32 %i.gw, 6
  %i.gy = lshr i32 %i.gw, 2
  %i.gz = and i32 %i.gy, 3
  %i.ha = getelementptr inbounds nuw i8, ptr %.064.i.i, i64 1 ; 3 uses
  %i.hb = ptrtoint ptr %i.fq to i64               ; 4 uses
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = tail call fastcc i64 @ZSTDv06_buildSeqTable(ptr noundef nonnull %0, i32 noundef %i.gx, i32 noundef 35, i32 noundef 9, ptr noundef nonnull %i.ha, i64 noundef %i.hd, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef %i.gc) ; 2 uses
  %i.hf = icmp ult i64 %i.he, -119
  br i1 %i.hf, label %bb.am, label %ZSTDv06_decompressSequences.exit

bb.am:                                            ; preds = %bb.al
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.he ; 3 uses
  %i.hh = lshr i32 %i.gw, 4
  %i.hi = and i32 %i.hh, 3
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hb, %i.hj
  %i.hl = tail call fastcc i64 @ZSTDv06_buildSeqTable(ptr noundef nonnull %i.fu, i32 noundef %i.hi, i32 noundef 28, i32 noundef 8, ptr noundef nonnull %i.hg, i64 noundef %i.hk, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %i.gc) ; 2 uses
  %i.hm = icmp ult i64 %i.hl, -119
  br i1 %i.hm, label %bb.an, label %ZSTDv06_decompressSequences.exit

bb.an:                                            ; preds = %bb.am
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hl ; 3 uses
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %i.hb, %i.ho
  %i.hq = tail call fastcc i64 @ZSTDv06_buildSeqTable(ptr noundef nonnull %i.ft, i32 noundef %i.gz, i32 noundef 52, i32 noundef 9, ptr noundef nonnull %i.hn, i64 noundef %i.hp, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef %i.gc) ; 2 uses
  %i.hr = icmp ult i64 %i.hq, -119
  br i1 %i.hr, label %ZSTDv06_decodeSeqHeaders.exit.i, label %ZSTDv06_decompressSequences.exit

ZSTDv06_decodeSeqHeaders.exit.i:                  ; preds = %bb.an
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hq ; 13 uses
  %i.ht = ptrtoint ptr %i.hs to i64               ; 7 uses
  %i.hu = ptrtoint ptr %i.fo to i64
  %i.hv = sub i64 %i.ht, %i.hu                    ; 3 uses
  %i.hw = icmp ult i64 %i.hv, -119
  br i1 %i.hw, label %bb.ao, label %ZSTDv06_decompressSequences.exit

bb.ao:                                            ; preds = %ZSTDv06_decodeSeqHeaders.exit.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.hv ; 16 uses
  store i32 0, ptr %i.gb, align 8, !tbaa !99
  %.not83.i = icmp eq i32 %.075.i.i, 0
  br i1 %.not83.i, label %bb.ct, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  store i64 1, ptr %i.hy, align 8, !tbaa !100
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store i64 1, ptr %i.hz, align 8, !tbaa !100
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store i64 1, ptr %i.ia, align 8, !tbaa !100
  %i.ib = sub i64 %i.hb, %i.ht                    ; 4 uses
  %i.ic = icmp eq ptr %i.fq, %i.hs
  br i1 %i.ic, label %.thread154.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.id = icmp ugt i64 %i.ib, 7
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.hx, ptr %i.ie, align 8, !tbaa !46
  br i1 %i.id, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.if = getelementptr inbounds i8, ptr %i.fq, i64 -8 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !51
  %.val.i88.i = load i64, ptr %i.if, align 1      ; 3 uses
  store i64 %.val.i88.i, ptr %5, align 8, !tbaa !52
  %i.ih = lshr i64 %.val.i88.i, 56                ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.thread154.i, label %BITv06_initDStream.exit.i

bb.as:                                            ; preds = %bb.aq
end_hunk_0
