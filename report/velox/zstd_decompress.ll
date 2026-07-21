inline.NumInlined: 251
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ZSTD_findFrameSizeInfo:bb.a
  br label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ar = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %i.al, i64 noundef %i.am, ptr noundef nonnull %5) #16 ; 3 uses
  %i.as = icmp ult i64 %i.ar, -119
  br i1 %i.as, label %bb.m, label %.thread67

bb.p:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !62
  %.not60 = icmp eq i32 %i.au, 0
  br i1 %.not60, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = icmp ult i64 %i.am, 4
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %i.aw, align 8, !tbaa !65, !alias.scope !82
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.ax, align 8, !tbaa !67, !alias.scope !82
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.2 = phi ptr [ %i.ay, %bb.s ], [ %i.al, %bb.p ]
  %i.az = ptrtoint ptr %.2 to i64
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = load i64, ptr %4, align 8, !tbaa !54    ; 2 uses
  %.not61 = icmp eq i64 %i.bc, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul i64 %i.an, %i.bf
  %i.bh = select i1 %.not61, i64 %i.bg, i64 %i.bc
  store i64 %i.an, ptr %0, align 8, !tbaa !53
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bb, ptr %.sroa.6.0..sroa_idx26, align 8, !tbaa !53
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bh, ptr %.sroa.8.0..sroa_idx28, align 8, !tbaa !73
  br label %.critedge

.critedge:                                        ; preds = %.thread67, %bb.i, %bb.k, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %ZSTD_findFrameSizeInfoLegacy.exit

ZSTD_findFrameSizeInfoLegacy.exit:                ; preds = %bb.h, %bb.g, %.thread.i, %.critedge, %readSkippableFrameSize.exit
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompressionMargin(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZSTD_frameSizeInfo, align 8 ; 7 uses
  %3 = alloca %struct.ZSTD_frameHeader, align 8   ; 8 uses
  %.not49 = icmp eq i64 %1, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.02953 = phi ptr [ %0, %.lr.ph ], [ %i.aa, %bb.g ] ; 3 uses
  %.03152 = phi i64 [ %1, %.lr.ph ], [ %i.ab, %bb.g ] ; 3 uses
  %.03351 = phi i32 [ 0, %.lr.ph ], [ %.134, %bb.g ] ; 2 uses
  %.03650 = phi i64 [ 0, %.lr.ph ], [ %.137, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.02953, i64 noundef %.03152, i32 noundef 0)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !65   ; 4 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.i = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef readonly %.02953, i64 noundef %.03152, i32 noundef 0) ; 2 uses
  %i.j = icmp ult i64 %i.i, -119
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, -120
  %i.l = icmp eq i64 %i.h, -2
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.c, align 4, !tbaa !55
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.d, align 8, !tbaa !56
  %i.p = zext i32 %i.o to i64
  %i.q = add i64 %.03650, %i.p
  %i.r = load i32, ptr %i.e, align 8, !tbaa !62
  %.not40 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not40, i64 0, i64 4
  %i.t = add i64 %i.q, %i.s
  %i.u = load i64, ptr %2, align 8, !tbaa !72
  %i.v = mul i64 %i.u, 3
  %i.w = add i64 %i.t, %i.v
  %i.x = load i32, ptr %i.f, align 8, !tbaa !60
  %i.y = call i32 @llvm.umax.i32(i32 %.03351, i32 %i.x)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = add i64 %i.g, %.03650
  br label %bb.g

