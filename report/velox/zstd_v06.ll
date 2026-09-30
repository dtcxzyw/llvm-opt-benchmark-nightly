Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v06?download=true
inline.NumInlined: 337
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@ZSTDv06_decompressBlock_internal:bb.a
  %.5127.i.i.ph = phi ptr [ %.4.i.i, %iter.check ], [ %.4.i.i, %vector.memcheck ], [ %i.yq, %vec.epilog.iter.check ], [ %i.yv, %vec.epilog.middle.block ]
  %.496126.i.i.ph = phi ptr [ %.395.i.i, %iter.check ], [ %.395.i.i, %vector.memcheck ], [ %i.yr, %vec.epilog.iter.check ], [ %i.yw, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.5127.i.i = phi ptr [ %i.yy, %.lr.ph128.i.i ], [ %.5127.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.496126.i.i = phi ptr [ %i.za, %.lr.ph128.i.i ], [ %.496126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.5127.i.i, i64 1
  %i.yz = load i8, ptr %.5127.i.i, align 1, !tbaa !26
  %i.za = getelementptr inbounds nuw i8, ptr %.496126.i.i, i64 1 ; 2 uses
  store i8 %i.yz, ptr %.496126.i.i, align 1, !tbaa !26
  %i.zb = icmp ult ptr %i.za, %i.vd
  br i1 %i.zb, label %.lr.ph128.i.i, label %ZSTDv06_execSequence.exit.i, !llvm.loop !122

bb.cr:                                            ; preds = %bb.co
  %i.zc = getelementptr i8, ptr %.294.i.i, i64 %i.xa
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %.09.i115.i.i = phi ptr [ %i.xx, %bb.cr ], [ %i.ze, %bb.cs ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.xw, %bb.cr ], [ %i.zd, %bb.cs ] ; 2 uses
  %.09.val.i117.i.i = load i64, ptr %.09.i115.i.i, align 1
  store i64 %.09.val.i117.i.i, ptr %.0.i116.i.i, align 1
  %i.zd = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8
  %i.zf = icmp ult ptr %i.zd, %i.zc
  br i1 %i.zf, label %bb.cs, label %ZSTDv06_execSequence.exit.i, !llvm.loop !116

ZSTDv06_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %bb.cs, %.lr.ph128.i.i, %middle.block147, %vec.epilog.middle.block163, %middle.block, %vec.epilog.middle.block, %bb.cq, %.preheader.i.i, %bb.ck
  %i.zg = icmp ult i64 %i.vc, -119
  br i1 %i.zg, label %bb.bn, label %.thread155.i, !llvm.loop !123

.thread155.i:                                     ; preds = %ZSTDv06_execSequence.exit.i, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %ZSTDv06_decodeSequence.exit.i, %BITv06_initDStream.exit.i, %bb.az, %bb.ar, %bb.ap
  %.478.ph.i = phi i64 [ -20, %bb.ar ], [ -20, %bb.az ], [ -20, %BITv06_initDStream.exit.i ], [ -20, %bb.ap ], [ %i.vc, %ZSTDv06_execSequence.exit.i ], [ -20, %bb.ci ], [ -20, %bb.ch ], [ -70, %bb.cg ], [ -20, %bb.cf ], [ -70, %ZSTDv06_decodeSequence.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

.loopexit.i:                                      ; preds = %bb.bn
  %.not279.i = icmp eq i32 %.0126.i, 0
  br i1 %.not279.i, label %.thread267.i, label %bb.ct

.thread267.i:                                     ; preds = %BITv06_reloadDStream.exit.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.cu

bb.ct:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

bb.cu:                                            ; preds = %.thread267.i, %bb.ao, %.thread.i22
  %.2.i = phi ptr [ %i.fq, %bb.ao ], [ %.0127.i, %.thread267.i ], [ %i.fq, %.thread.i22 ] ; 4 uses
  %.371.i = phi ptr [ %1, %bb.ao ], [ %.068.i, %.thread267.i ], [ %1, %.thread.i22 ] ; 3 uses
  %i.zh = ptrtoint ptr %i.fv to i64
  %i.zi = ptrtoint ptr %.2.i to i64
  %i.zj = sub i64 %i.zh, %i.zi                    ; 2 uses
  %i.zk = icmp ugt ptr %.2.i, %i.fv
  br i1 %i.zk, label %ZSTDv06_decompressSequences.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.zl = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.zj ; 2 uses
  %i.zm = icmp ugt ptr %i.zl, %i.fu
  br i1 %i.zm, label %ZSTDv06_decompressSequences.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.not87.i = icmp eq ptr %i.fv, %.2.i
  br i1 %.not87.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.371.i, ptr align 1 %.2.i, i64 %i.zj, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.5.ph.i = phi ptr [ %.371.i, %bb.cw ], [ %i.zl, %bb.cx ]
  %i.zn = ptrtoint ptr %.5.ph.i to i64
  %i.zo = ptrtoint ptr %1 to i64
  %i.zp = sub i64 %i.zn, %i.zo
  br label %ZSTDv06_decompressSequences.exit

ZSTDv06_decompressSequences.exit:                 ; preds = %.thread.i, %bb.ab, %bb.o, %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.n, %bb.j, %bb.b, %bb.v, %bb.cy, %bb.cv, %bb.cu, %bb.ct, %.thread155.i, %ZSTDv06_decodeSeqHeaders.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ac, %bb.a
  %.1 = phi i64 [ -20, %bb.am ], [ -72, %bb.a ], [ %i.zp, %bb.cy ], [ %.478.ph.i, %.thread155.i ], [ -20, %bb.ct ], [ %i.hy, %ZSTDv06_decodeSeqHeaders.exit.i ], [ -20, %bb.cu ], [ -70, %bb.cv ], [ -20, %bb.al ], [ -72, %bb.ag ], [ -72, %bb.ai ], [ -72, %bb.ak ], [ -20, %bb.an ], [ -72, %bb.ac ], [ -20, %.thread.i ], [ -20, %bb.ab ], [ -20, %bb.o ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.d ], [ -20, %bb.n ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompress_usingPreparedDCtx(ptr noundef initializes((0, 21619)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21619) %0, ptr noundef nonnull readonly align 8 dereferenceable(21619) %1, i64 21619, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %.not.i = icmp eq ptr %2, %i.b
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !54
  store ptr %2, ptr %i.d, align 8, !tbaa !53
  store ptr %2, ptr %i.a, align 8, !tbaa !51
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
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %i.f = lshr i8 %i.e, 6
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48   ; 2 uses
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
  %i.o = load i8, ptr %i.d, align 1, !tbaa !26
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = and i32 %i.p, 15
  %i.r = add nuw nsw i32 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 21576
  store i32 %i.r, ptr %i.s, align 8, !tbaa !49
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
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26
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
  store i64 %.val29.sink.i.i, ptr %i.n, align 8, !tbaa !50
  %i.ac = ptrtoint ptr %i.a to i64
  %gepdiff = sub i64 %4, %i.j                     ; 2 uses
  %i.ad = icmp ult i64 %gepdiff, 3
  br i1 %i.ad, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %i.af = ptrtoint ptr %i.b to i64                ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.157113 = phi i64 [ %gepdiff, %.lr.ph ], [ %i.bf, %bb.r ] ; 2 uses
  %.058112 = phi ptr [ %1, %.lr.ph ], [ %i.bd, %bb.r ] ; 7 uses
  %.161111 = phi ptr [ %i.ae, %.lr.ph ], [ %i.be, %bb.r ] ; 5 uses
  %i.ag = load i8, ptr %.161111, align 1, !tbaa !26 ; 2 uses
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
  %5 = load i8, ptr %i.al, align 1, !tbaa !26
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 8
  %8 = getelementptr inbounds nuw i8, ptr %.161111, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !26
  %i.am = zext i8 %9 to i64
  %10 = or disjoint i64 %7, %i.am
  %i.an = or disjoint i64 %10, %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0.i.ph = phi i64 [ %i.an, %bb.k ], [ 1, %bb.j ] ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.161111, i64 3 ; 2 uses
  %i.ap = add i64 %.157113, -3                    ; 3 uses
  %i.aq = icmp ugt i64 %.0.i.ph, %i.ap
  br i1 %i.aq, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i8 %i.ah, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %.thread
  ]

bb.n:                                             ; preds = %bb.m
  %i.ar = ptrtoint ptr %.058112 to i64
  %i.as = sub i64 %i.af, %i.ar
  %i.at = tail call fastcc i64 @ZSTDv06_decompressBlock_internal(ptr noundef %0, ptr noundef %.058112, i64 noundef %i.as, ptr noundef nonnull %i.ao, i64 noundef %.0.i.ph)
  br label %ZSTDv06_copyRawBlock.exit

bb.o:                                             ; preds = %bb.m
  %i.au = ptrtoint ptr %.058112 to i64
  %i.av = sub i64 %i.af, %i.au
  %i.aw = icmp eq ptr %.058112, null
  %i.ax = icmp ugt i64 %.0.i.ph, %i.av
  %or.cond.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i, label %ZSTDv06_copyRawBlock.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.058112, ptr nonnull readonly align 1 %i.ao, i64 %.0.i.ph, i1 false)
  br label %ZSTDv06_copyRawBlock.exit

ZSTDv06_copyRawBlock.exit:                        ; preds = %bb.p, %.thread91, %bb.n
  %i.ay = phi i64 [ %i.ap, %bb.n ], [ 0, %.thread91 ], [ %i.ap, %bb.p ]
  %.0.i.ph90 = phi i64 [ %.0.i.ph, %bb.n ], [ 0, %.thread91 ], [ %.0.i.ph, %bb.p ] ; 3 uses
  %.0 = phi i64 [ %i.at, %bb.n ], [ 0, %.thread91 ], [ %.0.i.ph, %bb.p ] ; 3 uses
  %i.az = icmp eq i64 %.0.i.ph90, 0
  br i1 %i.az, label %.loopexit, label %bb.q

ZSTDv06_copyRawBlock.exit.thread:                 ; preds = %bb.o
  %i.ba = icmp eq i64 %.0.i.ph, 0
  br i1 %i.ba, label %.loopexit, label %.thread

bb.q:                                             ; preds = %ZSTDv06_copyRawBlock.exit
  %i.bb = icmp ult i64 %.0, -119
  br i1 %i.bb, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.161111, i64 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.058112, i64 %.0
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.0.i.ph90 ; 2 uses
  %i.bf = sub i64 %i.ay, %.0.i.ph90
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.ac, %i.bg
  %i.bi = icmp ult i64 %i.bh, 3
  br i1 %i.bi, label %.thread, label %bb.j

.loopexit:                                        ; preds = %ZSTDv06_copyRawBlock.exit, %ZSTDv06_copyRawBlock.exit.thread
  %i.bj = ptrtoint ptr %.058112 to i64
  %i.bk = ptrtoint ptr %1 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.l, %.thread91, %bb.q, %bb.r, %ZSTDv06_copyRawBlock.exit.thread, %bb.i, %ZSTDv06_frameHeaderSize.exit.i.i, %bb.d, %bb.c, %bb.b, %bb.a, %.loopexit
  %.3 = phi i64 [ -72, %bb.a ], [ -20, %ZSTDv06_frameHeaderSize.exit.i.i ], [ %i.bl, %.loopexit ], [ %i.j, %bb.b ], [ -72, %bb.c ], [ -20, %bb.d ], [ -72, %bb.i ], [ -70, %ZSTDv06_copyRawBlock.exit.thread ], [ -1, %bb.m ], [ -72, %bb.l ], [ %.0, %bb.q ], [ -72, %.thread91 ], [ -72, %bb.r ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompress_usingDict(ptr noundef initializes((5132, 5136), (21520, 21560), (21588, 21596)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @ZSTDv06_decompressBegin_usingDict(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.c
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.c, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %.neg.i = sub i64 %i.h, %i.g
  %i.i = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.i, ptr %i.j, align 8, !tbaa !54
  store ptr %1, ptr %i.e, align 8, !tbaa !53
  store ptr %1, ptr %i.b, align 8, !tbaa !51
  br label %ZSTDv06_checkContinuity.exit

ZSTDv06_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.k = tail call fastcc i64 @ZSTDv06_decompressFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -30, 1) i64 @ZSTDv06_decompressBegin_usingDict(ptr nofree noundef captures(none) initializes((5132, 5136), (21520, 21560), (21588, 21596)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
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
  store i64 5, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21588
  store i32 0, ptr %i.l, align 4, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5132 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.n, align 4, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 21592 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !47
  %i.p = icmp ne ptr %1, null
  %i.q = icmp ne i64 %2, 0
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.b, label %ZSTDv06_decompress_insertDictionary.exit.thread

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %1, align 1
  %.not.i = icmp eq i32 %.val.i, -332356554
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %1, ptr %i.s, align 8, !tbaa !54
  store ptr %1, ptr %i.r, align 8, !tbaa !53
  br label %ZSTDv06_decompress_insertDictionary.exit

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.u = add i64 %2, -4                           ; 2 uses
  %i.v = tail call i64 @HUFv06_readDTableX4(ptr noundef nonnull %i.n, ptr noundef nonnull %i.t, i64 noundef range(i64 -3, -4) %i.u) ; 4 uses
  %i.w = icmp ult i64 %i.v, -119
  br i1 %i.w, label %bb.e, label %ZSTDv06_decompress_insertDictionary.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v ; 2 uses
  %i.y = sub i64 %i.u, %i.v                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 28, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.z = call i64 @FSEv06_readNCount(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.x, i64 noundef %i.y) ; 4 uses
  %i.aa = icmp ult i64 %i.z, -119
  br i1 %i.aa, label %bb.f, label %.critedge.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.d, align 4, !tbaa !15  ; 5 uses
  %i.ac = icmp ugt i32 %i.ab, 8
  br i1 %i.ac, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2052
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !15  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ag = shl nuw nsw i32 1, %i.ab                ; 5 uses
  %i.ah = add nsw i32 %i.ag, -1                   ; 5 uses
  %i.ai = icmp ugt i32 %i.ae, 255
  br i1 %i.ai, label %FSEv06_buildDTable.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext.i.i.i = shl nuw nsw i32 32768, %i.ab
  %i.aj = lshr exact i32 %sext.i.i.i, 16          ; 3 uses
  %i.ak = add nuw nsw i32 %i.ae, 1                ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ak to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.al = icmp eq i32 %i.ae, 0
  br i1 %i.al, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 510
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.1, %bb.o ] ; 5 uses
  %.sroa.4.079.i.i.i = phi i16 [ 1, %.new ], [ %.sroa.4.2.i.i.i.1, %bb.o ] ; 2 uses
  %.07178.i.i.i = phi i32 [ %i.ah, %.new ], [ %.172.i.i.i.1, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.o ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.an = load i16, ptr %i.am, align 4, !tbaa !18 ; 3 uses
  %i.ao = icmp eq i16 %i.an, -1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = trunc i64 %indvars.iv.i.i.i to i8
  %i.aq = add i32 %.07178.i.i.i, -1
  %i.ar = zext i32 %.07178.i.i.i to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ar
end_hunk_0
begin_hunk_1_@ZSTDv06_decompressBegin_usingDict:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh
  %i.dq = sub i64 %i.dg, %i.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i32 35, ptr %i.i, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.dr = call i64 @FSEv06_readNCount(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dp, i64 noundef %i.dq) ; 2 uses
  %i.ds = icmp ult i64 %i.dr, -119
  br i1 %i.ds, label %bb.ad, label %.critedge69.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dt = load i32, ptr %i.j, align 4, !tbaa !15  ; 2 uses
  %i.du = icmp ugt i32 %i.dt, 9
  br i1 %i.du, label %.critedge69.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = load i32, ptr %i.i, align 4, !tbaa !15
  %i.dw = call i64 @FSEv06_buildDTable(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef %i.dv, i32 noundef %i.dt)
  %i.dx = icmp ult i64 %i.dw, -119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br i1 %i.dx, label %ZSTDv06_loadEntropy.exit.i, label %ZSTDv06_decompress_insertDictionary.exit.thread

.critedge.i.i:                                    ; preds = %FSEv06_buildDTable.exit.thread.i.i, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %ZSTDv06_decompress_insertDictionary.exit.thread

.critedge67.i.i:                                  ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %ZSTDv06_decompress_insertDictionary.exit.thread

.critedge69.i.i:                                  ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %ZSTDv06_decompress_insertDictionary.exit.thread

ZSTDv06_loadEntropy.exit.i:                       ; preds = %bb.ae
  store i32 1, ptr %i.o, align 8, !tbaa !47
  %i.dy = add i64 %i.z, %i.v
  %i.dz = add i64 %i.dy, %i.dh
  %i.ea = add i64 %i.dz, %i.dr                    ; 2 uses
  %i.eb = icmp ult i64 %i.ea, -119
  br i1 %i.eb, label %bb.af, label %ZSTDv06_decompress_insertDictionary.exit.thread

bb.af:                                            ; preds = %ZSTDv06_loadEntropy.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ea ; 2 uses
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !51  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !52
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !53
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %.neg.i19.i = sub i64 %i.ei, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ec, i64 %.neg.i19.i
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !54
  store ptr %i.ec, ptr %i.ef, align 8, !tbaa !53
  br label %ZSTDv06_decompress_insertDictionary.exit

ZSTDv06_decompress_insertDictionary.exit:         ; preds = %bb.c, %bb.af
  %storemerge = getelementptr i8, ptr %1, i64 %2
  store ptr %storemerge, ptr %i.m, align 8, !tbaa !51
  br label %ZSTDv06_decompress_insertDictionary.exit.thread

ZSTDv06_decompress_insertDictionary.exit.thread:  ; preds = %.critedge69.i.i, %bb.d, %.critedge67.i.i, %bb.ae, %.critedge.i.i, %ZSTDv06_loadEntropy.exit.i, %bb.a, %ZSTDv06_decompress_insertDictionary.exit
  %.2 = phi i64 [ 0, %bb.a ], [ 0, %ZSTDv06_decompress_insertDictionary.exit ], [ -30, %ZSTDv06_loadEntropy.exit.i ], [ -30, %.critedge.i.i ], [ -30, %bb.ae ], [ -30, %.critedge67.i.i ], [ -30, %bb.d ], [ -30, %.critedge69.i.i ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompressDCtx(ptr noundef initializes((5132, 5136), (21520, 21560), (21588, 21596)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21588
  store i32 0, ptr %i.b, align 4, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.d, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21592
  store i32 0, ptr %i.e, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %ZSTDv06_decompress_usingDict.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %1, ptr %i.g, align 8, !tbaa !54
  store ptr %1, ptr %i.f, align 8, !tbaa !53
  store ptr %1, ptr %i.c, align 8, !tbaa !51
  br label %ZSTDv06_decompress_usingDict.exit

ZSTDv06_decompress_usingDict.exit:                ; preds = %bb.a, %bb.b
  %i.h = tail call fastcc i64 @ZSTDv06_decompressFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(152712) ptr @malloc(i64 noundef 152712) #28 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ZSTDv06_createDCtx.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 21552
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 21588
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 21520 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5132
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 21592
  store i64 5, ptr %i.c, align 8, !tbaa !45
  store i32 0, ptr %i.d, align 4, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.f, align 4, !tbaa !15
  store i32 0, ptr %i.g, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %ZSTDv06_decompressDCtx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 21528
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21536
  store ptr %0, ptr %i.i, align 8, !tbaa !54
  store ptr %0, ptr %i.h, align 8, !tbaa !53
  store ptr %0, ptr %i.e, align 8, !tbaa !51
  br label %ZSTDv06_decompressDCtx.exit

ZSTDv06_decompressDCtx.exit:                      ; preds = %bb.b, %bb.c
  %i.j = tail call fastcc i64 @ZSTDv06_decompressFrame(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  tail call void @free(ptr noundef nonnull %i.a) #27
  br label %ZSTDv06_createDCtx.exit.thread

ZSTDv06_createDCtx.exit.thread:                   ; preds = %bb.a, %ZSTDv06_decompressDCtx.exit
  %.0 = phi i64 [ %i.j, %ZSTDv06_decompressDCtx.exit ], [ -64, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZSTDv06_findFrameSizeInfoLegacy(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %1, 5
  br i1 %i.a, label %ZSTDv06_frameHeaderSize.exit.thread, label %ZSTDv06_frameHeaderSize.exit

ZSTDv06_frameHeaderSize.exit:                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i8, ptr %i.b, align 1, !tbaa !26
  %i.d = lshr i8 %i.c, 6
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.h = add i64 %i.g, 5                          ; 4 uses
  %i.i = icmp ult i64 %i.h, -119
  br i1 %i.i, label %bb.b, label %ZSTDv06_frameHeaderSize.exit.thread

ZSTDv06_frameHeaderSize.exit.thread:              ; preds = %bb.a, %ZSTDv06_frameHeaderSize.exit
  %.0.i60 = phi i64 [ %i.h, %ZSTDv06_frameHeaderSize.exit ], [ -72, %bb.a ]
  store i64 %.0.i60, ptr %2, align 8, !tbaa !48
  br label %.critedge

bb.b:                                             ; preds = %ZSTDv06_frameHeaderSize.exit
  %.val = load i32, ptr %0, align 1
  %.not55 = icmp eq i32 %.val, -47205082
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 -10, ptr %2, align 8, !tbaa !48
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %i.g, 8
  %i.k = icmp ult i64 %1, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 -72, ptr %2, align 8, !tbaa !48
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.l = sub i64 %1, %i.h                         ; 2 uses
  %i.m = icmp ult i64 %i.l, 3
  br i1 %i.m, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread107
  %.04391 = phi i64 [ %i.af, %.thread107 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.14690 = phi i64 [ %i.ae, %.thread107 ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %.14889 = phi ptr [ %i.ad, %.thread107 ], [ %i.n, %.lr.ph.preheader ] ; 5 uses
  %i.o = load i8, ptr %.14889, align 1, !tbaa !26 ; 2 uses
  %i.p = lshr i8 %i.o, 6
  switch i8 %i.p, label %bb.g [
    i8 3, label %.loopexit
    i8 2, label %.thread
  ]

._crit_edge:                                      ; preds = %.thread107, %bb.f
  store i64 -72, ptr %2, align 8, !tbaa !48
  br label %.critedge

bb.g:                                             ; preds = %.lr.ph
  %i.q = and i8 %i.o, 7
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 16
  %i.t = getelementptr inbounds nuw i8, ptr %.14889, i64 1
  %4 = load i8, ptr %i.t, align 1, !tbaa !26
  %5 = zext i8 %4 to i64
  %6 = shl nuw nsw i64 %5, 8
  %7 = getelementptr inbounds nuw i8, ptr %.14889, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !26
  %i.u = zext i8 %8 to i64
  %9 = or disjoint i64 %6, %i.u
  %i.v = or disjoint i64 %9, %i.s                 ; 3 uses
  %i.w = add i64 %.14690, -3                      ; 2 uses
  %i.x = icmp ugt i64 %i.v, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

.thread:                                          ; preds = %.lr.ph
  %i.y = add i64 %.14690, -3                      ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %.thread107

bb.h:                                             ; preds = %.thread, %bb.g
  store i64 -72, ptr %2, align 8, !tbaa !48
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %.loopexit, label %.thread107

.thread107:                                       ; preds = %.thread, %bb.i
  %.0.i57.ph106109 = phi i64 [ %i.v, %bb.i ], [ 1, %.thread ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %bb.i ], [ %i.y, %.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.14889, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0.i57.ph106109
  %i.ae = sub nuw i64 %i.ab, %.0.i57.ph106109     ; 2 uses
  %i.af = add i64 %.04391, 1
  %i.ag = icmp ult i64 %i.ae, 3
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.i, %.lr.ph
  %.249.ph = getelementptr inbounds nuw i8, ptr %.14889, i64 3
  %i.ah = ptrtoint ptr %.249.ph to i64
  %i.ai = ptrtoint ptr %0 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %2, align 8, !tbaa !48
  %i.ak = shl i64 %.04391, 17
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %._crit_edge, %ZSTDv06_frameHeaderSize.exit.thread, %bb.c, %bb.e, %.loopexit
  %.sink = phi i64 [ -2, %bb.h ], [ -2, %._crit_edge ], [ -2, %ZSTDv06_frameHeaderSize.exit.thread ], [ -2, %bb.c ], [ -2, %bb.e ], [ %i.ak, %.loopexit ]
  store i64 %.sink, ptr %3, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTDv06_nextSrcSizeToDecompress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  %.not = icmp eq i64 %4, %i.b
  br i1 %.not, label %bb.b, label %ZSTDv06_decodeFrameHeader.exit.thread69

bb.b:                                             ; preds = %bb.a
  %.not58 = icmp eq i64 %2, 0
  br i1 %.not58, label %ZSTDv06_checkContinuity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.d
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.d, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %.neg.i = sub i64 %i.i, %i.h
  %i.j = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.j, ptr %i.k, align 8, !tbaa !54
  store ptr %1, ptr %i.f, align 8, !tbaa !53
  store ptr %1, ptr %i.c, align 8, !tbaa !51
  br label %ZSTDv06_checkContinuity.exit

ZSTDv06_checkContinuity.exit:                     ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21588 ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !46
  switch i32 %i.m, label %ZSTDv06_decodeFrameHeader.exit.thread69 [
    i32 0, label %bb.e
    i32 1, label %ZSTDv06_checkContinuity.exit._crit_edge
    i32 2, label %bb.q
    i32 3, label %bb.s
  ]

ZSTDv06_checkContinuity.exit._crit_edge:          ; preds = %ZSTDv06_checkContinuity.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 21560
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !131
  br label %bb.j

bb.e:                                             ; preds = %ZSTDv06_checkContinuity.exit
  %.not61 = icmp eq i64 %4, 5
  br i1 %.not61, label %bb.f, label %ZSTDv06_decodeFrameHeader.exit.thread69

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26
  %i.p = lshr i8 %i.o, 6
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !48   ; 2 uses
  %i.t = add i64 %i.s, 5                          ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 21560
  store i64 %i.t, ptr %i.u, align 8, !tbaa !131
  %i.v = icmp ult i64 %i.t, -119
  br i1 %i.v, label %bb.g, label %ZSTDv06_decodeFrameHeader.exit.thread69

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) %3, i64 5, i1 false)
  %i.x = icmp ugt i64 %i.t, 5
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.s, ptr %i.a, align 8, !tbaa !45
  store i32 1, ptr %i.l, align 4, !tbaa !46
  br label %ZSTDv06_decodeFrameHeader.exit.thread69

bb.i:                                             ; preds = %bb.g
  store i64 0, ptr %i.a, align 8, !tbaa !45
  br label %bb.j

bb.j:                                             ; preds = %ZSTDv06_checkContinuity.exit._crit_edge, %bb.i
  %i.y = phi i64 [ %i.t, %bb.i ], [ %.pre, %ZSTDv06_checkContinuity.exit._crit_edge ] ; 2 uses
  %i.z = phi i64 [ 0, %bb.i ], [ %4, %ZSTDv06_checkContinuity.exit._crit_edge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152701 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %3, i64 %i.z, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 21568 ; 2 uses
  %i.ac = icmp ult i64 %i.y, 5
  br i1 %i.ac, label %ZSTDv06_decodeFrameHeader.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152696
  %.val.i.i = load i32, ptr %i.ad, align 8
  %.not.i.i = icmp eq i32 %.val.i.i, -47205082
  br i1 %.not.i.i, label %ZSTDv06_frameHeaderSize.exit.i.i, label %ZSTDv06_decodeFrameHeader.exit.thread69

ZSTDv06_frameHeaderSize.exit.i.i:                 ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152700
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !26  ; 2 uses
  %i.ag = lshr i8 %i.af, 6
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !48
  %i.ak = add i64 %i.aj, 5                        ; 3 uses
  %.not27.i.i = icmp ult i64 %i.y, %i.ak
  br i1 %.not27.i.i, label %ZSTDv06_decodeFrameHeader.exit, label %bb.l

bb.l:                                             ; preds = %ZSTDv06_frameHeaderSize.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.al = zext i8 %i.af to i32                    ; 3 uses
  %i.am = and i32 %i.al, 15
  %i.an = add nuw nsw i32 %i.am, 12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 21576
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !49
  %i.ap = and i32 %i.al, 32
  %.not28.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not28.i.i, label %bb.m, label %ZSTDv06_decodeFrameHeader.exit.thread69

bb.m:                                             ; preds = %bb.l
  %i.aq = lshr i32 %i.al, 6
  switch i32 %i.aq, label %default.unreachable [
    i32 0, label %.sink.split.i.i
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

default.unreachable:                              ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ar = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.as = zext i8 %i.ar to i64
  br label %.sink.split.i.i

bb.o:                                             ; preds = %bb.m
  %.val30.i.i = load i16, ptr %i.aa, align 1
  %i.at = zext i16 %.val30.i.i to i64
  %i.au = add nuw nsw i64 %i.at, 256
  br label %.sink.split.i.i

bb.p:                                             ; preds = %bb.m
  %.val29.i.i = load i64, ptr %i.aa, align 1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.val29.sink.i.i = phi i64 [ %.val29.i.i, %bb.p ], [ %i.au, %bb.o ], [ %i.as, %bb.n ], [ 0, %bb.m ]
  store i64 %.val29.sink.i.i, ptr %i.ab, align 8, !tbaa !50
  br label %ZSTDv06_decodeFrameHeader.exit.thread

ZSTDv06_decodeFrameHeader.exit:                   ; preds = %ZSTDv06_frameHeaderSize.exit.i.i
  %i.av = icmp ult i64 %i.ak, -119
  br i1 %i.av, label %ZSTDv06_decodeFrameHeader.exit.thread, label %ZSTDv06_decodeFrameHeader.exit.thread69

ZSTDv06_decodeFrameHeader.exit.thread:            ; preds = %.sink.split.i.i, %bb.j, %ZSTDv06_decodeFrameHeader.exit
  store i64 3, ptr %i.a, align 8, !tbaa !45
  store i32 2, ptr %i.l, align 4, !tbaa !46
  br label %ZSTDv06_decodeFrameHeader.exit.thread69

bb.q:                                             ; preds = %ZSTDv06_checkContinuity.exit
  %i.aw = load i8, ptr %3, align 1, !tbaa !26     ; 2 uses
  %i.ax = lshr i8 %i.aw, 6                        ; 2 uses
  %i.ay = zext nneg i8 %i.ax to i32
  switch i8 %i.ax, label %ZSTDv06_getcBlockSize.exit [
    i8 3, label %ZSTDv06_getcBlockSize.exit.thread
    i8 2, label %ZSTDv06_getcBlockSize.exit.thread73
  ]

ZSTDv06_getcBlockSize.exit:                       ; preds = %bb.q
  %i.az = and i8 %i.aw, 7
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 16
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 1
  %5 = load i8, ptr %i.bc, align 1, !tbaa !26
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !26
  %i.bd = zext i8 %9 to i64
  %10 = or disjoint i64 %7, %i.bd
  %i.be = or disjoint i64 %10, %i.bb
  br label %ZSTDv06_getcBlockSize.exit.thread73

ZSTDv06_getcBlockSize.exit.thread:                ; preds = %bb.q
  store i64 0, ptr %i.a, align 8, !tbaa !45
  br label %bb.r

ZSTDv06_getcBlockSize.exit.thread73:              ; preds = %ZSTDv06_getcBlockSize.exit, %bb.q
  %.0.i75 = phi i64 [ %i.be, %ZSTDv06_getcBlockSize.exit ], [ 1, %bb.q ]
  store i64 %.0.i75, ptr %i.a, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 21584
  store i32 %i.ay, ptr %i.bf, align 8, !tbaa !132
  br label %bb.r

bb.r:                                             ; preds = %ZSTDv06_getcBlockSize.exit.thread, %ZSTDv06_getcBlockSize.exit.thread73
  %storemerge = phi i32 [ 3, %ZSTDv06_getcBlockSize.exit.thread73 ], [ 0, %ZSTDv06_getcBlockSize.exit.thread ]
  store i32 %storemerge, ptr %i.l, align 4, !tbaa !46
  br label %ZSTDv06_decodeFrameHeader.exit.thread69

bb.s:                                             ; preds = %ZSTDv06_checkContinuity.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 21584
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !132
  switch i32 %i.bh, label %ZSTDv06_decodeFrameHeader.exit.thread69 [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 3, label %ZSTDv06_copyRawBlock.exit.thread
  ]

ZSTDv06_copyRawBlock.exit.thread:                 ; preds = %bb.s
  store i32 2, ptr %i.l, align 4, !tbaa !46
  store i64 3, ptr %i.a, align 8, !tbaa !45
  br label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bi = tail call fastcc i64 @ZSTDv06_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %ZSTDv06_copyRawBlock.exit

bb.u:                                             ; preds = %bb.s
  %i.bj = icmp eq ptr %1, null
  %i.bk = icmp ugt i64 %4, %2
  %or.cond.i = or i1 %i.bj, %i.bk
  br i1 %or.cond.i, label %ZSTDv06_copyRawBlock.exit.thread79, label %bb.v

ZSTDv06_copyRawBlock.exit.thread79:               ; preds = %bb.u
  store i32 2, ptr %i.l, align 4, !tbaa !46
  store i64 3, ptr %i.a, align 8, !tbaa !45
  br label %ZSTDv06_decodeFrameHeader.exit.thread69

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %ZSTDv06_copyRawBlock.exit

ZSTDv06_copyRawBlock.exit:                        ; preds = %bb.v, %bb.t
  %.0 = phi i64 [ %i.bi, %bb.t ], [ %4, %bb.v ]   ; 3 uses
  store i32 2, ptr %i.l, align 4, !tbaa !46
  store i64 3, ptr %i.a, align 8, !tbaa !45
  %i.bl = icmp ult i64 %.0, -119
  br i1 %i.bl, label %bb.w, label %ZSTDv06_decodeFrameHeader.exit.thread69

bb.w:                                             ; preds = %ZSTDv06_copyRawBlock.exit.thread, %ZSTDv06_copyRawBlock.exit
  %.078 = phi i64 [ 0, %ZSTDv06_copyRawBlock.exit.thread ], [ %.0, %ZSTDv06_copyRawBlock.exit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %.078
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 21520
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !51
  br label %ZSTDv06_decodeFrameHeader.exit.thread69

ZSTDv06_decodeFrameHeader.exit.thread69:          ; preds = %bb.k, %bb.l, %ZSTDv06_copyRawBlock.exit.thread79, %bb.f, %ZSTDv06_checkContinuity.exit, %bb.w, %bb.s, %ZSTDv06_copyRawBlock.exit, %ZSTDv06_decodeFrameHeader.exit.thread, %ZSTDv06_decodeFrameHeader.exit, %bb.e, %bb.a, %bb.r, %bb.h
  %.3 = phi i64 [ %i.ak, %ZSTDv06_decodeFrameHeader.exit ], [ %.0, %ZSTDv06_copyRawBlock.exit ], [ -72, %bb.a ], [ -1, %ZSTDv06_checkContinuity.exit ], [ 0, %bb.h ], [ -72, %bb.e ], [ 0, %bb.r ], [ 0, %ZSTDv06_decodeFrameHeader.exit.thread ], [ %.078, %bb.w ], [ -1, %bb.s ], [ %i.t, %bb.f ], [ -70, %ZSTDv06_copyRawBlock.exit.thread79 ], [ -10, %bb.k ], [ -14, %bb.l ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @ZBUFFv06_createDCtx() local_unnamed_addr #16 {
bb.a:
  %calloc = tail call dereferenceable_or_null(120) ptr @calloc(i64 1, i64 120) ; 4 uses
  %i.a = icmp eq ptr %calloc, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(152712) ptr @malloc(i64 noundef 152712) #28 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ZSTDv06_createDCtx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 21552
  store i64 5, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 21588
  store i32 0, ptr %i.e, align 4, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 21520
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.g, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 21592
  store i32 0, ptr %i.h, align 8, !tbaa !47
  br label %ZSTDv06_createDCtx.exit

ZSTDv06_createDCtx.exit:                          ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %calloc, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store i32 0, ptr %i.i, align 8, !tbaa !58
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %ZSTDv06_createDCtx.exit
  ret ptr %calloc
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i64 @ZBUFFv06_freeDCtx(ptr noundef captures(address_is_null) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.d) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.f) #27
  tail call void @free(ptr noundef nonnull %0) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -30, 1) i64 @ZBUFFv06_decompressInitDictionary(ptr nofree noundef captures(none) initializes((24, 28), (48, 56), (72, 88), (112, 120)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.d, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %0, align 8, !tbaa !57
  %i.f = tail call i64 @ZSTDv06_decompressBegin_usingDict(ptr noundef %i.e, ptr noundef %1, i64 noundef %2)
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 -30, 1) i64 @ZBUFFv06_decompressInit(ptr nofree noundef captures(none) initializes((24, 28), (48, 56), (72, 88), (112, 120)) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.d, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %0, align 8, !tbaa !57     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 21552
  store i64 5, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 21588
  store i32 0, ptr %i.g, align 4, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 21520
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.i, align 4, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 21592
  store i32 0, ptr %i.j, align 8, !tbaa !47
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @ZBUFFv06_decompressContinue(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a ; 3 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.q = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.u = ptrtoint ptr %i.d to i64
  br label %.thread273.outer

.thread273.outer:                                 ; preds = %.thread273.outer.backedge, %bb.a
  %.0191312.ph = phi ptr [ %1, %bb.a ], [ %i.ee, %.thread273.outer.backedge ] ; 6 uses
  %.0193310.ph = phi ptr [ %3, %bb.a ], [ %.8201, %.thread273.outer.backedge ]
  br label %.thread273

.thread273:                                       ; preds = %.thread273.backedge, %.thread273.outer
end_hunk_1
begin_hunk_2_@ZSTDv06_buildSeqTable:bb.a

.unr-lcssa:                                       ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.aj, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.z
  %indvars.iv.i20.epil.init = phi i64 [ 0, %bb.z ], [ %indvars.iv.next.i28.1, %.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i21.epil.init = phi i16 [ 1, %bb.z ], [ %.sroa.4.2.i27.1, %.unr-lcssa ] ; 2 uses
  %.07178.i22.epil.init = phi i32 [ %i.cr, %bb.z ], [ %.172.i26.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod63 = trunc i32 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i20.epil.init
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !18 ; 3 uses
  %i.ds = icmp eq i16 %i.dr, -1
  br i1 %i.ds, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.epil.preheader
  %i.dt = sext i16 %i.dr to i32
  %.not76.i23.epil = icmp sgt i32 %i.ct, %i.dt
  %spec.select.i24.epil = select i1 %.not76.i23.epil, i16 %.sroa.4.079.i21.epil.init, i16 0
  br label %.epilog-lcssa

bb.ai:                                            ; preds = %.epil.preheader
  %i.du = trunc i64 %indvars.iv.i20.epil.init to i8
  %i.dv = add i32 %.07178.i22.epil.init, -1
  %i.dw = zext i32 %.07178.i22.epil.init to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 %i.du, ptr %i.dy, align 2, !tbaa !20
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %bb.ai, %bb.ah
  %.sink.i25.epil = phi i16 [ 1, %bb.ai ], [ %i.dr, %bb.ah ]
  %.172.i26.epil = phi i32 [ %i.dv, %bb.ai ], [ %.07178.i22.epil.init, %bb.ah ]
  %.sroa.4.2.i27.epil = phi i16 [ %.sroa.4.079.i21.epil.init, %bb.ai ], [ %spec.select.i24.epil, %bb.ah ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i20.epil.init
  store i16 %.sink.i25.epil, ptr %i.dz, align 2, !tbaa !18
  br label %bb.aj

bb.aj:                                            ; preds = %.unr-lcssa, %.epilog-lcssa
  %.172.i26.lcssa = phi i32 [ %.172.i26.1, %.unr-lcssa ], [ %.172.i26.epil, %.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i27.lcssa = phi i16 [ %.sroa.4.2.i27.1, %.unr-lcssa ], [ %.sroa.4.2.i27.epil, %.epilog-lcssa ]
  %i.ea = trunc nuw nsw i32 %i.cm to i16
  store i16 %i.ea, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.i27.lcssa, ptr %.sroa.4.0..sroa_idx.i30, align 2
  %i.eb = lshr i32 %i.cq, 1
  %i.ec = lshr i32 %i.cq, 3
  %i.ed = add nuw nsw i32 %i.ec, 3
  %i.ee = add nuw nsw i32 %i.ed, %i.eb            ; 3 uses
  br label %.preheader77.i31

.preheader77.i31:                                 ; preds = %._crit_edge.i34, %bb.aj
  %indvars.iv87.i32 = phi i64 [ 0, %bb.aj ], [ %indvars.iv.next88.i36, %._crit_edge.i34 ] ; 3 uses
  %.06684.i33 = phi i32 [ 0, %bb.aj ], [ %.167.lcssa.i35, %._crit_edge.i34 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv87.i32
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !18 ; 5 uses
  %i.eh = icmp sgt i16 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.i46, label %._crit_edge.i34

.lr.ph.i46:                                       ; preds = %.preheader77.i31
  %i.ei = trunc i64 %indvars.iv87.i32 to i8       ; 3 uses
  %i.ej = icmp eq i16 %i.eg, 1
  br i1 %i.ej, label %.epil.preheader64, label %.lr.ph.i46.new

.lr.ph.i46.new:                                   ; preds = %.lr.ph.i46
  %i.ek = and i16 %i.eg, 32766
  %unroll_iter69 = zext nneg i16 %i.ek to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.lr.ph.i46.new
  %.16781.i48 = phi i32 [ %.06684.i33, %.lr.ph.i46.new ], [ %.2.i51.1, %bb.ao ] ; 2 uses
  %niter70 = phi i32 [ 0, %.lr.ph.i46.new ], [ %niter70.next.1, %bb.ao ]
  %i.el = zext nneg i32 %.16781.i48 to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i8 %i.ei, ptr %i.en, align 2, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.167.pn.i49 = phi i32 [ %.16781.i48, %bb.ak ], [ %.2.i51, %bb.al ]
  %.pn.i50 = add nuw nsw i32 %i.ee, %.167.pn.i49
  %.2.i51 = and i32 %.pn.i50, %i.cr               ; 4 uses
  %i.eo = icmp ugt i32 %.2.i51, %.172.i26.lcssa
  br i1 %i.eo, label %bb.al, label %bb.am, !llvm.loop !1

bb.am:                                            ; preds = %bb.al
  %i.ep = zext nneg i32 %.2.i51 to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i8 %i.ei, ptr %i.er, align 2, !tbaa !20
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.167.pn.i49.1 = phi i32 [ %.2.i51, %bb.am ], [ %.2.i51.1, %bb.an ]
  %.pn.i50.1 = add nuw nsw i32 %i.ee, %.167.pn.i49.1
  %.2.i51.1 = and i32 %.pn.i50.1, %i.cr           ; 5 uses
  %i.es = icmp ugt i32 %.2.i51.1, %.172.i26.lcssa
  br i1 %i.es, label %bb.an, label %bb.ao, !llvm.loop !1

bb.ao:                                            ; preds = %bb.an
  %niter70.next.1 = add i32 %niter70, 2           ; 2 uses
  %niter70.ncmp.1 = icmp eq i32 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %._crit_edge.i34.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !2

._crit_edge.i34.loopexit.unr-lcssa:               ; preds = %bb.ao
  %i.et = and i16 %i.eg, 1
  %lcmp.mod66.not = icmp eq i16 %i.et, 0
  br i1 %lcmp.mod66.not, label %._crit_edge.i34, label %.epil.preheader64

.epil.preheader64:                                ; preds = %._crit_edge.i34.loopexit.unr-lcssa, %.lr.ph.i46
  %.16781.i48.epil.init = phi i32 [ %.06684.i33, %.lr.ph.i46 ], [ %.2.i51.1, %._crit_edge.i34.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i16 %i.eg to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.eu = zext nneg i32 %.16781.i48.epil.init to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  store i8 %i.ei, ptr %i.ew, align 2, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader64
  %.167.pn.i49.epil = phi i32 [ %.16781.i48.epil.init, %.epil.preheader64 ], [ %.2.i51.epil, %bb.ap ]
  %.pn.i50.epil = add nuw nsw i32 %i.ee, %.167.pn.i49.epil
  %.2.i51.epil = and i32 %.pn.i50.epil, %i.cr     ; 3 uses
  %i.ex = icmp ugt i32 %.2.i51.epil, %.172.i26.lcssa
  br i1 %i.ex, label %bb.ap, label %._crit_edge.i34, !llvm.loop !1

._crit_edge.i34:                                  ; preds = %._crit_edge.i34.loopexit.unr-lcssa, %bb.ap, %.preheader77.i31
  %.167.lcssa.i35 = phi i32 [ %.06684.i33, %.preheader77.i31 ], [ %.2.i51.1, %._crit_edge.i34.loopexit.unr-lcssa ], [ %.2.i51.epil, %bb.ap ] ; 2 uses
  %indvars.iv.next88.i36 = add nuw nsw i64 %indvars.iv87.i32, 1 ; 2 uses
  %exitcond91.not.i37 = icmp eq i64 %indvars.iv.next88.i36, %wide.trip.count.i19
  br i1 %exitcond91.not.i37, label %bb.aq, label %.preheader77.i31, !llvm.loop !3

bb.aq:                                            ; preds = %._crit_edge.i34
  %.not.i38 = icmp eq i32 %.167.lcssa.i35, 0
  br i1 %.not.i38, label %.preheader.preheader.i40, label %FSEv06_buildDTable.exit53

.preheader.preheader.i40:                         ; preds = %bb.aq
  %wide.trip.count95.i41 = zext nneg i32 %i.cq to i64
  br label %.preheader.i42

.preheader.i42:                                   ; preds = %.preheader.i42, %.preheader.preheader.i40
  %indvars.iv92.i43 = phi i64 [ 0, %.preheader.preheader.i40 ], [ %indvars.iv.next93.i44, %.preheader.i42 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv92.i43 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !20
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fb ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !18 ; 2 uses
  %i.fe = add i16 %i.fd, 1
  store i16 %i.fe, ptr %i.fc, align 2, !tbaa !18
  %i.ff = zext i16 %i.fd to i32                   ; 2 uses
  %i.fg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ff, i1 true)
  %i.fh = xor i32 %i.fg, 31
  %i.fi = sub nsw i32 %i.cm, %i.fh                ; 2 uses
  %i.fj = trunc nsw i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !21
  %i.fl = and i32 %i.fi, 255
  %i.fm = shl i32 %i.ff, %i.fl
  %i.fn = sub i32 %i.fm, %i.cq
  %i.fo = trunc i32 %i.fn to i16
  store i16 %i.fo, ptr %i.ey, align 2, !tbaa !22
  %indvars.iv.next93.i44 = add nuw nsw i64 %indvars.iv92.i43, 1 ; 2 uses
  %exitcond96.not.i45 = icmp eq i64 %indvars.iv.next93.i44, %wide.trip.count95.i41
  br i1 %exitcond96.not.i45, label %FSEv06_buildDTable.exit53, label %.preheader.i42, !llvm.loop !4

FSEv06_buildDTable.exit53:                        ; preds = %.preheader.i42, %bb.y, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.x, %bb.w, %FSEv06_buildDTable.exit53
  %.0 = phi i64 [ %i.ck, %FSEv06_buildDTable.exit53 ], [ -20, %bb.w ], [ -20, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.as

bb.as:                                            ; preds = %bb.v, %bb.c, %bb.b, %bb.ar, %FSEv06_buildDTable.exit, %bb.d
  %.1 = phi i64 [ %.0, %bb.ar ], [ -72, %bb.b ], [ 1, %bb.d ], [ %., %bb.v ], [ 0, %FSEv06_buildDTable.exit ], [ -20, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{!2, !16}
!3 = distinct !{!3, !16}
!4 = distinct !{!4, !16}
!5 = distinct !{!5, !16}
!6 = distinct !{!6, !16}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"short", !11, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"", !17, i64 0, !11, i64 2, !11, i64 3}
!20 = !{!19, !11, i64 2}
!21 = !{!19, !11, i64 3}
!22 = !{!19, !17, i64 0}
!23 = !{!"", !17, i64 0, !17, i64 2}
!24 = !{!23, !17, i64 0}
!25 = !{!23, !17, i64 2}
!26 = !{!11, !11, i64 0}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 12}
!30 = !{!"long", !11, i64 0}
!31 = !{!"any pointer", !11, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"", !30, i64 0, !12, i64 8, !32, i64 16, !32, i64 24}
!34 = !{!33, !32, i64 24}
!35 = !{!33, !32, i64 16}
!36 = !{!33, !30, i64 0}
!37 = !{!33, !12, i64 8}
!38 = !{!"", !11, i64 0, !11, i64 1}
!39 = !{!38, !11, i64 0}
!40 = !{!38, !11, i64 1}
!41 = !{!32, !32, i64 0}
!42 = !{!"long long", !11, i64 0}
!43 = !{!"ZSTDv06_frameParams_s", !42, i64 0, !12, i64 8}
!44 = !{!"ZSTDv06_DCtx_s", !11, i64 0, !11, i64 2052, !11, i64 3080, !11, i64 5132, !31, i64 21520, !31, i64 21528, !31, i64 21536, !31, i64 21544, !30, i64 21552, !30, i64 21560, !43, i64 21568, !12, i64 21584, !12, i64 21588, !12, i64 21592, !32, i64 21600, !30, i64 21608, !11, i64 21616, !11, i64 152696}
!45 = !{!44, !30, i64 21552}
!46 = !{!44, !12, i64 21588}
!47 = !{!44, !12, i64 21592}
!48 = !{!30, !30, i64 0}
!49 = !{!43, !12, i64 8}
!50 = !{!43, !42, i64 0}
!51 = !{!44, !31, i64 21520}
!52 = !{!44, !31, i64 21544}
!53 = !{!44, !31, i64 21528}
!54 = !{!44, !31, i64 21536}
!55 = !{!"p1 _ZTS14ZSTDv06_DCtx_s", !31, i64 0}
!56 = !{!"ZBUFFv06_DCtx_s", !55, i64 0, !43, i64 8, !12, i64 24, !32, i64 32, !30, i64 40, !30, i64 48, !32, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !30, i64 88, !11, i64 96, !30, i64 112}
!57 = !{!56, !55, i64 0}
!58 = !{!56, !12, i64 24}
!59 = !{!56, !32, i64 32}
!60 = !{!56, !32, i64 56}
!61 = !{!56, !30, i64 48}
!62 = !{!56, !30, i64 112}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16, !27, !28}
!70 = distinct !{!70, !16, !27, !28}
!71 = distinct !{!71, !16, !28, !27}
!72 = distinct !{!72, !"LVerDomain"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !16, !27, !28}
!76 = distinct !{!76, !16, !27}
!77 = distinct !{!77, !16}
!78 = !{!73}
!79 = !{!74}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16, !27, !28}
!84 = distinct !{!84, !16, !27, !28}
!85 = distinct !{!85, !16, !28, !27}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16, !27, !28}
!88 = distinct !{!88, !16, !27, !28}
!89 = distinct !{!89, !16, !28, !27}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !107}
!93 = distinct !{!93, !16}
!94 = distinct !{!94, !16}
!95 = distinct !{!95, !16, !27, !28}
!96 = distinct !{!96, !107}
!97 = distinct !{!97, !16, !27}
!98 = distinct !{!98, !16}
!99 = distinct !{!99, !16, !27, !28}
!100 = distinct !{!100, !16, !28, !27}
!101 = distinct !{!101, !16, !27, !28}
!102 = distinct !{!102, !16, !27}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !16, !27, !28}
!105 = distinct !{!105, !16, !28, !27}
!106 = distinct !{!106, !16}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = distinct !{!108, !16}
!109 = distinct !{!109, !16}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !16}
!112 = !{!"", !12, i64 0, !12, i64 4}
!113 = !{!112, !12, i64 0}
!114 = !{!112, !12, i64 4}
!115 = !{!31, !31, i64 0}
!116 = distinct !{!116, !16}
!117 = distinct !{!117, !16, !27, !28}
!118 = distinct !{!118, !16, !27, !28}
!119 = distinct !{!119, !16, !27}
!120 = distinct !{!120, !16, !27, !28}
!121 = distinct !{!121, !16, !27, !28}
!122 = distinct !{!122, !16, !27}
!123 = distinct !{!123, !16}
!124 = !{!44, !32, i64 21600}
!125 = !{!44, !30, i64 21608}
!126 = !{!"", !30, i64 0, !31, i64 8}
!127 = !{!126, !30, i64 0}
!128 = !{!126, !31, i64 8}
!129 = !{!"branch_weights", i32 8, i32 24}
!130 = !{!42, !42, i64 0}
!131 = !{!44, !30, i64 21560}
!132 = !{!44, !12, i64 21584}
!133 = distinct !{!133, !16}
!134 = !{!56, !30, i64 80}
!135 = !{!56, !30, i64 72}
!136 = !{!56, !12, i64 16}
!137 = !{!56, !30, i64 88}
!138 = !{!56, !30, i64 40}
!139 = !{!56, !30, i64 64}
end_hunk_2
