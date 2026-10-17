Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_decompress?download=true
inline.NumInlined: 251
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ZSTD_findFrameSizeInfo:bb.a

.lr.ph:                                           ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %i.ai = phi i64 [ %i.af, %.lr.ph ], [ %i.ar, %bb.o ]
  %.092 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.o ]
  %.04791 = phi i64 [ %i.ae, %.lr.ph ], [ %i.am, %bb.o ] ; 2 uses
  %.04990 = phi ptr [ %i.ad, %.lr.ph ], [ %i.al, %bb.o ]
  %i.aj = add nuw i64 %i.ai, 3                    ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, %.04791
  br i1 %i.ak, label %.thread67, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.04990, i64 %i.aj ; 4 uses
  %i.am = sub nuw i64 %.04791, %i.aj              ; 3 uses
  %i.an = add i64 %.092, 1                        ; 3 uses
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !67
  %.not59 = icmp eq i32 %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.not59, label %bb.o, label %bb.p

.thread67:                                        ; preds = %bb.m, %bb.o, %bb.l
  %.lcssa.sink = phi i64 [ %i.af, %bb.l ], [ %i.ar, %bb.o ], [ -72, %bb.m ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa.sink, ptr %i.ap, align 8, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.aq, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ar = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %i.al, i64 noundef %i.am, ptr noundef nonnull %5) #17 ; 3 uses
  %i.as = icmp ult i64 %i.ar, -119
  br i1 %i.as, label %bb.m, label %.thread67

bb.p:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !60
  %.not60 = icmp eq i32 %i.au, 0
  br i1 %.not60, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = icmp ult i64 %i.am, 4
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %i.aw, align 8, !tbaa !63, !alias.scope !127
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.ax, align 8, !tbaa !64, !alias.scope !127
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.2 = phi ptr [ %i.ay, %bb.s ], [ %i.al, %bb.p ]
  %i.az = ptrtoint ptr %.2 to i64
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = load i64, ptr %4, align 8, !tbaa !55    ; 2 uses
  %.not61 = icmp eq i64 %i.bc, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul i64 %i.an, %i.bf
  %i.bh = select i1 %.not61, i64 %i.bg, i64 %i.bc
  store i64 %i.an, ptr %0, align 8, !tbaa !54
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bb, ptr %.sroa.6.0..sroa_idx26, align 8, !tbaa !54
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bh, ptr %.sroa.8.0..sroa_idx28, align 8, !tbaa !124
  br label %.critedge

.critedge:                                        ; preds = %.thread67, %bb.i, %bb.k, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
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
  %.02753 = phi i32 [ 0, %.lr.ph ], [ %.128, %bb.g ] ; 2 uses
  %.02952 = phi i64 [ 0, %.lr.ph ], [ %.130, %bb.g ] ; 2 uses
  %.03251 = phi i64 [ %1, %.lr.ph ], [ %i.ab, %bb.g ] ; 3 uses
  %.03450 = phi ptr [ %0, %.lr.ph ], [ %i.aa, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.03450, i64 noundef %.03251, i32 noundef 0)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !63   ; 4 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.i = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef readonly %.03450, i64 noundef %.03251, i32 noundef 0) ; 2 uses
  %i.j = icmp ult i64 %i.i, -119
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, -120
  %i.l = icmp eq i64 %i.h, -2
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.c, align 4, !tbaa !56
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.d, align 8, !tbaa !57
  %i.p = zext i32 %i.o to i64
  %i.q = add i64 %.02952, %i.p
  %i.r = load i32, ptr %i.e, align 8, !tbaa !60
  %.not40 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not40, i64 0, i64 4
  %i.t = add i64 %i.q, %i.s
  %i.u = load i64, ptr %2, align 8, !tbaa !65
  %i.v = mul i64 %i.u, 3
  %i.w = add i64 %i.t, %i.v
  %i.x = load i32, ptr %i.f, align 8, !tbaa !59
  %i.y = call i32 @llvm.umax.i32(i32 %.02753, i32 %i.x)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = add i64 %i.g, %.02952
  br label %bb.g