.thread:                                          ; preds = %bb.b, %bb.c
  %.2.ph = phi i64 [ -20, %bb.c ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %._crit_edge

bb.g:                                             ; preds = %bb.e, %bb.f
  %.137 = phi i64 [ %i.w, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %.134 = phi i32 [ %i.y, %bb.e ], [ %.03351, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02953, i64 %i.g
  %i.ab = sub i64 %.03152, %i.g                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !85

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.ac = zext i32 %.134 to i64
  %i.ad = add i64 %.137, %i.ac
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.thread
  %.3 = phi i64 [ %.2.ph, %.thread ], [ 0, %bb.a ], [ %i.ad, %._crit_edge.loopexit ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define noundef i64 @ZSTD_insertBlock(ptr noundef %0, ptr noundef %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  tail call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 29888
  store ptr %i.a, ptr %i.b, align 8, !tbaa !86
  ret i64 %2
}

declare void @ZSTD_checkContinuity(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompress_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ZSTD_Trace, align 8         ; 11 uses
  %9 = alloca %struct.blockProperties_t, align 4  ; 9 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %10 = alloca %struct.ZSTD_frameSizeInfo, align 8 ; 4 uses
  %.not = icmp eq ptr %7, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #16
  %i.c = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.083 = phi i64 [ %i.c, %bb.b ], [ %6, %bb.a ]  ; 4 uses
  %.082 = phi ptr [ %i.b, %bb.b ], [ %5, %bb.a ]  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30104 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35
  %i.f = icmp ne i32 %i.e, 0                      ; 2 uses
  %i.g = select i1 %i.f, i64 1, i64 5             ; 2 uses
  %.not97218265274 = icmp ult i64 %4, %i.g
  br i1 %.not97218265274, label %.outer181._crit_edge, label %.lr.ph.lr.ph.lr.ph

.lr.ph.lr.ph.lr.ph:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %i.k = icmp eq ptr %.082, null
  %spec.store.select1.i = select i1 %i.k, ptr %i.a, ptr %.082 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30204 ; 2 uses
  %.not.i.i = icmp eq ptr @ZSTD_trace_decompress_begin, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 95984 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 30200
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %11 = getelementptr inbounds nuw i8, ptr %0, <4 x i64> <i64 32, i64 6192, i64 4136, i64 10296>
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 29944 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 30008 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %i.af = icmp ne ptr @ZSTD_trace_decompress_end, null
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 30192 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 56
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.lr.ph, %.outer
  %i.ao = phi i64 [ %i.g, %.lr.ph.lr.ph.lr.ph ], [ %i.gv, %.outer ]
  %i.ap = phi i1 [ %i.f, %.lr.ph.lr.ph.lr.ph ], [ %i.gu, %.outer ]
  %.075.ph279 = phi ptr [ %1, %.lr.ph.lr.ph.lr.ph ], [ %i.gr, %.outer ]
  %.079.ph278 = phi i64 [ %2, %.lr.ph.lr.ph.lr.ph ], [ %i.gs, %.outer ]
  %i.aq = phi i1 [ false, %.lr.ph.lr.ph.lr.ph ], [ true, %.outer ]
  %.0133.ph276 = phi i64 [ %4, %.lr.ph.lr.ph.lr.ph ], [ %.4136, %.outer ]
  %.0137.ph275 = phi ptr [ %3, %.lr.ph.lr.ph.lr.ph ], [ %.4141, %.outer ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer181
  %i.ar = phi i64 [ %i.ao, %.lr.ph.lr.ph ], [ %i.bz, %.outer181 ]
  %i.as = phi i1 [ %i.ap, %.lr.ph.lr.ph ], [ %i.by, %.outer181 ]
  %.075.ph185269 = phi ptr [ %.075.ph279, %.lr.ph.lr.ph ], [ %i.bt, %.outer181 ] ; 9 uses
  %.079.ph184268 = phi i64 [ %.079.ph278, %.lr.ph.lr.ph ], [ %i.bu, %.outer181 ] ; 7 uses
  %.0133.ph183267 = phi i64 [ %.0133.ph276, %.lr.ph.lr.ph ], [ %i.bw, %.outer181 ] ; 2 uses
  %.0137.ph182266 = phi ptr [ %.0137.ph275, %.lr.ph.lr.ph ], [ %i.bv, %.outer181 ] ; 2 uses
  %.fr = freeze i1 %i.as
  br i1 %.fr, label %.thread156, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.u
  %.0133220 = phi i64 [ %i.ck, %bb.u ], [ %.0133.ph183267, %.lr.ph ] ; 12 uses
  %.0137219 = phi ptr [ %i.cj, %bb.u ], [ %.0137.ph182266, %.lr.ph ] ; 14 uses
  %i.at = icmp ult i64 %.0133220, 4
  br i1 %i.at, label %.thread156, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %.val.i = load i32, ptr %.0137219, align 1, !tbaa !3 ; 3 uses
  %i.au = add i32 %.val.i, 47205080
  %i.av = icmp ult i32 %i.au, -3
  br i1 %i.av, label %ZSTD_isLegacy.exit.thread, label %ZSTD_isLegacy.exit.i.i

ZSTD_isLegacy.exit.i.i:                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  switch i32 %.val.i, label %default.unreachable.i.i [
    i32 -47205083, label %bb.e
    i32 -47205082, label %bb.f
    i32 -47205081, label %bb.g
  ]

bb.e:                                             ; preds = %ZSTD_isLegacy.exit.i.i
  call void @ZSTDv05_findFrameSizeInfoLegacy(ptr noundef nonnull %.0137219, i64 noundef %.0133220, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #16
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

bb.f:                                             ; preds = %ZSTD_isLegacy.exit.i.i
  call void @ZSTDv06_findFrameSizeInfoLegacy(ptr noundef nonnull %.0137219, i64 noundef %.0133220, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #16
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

bb.g:                                             ; preds = %ZSTD_isLegacy.exit.i.i
  call void @ZSTDv07_findFrameSizeInfoLegacy(ptr noundef nonnull %.0137219, i64 noundef %.0133220, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #16
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

default.unreachable.i.i:                          ; preds = %ZSTD_isLegacy.exit.i.i
  unreachable

ZSTD_findFrameCompressedSizeLegacy.exit:          ; preds = %bb.e, %bb.f, %bb.g
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !65, !alias.scope !87 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, -119
  %i.ay = icmp ugt i64 %i.aw, %.0133220
  %or.cond.i.i = and i1 %i.ax, %i.ay
  %i.az = select i1 %or.cond.i.i, i64 -72, i64 %i.aw ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.ba = icmp ult i64 %i.az, -119
  br i1 %i.ba, label %bb.h, label %.thread149

bb.h:                                             ; preds = %ZSTD_findFrameCompressedSizeLegacy.exit
  %i.bb = load i64, ptr %i.j, align 8, !tbaa !42
  %.not106 = icmp eq i64 %i.bb, 0
  br i1 %.not106, label %bb.i, label %.thread149

bb.i:                                             ; preds = %bb.h
  %i.bc = icmp ult i64 %i.az, 4
  br i1 %i.bc, label %ZSTD_isLegacy.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i.i = load i32, ptr %.0137219, align 1, !tbaa !3 ; 2 uses
  %switch.tableidx.i.i = add i32 %.val.i.i, 47205083
  %i.bd = icmp ult i32 %switch.tableidx.i.i, 3
  br i1 %i.bd, label %ZSTD_isLegacy.exit.i, label %ZSTD_isLegacy.exit.thread.i

ZSTD_isLegacy.exit.thread.i:                      ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br label %ZSTD_decompressLegacy.exit.thread

ZSTD_isLegacy.exit.i:                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.be = icmp eq ptr %.075.ph185269, null
  %spec.store.select.i = select i1 %i.be, ptr %i.a, ptr %.075.ph185269 ; 3 uses
  switch i32 %.val.i.i, label %default.unreachable.i [
    i32 -47205083, label %bb.k
    i32 -47205082, label %bb.m
    i32 -47205081, label %bb.o
  ]

bb.k:                                             ; preds = %ZSTD_isLegacy.exit.i
  %i.bf = call ptr @ZSTDv05_createDCtx() #16      ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %ZSTD_decompressLegacy.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = call i64 @ZSTDv05_decompress_usingDict(ptr noundef nonnull %i.bf, ptr noundef nonnull %spec.store.select.i, i64 noundef %.079.ph184268, ptr noundef nonnull %.0137219, i64 noundef %i.az, ptr noundef nonnull %spec.store.select1.i, i64 noundef %.083) #16
  %i.bi = call i64 @ZSTDv05_freeDCtx(ptr noundef nonnull %i.bf) #16 ; 0 uses
  br label %ZSTD_decompressLegacy.exit

bb.m:                                             ; preds = %ZSTD_isLegacy.exit.i
  %i.bj = call ptr @ZSTDv06_createDCtx() #16      ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %ZSTD_decompressLegacy.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = call i64 @ZSTDv06_decompress_usingDict(ptr noundef nonnull %i.bj, ptr noundef nonnull %spec.store.select.i, i64 noundef %.079.ph184268, ptr noundef nonnull %.0137219, i64 noundef %i.az, ptr noundef nonnull %spec.store.select1.i, i64 noundef %.083) #16
  %i.bm = call i64 @ZSTDv06_freeDCtx(ptr noundef nonnull %i.bj) #16 ; 0 uses
  br label %ZSTD_decompressLegacy.exit

bb.o:                                             ; preds = %ZSTD_isLegacy.exit.i
  %i.bn = call ptr @ZSTDv07_createDCtx() #16      ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %ZSTD_decompressLegacy.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = call i64 @ZSTDv07_decompress_usingDict(ptr noundef nonnull %i.bn, ptr noundef nonnull %spec.store.select.i, i64 noundef %.079.ph184268, ptr noundef nonnull %.0137219, i64 noundef %i.az, ptr noundef nonnull %spec.store.select1.i, i64 noundef %.083) #16
  %i.bq = call i64 @ZSTDv07_freeDCtx(ptr noundef nonnull %i.bn) #16 ; 0 uses
  br label %ZSTD_decompressLegacy.exit

default.unreachable.i:                            ; preds = %ZSTD_isLegacy.exit.i
  unreachable

ZSTD_decompressLegacy.exit.thread:                ; preds = %bb.o, %bb.m, %bb.k, %ZSTD_isLegacy.exit.thread.i
  %.3.i.ph = phi i64 [ -10, %ZSTD_isLegacy.exit.thread.i ], [ -64, %bb.k ], [ -64, %bb.m ], [ -64, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread149

ZSTD_decompressLegacy.exit:                       ; preds = %bb.l, %bb.n, %bb.p
  %.3.i = phi i64 [ %i.bh, %bb.l ], [ %i.bl, %bb.n ], [ %i.bp, %bb.p ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.br = icmp ult i64 %.3.i, -119
  br i1 %i.br, label %bb.q, label %.thread149

bb.q:                                             ; preds = %ZSTD_decompressLegacy.exit
  %i.bs = call i64 @ZSTD_getFrameContentSize(ptr noundef nonnull %.0137219, i64 noundef %.0133220) ; 2 uses
  switch i64 %i.bs, label %bb.r [
    i64 -2, label %.thread149
    i64 -1, label %.outer181
  ]

bb.r:                                             ; preds = %bb.q
  %.not109 = icmp eq i64 %i.bs, %.3.i
  br i1 %.not109, label %.outer181, label %.thread149

.outer181:                                        ; preds = %bb.r, %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %.075.ph185269, i64 %.3.i ; 2 uses
  %i.bu = sub i64 %.079.ph184268, %.3.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.0137219, i64 %i.az
  %i.bw = sub i64 %.0133220, %i.az                ; 3 uses
  %i.bx = load i32, ptr %i.d, align 8, !tbaa !35
  %i.by = icmp ne i32 %i.bx, 0                    ; 2 uses
  %i.bz = select i1 %i.by, i64 1, i64 5           ; 2 uses
  %.not97218 = icmp ult i64 %i.bw, %i.bz
  br i1 %.not97218, label %.outer181._crit_edge, label %.lr.ph

ZSTD_isLegacy.exit.thread:                        ; preds = %bb.d
  %i.ca = and i32 %.val.i, -16
  %i.cb = icmp eq i32 %i.ca, 407710288
  br i1 %i.cb, label %bb.s, label %.thread156

bb.s:                                             ; preds = %ZSTD_isLegacy.exit.thread
  %i.cc = icmp ult i64 %.0133220, 8
  br i1 %i.cc, label %.thread149, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.0137219, i64 4
  %.val.i111 = load i32, ptr %i.cd, align 1, !tbaa !3 ; 2 uses
  %i.ce = icmp ugt i32 %.val.i111, -9
  br i1 %i.ce, label %.thread149, label %readSkippableFrameSize.exit

readSkippableFrameSize.exit:                      ; preds = %bb.t
  %i.cf = zext i32 %.val.i111 to i64
  %i.cg = add nuw nsw i64 %i.cf, 8                ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, %.0133220
  %..i = select i1 %i.ch, i64 -72, i64 %i.cg      ; 4 uses
  %i.ci = icmp ult i64 %..i, -119
  br i1 %i.ci, label %bb.u, label %.thread149

bb.u:                                             ; preds = %readSkippableFrameSize.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.0137219, i64 %..i
  %i.ck = sub i64 %.0133220, %..i                 ; 3 uses
  %.not97 = icmp ult i64 %i.ck, %i.ar
  br i1 %.not97, label %.outer181._crit_edge, label %.lr.ph.split

.thread156:                                       ; preds = %.lr.ph, %.lr.ph.split, %ZSTD_isLegacy.exit.thread
  %.us-phi225 = phi ptr [ %.0137219, %.lr.ph.split ], [ %.0137219, %ZSTD_isLegacy.exit.thread ], [ %.0137.ph182266, %.lr.ph ] ; 12 uses
  %.us-phi226 = phi i64 [ %.0133220, %.lr.ph.split ], [ %.0133220, %ZSTD_isLegacy.exit.thread ], [ %.0133.ph183267, %.lr.ph ] ; 11 uses
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.thread156
  %i.cl = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #16
  %i.cm = call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  %i.co = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.cp = icmp ne ptr %i.co, %i.cn
  %i.cq = zext i1 %i.cp to i32
  store i32 %i.cq, ptr %i.m, align 4, !tbaa !23
  br i1 %.not.i.i, label %ZSTD_decompressBegin_usingDDict.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #16
  br label %ZSTD_decompressBegin_usingDDict.exit

ZSTD_decompressBegin_usingDDict.exit:             ; preds = %bb.w, %bb.v
  %i.cs = phi i64 [ %i.cr, %bb.w ], [ 0, %bb.v ]
  store i64 %i.cs, ptr %i.n, align 8, !tbaa !90
  %i.ct = load i32, ptr %i.d, align 8, !tbaa !35
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 5, i64 1
  store i64 %i.cv, ptr %i.o, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %i.r, align 8, !tbaa !3
  store i32 0, ptr %i.s, align 8, !tbaa !92
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.t, align 8, !tbaa !3
  store i32 1, ptr %i.u, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store <4 x ptr> %11, ptr %0, align 8, !tbaa !45
  call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %7) #16
  br label %bb.y

bb.x:                                             ; preds = %.thread156
  %i.cw = call i64 @ZSTD_decompressBegin_usingDict(ptr noundef nonnull %0, ptr noundef %.082, i64 noundef %.083) ; 2 uses
  %i.cx = icmp ult i64 %i.cw, -119
  br i1 %i.cx, label %bb.y, label %.thread149

bb.y:                                             ; preds = %ZSTD_decompressBegin_usingDDict.exit, %bb.x
  call void @ZSTD_checkContinuity(ptr noundef nonnull %0, ptr noundef %.075.ph185269, i64 noundef %.079.ph184268) #16
  %i.cy = getelementptr inbounds nuw i8, ptr %.075.ph185269, i64 %.079.ph184268 ; 3 uses
  %i.cz = load i32, ptr %i.d, align 8, !tbaa !35
  %i.da = icmp eq i32 %i.cz, 0                    ; 2 uses
  %i.db = select i1 %i.da, i64 9, i64 5
  %i.dc = icmp ult i64 %.us-phi226, %i.db
  br i1 %i.dc, label %ZSTD_decompressFrame.exit, label %ZSTD_frameHeaderSize_internal.exit.i

ZSTD_frameHeaderSize_internal.exit.i:             ; preds = %bb.y
  %i.dd = select i1 %i.da, i64 5, i64 1           ; 2 uses
  %i.de = getelementptr i8, ptr %.us-phi225, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !52
  %i.dh = zext i8 %i.dg to i32                    ; 3 uses
  %i.di = and i32 %i.dh, 3
  %i.dj = lshr i32 %i.dh, 6                       ; 2 uses
  %i.dk = and i32 %i.dh, 32                       ; 2 uses
  %.not.i.i112 = icmp ne i32 %i.dk, 0
  %.lobit.i.i = lshr exact i32 %i.dk, 5
  %i.dl = xor i32 %.lobit.i.i, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = zext nneg i32 %i.di to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_did_fieldSize, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !53
  %i.dq = zext nneg i32 %i.dj to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_fcs_fieldSize, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !53
  %.not15.i.i = icmp eq i32 %i.dj, 0
  %narrow.i.i = and i1 %.not.i.i112, %.not15.i.i
  %i.dt = zext i1 %narrow.i.i to i64
  %i.du = add i64 %i.dp, %i.dd
  %i.dv = add i64 %i.du, %i.ds
  %i.dw = add i64 %i.dv, %i.dm
  %i.dx = add i64 %i.dw, %i.dt                    ; 6 uses
  %i.dy = icmp ult i64 %i.dx, -119
  br i1 %i.dy, label %bb.z, label %ZSTD_decompressFrame.exit

bb.z:                                             ; preds = %ZSTD_frameHeaderSize_internal.exit.i
  %i.dz = add nuw i64 %i.dx, 3
  %i.ea = icmp ult i64 %.us-phi226, %i.dz
  br i1 %i.ea, label %ZSTD_decompressFrame.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %.us-phi225, i64 noundef %i.dx) ; 2 uses
  %i.ec = icmp ult i64 %i.eb, -119
  br i1 %i.ec, label %bb.ab, label %ZSTD_decompressFrame.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %.us-phi225, i64 %i.dx ; 2 uses
  %i.ee = sub i64 %.us-phi226, %i.dx              ; 2 uses
  %i.ef = load i32, ptr %i.w, align 8, !tbaa !41  ; 2 uses
  %.not137.i = icmp eq i32 %i.ef, 0
  br i1 %.not137.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = load i32, ptr %i.x, align 8, !tbaa !93
  %..i113 = call i32 @llvm.umin.i32(i32 %i.eg, i32 %i.ef)
  store i32 %..i113, ptr %i.x, align 8, !tbaa !93
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.eh = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %i.ed, i64 noundef %i.ee, ptr noundef nonnull %9) #16 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, -119
  br i1 %i.ei, label %.lr.ph.i, label %.thread171.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.ej = ptrtoint ptr %i.cy to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ap, %.lr.ph.i
  %i.ek = phi i64 [ %i.eh, %.lr.ph.i ], [ %i.fq, %bb.ap ] ; 8 uses
  %.1111192.i = phi ptr [ %i.ed, %.lr.ph.i ], [ %i.fn, %bb.ap ]
  %.0114190.i = phi ptr [ %.075.ph185269, %.lr.ph.i ], [ %i.fm, %bb.ap ] ; 10 uses
  %.1118189.i = phi i64 [ %i.ee, %.lr.ph.i ], [ %i.fo, %bb.ap ]
  %i.el = getelementptr inbounds nuw i8, ptr %.1111192.i, i64 3 ; 7 uses
  %i.em = add i64 %.1118189.i, -3                 ; 2 uses
  %i.en = icmp ugt i64 %i.ek, %i.em
  br i1 %i.en, label %.thread171.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not139.i = icmp uge ptr %i.el, %.0114190.i
  %i.eo = icmp ult ptr %i.el, %i.cy
  %or.cond.i = select i1 %.not139.i, i1 %i.eo, i1 false
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = ptrtoint ptr %.0114190.i to i64         ; 4 uses
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = getelementptr inbounds i8, ptr %.0114190.i, i64 %i.er
  %.0122.i = select i1 %or.cond.i, ptr %i.es, ptr %i.cy ; 2 uses
  %i.et = load i32, ptr %9, align 4, !tbaa !94
  switch i32 %i.et, label %.thread171.i [
    i32 2, label %ZSTD_copyRawBlock.exit.i
    i32 0, label %bb.ag
    i32 1, label %bb.ak
  ]

bb.ag:                                            ; preds = %bb.af
  %i.eu = sub i64 %i.ej, %i.eq
  %i.ev = icmp ugt i64 %i.ek, %i.eu
  br i1 %i.ev, label %.thread171.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ew = icmp eq ptr %.0114190.i, null
  br i1 %i.ew, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ex = icmp eq i64 %i.ek, 0
  br i1 %i.ex, label %ZSTD_copyRawBlock.exit.thread.i, label %.thread171.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0114190.i, ptr nonnull readonly align 1 %i.el, i64 %i.ek, i1 false)
  br label %ZSTD_copyRawBlock.exit.thread.i

bb.ak:                                            ; preds = %bb.af
  %i.ey = ptrtoint ptr %.0122.i to i64
  %i.ez = sub i64 %i.ey, %i.eq
  %i.fa = load i8, ptr %i.el, align 1, !tbaa !52
  %i.fb = load i32, ptr %i.y, align 4, !tbaa !95  ; 2 uses
  %i.fc = zext i32 %i.fb to i64                   ; 3 uses
  %i.fd = icmp ult i64 %i.ez, %i.fc
  br i1 %i.fd, label %.thread171.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = icmp eq ptr %.0114190.i, null
  br i1 %i.fe, label %bb.am, label %ZSTD_copyRawBlock.exit.thread164.i

bb.am:                                            ; preds = %bb.al
  %i.ff = icmp eq i32 %i.fb, 0
  br i1 %i.ff, label %ZSTD_copyRawBlock.exit.thread.i, label %.thread171.i

ZSTD_copyRawBlock.exit.thread164.i:               ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114190.i, i8 %i.fa, i64 %i.fc, i1 false)
  br label %ZSTD_copyRawBlock.exit.thread.i

ZSTD_copyRawBlock.exit.i:                         ; preds = %bb.af
  %i.fg = ptrtoint ptr %.0122.i to i64
  %i.fh = sub i64 %i.fg, %i.eq
  %i.fi = call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %.0114190.i, i64 noundef %i.fh, ptr noundef nonnull %i.el, i64 noundef %i.ek, i32 noundef 0) #16 ; 3 uses
  %i.fj = icmp ult i64 %i.fi, -119
  br i1 %i.fj, label %ZSTD_copyRawBlock.exit.thread.i, label %.thread171.i

ZSTD_copyRawBlock.exit.thread.i:                  ; preds = %ZSTD_copyRawBlock.exit.i, %ZSTD_copyRawBlock.exit.thread164.i, %bb.am, %bb.aj, %bb.ai
  %.0121168.i = phi i64 [ %i.fc, %ZSTD_copyRawBlock.exit.thread164.i ], [ %i.fi, %ZSTD_copyRawBlock.exit.i ], [ 0, %bb.am ], [ %i.ek, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.fk = load i32, ptr %i.z, align 8, !tbaa !96
  %.not141.i = icmp eq i32 %i.fk, 0
  br i1 %.not141.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %ZSTD_copyRawBlock.exit.thread.i
  %i.fl = call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %i.aa, ptr noundef captures(none) %.0114190.i, i64 noundef %.0121168.i) #16 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %ZSTD_copyRawBlock.exit.thread.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.0114190.i, i64 %.0121168.i ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek ; 5 uses
  %i.fo = sub i64 %i.em, %i.ek                    ; 5 uses
  %i.fp = load i32, ptr %i.ab, align 4, !tbaa !80
  %.not143.i = icmp eq i32 %i.fp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br i1 %.not143.i, label %bb.ap, label %bb.aq

.thread171.i:                                     ; preds = %bb.ap, %ZSTD_copyRawBlock.exit.i, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.4.ph.i = phi i64 [ %i.eh, %bb.ad ], [ -70, %bb.ak ], [ -70, %bb.ag ], [ -20, %bb.af ], [ %i.fi, %ZSTD_copyRawBlock.exit.i ], [ %i.fq, %bb.ap ], [ -72, %bb.ae ], [ -74, %bb.am ], [ -74, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %ZSTD_decompressFrame.exit

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.fq = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %i.fn, i64 noundef %i.fo, ptr noundef nonnull %9) #16 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, -119
  br i1 %i.fr, label %bb.ae, label %.thread171.i

bb.aq:                                            ; preds = %bb.ao
  %i.fs = load i64, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %.not144.i = icmp eq i64 %i.fs, -1
  %i.ft = ptrtoint ptr %i.fm to i64
  %i.fu = ptrtoint ptr %.075.ph185269 to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 4 uses
  %.not145.i = icmp eq i64 %i.fv, %i.fs
  %or.cond151.i = select i1 %.not144.i, i1 true, i1 %.not145.i
  br i1 %or.cond151.i, label %bb.ar, label %ZSTD_decompressFrame.exit

bb.ar:                                            ; preds = %bb.aq
  %i.fw = load i32, ptr %i.ad, align 8, !tbaa !98
  %.not146.i = icmp eq i32 %i.fw, 0
  br i1 %.not146.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = icmp ult i64 %i.fo, 4
  br i1 %i.fx, label %ZSTD_decompressFrame.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
end_hunk_0
begin_hunk_1_@ZSTD_DCtx_getParameter:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30336
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %i.k = load i32, ptr %i.j, align 4, !tbaa !38
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %i.m = load i32, ptr %i.l, align 8, !tbaa !39
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 30228
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %i.q = load i32, ptr %i.p, align 8, !tbaa !41
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sink = phi i32 [ %i.q, %bb.h ], [ %i.o, %bb.g ], [ %i.m, %bb.f ], [ %i.k, %bb.e ], [ %i.i, %bb.d ], [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  store i32 %.sink, ptr %2, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ -40, %bb.a ], [ 0, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_sizeof_DStream(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ZSTD_sizeof_DCtx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = tail call i64 @ZSTD_sizeof_DDict(ptr noundef %i.c) #16
  %i.e = add i64 %i.d, 95992
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30248
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = add i64 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30280
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = add i64 %i.h, %i.j
  br label %ZSTD_sizeof_DCtx.exit

ZSTD_sizeof_DCtx.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @ZSTD_decodingBufferSize_min(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @llvm.umin.i64(i64 %0, i64 131072)
  %i.b = shl nuw nsw i64 %i.a, 1
  %i.c = add i64 %0, 64
  %i.d = add i64 %i.c, %i.b
  %i.e = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.d)
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @ZSTD_estimateDStreamSize(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @llvm.umin.i64(i64 %0, i64 131072) ; 2 uses
  %i.b = shl nuw nsw i64 %i.a, 1
  %i.c = add i64 %0, 96056
  %i.d = add i64 %i.c, %i.a
  %i.e = add i64 %i.d, %i.b
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -119, 2147972921) i64 @ZSTD_estimateDStreamSize_fromFrame(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.ZSTD_frameHeader, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %2, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0) ; 3 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq i64 %i.a, 0
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %i.e = icmp ugt i64 %i.d, 2147483648
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 131072) ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = add nuw nsw i64 %i.d, 96056
  %i.i = add nuw nsw i64 %i.h, %i.f
  %i.j = add nuw nsw i64 %i.i, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i64 [ %i.j, %bb.d ], [ %i.a, %bb.a ], [ -72, %bb.b ], [ -16, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompressStream(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !139    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !142  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !143    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !144  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !145  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = icmp ugt i64 %i.e, %i.h
  br i1 %i.q, label %ZSTD_checkOutBuffer.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ugt i64 %i.l, %i.o
  br i1 %i.r, label %ZSTD_checkOutBuffer.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 30344 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.s, align 8, !tbaa !45
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !53
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 30360
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 30336 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !37
  %.not.i = icmp eq i32 %i.u, 1
  br i1 %.not.i, label %bb.d, label %ZSTD_checkOutBuffer.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.w = load i32, ptr %i.v, align 4, !tbaa !130
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %ZSTD_checkOutBuffer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq ptr %.sroa.0.0.copyload.i, %i.j
  %i.z = icmp eq i64 %.sroa.5.0.copyload.i, %i.l
  %or.cond606 = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = icmp eq i64 %.sroa.4.0.copyload.i, %i.o
  %or.cond607 = select i1 %or.cond606, i1 %i.aa, i1 false
  br i1 %or.cond607, label %ZSTD_checkOutBuffer.exit, label %ZSTD_checkOutBuffer.exit.thread

ZSTD_checkOutBuffer.exit:                         ; preds = %bb.e, %bb.c, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 30236 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 30296 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 30288 ; 12 uses
  %i.ae = ptrtoint ptr %i.p to i64                ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 30272 ; 4 uses
  %i.ag = getelementptr i8, ptr %0, i64 30280     ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 29928 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 29944 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 30256 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 30304 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 30324 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 30328 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 95956 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 30104 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 30216
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 30192 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 29956 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 30200 ; 2 uses
  %i.aw = ptrtoint ptr %i.i to i64                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 29948 ; 2 uses
  %gepdiff614 = sub nsw i64 %i.h, %i.e            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 29920 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %.not.i.i = icmp eq ptr @ZSTD_trace_decompress_begin, null
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 95984
  %i.bd = getelementptr i8, ptr %0, i64 29996     ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 29992 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %4 = getelementptr inbounds nuw i8, ptr %0, <4 x i64> <i64 32, i64 6192, i64 4136, i64 10296>
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 95960
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 29936 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 30264
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %i.bo = getelementptr i8, ptr %0, i64 30248     ; 4 uses
  %i.bp = getelementptr i8, ptr %0, i64 95976     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 30168 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 30240 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %i.bt = getelementptr i8, ptr %0, i64 30136
  %i.bu = getelementptr i8, ptr %0, i64 30144     ; 2 uses
  br label %.thread559.outer

.thread559.outer:                                 ; preds = %.thread559.outer.backedge, %ZSTD_checkOutBuffer.exit
  %.0343651.ph = phi ptr [ %i.f, %ZSTD_checkOutBuffer.exit ], [ %.0343651.ph.be, %.thread559.outer.backedge ] ; 18 uses
  %.0648.ph = phi ptr [ %i.m, %ZSTD_checkOutBuffer.exit ], [ %.0648.ph.be, %.thread559.outer.backedge ]
  br label %.thread559

.thread559:                                       ; preds = %.thread559.backedge, %.thread559.outer
  %.0648 = phi ptr [ %.0648.ph, %.thread559.outer ], [ %i.lc, %.thread559.backedge ] ; 23 uses
  %i.bv = load i32, ptr %i.ab, align 4, !tbaa !130
  switch i32 %i.bv, label %ZSTD_checkOutBuffer.exit.thread [
    i32 0, label %.thread714
    i32 1, label %bb.f
    i32 2, label %.loopexit761
    i32 3, label %._crit_edge668
    i32 4, label %bb.df
  ]

._crit_edge668:                                   ; preds = %.thread559
  %.pre669 = load i64, ptr %i.az, align 8, !tbaa !91
  %.val461.pre = load i32, ptr %i.bd, align 4, !tbaa !113
  br label %bb.cs

.thread714:                                       ; preds = %.thread559
  store i32 1, ptr %i.ab, align 4, !tbaa !130
  store i64 0, ptr %i.aj, align 8, !tbaa !146
  store i32 0, ptr %i.al, align 4, !tbaa !147
  store i32 0, ptr %i.am, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !149
  br label %bb.j

bb.f:                                             ; preds = %.thread559
  %.pre662 = load i32, ptr %i.al, align 4, !tbaa !147 ; 2 uses
  %.not417 = icmp eq i32 %.pre662, 0
  br i1 %.not417, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !42
  %.not445 = icmp eq i64 %i.bw, 0
  br i1 %.not445, label %bb.h, label %ZSTD_checkOutBuffer.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 30312
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !25
  %i.bz = call fastcc i64 @ZSTD_decompressLegacyStream(ptr noundef %i.by, i32 noundef %.pre662, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.i, label %ZSTD_checkOutBuffer.exit.thread

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 4, !tbaa !130
  br label %ZSTD_checkOutBuffer.exit.thread

bb.j:                                             ; preds = %.thread714, %bb.f
  %i.cb = load i64, ptr %i.ak, align 8, !tbaa !150
  %i.cc = load i32, ptr %i.ao, align 8, !tbaa !35
  %i.cd = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.an, i64 noundef %i.cb, i32 noundef %i.cc) ; 7 uses
  %i.ce = load i32, ptr %i.ap, align 8, !tbaa !39
  %.not418 = icmp eq i32 %i.ce, 0
  br i1 %.not418, label %ZSTD_DCtx_selectFrameDDict.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load ptr, ptr %i.aq, align 8, !tbaa !34 ; 4 uses
  %.not419 = icmp eq ptr %i.cf, null
  br i1 %.not419, label %ZSTD_DCtx_selectFrameDDict.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %i.ar, align 8, !tbaa !105
  %.not.i462 = icmp eq ptr %i.cg, null
  br i1 %.not.i462, label %ZSTD_DCtx_selectFrameDDict.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = load i32, ptr %i.as, align 4, !tbaa !119 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cf, i64 8
  %.val.i.i = load i64, ptr %i.ci, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ch, ptr %i.b, align 4, !tbaa !3
  %i.cj = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %i.b, i64 noundef 4, i64 noundef 0) #19
  %i.ck = add i64 %.val.i.i, -1                   ; 2 uses
  %i.cl = and i64 %i.cj, %i.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.014.i.i = phi i64 [ %i.cl, %bb.m ], [ %i.ct, %bb.n ] ; 3 uses
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.014.i.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !121
  %i.cp = call i32 @ZSTD_getDictID_fromDDict(ptr noundef %i.co) #16 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, %i.ch
  %i.cr = icmp eq i32 %i.cp, 0
  %or.cond.i.i = or i1 %i.cq, %i.cr
  %i.cs = and i64 %.014.i.i, %i.ck
  %i.ct = add i64 %i.cs, 1
  br i1 %or.cond.i.i, label %ZSTD_DDictHashSet_getDDict.exit.i, label %bb.n

ZSTD_DDictHashSet_getDDict.exit.i:                ; preds = %bb.n
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !47
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.014.i.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !121 ; 2 uses
  %.not10.i = icmp eq ptr %i.cw, null
  br i1 %.not10.i, label %ZSTD_DCtx_selectFrameDDict.exit, label %bb.o

bb.o:                                             ; preds = %ZSTD_DDictHashSet_getDDict.exit.i
  %i.cx = load ptr, ptr %i.at, align 8, !tbaa !7
  %i.cy = call i64 @ZSTD_freeDDict(ptr noundef %i.cx) #16 ; 0 uses
  store i64 0, ptr %i.at, align 8
  %i.cz = load i32, ptr %i.as, align 4, !tbaa !119
  store i32 %i.cz, ptr %i.av, align 8, !tbaa !92
  store ptr %i.cw, ptr %i.ar, align 8, !tbaa !105
  store i32 -1, ptr %i.au, align 8, !tbaa !24
  br label %ZSTD_DCtx_selectFrameDDict.exit

ZSTD_DCtx_selectFrameDDict.exit:                  ; preds = %bb.o, %ZSTD_DDictHashSet_getDDict.exit.i, %bb.l, %bb.k, %bb.j
  %i.da = icmp ult i64 %i.cd, -119
  br i1 %i.da, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %ZSTD_DCtx_selectFrameDDict.exit
  %i.db = icmp ult i64 %gepdiff614, 4
  br i1 %i.db, label %ZSTD_checkOutBuffer.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i = load i32, ptr %i.f, align 1, !tbaa !3 ; 2 uses
  %switch.offset.i = add i32 %.val.i, 47205088    ; 5 uses
  %i.dc = add i32 %.val.i, 47205080
  %or.cond608 = icmp ult i32 %i.dc, -3
  br i1 %or.cond608, label %ZSTD_checkOutBuffer.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = load i32, ptr %i.au, align 8, !tbaa !24
  switch i32 %i.dd, label %ZSTD_getDDict.exit.thread [
    i32 1, label %bb.s
    i32 -1, label %ZSTD_getDDict.exit
  ]

ZSTD_getDDict.exit.thread:                        ; preds = %bb.r
  %i.de = load ptr, ptr %i.at, align 8, !tbaa !7
  %i.df = call i64 @ZSTD_freeDDict(ptr noundef %i.de) #16 ; 0 uses
  store i32 0, ptr %i.au, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %.thread

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.au, align 8, !tbaa !24
  br label %ZSTD_getDDict.exit

ZSTD_getDDict.exit:                               ; preds = %bb.r, %bb.s
  %.0.i464 = load ptr, ptr %i.ar, align 8, !tbaa !105 ; 3 uses
  %.not425 = icmp eq ptr %.0.i464, null
  br i1 %.not425, label %.thread, label %bb.t

bb.t:                                             ; preds = %ZSTD_getDDict.exit
  %i.dg = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %.0.i464) #16
  %i.dh = call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %.0.i464) #16
  br label %.thread

.thread:                                          ; preds = %ZSTD_getDDict.exit.thread, %ZSTD_getDDict.exit, %bb.t
  %i.di = phi ptr [ %i.dg, %bb.t ], [ null, %ZSTD_getDDict.exit ], [ null, %ZSTD_getDDict.exit.thread ] ; 2 uses
  %i.dj = phi i64 [ %i.dh, %bb.t ], [ 0, %ZSTD_getDDict.exit ], [ 0, %ZSTD_getDDict.exit.thread ] ; 3 uses
  %i.dk = load i64, ptr %i.bq, align 8, !tbaa !42
  %.not426 = icmp eq i64 %i.dk, 0
  br i1 %.not426, label %bb.u, label %ZSTD_checkOutBuffer.exit.thread

bb.u:                                             ; preds = %.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 30312 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 30320 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.do = icmp eq ptr %i.di, null
  %spec.store.select.i = select i1 %i.do, ptr %i.a, ptr %i.di ; 3 uses
  %.not.i465 = icmp eq i32 %i.dn, %switch.offset.i ; 4 uses
  br i1 %.not.i465, label %ZSTD_freeLegacyStreamContext.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !45 ; 3 uses
  switch i32 %i.dn, label %ZSTD_freeLegacyStreamContext.exit.i [
    i32 7, label %bb.y
    i32 6, label %bb.x
    i32 5, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.dq = call i64 @ZBUFFv05_freeDCtx(ptr noundef %i.dp) #16 ; 0 uses
  br label %ZSTD_freeLegacyStreamContext.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dr = call i64 @ZBUFFv06_freeDCtx(ptr noundef %i.dp) #16 ; 0 uses
  br label %ZSTD_freeLegacyStreamContext.exit.i

bb.y:                                             ; preds = %bb.v
  %i.ds = call i64 @ZBUFFv07_freeDCtx(ptr noundef %i.dp) #16 ; 0 uses
  br label %ZSTD_freeLegacyStreamContext.exit.i

ZSTD_freeLegacyStreamContext.exit.i:              ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  switch i32 %switch.offset.i, label %ZSTD_freeLegacyStreamContext.exit.i._crit_edge [
    i32 7, label %bb.aj
    i32 6, label %bb.ae
    i32 5, label %bb.z
  ]

end_hunk_1
begin_hunk_2_@ZSTD_decompressStream:bb.a
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ee = load ptr, ptr %i.dl, align 8, !tbaa !45
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ef = phi ptr [ %i.ed, %bb.ak ], [ %i.ee, %bb.al ] ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %ZSTD_initLegacyStream.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eh = call i64 @ZBUFFv07_decompressInitDictionary(ptr noundef nonnull %i.ef, ptr noundef nonnull %spec.store.select.i, i64 noundef %i.dj) #16 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.an, %bb.ai, %bb.ad
  %.sink.i = phi ptr [ %i.ef, %bb.an ], [ %i.ea, %bb.ai ], [ %i.dv, %bb.ad ] ; 2 uses
  store ptr %.sink.i, ptr %i.dl, align 8, !tbaa !45
  br label %bb.ao

ZSTD_initLegacyStream.exit.thread:                ; preds = %bb.ah, %bb.ac, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %ZSTD_checkOutBuffer.exit.thread

bb.ao:                                            ; preds = %ZSTD_freeLegacyStreamContext.exit.i._crit_edge, %.sink.split.i
  %i.ei = phi ptr [ %.pre663, %ZSTD_freeLegacyStreamContext.exit.i._crit_edge ], [ %.sink.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store i32 %switch.offset.i, ptr %i.dm, align 8, !tbaa !26
  store i32 %switch.offset.i, ptr %i.al, align 4, !tbaa !147
  %i.ej = call fastcc i64 @ZSTD_decompressLegacyStream(ptr noundef %i.ei, i32 noundef %switch.offset.i, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.ap, label %ZSTD_checkOutBuffer.exit.thread

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ab, align 4, !tbaa !130
  br label %ZSTD_checkOutBuffer.exit.thread

bb.aq:                                            ; preds = %ZSTD_DCtx_selectFrameDDict.exit
  %.not421 = icmp eq i64 %i.cd, 0
  br i1 %.not421, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.el = load i64, ptr %i.ak, align 8, !tbaa !150 ; 5 uses
  %i.em = sub i64 %i.cd, %i.el                    ; 3 uses
  %i.en = ptrtoint ptr %.0343651.ph to i64
  %i.eo = sub i64 %i.aw, %i.en                    ; 3 uses
  %i.ep = icmp ugt i64 %i.em, %i.eo
  br i1 %i.ep, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %.not422 = icmp eq ptr %i.i, %.0343651.ph
  br i1 %.not422, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr align 1 %.0343651.ph, i64 %i.eo, i1 false)
  %i.er = add i64 %i.el, %i.eo                    ; 2 uses
  store i64 %i.er, ptr %i.ak, align 8, !tbaa !150
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.es = phi i64 [ %i.er, %bb.at ], [ %i.el, %bb.as ]
  %i.et = load i64, ptr %i.g, align 8, !tbaa !142
  store i64 %i.et, ptr %i.d, align 8, !tbaa !141
  %i.eu = load i32, ptr %i.ao, align 8, !tbaa !35
  %i.ev = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.an, i64 noundef %i.es, i32 noundef %i.eu) ; 2 uses
  %i.ew = icmp ult i64 %i.ev, -119
  br i1 %i.ew, label %bb.av, label %ZSTD_checkOutBuffer.exit.thread

bb.av:                                            ; preds = %bb.au
  %i.ex = load i32, ptr %i.ao, align 8, !tbaa !35
  %i.ey = icmp eq i32 %i.ex, 0
  %i.ez = select i1 %i.ey, i64 6, i64 2
  %. = call i64 @llvm.umax.i64(i64 %i.ez, i64 %i.cd)
  %i.fa = load i64, ptr %i.ak, align 8, !tbaa !150
  %reass.sub = sub i64 %., %i.fa
  %i.fb = add i64 %reass.sub, 3
  br label %ZSTD_checkOutBuffer.exit.thread

bb.aw:                                            ; preds = %bb.ar
  %i.fc = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr align 1 %.0343651.ph, i64 %i.em, i1 false)
  store i64 %i.cd, ptr %i.ak, align 8, !tbaa !150
  %i.fd = getelementptr inbounds nuw i8, ptr %.0343651.ph, i64 %i.em
  br label %.thread559.outer.backedge

bb.ax:                                            ; preds = %bb.aq
  %i.fe = load i64, ptr %i.ah, align 8, !tbaa !97 ; 2 uses
  %.not428 = icmp eq i64 %i.fe, -1
  br i1 %.not428, label %.thread538, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ff = load i32, ptr %i.ax, align 4, !tbaa !151
  %.not429 = icmp eq i32 %i.ff, 1
  br i1 %.not429, label %.thread538, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fg = ptrtoint ptr %.0648 to i64
  %i.fh = sub i64 %i.ae, %i.fg                    ; 2 uses
  %.not430 = icmp ult i64 %i.fh, %i.fe
  br i1 %.not430, label %.thread538, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fi = load i32, ptr %i.ao, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %i.f, i64 noundef %gepdiff614, i32 noundef %i.fi)
  %i.fj = load i64, ptr %i.ay, align 8, !tbaa !65 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.not431 = icmp ugt i64 %i.fj, %gepdiff614
  br i1 %.not431, label %.thread538, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fk = call fastcc ptr @ZSTD_getDDict(ptr noundef nonnull %0)
  %i.fl = call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %0, ptr noundef %.0648, i64 noundef %i.fh, ptr noundef %i.f, i64 noundef %i.fj, ptr noundef null, i64 noundef 0, ptr noundef %i.fk) ; 3 uses
  %i.fm = icmp ult i64 %i.fl, -119
  br i1 %i.fm, label %bb.bc, label %ZSTD_checkOutBuffer.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fj
  %.not433 = icmp eq ptr %.0648, null
  %i.fo = getelementptr inbounds nuw i8, ptr %.0648, i64 %i.fl
  %i.fp = select i1 %.not433, ptr null, ptr %i.fo
  store i64 0, ptr %i.az, align 8, !tbaa !91
  br label %.loopexit.sink.split

.thread538:                                       ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  %i.fq = load i32, ptr %i.t, align 8, !tbaa !37
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %.thread538
  %i.fs = load i32, ptr %i.ax, align 4, !tbaa !151
  %.not434 = icmp eq i32 %i.fs, 1
  br i1 %.not434, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ft = load i64, ptr %i.ah, align 8, !tbaa !97 ; 2 uses
  %.not435 = icmp ne i64 %i.ft, -1
  %i.fu = ptrtoint ptr %.0648 to i64
  %i.fv = sub i64 %i.ae, %i.fu
  %i.fw = icmp ult i64 %i.fv, %i.ft
  %or.cond612 = select i1 %.not435, i1 %i.fw, i1 false
  br i1 %or.cond612, label %ZSTD_checkOutBuffer.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %.thread538
  %i.fx = load i32, ptr %i.au, align 8, !tbaa !24
  switch i32 %i.fx, label %ZSTD_getDDict.exit467.thread [
    i32 1, label %bb.bg
    i32 -1, label %ZSTD_getDDict.exit467
  ]

ZSTD_getDDict.exit467.thread:                     ; preds = %bb.bf
  %i.fy = load ptr, ptr %i.at, align 8, !tbaa !7
  %i.fz = call i64 @ZSTD_freeDDict(ptr noundef %i.fy) #16 ; 0 uses
  store i32 0, ptr %i.au, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.au, align 8, !tbaa !24
  br label %ZSTD_getDDict.exit467

ZSTD_getDDict.exit467:                            ; preds = %bb.bf, %bb.bg
  %.0.i466 = load ptr, ptr %i.ar, align 8, !tbaa !105 ; 4 uses
  %.not.i468 = icmp eq ptr %.0.i466, null
  br i1 %.not.i468, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %ZSTD_getDDict.exit467
  %i.ga = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %.0.i466) #16
  %i.gb = call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %.0.i466) #16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  %i.gd = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.ge = icmp ne ptr %i.gd, %i.gc
  %i.gf = zext i1 %i.ge to i32
  store i32 %i.gf, ptr %i.bb, align 4, !tbaa !23
  br label %bb.bi

bb.bi:                                            ; preds = %ZSTD_getDDict.exit467.thread, %bb.bh, %ZSTD_getDDict.exit467
  %.not.i468547 = phi i1 [ true, %ZSTD_getDDict.exit467.thread ], [ false, %bb.bh ], [ true, %ZSTD_getDDict.exit467 ]
  %.0.i466546 = phi ptr [ null, %ZSTD_getDDict.exit467.thread ], [ %.0.i466, %bb.bh ], [ null, %ZSTD_getDDict.exit467 ]
  br i1 %.not.i.i, label %ZSTD_decompressBegin.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gg = call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #16
  br label %ZSTD_decompressBegin.exit.i

ZSTD_decompressBegin.exit.i:                      ; preds = %bb.bj, %bb.bi
  %i.gh = phi i64 [ %i.gg, %bb.bj ], [ 0, %bb.bi ]
  store i64 %i.gh, ptr %i.bc, align 8, !tbaa !90
  %i.gi = load i32, ptr %i.ao, align 8, !tbaa !35 ; 2 uses
  %i.gj = icmp eq i32 %i.gi, 0
  %i.gk = select i1 %i.gj, i64 5, i64 1
  store i64 %i.gk, ptr %i.az, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %i.bg, align 8, !tbaa !3
  store i32 0, ptr %i.av, align 8, !tbaa !92
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.bh, align 8, !tbaa !3
  store i32 1, ptr %i.bi, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store <4 x ptr> %4, ptr %0, align 8, !tbaa !45
  br i1 %.not.i468547, label %ZSTD_decompressBegin_usingDDict.exit, label %bb.bk

bb.bk:                                            ; preds = %ZSTD_decompressBegin.exit.i
  call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %.0.i466546) #16
  %.pre664 = load i32, ptr %i.ao, align 8, !tbaa !35
  br label %ZSTD_decompressBegin_usingDDict.exit

