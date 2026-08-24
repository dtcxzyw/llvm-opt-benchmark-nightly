Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3File?download=true
inline.NumInlined: 245
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6bParse5bFile7swapDNAEPc:bb.a

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %._crit_edge108
  %.3111 = phi i32 [ %i.bd, %._crit_edge108 ], [ 0, %.lr.ph113.preheader ]
  %.283110 = phi ptr [ %.384.lcssa, %._crit_edge108 ], [ %i.au, %.lr.ph113.preheader ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.283110, i64 2 ; 3 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !91 ; 2 uses
  %i.ax = zext nneg i16 %i.aw to i32
  %i.ay = load i16, ptr %.283110, align 2, !tbaa !91
  %i.az = tail call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.ay)
  store i16 %i.az, ptr %.283110, align 2, !tbaa !91
  %i.ba = load i16, ptr %i.av, align 2, !tbaa !91
  %i.bb = tail call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.ba)
  store i16 %i.bb, ptr %i.av, align 2, !tbaa !91
  %.384102 = getelementptr inbounds nuw i8, ptr %.283110, i64 4 ; 2 uses
  %i.bc = icmp sgt i16 %i.aw, 0
  br i1 %i.bc, label %.lr.ph107, label %._crit_edge108

._crit_edge108:                                   ; preds = %.lr.ph107, %.lr.ph113
  %.384.lcssa = phi ptr [ %.384102, %.lr.ph113 ], [ %.384, %.lr.ph107 ]
  %i.bd = add nuw nsw i32 %.3111, 1               ; 2 uses
  %exitcond123.not = icmp eq i32 %i.bd, %.276
  br i1 %exitcond123.not, label %._crit_edge114, label %.lr.ph113, !llvm.loop !131

.lr.ph107:                                        ; preds = %.lr.ph113, %.lr.ph107
  %.384105 = phi ptr [ %.384, %.lr.ph107 ], [ %.384102, %.lr.ph113 ] ; 4 uses
  %.0104 = phi i32 [ %i.bj, %.lr.ph107 ], [ 0, %.lr.ph113 ]
  %.283.pn103 = phi ptr [ %.384105, %.lr.ph107 ], [ %.283110, %.lr.ph113 ]
  %i.be = load i16, ptr %.384105, align 2, !tbaa !91
  %i.bf = tail call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.be)
  store i16 %i.bf, ptr %.384105, align 2, !tbaa !91
  %i.bg = getelementptr inbounds nuw i8, ptr %.283.pn103, i64 6 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !91
  %i.bi = tail call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.bh)
  store i16 %i.bi, ptr %i.bg, align 2, !tbaa !91
  %i.bj = add nuw nsw i32 %.0104, 1               ; 2 uses
  %.384 = getelementptr inbounds nuw i8, ptr %.384105, i64 4 ; 2 uses
  %exitcond122.not = icmp eq i32 %i.bj, %i.ax
  br i1 %exitcond122.not, label %._crit_edge108, label %.lr.ph107, !llvm.loop !132

._crit_edge114:                                   ; preds = %._crit_edge108, %bb.g
  ret void
}

declare noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef) local_unnamed_addr #14