.thread:                                          ; preds = %bb.b, %bb.c
  %.238.ph = phi i64 [ -20, %bb.c ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %._crit_edge

bb.g:                                             ; preds = %bb.e, %bb.f
  %.130 = phi i64 [ %i.w, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %.128 = phi i32 [ %i.y, %bb.e ], [ %.02753, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.03450, i64 %i.g
  %i.ab = sub i64 %.03251, %i.g                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !128

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.ac = zext i32 %.128 to i64
  %i.ad = add i64 %.130, %i.ac
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.thread
  %.3 = phi i64 [ %.238.ph, %.thread ], [ 0, %bb.a ], [ %i.ad, %._crit_edge.loopexit ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define noundef i64 @ZSTD_insertBlock(ptr noundef %0, ptr noundef %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  tail call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %1, i64 noundef %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 29888
  store ptr %i.a, ptr %i.b, align 8, !tbaa !68
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
  br i1 %.not, label %11, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #17
  %i.c = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #17
  br label %11

11:                                               ; preds = %bb.b, %bb.a
  %.085 = phi ptr [ %i.b, %bb.b ], [ %5, %bb.a ]  ; 3 uses
  %.084 = phi i64 [ %i.c, %bb.b ], [ %6, %bb.a ]  ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 30104 ; 5 uses
  %13 = load i32, ptr %12, align 8, !tbaa !38
  %14 = icmp ne i32 %13, 0                        ; 2 uses
  %15 = select i1 %14, i64 1, i64 5               ; 2 uses
  %.not97209215224 = icmp ult i64 %4, %15
  br i1 %.not97209215224, label %.outer._crit_edge, label %bb.c

bb.c:                                             ; preds = %11
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %i.g = icmp eq ptr %.085, null
  %spec.store.select1.i = select i1 %i.g, ptr %i.a, ptr %.085 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30204 ; 2 uses
  %.not.i.i = icmp eq ptr @ZSTD_trace_decompress_begin, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 95984 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10296 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
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
  %16 = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %17 = insertelement <2 x ptr> %16, ptr %i.t, i64 1
  %18 = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %19 = insertelement <2 x ptr> %18, ptr %i.o, i64 1
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.c, %.outer.outer
  %i.ao = phi i64 [ %15, %bb.c ], [ %i.gs, %.outer.outer ]
  %.not216407424 = phi i1 [ %14, %bb.c ], [ %21, %.outer.outer ]
  %i.ap = phi i1 [ false, %bb.c ], [ true, %.outer.outer ]
  %.086.ph.ph423 = phi i64 [ %2, %bb.c ], [ %i.gq, %.outer.outer ]
  %.089.ph.ph422 = phi ptr [ %1, %bb.c ], [ %i.gp, %.outer.outer ]
  %.0.ph.ph421 = phi i64 [ %4, %bb.c ], [ %.4132, %.outer.outer ]
  %.0133.ph.ph420 = phi ptr [ %3, %bb.c ], [ %.4137, %.outer.outer ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %i.aq = phi i64 [ %i.ao, %.lr.ph.lr.ph ], [ %i.bx, %.outer ]
  %.not216413 = phi i1 [ %.not216407424, %.lr.ph.lr.ph ], [ %20, %.outer ]
  %.086.ph412 = phi i64 [ %.086.ph.ph423, %.lr.ph.lr.ph ], [ %i.bt, %.outer ] ; 7 uses
  %.089.ph411 = phi ptr [ %.089.ph.ph422, %.lr.ph.lr.ph ], [ %i.bs, %.outer ] ; 9 uses
  %.0.ph410 = phi i64 [ %.0.ph.ph421, %.lr.ph.lr.ph ], [ %i.bv, %.outer ] ; 2 uses
  %.0133.ph409 = phi ptr [ %.0133.ph.ph420, %.lr.ph.lr.ph ], [ %i.bu, %.outer ] ; 2 uses
  %.fr = freeze i1 %.not216413
  br i1 %.fr, label %.thread152.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.v
  %.0211 = phi i64 [ %i.ci, %bb.v ], [ %.0.ph410, %.lr.ph ] ; 12 uses
  %.0133210 = phi ptr [ %i.ch, %bb.v ], [ %.0133.ph409, %.lr.ph ] ; 15 uses
  %i.ar = icmp ult i64 %.0211, 4
  br i1 %i.ar, label %.thread152.split, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %.val.i = load i32, ptr %.0133210, align 1, !tbaa !52 ; 2 uses
  %i.as = add i32 %.val.i, 47205080
  %i.at = icmp ult i32 %i.as, -3
  br i1 %i.at, label %ZSTD_isLegacy.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %.val.i.i.i = load i32, ptr %.0133210, align 1, !tbaa !52, !noalias !132 ; 2 uses
  %switch.tableidx.i.i.i = add i32 %.val.i.i.i, 47205083
  %i.au = icmp ult i32 %switch.tableidx.i.i.i, 3
  br i1 %i.au, label %ZSTD_isLegacy.exit.i.i, label %ZSTD_isLegacy.exit.thread.i.i

ZSTD_isLegacy.exit.i.i:                           ; preds = %bb.e
  switch i32 %.val.i.i.i, label %default.unreachable.i.i [
    i32 -47205083, label %bb.f
    i32 -47205082, label %bb.g
    i32 -47205081, label %bb.h
  ]

bb.f:                                             ; preds = %ZSTD_isLegacy.exit.i.i
  call void @ZSTDv05_findFrameSizeInfoLegacy(ptr noundef nonnull %.0133210, i64 noundef %.0211, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

bb.g:                                             ; preds = %ZSTD_isLegacy.exit.i.i
  call void @ZSTDv06_findFrameSizeInfoLegacy(ptr noundef nonnull %.0133210, i64 noundef %.0211, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

bb.h:                                             ; preds = %ZSTD_isLegacy.exit.i.i
  call void @ZSTDv07_findFrameSizeInfoLegacy(ptr noundef nonnull %.0133210, i64 noundef %.0211, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

default.unreachable.i.i:                          ; preds = %ZSTD_isLegacy.exit.i.i
  unreachable

ZSTD_isLegacy.exit.thread.i.i:                    ; preds = %bb.e
  store i64 -10, ptr %i.d, align 8, !tbaa !63, !alias.scope !132
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

ZSTD_findFrameCompressedSizeLegacy.exit:          ; preds = %bb.f, %bb.g, %bb.h, %ZSTD_isLegacy.exit.thread.i.i
  %i.av = load i64, ptr %i.d, align 8, !tbaa !63, !alias.scope !132 ; 3 uses
  %i.aw = icmp ult i64 %i.av, -119
  %i.ax = icmp ugt i64 %i.av, %.0211
  %or.cond.i.i = and i1 %i.aw, %i.ax
  %i.ay = select i1 %or.cond.i.i, i64 -72, i64 %i.av ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.az = icmp ult i64 %i.ay, -119
  br i1 %i.az, label %bb.i, label %.thread145

bb.i:                                             ; preds = %ZSTD_findFrameCompressedSizeLegacy.exit
  %i.ba = load i64, ptr %i.f, align 8, !tbaa !45
  %.not106 = icmp eq i64 %i.ba, 0
  br i1 %.not106, label %bb.j, label %.thread145

bb.j:                                             ; preds = %bb.i
  %i.bb = icmp ult i64 %i.ay, 4
  br i1 %i.bb, label %ZSTD_isLegacy.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i = load i32, ptr %.0133210, align 1, !tbaa !52 ; 2 uses
  %switch.tableidx.i.i = add i32 %.val.i.i, 47205083
  %i.bc = icmp ult i32 %switch.tableidx.i.i, 3
  br i1 %i.bc, label %ZSTD_isLegacy.exit.i, label %ZSTD_isLegacy.exit.thread.i

ZSTD_isLegacy.exit.thread.i:                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %ZSTD_decompressLegacy.exit.thread

ZSTD_isLegacy.exit.i:                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bd = icmp eq ptr %.089.ph411, null
  %spec.store.select.i = select i1 %i.bd, ptr %i.a, ptr %.089.ph411 ; 3 uses
  switch i32 %.val.i.i, label %default.unreachable.i [
    i32 -47205083, label %bb.l
    i32 -47205082, label %bb.n
    i32 -47205081, label %bb.p
  ]

bb.l:                                             ; preds = %ZSTD_isLegacy.exit.i
  %i.be = call ptr @ZSTDv05_createDCtx() #17      ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %ZSTD_decompressLegacy.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = call i64 @ZSTDv05_decompress_usingDict(ptr noundef nonnull %i.be, ptr noundef nonnull %spec.store.select.i, i64 noundef %.086.ph412, ptr noundef nonnull %.0133210, i64 noundef %i.ay, ptr noundef nonnull %spec.store.select1.i, i64 noundef %.084) #17
  %i.bh = call i64 @ZSTDv05_freeDCtx(ptr noundef nonnull %i.be) #17 ; 0 uses
  br label %ZSTD_decompressLegacy.exit

bb.n:                                             ; preds = %ZSTD_isLegacy.exit.i
  %i.bi = call ptr @ZSTDv06_createDCtx() #17      ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %ZSTD_decompressLegacy.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = call i64 @ZSTDv06_decompress_usingDict(ptr noundef nonnull %i.bi, ptr noundef nonnull %spec.store.select.i, i64 noundef %.086.ph412, ptr noundef nonnull %.0133210, i64 noundef %i.ay, ptr noundef nonnull %spec.store.select1.i, i64 noundef %.084) #17
  %i.bl = call i64 @ZSTDv06_freeDCtx(ptr noundef nonnull %i.bi) #17 ; 0 uses
  br label %ZSTD_decompressLegacy.exit

bb.p:                                             ; preds = %ZSTD_isLegacy.exit.i
  %i.bm = call ptr @ZSTDv07_createDCtx() #17      ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %ZSTD_decompressLegacy.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = call i64 @ZSTDv07_decompress_usingDict(ptr noundef nonnull %i.bm, ptr noundef nonnull %spec.store.select.i, i64 noundef %.086.ph412, ptr noundef nonnull %.0133210, i64 noundef %i.ay, ptr noundef nonnull %spec.store.select1.i, i64 noundef %.084) #17
  %i.bp = call i64 @ZSTDv07_freeDCtx(ptr noundef nonnull %i.bm) #17 ; 0 uses
  br label %ZSTD_decompressLegacy.exit

default.unreachable.i:                            ; preds = %ZSTD_isLegacy.exit.i
  unreachable

ZSTD_decompressLegacy.exit.thread:                ; preds = %bb.p, %bb.n, %bb.l, %ZSTD_isLegacy.exit.thread.i
  %.3.i.ph = phi i64 [ -10, %ZSTD_isLegacy.exit.thread.i ], [ -64, %bb.l ], [ -64, %bb.n ], [ -64, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread145

ZSTD_decompressLegacy.exit:                       ; preds = %bb.m, %bb.o, %bb.q
  %.3.i = phi i64 [ %i.bg, %bb.m ], [ %i.bk, %bb.o ], [ %i.bo, %bb.q ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bq = icmp ult i64 %.3.i, -119
  br i1 %i.bq, label %bb.r, label %.thread145

bb.r:                                             ; preds = %ZSTD_decompressLegacy.exit
  %i.br = call i64 @ZSTD_getFrameContentSize(ptr noundef nonnull %.0133210, i64 noundef %.0211) ; 2 uses
  switch i64 %i.br, label %bb.s [
    i64 -2, label %.thread145
    i64 -1, label %.outer
  ]

bb.s:                                             ; preds = %bb.r
  %.not109 = icmp eq i64 %i.br, %.3.i
  br i1 %.not109, label %.outer, label %.thread145

.outer:                                           ; preds = %bb.s, %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %.089.ph411, i64 %.3.i ; 2 uses
  %i.bt = sub i64 %.086.ph412, %.3.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.0133210, i64 %i.ay
  %i.bv = sub i64 %.0211, %i.ay                   ; 3 uses
  %i.bw = load i32, ptr %12, align 8, !tbaa !38
  %20 = icmp ne i32 %i.bw, 0                      ; 2 uses
  %i.bx = select i1 %20, i64 1, i64 5             ; 2 uses
  %.not97209 = icmp ult i64 %i.bv, %i.bx
  br i1 %.not97209, label %.outer._crit_edge, label %.lr.ph

ZSTD_isLegacy.exit.thread:                        ; preds = %bb.d
  %i.by = and i32 %.val.i, -16
  %i.bz = icmp eq i32 %i.by, 407710288
  br i1 %i.bz, label %bb.t, label %.thread152.split

bb.t:                                             ; preds = %ZSTD_isLegacy.exit.thread
  %i.ca = icmp ult i64 %.0211, 8
  br i1 %i.ca, label %.thread145, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %.0133210, i64 4
  %.val.i111 = load i32, ptr %i.cb, align 1, !tbaa !52 ; 2 uses
  %i.cc = icmp ugt i32 %.val.i111, -9
  br i1 %i.cc, label %.thread145, label %readSkippableFrameSize.exit

readSkippableFrameSize.exit:                      ; preds = %bb.u
  %i.cd = zext i32 %.val.i111 to i64
  %i.ce = add nuw nsw i64 %i.cd, 8                ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, %.0211
  %..i = select i1 %i.cf, i64 -72, i64 %i.ce      ; 4 uses
  %i.cg = icmp ult i64 %..i, -119
  br i1 %i.cg, label %bb.v, label %.thread145

bb.v:                                             ; preds = %readSkippableFrameSize.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.0133210, i64 %..i
  %i.ci = sub i64 %.0211, %..i                    ; 3 uses
  %.not97 = icmp ult i64 %i.ci, %i.aq
  br i1 %.not97, label %.outer._crit_edge, label %.lr.ph.split

.thread152.split:                                 ; preds = %.lr.ph, %.lr.ph.split, %ZSTD_isLegacy.exit.thread
  %.0133.lcssa188.split = phi ptr [ %.0133210, %.lr.ph.split ], [ %.0133210, %ZSTD_isLegacy.exit.thread ], [ %.0133.ph409, %.lr.ph ] ; 12 uses
  %.0.lcssa184.split = phi i64 [ %.0211, %.lr.ph.split ], [ %.0211, %ZSTD_isLegacy.exit.thread ], [ %.0.ph410, %.lr.ph ] ; 11 uses
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.thread152.split
  %i.cj = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #17
  %i.ck = call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.cn = icmp ne ptr %i.cm, %i.cl
  %i.co = zext i1 %i.cn to i32
  store i32 %i.co, ptr %i.i, align 4, !tbaa !26
  br i1 %.not.i.i, label %ZSTD_decompressBegin_usingDDict.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #17
  br label %ZSTD_decompressBegin_usingDDict.exit

ZSTD_decompressBegin_usingDDict.exit:             ; preds = %bb.x, %bb.w
  %i.cq = phi i64 [ %i.cp, %bb.x ], [ 0, %bb.w ]
  store i64 %i.cq, ptr %i.j, align 8, !tbaa !69
  %i.cr = load i32, ptr %12, align 8, !tbaa !38
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = select i1 %i.cs, i64 5, i64 1
  store i64 %i.ct, ptr %i.k, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %i.o, align 8, !tbaa !52
  store i32 0, ptr %i.p, align 8, !tbaa !71
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.q, align 8, !tbaa !52
  store i32 1, ptr %i.r, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store <2 x ptr> %17, ptr %0, align 8, !tbaa !47
  store <2 x ptr> %19, ptr %i.v, align 8, !tbaa !47
  call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %7) #17
  br label %bb.z

bb.y:                                             ; preds = %.thread152.split
  %i.cu = call i64 @ZSTD_decompressBegin_usingDict(ptr noundef nonnull %0, ptr noundef %.085, i64 noundef %.084) ; 2 uses
  %i.cv = icmp ult i64 %i.cu, -119
  br i1 %i.cv, label %bb.z, label %.thread145

bb.z:                                             ; preds = %ZSTD_decompressBegin_usingDDict.exit, %bb.y
  call void @ZSTD_checkContinuity(ptr noundef nonnull %0, ptr noundef %.089.ph411, i64 noundef %.086.ph412) #17
  %i.cw = getelementptr inbounds nuw i8, ptr %.089.ph411, i64 %.086.ph412 ; 3 uses
  %i.cx = load i32, ptr %12, align 8, !tbaa !38
  %i.cy = icmp eq i32 %i.cx, 0                    ; 2 uses
  %i.cz = select i1 %i.cy, i64 9, i64 5
  %i.da = icmp ult i64 %.0.lcssa184.split, %i.cz
  br i1 %i.da, label %ZSTD_decompressFrame.exit, label %ZSTD_frameHeaderSize_internal.exit.i

ZSTD_frameHeaderSize_internal.exit.i:             ; preds = %bb.z
  %i.db = select i1 %i.cy, i64 5, i64 1           ; 2 uses
  %i.dc = getelementptr i8, ptr %.0133.lcssa188.split, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 -1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !53
  %i.df = zext i8 %i.de to i32                    ; 3 uses
  %i.dg = and i32 %i.df, 3
  %i.dh = lshr i32 %i.df, 6                       ; 2 uses
  %i.di = and i32 %i.df, 32                       ; 2 uses
  %.not.i.i112 = icmp ne i32 %i.di, 0
  %.lobit.i.i = lshr exact i32 %i.di, 5
  %i.dj = xor i32 %.lobit.i.i, 1
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = zext nneg i32 %i.dg to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_did_fieldSize, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !54
  %i.do = zext nneg i32 %i.dh to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_fcs_fieldSize, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !54
  %.not15.i.i = icmp eq i32 %i.dh, 0
  %narrow.i.i = and i1 %.not.i.i112, %.not15.i.i
  %i.dr = zext i1 %narrow.i.i to i64
  %i.ds = add i64 %i.dn, %i.db
  %i.dt = add i64 %i.ds, %i.dq
  %i.du = add i64 %i.dt, %i.dk
  %i.dv = add i64 %i.du, %i.dr                    ; 6 uses
  %i.dw = icmp ult i64 %i.dv, -119
  br i1 %i.dw, label %bb.aa, label %ZSTD_decompressFrame.exit

bb.aa:                                            ; preds = %ZSTD_frameHeaderSize_internal.exit.i
  %i.dx = add nuw i64 %i.dv, 3
  %i.dy = icmp ult i64 %.0.lcssa184.split, %i.dx
  br i1 %i.dy, label %ZSTD_decompressFrame.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %.0133.lcssa188.split, i64 noundef %i.dv) ; 2 uses
  %i.ea = icmp ult i64 %i.dz, -119
  br i1 %i.ea, label %bb.ac, label %ZSTD_decompressFrame.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %.0133.lcssa188.split, i64 %i.dv ; 2 uses
  %i.ec = sub nuw i64 %.0.lcssa184.split, %i.dv   ; 2 uses
  %i.ed = load i32, ptr %i.w, align 8, !tbaa !44  ; 2 uses
  %.not138.i = icmp eq i32 %i.ed, 0
  br i1 %.not138.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = load i32, ptr %i.x, align 8, !tbaa !72
  %..i113 = call i32 @llvm.umin.i32(i32 %i.ee, i32 %i.ed)
  store i32 %..i113, ptr %i.x, align 8, !tbaa !72
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ef = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %i.eb, i64 noundef %i.ec, ptr noundef nonnull %9) #17 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, -119
  br i1 %i.eg, label %.lr.ph.i, label %.thread172.i

.lr.ph.i:                                         ; preds = %bb.ae
  %i.eh = ptrtoint ptr %i.cw to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.aq, %.lr.ph.i
  %i.ei = phi i64 [ %i.ef, %.lr.ph.i ], [ %i.fo, %bb.aq ] ; 8 uses
  %.1113193.i = phi i64 [ %i.ec, %.lr.ph.i ], [ %i.fm, %bb.aq ]
  %.0116191.i = phi ptr [ %.089.ph411, %.lr.ph.i ], [ %i.fk, %bb.aq ] ; 10 uses
  %.1120190.i = phi ptr [ %i.eb, %.lr.ph.i ], [ %i.fl, %bb.aq ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.1120190.i, i64 3 ; 7 uses
  %i.ek = add i64 %.1113193.i, -3                 ; 2 uses
  %i.el = icmp ugt i64 %i.ei, %i.ek
  br i1 %i.el, label %.thread172.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not140.i = icmp uge ptr %i.ej, %.0116191.i
  %i.em = icmp ult ptr %i.ej, %i.cw
  %or.cond.i = select i1 %.not140.i, i1 %i.em, i1 false
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = ptrtoint ptr %.0116191.i to i64         ; 4 uses
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %.0116191.i, i64 %i.ep
  %.0110.i = select i1 %or.cond.i, ptr %i.eq, ptr %i.cw ; 2 uses
  %i.er = load i32, ptr %9, align 4, !tbaa !73
  switch i32 %i.er, label %.thread172.i [
    i32 2, label %ZSTD_copyRawBlock.exit.i
    i32 0, label %bb.ah
    i32 1, label %bb.al
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.es = sub i64 %i.eh, %i.eo
  %i.et = icmp ugt i64 %i.ei, %i.es
  br i1 %i.et, label %.thread172.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = icmp eq ptr %.0116191.i, null
  br i1 %i.eu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ev = icmp eq i64 %i.ei, 0
  br i1 %i.ev, label %ZSTD_copyRawBlock.exit.thread.i, label %.thread172.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0116191.i, ptr nonnull readonly align 1 %i.ej, i64 %i.ei, i1 false)
  br label %ZSTD_copyRawBlock.exit.thread.i

bb.al:                                            ; preds = %bb.ag
  %i.ew = ptrtoint ptr %.0110.i to i64
  %i.ex = sub i64 %i.ew, %i.eo
  %i.ey = load i8, ptr %i.ej, align 1, !tbaa !53
  %i.ez = load i32, ptr %i.y, align 4, !tbaa !74  ; 2 uses
  %i.fa = zext i32 %i.ez to i64                   ; 3 uses
  %i.fb = icmp ult i64 %i.ex, %i.fa
  br i1 %i.fb, label %.thread172.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fc = icmp eq ptr %.0116191.i, null
  br i1 %i.fc, label %bb.an, label %ZSTD_copyRawBlock.exit.thread165.i

bb.an:                                            ; preds = %bb.am
  %i.fd = icmp eq i32 %i.ez, 0
  br i1 %i.fd, label %ZSTD_copyRawBlock.exit.thread.i, label %.thread172.i

ZSTD_copyRawBlock.exit.thread165.i:               ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0116191.i, i8 %i.ey, i64 %i.fa, i1 false)
  br label %ZSTD_copyRawBlock.exit.thread.i

ZSTD_copyRawBlock.exit.i:                         ; preds = %bb.ag
  %i.fe = ptrtoint ptr %.0110.i to i64
  %i.ff = sub i64 %i.fe, %i.eo
  %i.fg = call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %.0116191.i, i64 noundef %i.ff, ptr noundef nonnull %i.ej, i64 noundef %i.ei, i32 noundef 0) #17 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, -119
  br i1 %i.fh, label %ZSTD_copyRawBlock.exit.thread.i, label %.thread172.i

ZSTD_copyRawBlock.exit.thread.i:                  ; preds = %ZSTD_copyRawBlock.exit.i, %ZSTD_copyRawBlock.exit.thread165.i, %bb.an, %bb.ak, %bb.aj
  %.0169.i = phi i64 [ %i.fa, %ZSTD_copyRawBlock.exit.thread165.i ], [ %i.fg, %ZSTD_copyRawBlock.exit.i ], [ 0, %bb.an ], [ %i.ei, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %i.fi = load i32, ptr %i.z, align 8, !tbaa !75
  %.not142.i = icmp eq i32 %i.fi, 0
  br i1 %.not142.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %ZSTD_copyRawBlock.exit.thread.i
  %i.fj = call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(address) %i.aa, ptr noundef captures(address) %.0116191.i, i64 noundef %.0169.i) #17 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %ZSTD_copyRawBlock.exit.thread.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0116191.i, i64 %.0169.i ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei ; 5 uses
  %i.fm = sub nuw i64 %i.ek, %i.ei                ; 5 uses
  %i.fn = load i32, ptr %i.ab, align 4, !tbaa !67
  %.not144.i = icmp eq i32 %i.fn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %.not144.i, label %bb.aq, label %bb.ar

.thread172.i:                                     ; preds = %bb.aq, %ZSTD_copyRawBlock.exit.i, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.4127.ph.i = phi i64 [ %i.ef, %bb.ae ], [ -70, %bb.al ], [ -70, %bb.ah ], [ -20, %bb.ag ], [ %i.fg, %ZSTD_copyRawBlock.exit.i ], [ %i.fo, %bb.aq ], [ -72, %bb.af ], [ -74, %bb.an ], [ -74, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %ZSTD_decompressFrame.exit

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.fo = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %i.fl, i64 noundef %i.fm, ptr noundef nonnull %9) #17 ; 3 uses
  %i.fp = icmp ult i64 %i.fo, -119
  br i1 %i.fp, label %bb.af, label %.thread172.i

bb.ar:                                            ; preds = %bb.ap
  %i.fq = load i64, ptr %i.ac, align 8, !tbaa !76 ; 2 uses
  %.not145.i = icmp eq i64 %i.fq, -1
  %i.fr = ptrtoint ptr %i.fk to i64
  %i.fs = ptrtoint ptr %.089.ph411 to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 4 uses
  %.not146.i = icmp eq i64 %i.ft, %i.fq
  %or.cond152.i = select i1 %.not145.i, i1 true, i1 %.not146.i
  br i1 %or.cond152.i, label %bb.as, label %ZSTD_decompressFrame.exit

bb.as:                                            ; preds = %bb.ar
  %i.fu = load i32, ptr %i.ad, align 8, !tbaa !77
  %.not147.i = icmp eq i32 %i.fu, 0
  br i1 %.not147.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fv = icmp ult i64 %i.fm, 4
  br i1 %i.fv, label %ZSTD_decompressFrame.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fw = load i32, ptr %i.ae, align 4, !tbaa !41
  %.not148.i = icmp eq i32 %i.fw, 0
  br i1 %.not148.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fx = call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(address) %i.aa) #20
  %i.fy = trunc i64 %i.fx to i32
  %.2121.val.i = load i32, ptr %i.fl, align 1, !tbaa !52
  %.not149.i = icmp eq i32 %.2121.val.i, %i.fy
  br i1 %.not149.i, label %bb.aw, label %ZSTD_decompressFrame.exit

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.ga = add i64 %i.fm, -4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.as
  %.3122.i = phi ptr [ %i.fz, %bb.aw ], [ %i.fl, %bb.as ] ; 3 uses
  %.3115.i = phi i64 [ %i.ga, %bb.aw ], [ %i.fm, %bb.as ] ; 2 uses
  %i.gb = ptrtoint ptr %.3122.i to i64
  %i.gc = ptrtoint ptr %.0133.lcssa188.split to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = load i64, ptr %i.j, align 8, !tbaa !69  ; 2 uses
  %i.gf = icmp ne i64 %i.ge, 0
  %or.cond.i.i114 = and i1 %i.af, %i.gf
  br i1 %or.cond.i.i114, label %bb.ay, label %ZSTD_decompressFrame.exit

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  store i32 10506, ptr %8, align 8, !tbaa !82
  store i32 0, ptr %i.ah, align 4, !tbaa !83
  %i.gg = load ptr, ptr %i.ai, align 8, !tbaa !84 ; 2 uses
  %.not.i157.i = icmp eq ptr %i.gg, null
  br i1 %.not.i157.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gh = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %i.gg) #17
  store i32 %i.gh, ptr %i.ag, align 8, !tbaa !85
  %i.gi = load ptr, ptr %i.ai, align 8, !tbaa !84
  %i.gj = call i64 @ZSTD_DDict_dictSize(ptr noundef %i.gi) #17
  store i64 %i.gj, ptr %i.aj, align 8, !tbaa !86
  %i.gk = load i32, ptr %i.i, align 4, !tbaa !26
  store i32 %i.gk, ptr %i.ak, align 4, !tbaa !87
  %.pre.i.i = load i64, ptr %i.j, align 8, !tbaa !69
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gl = phi i64 [ %.pre.i.i, %bb.az ], [ %i.ge, %bb.ay ]
  store i64 %i.ft, ptr %i.al, align 8, !tbaa !88
  store i64 %i.gd, ptr %i.am, align 8, !tbaa !89
  store ptr %0, ptr %i.an, align 8, !tbaa !90
  call void @ZSTD_trace_decompress_end(i64 noundef %i.gl, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %ZSTD_decompressFrame.exit

ZSTD_decompressFrame.exit:                        ; preds = %bb.ax, %bb.ba, %bb.z, %ZSTD_frameHeaderSize_internal.exit.i, %bb.aa, %bb.ab, %.thread172.i, %bb.ar, %bb.at, %bb.av
  %.4137 = phi ptr [ %.0133.lcssa188.split, %bb.z ], [ %.0133.lcssa188.split, %bb.aa ], [ %.0133.lcssa188.split, %.thread172.i ], [ %.0133.lcssa188.split, %ZSTD_frameHeaderSize_internal.exit.i ], [ %.0133.lcssa188.split, %bb.at ], [ %.0133.lcssa188.split, %bb.av ], [ %.0133.lcssa188.split, %bb.ar ], [ %.0133.lcssa188.split, %bb.ab ], [ %.3122.i, %bb.ba ], [ %.3122.i, %bb.ax ]
  %.4132 = phi i64 [ %.0.lcssa184.split, %bb.z ], [ %.0.lcssa184.split, %bb.aa ], [ %.0.lcssa184.split, %.thread172.i ], [ %.0.lcssa184.split, %ZSTD_frameHeaderSize_internal.exit.i ], [ %.0.lcssa184.split, %bb.at ], [ %.0.lcssa184.split, %bb.av ], [ %.0.lcssa184.split, %bb.ar ], [ %.0.lcssa184.split, %bb.ab ], [ %.3115.i, %bb.ba ], [ %.3115.i, %bb.ax ] ; 3 uses
  %.6.i = phi i64 [ -72, %bb.z ], [ -72, %bb.aa ], [ %.4127.ph.i, %.thread172.i ], [ %i.dv, %ZSTD_frameHeaderSize_internal.exit.i ], [ -22, %bb.at ], [ -22, %bb.av ], [ -20, %bb.ar ], [ %i.dz, %bb.ab ], [ %i.ft, %bb.ba ], [ %i.ft, %bb.ax ] ; 5 uses
  %i.gm = call i32 @ZSTD_getErrorCode(i64 noundef %.6.i) #17
  %i.gn = icmp eq i32 %i.gm, 10
  %or.cond8 = and i1 %i.ap, %i.gn
  br i1 %or.cond8, label %.thread145, label %bb.bb

bb.bb:                                            ; preds = %ZSTD_decompressFrame.exit
  %i.go = icmp ult i64 %.6.i, -119
  br i1 %i.go, label %.outer.outer, label %.thread145

.outer.outer:                                     ; preds = %bb.bb
  %i.gp = getelementptr inbounds nuw i8, ptr %.089.ph411, i64 %.6.i ; 2 uses
  %i.gq = sub i64 %.086.ph412, %.6.i
  %i.gr = load i32, ptr %12, align 8, !tbaa !38
  %21 = icmp ne i32 %i.gr, 0                      ; 2 uses
  %i.gs = select i1 %21, i64 1, i64 5             ; 2 uses
  %.not97209408 = icmp ult i64 %.4132, %i.gs
  br i1 %.not97209408, label %.outer._crit_edge, label %.lr.ph.lr.ph, !llvm.loop !131

.outer._crit_edge:                                ; preds = %.outer.outer, %.outer, %bb.v, %11
  %.089.ph383 = phi ptr [ %i.bs, %.outer ], [ %.089.ph411, %bb.v ], [ %1, %11 ], [ %i.gp, %.outer.outer ]
  %.0.lcssa = phi i64 [ %i.bv, %.outer ], [ %i.ci, %bb.v ], [ %4, %11 ], [ %.4132, %.outer.outer ]
  %.not98 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not98, label %bb.bc, label %.thread145

bb.bc:                                            ; preds = %.outer._crit_edge
  %i.gt = ptrtoint ptr %.089.ph383 to i64
  %i.gu = ptrtoint ptr %1 to i64
  %i.gv = sub i64 %i.gt, %i.gu
  br label %.thread145

.thread145:                                       ; preds = %bb.bb, %ZSTD_decompressFrame.exit, %bb.y, %bb.s, %bb.r, %ZSTD_decompressLegacy.exit, %bb.i, %ZSTD_findFrameCompressedSizeLegacy.exit, %bb.u, %bb.t, %readSkippableFrameSize.exit, %ZSTD_decompressLegacy.exit.thread, %.outer._crit_edge, %bb.bc
  %.10 = phi i64 [ %i.gv, %bb.bc ], [ -72, %.outer._crit_edge ], [ %.3.i.ph, %ZSTD_decompressLegacy.exit.thread ], [ -14, %bb.u ], [ %.3.i, %ZSTD_decompressLegacy.exit ], [ -72, %bb.t ], [ %..i, %readSkippableFrameSize.exit ], [ -20, %bb.s ], [ -20, %bb.r ], [ %i.ay, %ZSTD_findFrameCompressedSizeLegacy.exit ], [ -64, %bb.i ], [ %i.cu, %bb.y ], [ -72, %ZSTD_decompressFrame.exit ], [ %.6.i, %bb.bb ]
  ret i64 %.10
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompressDCtx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.d
    i32 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call i64 @ZSTD_freeDDict(ptr noundef %i.d) #17 ; 0 uses
  store i32 0, ptr %i.a, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %ZSTD_getDDict.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  br label %ZSTD_getDDict.exit

bb.d:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  br label %ZSTD_getDDict.exit

ZSTD_getDDict.exit:                               ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ null, %bb.b ], [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %i.j = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %.0.i)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompress_usingDDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %5)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ZSTD_getDDict(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.d
    i32 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call i64 @ZSTD_freeDDict(ptr noundef %i.d) #17 ; 0 uses
  store i32 0, ptr %i.a, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
ZSTD_customMalloc.exit.i:
  %i.a = tail call noalias dereferenceable_or_null(95992) ptr @malloc(i64 noundef 95992) #19 ; 25 uses
  %.not7.i = icmp eq ptr %i.a, null
  br i1 %.not7.i, label %ZSTD_createDCtx_internal.exit.thread, label %bb.a

bb.a:                                             ; preds = %ZSTD_customMalloc.exit.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 30128
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30168
  store i64 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30184
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 29912
  store ptr null, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 30204
  store i32 0, ptr %i.f, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 30208
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 30280
  store i64 0, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 30236
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 30312
  store ptr null, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 30320
  store i32 0, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 30332
  store i32 0, ptr %i.l, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 95976
  store i64 0, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !32
  %i.o = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !33 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %ZSTD_decompressDCtx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #18, !srcloc !34 ; 0 uses
  %i.q = icmp ugt i32 %i.o, 6
  br i1 %i.q, label %ZSTD_cpuid.exit.i.i.i, label %ZSTD_decompressDCtx.exit

ZSTD_cpuid.exit.i.i.i:                            ; preds = %bb.b
  %i.r = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !35
  %i.s = extractvalue { i32, i32, i32 } %i.r, 1   ; 2 uses
  %i.t = and i32 %i.s, 8
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %ZSTD_decompressDCtx.exit, label %bb.c

bb.c:                                             ; preds = %ZSTD_cpuid.exit.i.i.i
  %i.u = lshr i32 %i.s, 8
  %i.v = and i32 %i.u, 1
  br label %ZSTD_decompressDCtx.exit

ZSTD_decompressDCtx.exit:                         ; preds = %bb.c, %ZSTD_cpuid.exit.i.i.i, %bb.b, %bb.a
  %i.w = phi i32 [ 0, %ZSTD_cpuid.exit.i.i.i ], [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 30180
  store i32 %i.w, ptr %i.x, align 4, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 30216
  store ptr null, ptr %i.y, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 30104
  store i32 0, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 30264
  store i64 134217729, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 30336
  store i32 0, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 30108
  store i32 0, ptr %i.ac, align 4, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 30224
  store i32 0, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 30228
  store i32 0, ptr %i.ae, align 4, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 30232
  store i32 0, ptr %i.af, align 8, !tbaa !44
  %i.ag = tail call i64 @ZSTD_freeDDict(ptr noundef null) #17 ; 0 uses
  store i32 0, ptr %i.g, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.ah = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef null, i64 noundef 0, ptr noundef null)
  %i.ai = tail call i64 @ZSTD_freeDCtx(ptr noundef nonnull %i.a) ; 0 uses
  br label %ZSTD_createDCtx_internal.exit.thread

ZSTD_createDCtx_internal.exit.thread:             ; preds = %ZSTD_customMalloc.exit.i, %ZSTD_decompressDCtx.exit
  %.0 = phi i64 [ %i.ah, %ZSTD_decompressDCtx.exit ], [ -64, %ZSTD_customMalloc.exit.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTD_nextSrcSizeToDecompress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 6) i32 @ZSTD_nextInputType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29996
  %i.b = load i32, ptr %i.a, align 4, !tbaa !91
  %switch.tableidx = add i32 %i.b, -2             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 6
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ZSTD_nextInputType, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
end_hunk_0