ZSTD_decompressBegin_usingDDict.exit:             ; preds = %bb.bk, %ZSTD_decompressBegin.exit.i
  %i.gl = phi i32 [ %.pre664, %bb.bk ], [ %i.gi, %ZSTD_decompressBegin.exit.i ]
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %ZSTD_decompressBegin_usingDDict.exit
  %.val459 = load i32, ptr %i.an, align 4, !tbaa !3
  %i.gn = and i32 %.val459, -16
  %i.go = icmp eq i32 %i.gn, 407710288
  br i1 %i.go, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %.val458 = load i32, ptr %i.bk, align 8, !tbaa !3
  %i.gp = zext i32 %.val458 to i64
  br label %bb.bo

bb.bn:                                            ; preds = %ZSTD_decompressBegin_usingDDict.exit, %bb.bl
  %i.gq = load i64, ptr %i.ak, align 8, !tbaa !150
  %i.gr = call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %i.an, i64 noundef %i.gq) ; 2 uses
  %i.gs = icmp ult i64 %i.gr, -119
  br i1 %i.gs, label %bb.bo, label %ZSTD_checkOutBuffer.exit.thread

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %storemerge615 = phi i64 [ %i.gp, %bb.bm ], [ 3, %bb.bn ]
  %storemerge = phi i32 [ 7, %bb.bm ], [ 2, %bb.bn ]
  store i64 %storemerge615, ptr %i.az, align 8, !tbaa !91
  store i32 %storemerge, ptr %i.bd, align 4, !tbaa !113
  %i.gt = load i64, ptr %i.bl, align 8, !tbaa !152
  %spec.select = call i64 @llvm.umax.i64(i64 %i.gt, i64 1024) ; 4 uses
  store i64 %spec.select, ptr %i.bl, align 8, !tbaa !152
  %i.gu = load i64, ptr %i.bm, align 8, !tbaa !36
  %i.gv = icmp ugt i64 %spec.select, %i.gu
  br i1 %i.gv, label %ZSTD_checkOutBuffer.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gw = load i32, ptr %i.bn, align 8, !tbaa !41 ; 2 uses
  %.not438 = icmp eq i32 %i.gw, 0
  %.pre665 = load i32, ptr %i.ai, align 8, !tbaa !93 ; 2 uses
  br i1 %.not438, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.447 = call i32 @llvm.umin.i32(i32 %.pre665, i32 %i.gw) ; 2 uses
  store i32 %.447, ptr %i.ai, align 8, !tbaa !93
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gx = phi i32 [ %.447, %bb.bq ], [ %.pre665, %bb.bp ] ; 2 uses
  %spec.select448616 = call i32 @llvm.umax.i32(i32 %i.gx, i32 4)
  %spec.select448 = zext i32 %spec.select448616 to i64 ; 4 uses
  %i.gy = load i32, ptr %i.t, align 8, !tbaa !37
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ha = zext i32 %i.gx to i64
  %i.hb = load i64, ptr %i.ah, align 8, !tbaa !97
  %i.hc = call i64 @llvm.umin.i64(i64 %spec.select, i64 range(i64 0, 4294967296) %i.ha)
  %..i = call i64 @llvm.umin.i64(i64 %i.hc, i64 131072)
  %i.hd = shl nuw nsw i64 %..i, 1
  %i.he = add i64 %spec.select, 64
  %i.hf = add i64 %i.he, %i.hd
  %i.hg = call i64 @llvm.umin.i64(i64 %i.hb, i64 %i.hf)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.hh = phi i64 [ %i.hg, %bb.bs ], [ 0, %bb.br ] ; 3 uses
  %.val.i469 = load i64, ptr %i.bo, align 8, !tbaa !20 ; 2 uses
  %.val4.i = load i64, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.hi = add i64 %.val4.i, %.val.i469
  %i.hj = add i64 %i.hh, %spec.select448          ; 4 uses
  %i.hk = mul i64 %i.hj, 3
  %.not5.i = icmp ult i64 %i.hi, %i.hk
  br i1 %.not5.i, label %ZSTD_DCtx_updateOversizedDuration.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hl = load i64, ptr %i.bp, align 8, !tbaa !28
  %i.hm = add i64 %i.hl, 1
  br label %ZSTD_DCtx_updateOversizedDuration.exit