declare noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6bParse5bFile9writeFileEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(540) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !67
  %i.f = sext i32 %i.e to i64
  %i.g = tail call i64 @fwrite(ptr noundef %i.c, i64 noundef 1, i64 noundef %i.f, ptr noundef %i.a) ; 0 uses
  %i.h = tail call i32 @fclose(ptr noundef %i.a)  ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6bParse5bFile7preSwapEv(ptr noundef nonnull align 8 dereferenceable(540) initializes((160, 164)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.bParse::bChunkInd", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9
  %i.e = icmp eq i8 %i.d, 86
  %. = select i1 %i.e, i8 118, i8 86
  store i8 %., ptr %i.c, align 1, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 12, ptr %i.f, align 8, !tbaa !57
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !66
  %i.k = call noundef i32 @_ZN6bParse5bFile12getNextBlockEPNS_9bChunkIndEPKci(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull %i.h, i32 noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.021 = phi ptr [ %i.h, %bb.a ], [ %i.ax, %bb.j ] ; 16 uses
  %.0 = phi i32 [ %i.k, %bb.a ], [ %i.az, %bb.j ]
  %i.m = load i32, ptr %1, align 8, !tbaa !133
  switch i32 %i.m, label %bb.d [
    i32 1313164372, label %bb.c
    i32 1162893652, label %bb.c
    i32 1129469011, label %bb.c
    i32 1095648339, label %bb.c
    i32 826363460, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  tail call void @_ZN6bParse5bFile7swapDNAEPc(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %.021)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.i, align 8, !tbaa !66
  %i.o = tail call noundef i32 @_ZN6bParse10ChunkUtils9getOffsetEi(i32 noundef %i.n)
  %i.p = load i32, ptr %i.i, align 8, !tbaa !66
  %i.q = and i32 %i.p, 16
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %.021, align 4, !tbaa !124 ; 2 uses
  %i.s = and i32 %i.r, 65535
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %_ZN6bParse5bFile7swapLenEPc.exit

bb.f:                                             ; preds = %bb.e
  %i.u = ashr exact i32 %i.r, 16
  store i32 %i.u, ptr %.021, align 4, !tbaa !124
  br label %_ZN6bParse5bFile7swapLenEPc.exit

bb.g:                                             ; preds = %bb.d
  %i.v = load i32, ptr %.021, align 8, !tbaa !126 ; 2 uses
  %i.w = and i32 %i.v, 65535
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %_ZN6bParse5bFile7swapLenEPc.exit

bb.h:                                             ; preds = %bb.g
  %i.y = ashr exact i32 %i.v, 16
  store i32 %i.y, ptr %.021, align 8, !tbaa !126
  br label %_ZN6bParse5bFile7swapLenEPc.exit

_ZN6bParse5bFile7swapLenEPc.exit:                 ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sink101.i = phi i64 [ 12, %bb.e ], [ 12, %bb.f ], [ 16, %bb.h ], [ 16, %bb.g ]
  %.sink99.i = phi i64 [ 15, %bb.e ], [ 15, %bb.f ], [ 19, %bb.h ], [ 19, %bb.g ]
  %.sink93.i = phi i64 [ 13, %bb.e ], [ 13, %bb.f ], [ 17, %bb.h ], [ 17, %bb.g ]
  %.sink91.i = phi i64 [ 14, %bb.e ], [ 14, %bb.f ], [ 18, %bb.h ], [ 18, %bb.g ]
  %.sink85.i = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 20, %bb.h ], [ 20, %bb.g ]
  %.sink83.i = phi i64 [ 19, %bb.e ], [ 19, %bb.f ], [ 23, %bb.h ], [ 23, %bb.g ]
  %.sink.i = phi i64 [ 17, %bb.e ], [ 17, %bb.f ], [ 21, %bb.h ], [ 21, %bb.g ]
  %.sink76.i = phi i64 [ 18, %bb.e ], [ 18, %bb.f ], [ 22, %bb.h ], [ 22, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %.021, i64 4 ; 2 uses
  %i.aa = load <4 x i8>, ptr %i.z, align 1, !tbaa !9
  %i.ab = shufflevector <4 x i8> %i.aa, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ab, ptr %i.z, align 1, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink101.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink99.i ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !9
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink93.i ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink91.i ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !9
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink85.i ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink83.i ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !9
  store i8 %i.al, ptr %i.am, align 1, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink.i ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %.021, i64 %.sink76.i ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !9
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !9
  %i.as = load i32, ptr %i.l, align 8, !tbaa !90
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6bParse5bFile7swapLenEPc.exit
  %i.au = sext i32 %i.o to i64
  %i.av = getelementptr inbounds i8, ptr %.021, i64 %i.au
  call void @_ZN6bParse5bFile4swapEPcRNS_9bChunkIndEb(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %i.av, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6bParse5bFile7swapLenEPc.exit
  %i.aw = sext i32 %.0 to i64
  %i.ax = getelementptr inbounds i8, ptr %.021, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.i, align 8, !tbaa !66
  %i.az = call noundef i32 @_ZN6bParse5bFile12getNextBlockEPNS_9bChunkIndEPKci(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %i.ax, i32 noundef %i.ay) ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %bb.b, !llvm.loop !134

.loopexit:                                        ; preds = %bb.j, %bb.c
  %i.bb = load i32, ptr %i.i, align 8, !tbaa !66
  %storemerge23 = xor i32 %i.bb, 4
  store i32 %storemerge23, ptr %i.i, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN6bParse5bFile10readStructEPcRNS_9bChunkIndE(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.b3HashPtr, align 8           ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6bParse5bFile4swapEPcRNS_9bChunkIndEb(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !90
  %i.i = tail call noundef zeroext i1 @_ZN6bParse4bDNA9flagEqualEi(ptr noundef nonnull align 8 dereferenceable(420) %i.f, i32 noundef %i.h)
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.k = load i32, ptr %i.g, align 8, !tbaa !90
  %i.l = tail call noundef ptr @_ZN6bParse4bDNA9getStructEi(ptr noundef nonnull align 8 dereferenceable(420) %i.j, i32 noundef %i.k) ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.n = load i16, ptr %i.l, align 2, !tbaa !91
  %i.o = sext i16 %i.n to i32
  %i.p = tail call noundef ptr @_ZN6bParse4bDNA7getTypeEi(ptr noundef nonnull align 8 dereferenceable(420) %i.m, i32 noundef %i.o) ; 4 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.r = load i16, ptr %i.l, align 2, !tbaa !91
  %i.s = sext i16 %i.r to i32
  %i.t = tail call noundef signext i16 @_ZN6bParse4bDNA9getLengthEi(ptr noundef nonnull align 8 dereferenceable(420) %i.q, i32 noundef %i.s) ; 2 uses
  %i.u = load i32, ptr %i.b, align 8, !tbaa !66
  %i.v = and i32 %i.u, 128
  %.not80 = icmp eq i32 %i.v, 0
  br i1 %.not80, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(23) @.str.8) #26
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp eq i16 %i.t, 20
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(20) @.str.9) #26
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !95
  %i.ad = shl nsw i32 %i.ac, 1
  %i.ae = or disjoint i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #31 ; 8 uses
  %4 = load i32, ptr %i.ab, align 4, !tbaa !95    ; 6 uses
  %5 = shl nsw i32 %4, 1
  %6 = or disjoint i32 %5, 1
  %7 = sext i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i8 0, i64 %7, i1 false)
  %i.ah = icmp sgt i32 %4, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %8 = load i32, ptr %i.b, align 8, !tbaa !66
  %i.ai = and i32 %8, 4
  %.not83 = icmp eq i32 %i.ai, 0
  br i1 %.not83, label %.lr.ph.split.us.preheader, label %iter.check

iter.check:                                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check98 = icmp ult i32 %4, 16
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <8 x i16>, ptr %i.ak, align 2, !tbaa !91 ; 2 uses
  %wide.load99 = load <8 x i16>, ptr %i.al, align 2, !tbaa !91 ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.aq = lshr <8 x i16> %wide.load99, splat (i16 8)
  %i.ar = shufflevector <8 x i16> %i.ap, <8 x i16> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc <16 x i16> %i.ar to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %i.am, align 1, !tbaa !9
  %i.as = shufflevector <8 x i16> %i.aq, <8 x i16> %wide.load99, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec100 = trunc <16 x i16> %i.as to <16 x i8>
  store <16 x i8> %interleaved.vec100, ptr %i.ao, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.preheader, label %vec.epilog.ph, !prof !136

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index102
  %wide.load103 = load <4 x i16>, ptr %i.au, align 2, !tbaa !91 ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index102
  %i.aw = lshr <4 x i16> %wide.load103, splat (i16 8)
  %i.ax = shufflevector <4 x i16> %i.aw, <4 x i16> %wide.load103, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec104 = trunc <8 x i16> %i.ax to <8 x i8>
  store <8 x i8> %interleaved.vec104, ptr %i.av, align 1, !tbaa !9
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %n.vec101, %wide.trip.count
  br i1 %cmp.n106, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec101, %vec.epilog.middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.az = shl nuw i32 %4, 1
  %i.ba = zext i32 %i.az to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ag, ptr align 2 %1, i64 %i.ba, i1 false), !tbaa !91
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %middle.block, %vec.epilog.middle.block, %.lr.ph.split.us.preheader, %bb.g
  %i.bb = load ptr, ptr %0, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef nonnull %i.ag)
  br label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !91 ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.bh = trunc i16 %i.bf to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bj = lshr i16 %i.bf, 8
  %i.bk = trunc nuw i16 %i.bj to i8
  store i8 %i.bk, ptr %i.bg, align 1, !tbaa !9
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !138

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.bl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.10, ptr noundef nonnull dereferenceable(1) %i.p) #26
  %.not81 = icmp eq i32 %i.bl, 0
  br i1 %.not81, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !73
  %i.bo = tail call noundef i32 @_ZN6bParse4bDNA14getReverseTypeEPKc(ptr noundef nonnull align 8 dereferenceable(420) %i.bn, ptr noundef nonnull %i.p) ; 3 uses
  %.not82 = icmp eq i32 %i.bo, -1
  br i1 %.not82, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !73
  %i.bq = tail call noundef ptr @_ZN6bParse4bDNA9getStructEi(ptr noundef nonnull align 8 dereferenceable(420) %i.bp, i32 noundef %i.bo) ; 2 uses
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !73
  %i.bs = load i16, ptr %i.bq, align 2, !tbaa !91
  %i.bt = sext i16 %i.bs to i32
  %i.bu = tail call noundef ptr @_ZN6bParse4bDNA7getTypeEi(ptr noundef nonnull align 8 dereferenceable(420) %i.br, i32 noundef %i.bt) ; 0 uses
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !73
  %i.bw = load i16, ptr %i.bq, align 2, !tbaa !91
  %i.bx = sext i16 %i.bw to i32
  %i.by = tail call noundef signext i16 @_ZN6bParse4bDNA9getLengthEi(ptr noundef nonnull align 8 dereferenceable(420) %i.bv, i32 noundef %i.bx) ; 2 uses
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !95
  %i.cc = mul nsw i32 %i.cb, %i.bz
  %i.cd = add nsw i32 %i.cc, 1
  %i.ce = sext i32 %i.cd to i64
  %i.cf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ce) #31 ; 5 uses
  %9 = load i32, ptr %i.ca, align 4, !tbaa !95
  %10 = mul nsw i32 %9, %i.bz
  %i.cg = sext i32 %10 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cf, i8 0, i64 %i.cg, i1 false)
  %i.ch = load ptr, ptr %0, align 8, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef nonnull %i.cf)
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !95
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph91, label %.thread