ZSTD_DCtx_updateOversizedDuration.exit:           ; preds = %bb.bt, %bb.bu
  %.sink.i470 = phi i64 [ %i.hm, %bb.bu ], [ 0, %bb.bt ] ; 2 uses
  store i64 %.sink.i470, ptr %i.bp, align 8, !tbaa !28
  %i.hn = icmp ult i64 %.val.i469, %spec.select448
  br i1 %i.hn, label %.thread548, label %bb.bv

bb.bv:                                            ; preds = %ZSTD_DCtx_updateOversizedDuration.exit
  %i.ho = icmp ult i64 %.val4.i, %i.hh
  %i.hp = icmp ugt i64 %.sink.i470, 127
  %or.cond = select i1 %i.ho, i1 true, i1 %i.hp
  br i1 %or.cond, label %.thread548, label %bb.ce

.thread548:                                       ; preds = %ZSTD_DCtx_updateOversizedDuration.exit, %bb.bv
  %i.hq = load i64, ptr %i.bq, align 8, !tbaa !42 ; 2 uses
  %.not439 = icmp eq i64 %i.hq, 0
  br i1 %.not439, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.thread548
  %i.hr = add i64 %i.hq, -95992
  %i.hs = icmp ugt i64 %i.hj, %i.hr
  br i1 %i.hs, label %ZSTD_checkOutBuffer.exit.thread, label %._crit_edge666

._crit_edge666:                                   ; preds = %bb.bw
  %.pre667 = load ptr, ptr %i.br, align 8, !tbaa !43
  br label %bb.cd

bb.bx:                                            ; preds = %.thread548
  %i.ht = load ptr, ptr %i.br, align 8, !tbaa !43 ; 3 uses
  %.val456 = load ptr, ptr %i.bt, align 8         ; 2 uses
  %.val457 = load ptr, ptr %i.bu, align 8
  %.not.i471 = icmp eq ptr %i.ht, null
  br i1 %.not.i471, label %ZSTD_customFree.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not4.i = icmp eq ptr %.val456, null
  br i1 %.not4.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void %.val456(ptr noundef %.val457, ptr noundef nonnull %i.ht) #16, !inline_history !46
  br label %ZSTD_customFree.exit

bb.ca:                                            ; preds = %bb.by
  call void @free(ptr noundef nonnull %i.ht) #16
  br label %ZSTD_customFree.exit

ZSTD_customFree.exit:                             ; preds = %bb.bx, %bb.bz, %bb.ca
  store i64 0, ptr %i.bo, align 8, !tbaa !20
  store i64 0, ptr %i.ag, align 8, !tbaa !21
  %.val = load ptr, ptr %i.bs, align 8, !tbaa !153 ; 2 uses
  %.not.i472 = icmp eq ptr %.val, null
  br i1 %.not.i472, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %ZSTD_customFree.exit
  %.val455 = load ptr, ptr %i.bu, align 8
  %i.hu = call ptr %.val(ptr noundef %.val455, i64 noundef %i.hj) #16, !inline_history !154
  br label %ZSTD_customMalloc.exit