.lr.ph91:                                         ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = sext i16 %i.by to i64
  %i.co = sext i16 %i.t to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph91, %bb.k
  %.07489 = phi i32 [ 0, %.lr.ph91 ], [ %i.cs, %bb.k ]
  %.07588 = phi ptr [ %1, %.lr.ph91 ], [ %i.cr, %bb.k ] ; 3 uses
  %.07687 = phi ptr [ %i.cf, %.lr.ph91 ], [ %i.cq, %bb.k ] ; 3 uses
  %i.cp = load i32, ptr %i.g, align 8, !tbaa !90
  call void @_ZN6bParse5bFile11parseStructEPcS1_iib(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %.07687, ptr noundef %.07588, i32 noundef %i.cp, i32 noundef %i.bo, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %.07588, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr %.07687, ptr %i.a, align 8, !tbaa !87
  call void @_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE6insertERKS0_RKS3_(ptr noundef nonnull align 8 dereferenceable(128) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cq = getelementptr inbounds i8, ptr %.07687, i64 %i.cn
  %i.cr = getelementptr inbounds i8, ptr %.07588, i64 %i.co
  %i.cs = add nuw nsw i32 %.07489, 1              ; 2 uses
  %i.ct = load i32, ptr %i.ca, align 4, !tbaa !95
  %i.cu = icmp slt i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.k, label %.thread, !llvm.loop !139

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.c
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !77
  %i.cx = add nsw i32 %i.cw, 1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cy) #31 ; 4 uses
  %11 = load i32, ptr %i.cv, align 4, !tbaa !77
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cz, i8 0, i64 %13, i1 false)
  %i.da = load ptr, ptr %0, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef nonnull %i.cz)
  %i.dd = load i32, ptr %i.cv, align 4, !tbaa !77
  %i.de = sext i32 %i.dd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr align 1 %1, i64 %i.de, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j, %bb.e, %._crit_edge, %bb.l
  %.1 = phi ptr [ %i.cz, %bb.l ], [ null, %bb.e ], [ %i.ag, %._crit_edge ], [ %i.cf, %bb.j ], [ %i.cf, %bb.k ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZN6bParse4bDNA9flagEqualEi(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

declare noundef i32 @_ZN6bParse4bDNA14getReverseTypeEPKc(ptr noundef nonnull align 8 dereferenceable(420), ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6bParse5bFile11parseStructEPcS1_iib(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %3, -1
  %i.b = icmp eq i32 %4, -1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit89, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = tail call noundef ptr @_ZN6bParse4bDNA9getStructEi(ptr noundef nonnull align 8 dereferenceable(420) %i.d, i32 noundef %4) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = tail call noundef ptr @_ZN6bParse4bDNA9getStructEi(ptr noundef nonnull align 8 dereferenceable(420) %i.g, i32 noundef %3) ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.j = tail call noundef ptr @_ZN6bParse4bDNA9getStructEi(ptr noundef nonnull align 8 dereferenceable(420) %i.i, i32 noundef 0)
  %i.k = load i16, ptr %i.j, align 2, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !91   ; 2 uses
  %i.n = sext i16 %i.m to i32
  %i.o = icmp sgt i16 %i.m, 0
  br i1 %i.o, label %.lr.ph103, label %.loopexit89

.lr.ph103:                                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph103, %.loopexit
  %.068101 = phi i32 [ 0, %.lr.ph103 ], [ %i.ef, %.loopexit ]
  %.pn100 = phi ptr [ %i.e, %.lr.ph103 ], [ %.069102, %.loopexit ] ; 2 uses
  %.07098 = phi ptr [ %1, %.lr.ph103 ], [ %i.ee, %.loopexit ] ; 4 uses
  %.069102 = getelementptr inbounds nuw i8, ptr %.pn100, i64 4 ; 4 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.r = load i16, ptr %.069102, align 2, !tbaa !91
  %i.s = sext i16 %i.r to i32
  %i.t = tail call noundef ptr @_ZN6bParse4bDNA7getTypeEi(ptr noundef nonnull align 8 dereferenceable(420) %i.q, i32 noundef %i.s) ; 3 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %.pn100, i64 6 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !91
  %i.x = sext i16 %i.w to i32
  %i.y = tail call noundef ptr @_ZN6bParse4bDNA7getNameEi(ptr noundef nonnull align 8 dereferenceable(420) %i.u, i32 noundef %i.x) ; 3 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !73   ; 4 uses
  %i.aa = load i16, ptr %.069102, align 2, !tbaa !91 ; 2 uses
  %i.ab = load i16, ptr %i.v, align 2, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  %i.ae = sext i16 %i.ab to i64
  %i.af = getelementptr inbounds [24 x i8], ptr %i.ad, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !98, !range !69, !noundef !72
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 416
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !100
  br label %_ZN6bParse4bDNA14getElementSizeEss.exit

bb.e:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !116
  %i.an = sext i16 %i.aa to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !91
  %i.aq = sext i16 %i.ap to i32
  br label %_ZN6bParse4bDNA14getElementSizeEss.exit

_ZN6bParse4bDNA14getElementSizeEss.exit:          ; preds = %bb.d, %bb.e
  %.sink11.i = phi i32 [ %i.aq, %bb.e ], [ %i.ak, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !117
  %i.at = mul nsw i32 %i.as, %.sink11.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !118
  %i.aw = mul nsw i32 %i.at, %i.av                ; 2 uses
  %i.ax = tail call noundef i32 @_ZN6bParse4bDNA14getReverseTypeEs(ptr noundef nonnull align 8 dereferenceable(420) %i.z, i16 noundef signext %i.aa) ; 3 uses
  %.not = icmp eq i32 %i.ax, -1
  br i1 %.not, label %bb.r, label %bb.f

bb.f:                                             ; preds = %_ZN6bParse4bDNA14getElementSizeEss.exit
  %i.ay = load i16, ptr %.069102, align 2, !tbaa !91
  %.not76 = icmp slt i16 %i.ay, %i.k
  br i1 %.not76, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load i8, ptr %i.y, align 1, !tbaa !9
  %.not77 = icmp eq i8 %i.az, 42
  br i1 %.not77, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load i16, ptr %i.p, align 2, !tbaa !91  ; 2 uses
  %i.bb = sext i16 %i.ba to i32
  %.not3339.i = icmp sgt i16 %i.ba, 0
  br i1 %.not3339.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !74
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i
  %i.bc = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.bl, %bb.m ]
  %.02542.i = phi i32 [ 0, %.lr.ph.i ], [ %i.co, %bb.m ]
  %.pn41.i = phi ptr [ %i.h, %.lr.ph.i ], [ %.02643.i, %bb.m ] ; 3 uses
  %.02940.i = phi ptr [ %2, %.lr.ph.i ], [ %i.cn, %bb.m ] ; 4 uses
  %.02643.i = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 4 ; 4 uses
  %i.bd = load i16, ptr %.02643.i, align 2, !tbaa !91
  %i.be = sext i16 %i.bd to i32
  %i.bf = tail call noundef ptr @_ZN6bParse4bDNA7getTypeEi(ptr noundef nonnull align 8 dereferenceable(420) %i.bc, i32 noundef %i.be)
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 6 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !91
  %i.bj = sext i16 %i.bi to i32
  %i.bk = tail call noundef ptr @_ZN6bParse4bDNA7getNameEi(ptr noundef nonnull align 8 dereferenceable(420) %i.bg, i32 noundef %i.bj)
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !74  ; 5 uses
  %i.bm = load i16, ptr %i.bh, align 2, !tbaa !91
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !97
  %i.bp = sext i16 %i.bm to i64
  %i.bq = getelementptr inbounds [24 x i8], ptr %i.bo, i64 %i.bp ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !98, !range !69, !noundef !72
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 416
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !100
  br label %_ZN6bParse4bDNA14getElementSizeEss.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bw = load i16, ptr %.02643.i, align 2, !tbaa !91
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !116
  %i.bz = sext i16 %i.bw to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !91
  %i.cc = sext i16 %i.cb to i32
  br label %_ZN6bParse4bDNA14getElementSizeEss.exit.i

_ZN6bParse4bDNA14getElementSizeEss.exit.i:        ; preds = %bb.k, %bb.j
  %.sink11.i.i = phi i32 [ %i.cc, %bb.k ], [ %i.bv, %bb.j ]
  %i.cd = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %i.bk) #26
  %.not32.i = icmp eq i32 %i.cd, 0
  br i1 %.not32.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6bParse4bDNA14getElementSizeEss.exit.i
  %i.ce = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull readonly dereferenceable(1) %i.t) #26
  %i.cf = icmp ne i32 %i.ce, 0
  %.not78 = icmp eq ptr %.02940.i, null
  %or.cond88 = select i1 %i.cf, i1 true, i1 %.not78
  br i1 %or.cond88, label %.loopexit, label %bb.n

bb.m:                                             ; preds = %_ZN6bParse4bDNA14getElementSizeEss.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !117
  %i.ci = mul nsw i32 %i.ch, %.sink11.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !118
  %i.cl = mul nsw i32 %i.ci, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %.02940.i, i64 %i.cm
  %i.co = add nuw nsw i32 %.02542.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.co, %i.bb
  br i1 %exitcond.not.i, label %.loopexit, label %bb.i, !llvm.loop !140

bb.n:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !117
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !118
  %i.cu = mul i32 %i.ct, %i.cr                    ; 5 uses
  %i.cv = tail call noundef i32 @_ZN6bParse4bDNA14getReverseTypeEPKc(ptr noundef nonnull align 8 dereferenceable(420) %i.bl, ptr noundef nonnull %i.t) ; 2 uses
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !74  ; 3 uses
  %i.cx = load i16, ptr %i.cp, align 2, !tbaa !91
end_hunk_0