bb.cc:                                            ; preds = %ZSTD_customFree.exit
  %i.hv = call noalias ptr @malloc(i64 noundef %i.hj) #18
  br label %ZSTD_customMalloc.exit

ZSTD_customMalloc.exit:                           ; preds = %bb.cb, %bb.cc
  %.0.i473 = phi ptr [ %i.hu, %bb.cb ], [ %i.hv, %bb.cc ] ; 3 uses
  store ptr %.0.i473, ptr %i.br, align 8, !tbaa !43
  %i.hw = icmp eq ptr %.0.i473, null
  br i1 %i.hw, label %ZSTD_checkOutBuffer.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge666, %ZSTD_customMalloc.exit
  %i.hx = phi ptr [ %.pre667, %._crit_edge666 ], [ %.0.i473, %ZSTD_customMalloc.exit ]
  store i64 %spec.select448, ptr %i.bo, align 8, !tbaa !20
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %spec.select448
  store ptr %i.hy, ptr %i.af, align 8, !tbaa !155
  store i64 %i.hh, ptr %i.ag, align 8, !tbaa !21
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bv, %bb.cd
  store i32 2, ptr %i.ab, align 4, !tbaa !130
  br label %.loopexit761

.loopexit761:                                     ; preds = %.thread559, %bb.ce
  %i.hz = ptrtoint ptr %.0343651.ph to i64
  %i.ia = sub i64 %i.aw, %i.hz                    ; 2 uses
  %i.ib = load i32, ptr %i.bd, align 4, !tbaa !113 ; 3 uses
  %.off.i = add i32 %i.ib, -3
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.loopexit761
  %i.ic = load i64, ptr %i.az, align 8, !tbaa !91
  br label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

bb.cg:                                            ; preds = %.loopexit761
  %i.id = load i32, ptr %i.bh, align 8, !tbaa !114
  %.not.i475 = icmp eq i32 %i.id, 0
  %i.ie = load i64, ptr %i.az, align 8, !tbaa !91 ; 3 uses
  br i1 %.not.i475, label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.thread, label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

ZSTD_nextSrcSizeToDecompressWithInputSize.exit.thread: ; preds = %bb.cg
  %..i476 = call i64 @llvm.umin.i64(i64 %i.ia, i64 %i.ie)
  %spec.select.i477 = call i64 @llvm.umax.i64(i64 %..i476, i64 1)
  br label %bb.ch

ZSTD_nextSrcSizeToDecompressWithInputSize.exit:   ; preds = %bb.cf, %bb.cg
  %.0.i474 = phi i64 [ %i.ie, %bb.cg ], [ %i.ic, %bb.cf ] ; 3 uses
  %i.if = icmp eq i64 %.0.i474, 0
  br i1 %i.if, label %.loopexit.sink.split, label %bb.ch

bb.ch:                                            ; preds = %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.thread, %ZSTD_nextSrcSizeToDecompressWithInputSize.exit
  %i.ig = phi i64 [ %i.ie, %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.thread ], [ %.0.i474, %ZSTD_nextSrcSizeToDecompressWithInputSize.exit ]
  %.0.i474556 = phi i64 [ %spec.select.i477, %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.thread ], [ %.0.i474, %ZSTD_nextSrcSizeToDecompressWithInputSize.exit ] ; 4 uses
  %.not440 = icmp ult i64 %i.ia, %.0.i474556
  br i1 %.not440, label %bb.cq, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
end_hunk_2
