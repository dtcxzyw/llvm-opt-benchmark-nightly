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
  br i1 %.not, label %.lr.ph.lr.ph.lr.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #17
  %i.c = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #17
  br label %.lr.ph.lr.ph.lr.ph

.lr.ph.lr.ph.lr.ph:                               ; preds = %bb.b, %bb.a
  %.085 = phi ptr [ %i.b, %bb.b ], [ %5, %bb.a ]  ; 3 uses
  %.084 = phi i64 [ %i.c, %bb.b ], [ %6, %bb.a ]  ; 4 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30104 ; 5 uses
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
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %.fr215406417 = freeze i32 %12
  %.not216407418 = icmp eq i32 %.fr215406417, 0   ; 2 uses
  %13 = select i1 %.not216407418, i64 5, i64 1    ; 2 uses
  %.not97209408419 = icmp ult i64 %4, %13
  br i1 %.not97209408419, label %.outer._crit_edge, label %.lr.ph.lr.ph.preheader

.lr.ph.lr.ph.preheader:                           ; preds = %.lr.ph.lr.ph.lr.ph
  %14 = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %15 = insertelement <2 x ptr> %14, ptr %i.t, i64 1
  %16 = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %17 = insertelement <2 x ptr> %16, ptr %i.o, i64 1
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.preheader, %.outer.outer
  %i.ao = phi i64 [ %i.gu, %.outer.outer ], [ %13, %.lr.ph.lr.ph.preheader ]
  %i.ap = phi i1 [ %.not216407, %.outer.outer ], [ %.not216407418, %.lr.ph.lr.ph.preheader ]
  %i.aq = phi i1 [ true, %.outer.outer ], [ false, %.lr.ph.lr.ph.preheader ]
  %.086.ph.ph269 = phi i64 [ %i.gs, %.outer.outer ], [ %2, %.lr.ph.lr.ph.preheader ]
  %.089.ph.ph268 = phi ptr [ %i.gr, %.outer.outer ], [ %1, %.lr.ph.lr.ph.preheader ]
  %.0.ph.ph267 = phi i64 [ %.4132, %.outer.outer ], [ %4, %.lr.ph.lr.ph.preheader ]
  %.0133.ph.ph266 = phi ptr [ %.4137, %.outer.outer ], [ %3, %.lr.ph.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %i.ar = phi i64 [ %i.ao, %.lr.ph.lr.ph ], [ %i.bz, %.outer ]
  %i.as = phi i1 [ %i.ap, %.lr.ph.lr.ph ], [ %.not216, %.outer ]
  %.086.ph260 = phi i64 [ %.086.ph.ph269, %.lr.ph.lr.ph ], [ %i.bv, %.outer ] ; 7 uses
  %.089.ph259 = phi ptr [ %.089.ph.ph268, %.lr.ph.lr.ph ], [ %i.bu, %.outer ] ; 9 uses
  %.0.ph258 = phi i64 [ %.0.ph.ph267, %.lr.ph.lr.ph ], [ %i.bx, %.outer ] ; 2 uses
  %.0133.ph257 = phi ptr [ %.0133.ph.ph266, %.lr.ph.lr.ph ], [ %i.bw, %.outer ] ; 2 uses
  br i1 %i.as, label %.lr.ph.split, label %.thread152

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.u
  %.0211 = phi i64 [ %i.ck, %bb.u ], [ %.0.ph258, %.lr.ph ] ; 12 uses
  %.0133210 = phi ptr [ %i.cj, %bb.u ], [ %.0133.ph257, %.lr.ph ] ; 15 uses
  %i.at = icmp ult i64 %.0211, 4
  br i1 %i.at, label %.thread152, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %.val.i = load i32, ptr %.0133210, align 1, !tbaa !52 ; 2 uses
  %i.au = add i32 %.val.i, 47205080
  %i.av = icmp ult i32 %i.au, -3
  br i1 %i.av, label %ZSTD_isLegacy.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %.val.i.i.i = load i32, ptr %.0133210, align 1, !tbaa !52, !noalias !132 ; 2 uses
  %switch.tableidx.i.i.i = add i32 %.val.i.i.i, 47205083
  %i.aw = icmp ult i32 %switch.tableidx.i.i.i, 3
  br i1 %i.aw, label %ZSTD_isLegacy.exit.i.i, label %ZSTD_isLegacy.exit.thread.i.i

ZSTD_isLegacy.exit.i.i:                           ; preds = %bb.d
  switch i32 %.val.i.i.i, label %default.unreachable.i.i [
    i32 -47205083, label %bb.e
    i32 -47205082, label %bb.f
    i32 -47205081, label %bb.g
  ]

bb.e:                                             ; preds = %ZSTD_isLegacy.exit.i.i
  call void @ZSTDv05_findFrameSizeInfoLegacy(ptr noundef nonnull %.0133210, i64 noundef %.0211, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

bb.f:                                             ; preds = %ZSTD_isLegacy.exit.i.i
  call void @ZSTDv06_findFrameSizeInfoLegacy(ptr noundef nonnull %.0133210, i64 noundef %.0211, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

bb.g:                                             ; preds = %ZSTD_isLegacy.exit.i.i
  call void @ZSTDv07_findFrameSizeInfoLegacy(ptr noundef nonnull %.0133210, i64 noundef %.0211, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

default.unreachable.i.i:                          ; preds = %ZSTD_isLegacy.exit.i.i
  unreachable

ZSTD_isLegacy.exit.thread.i.i:                    ; preds = %bb.d
  store i64 -10, ptr %i.d, align 8, !tbaa !63, !alias.scope !132
  br label %ZSTD_findFrameCompressedSizeLegacy.exit

ZSTD_findFrameCompressedSizeLegacy.exit:          ; preds = %bb.e, %bb.f, %bb.g, %ZSTD_isLegacy.exit.thread.i.i
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !63, !alias.scope !132 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, -119
  %i.az = icmp ugt i64 %i.ax, %.0211
  %or.cond.i.i = and i1 %i.ay, %i.az
  %i.ba = select i1 %or.cond.i.i, i64 -72, i64 %i.ax ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.bb = icmp ult i64 %i.ba, -119
  br i1 %i.bb, label %bb.h, label %.thread145

bb.h:                                             ; preds = %ZSTD_findFrameCompressedSizeLegacy.exit
  %i.bc = load i64, ptr %i.f, align 8, !tbaa !45
  %.not106 = icmp eq i64 %i.bc, 0
  br i1 %.not106, label %bb.i, label %.thread145

bb.i:                                             ; preds = %bb.h
  %i.bd = icmp ult i64 %i.ba, 4
  br i1 %i.bd, label %ZSTD_isLegacy.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i.i = load i32, ptr %.0133210, align 1, !tbaa !52 ; 2 uses
  %switch.tableidx.i.i = add i32 %.val.i.i, 47205083
  %i.be = icmp ult i32 %switch.tableidx.i.i, 3
  br i1 %i.be, label %ZSTD_isLegacy.exit.i, label %ZSTD_isLegacy.exit.thread.i

ZSTD_isLegacy.exit.thread.i:                      ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %ZSTD_decompressLegacy.exit.thread

ZSTD_isLegacy.exit.i:                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bf = icmp eq ptr %.089.ph259, null
  %spec.store.select.i = select i1 %i.bf, ptr %i.a, ptr %.089.ph259 ; 3 uses
  switch i32 %.val.i.i, label %default.unreachable.i [
    i32 -47205083, label %bb.k
    i32 -47205082, label %bb.m
    i32 -47205081, label %bb.o
  ]

bb.k:                                             ; preds = %ZSTD_isLegacy.exit.i
  %i.bg = call ptr @ZSTDv05_createDCtx() #17      ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %ZSTD_decompressLegacy.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = call i64 @ZSTDv05_decompress_usingDict(ptr noundef nonnull %i.bg, ptr noundef nonnull %spec.store.select.i, i64 noundef %.086.ph260, ptr noundef nonnull %.0133210, i64 noundef %i.ba, ptr noundef nonnull %spec.store.select1.i, i64 noundef %.084) #17
  %i.bj = call i64 @ZSTDv05_freeDCtx(ptr noundef nonnull %i.bg) #17 ; 0 uses
  br label %ZSTD_decompressLegacy.exit

bb.m:                                             ; preds = %ZSTD_isLegacy.exit.i
  %i.bk = call ptr @ZSTDv06_createDCtx() #17      ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %ZSTD_decompressLegacy.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = call i64 @ZSTDv06_decompress_usingDict(ptr noundef nonnull %i.bk, ptr noundef nonnull %spec.store.select.i, i64 noundef %.086.ph260, ptr noundef nonnull %.0133210, i64 noundef %i.ba, ptr noundef nonnull %spec.store.select1.i, i64 noundef %.084) #17
  %i.bn = call i64 @ZSTDv06_freeDCtx(ptr noundef nonnull %i.bk) #17 ; 0 uses
  br label %ZSTD_decompressLegacy.exit

bb.o:                                             ; preds = %ZSTD_isLegacy.exit.i
  %i.bo = call ptr @ZSTDv07_createDCtx() #17      ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %ZSTD_decompressLegacy.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = call i64 @ZSTDv07_decompress_usingDict(ptr noundef nonnull %i.bo, ptr noundef nonnull %spec.store.select.i, i64 noundef %.086.ph260, ptr noundef nonnull %.0133210, i64 noundef %i.ba, ptr noundef nonnull %spec.store.select1.i, i64 noundef %.084) #17
  %i.br = call i64 @ZSTDv07_freeDCtx(ptr noundef nonnull %i.bo) #17 ; 0 uses
  br label %ZSTD_decompressLegacy.exit

default.unreachable.i:                            ; preds = %ZSTD_isLegacy.exit.i
  unreachable

ZSTD_decompressLegacy.exit.thread:                ; preds = %bb.o, %bb.m, %bb.k, %ZSTD_isLegacy.exit.thread.i
  %.3.i.ph = phi i64 [ -10, %ZSTD_isLegacy.exit.thread.i ], [ -64, %bb.k ], [ -64, %bb.m ], [ -64, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread145

ZSTD_decompressLegacy.exit:                       ; preds = %bb.l, %bb.n, %bb.p
  %.3.i = phi i64 [ %i.bi, %bb.l ], [ %i.bm, %bb.n ], [ %i.bq, %bb.p ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bs = icmp ult i64 %.3.i, -119
  br i1 %i.bs, label %bb.q, label %.thread145

bb.q:                                             ; preds = %ZSTD_decompressLegacy.exit
  %i.bt = call i64 @ZSTD_getFrameContentSize(ptr noundef nonnull %.0133210, i64 noundef %.0211) ; 2 uses
  switch i64 %i.bt, label %bb.r [
    i64 -2, label %.thread145
    i64 -1, label %.outer
  ]

bb.r:                                             ; preds = %bb.q
  %.not109 = icmp eq i64 %i.bt, %.3.i
  br i1 %.not109, label %.outer, label %.thread145

.outer:                                           ; preds = %bb.r, %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %.089.ph259, i64 %.3.i ; 2 uses
  %i.bv = sub i64 %.086.ph260, %.3.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0133210, i64 %i.ba
  %i.bx = sub i64 %.0211, %i.ba                   ; 3 uses
  %i.by = load i32, ptr %11, align 8, !tbaa !38
  %.fr215 = freeze i32 %i.by
  %.not216 = icmp eq i32 %.fr215, 0               ; 2 uses
  %i.bz = select i1 %.not216, i64 5, i64 1        ; 2 uses
  %.not97209 = icmp ult i64 %i.bx, %i.bz
  br i1 %.not97209, label %.outer._crit_edge, label %.lr.ph

ZSTD_isLegacy.exit.thread:                        ; preds = %bb.c
  %i.ca = and i32 %.val.i, -16
  %i.cb = icmp eq i32 %i.ca, 407710288
  br i1 %i.cb, label %bb.s, label %.thread152

bb.s:                                             ; preds = %ZSTD_isLegacy.exit.thread
  %i.cc = icmp ult i64 %.0211, 8
  br i1 %i.cc, label %.thread145, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.0133210, i64 4
  %.val.i111 = load i32, ptr %i.cd, align 1, !tbaa !52 ; 2 uses
  %i.ce = icmp ugt i32 %.val.i111, -9
  br i1 %i.ce, label %.thread145, label %readSkippableFrameSize.exit

readSkippableFrameSize.exit:                      ; preds = %bb.t
  %i.cf = zext i32 %.val.i111 to i64
  %i.cg = add nuw nsw i64 %i.cf, 8                ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, %.0211
  %..i = select i1 %i.ch, i64 -72, i64 %i.cg      ; 4 uses
  %i.ci = icmp ult i64 %..i, -119
  br i1 %i.ci, label %bb.u, label %.thread145

bb.u:                                             ; preds = %readSkippableFrameSize.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.0133210, i64 %..i
  %i.ck = sub i64 %.0211, %..i                    ; 3 uses
  %.not97 = icmp ult i64 %i.ck, %i.ar
  br i1 %.not97, label %.outer._crit_edge, label %.lr.ph.split

.thread152:                                       ; preds = %.lr.ph, %.lr.ph.split, %ZSTD_isLegacy.exit.thread
  %.us-phi216 = phi ptr [ %.0133210, %.lr.ph.split ], [ %.0133210, %ZSTD_isLegacy.exit.thread ], [ %.0133.ph257, %.lr.ph ] ; 12 uses
  %.us-phi217 = phi i64 [ %.0211, %.lr.ph.split ], [ %.0211, %ZSTD_isLegacy.exit.thread ], [ %.0.ph258, %.lr.ph ] ; 11 uses
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.thread152
  %i.cl = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #17
  %i.cm = call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.cp = icmp ne ptr %i.co, %i.cn
  %i.cq = zext i1 %i.cp to i32
  store i32 %i.cq, ptr %i.i, align 4, !tbaa !26
  br i1 %.not.i.i, label %ZSTD_decompressBegin_usingDDict.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #17
  br label %ZSTD_decompressBegin_usingDDict.exit

ZSTD_decompressBegin_usingDDict.exit:             ; preds = %bb.w, %bb.v
  %i.cs = phi i64 [ %i.cr, %bb.w ], [ 0, %bb.v ]
  store i64 %i.cs, ptr %i.j, align 8, !tbaa !69
  %i.ct = load i32, ptr %11, align 8, !tbaa !38
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 5, i64 1
  store i64 %i.cv, ptr %i.k, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %i.o, align 8, !tbaa !52
  store i32 0, ptr %i.p, align 8, !tbaa !71
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.q, align 8, !tbaa !52
  store i32 1, ptr %i.r, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store <2 x ptr> %15, ptr %0, align 8, !tbaa !47
  store <2 x ptr> %17, ptr %i.v, align 8, !tbaa !47
  call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %7) #17
  br label %bb.y

bb.x:                                             ; preds = %.thread152
  %i.cw = call i64 @ZSTD_decompressBegin_usingDict(ptr noundef nonnull %0, ptr noundef %.085, i64 noundef %.084) ; 2 uses
  %i.cx = icmp ult i64 %i.cw, -119
  br i1 %i.cx, label %bb.y, label %.thread145

bb.y:                                             ; preds = %ZSTD_decompressBegin_usingDDict.exit, %bb.x
  call void @ZSTD_checkContinuity(ptr noundef nonnull %0, ptr noundef %.089.ph259, i64 noundef %.086.ph260) #17
  %i.cy = getelementptr inbounds nuw i8, ptr %.089.ph259, i64 %.086.ph260 ; 3 uses
  %i.cz = load i32, ptr %11, align 8, !tbaa !38
  %i.da = icmp eq i32 %i.cz, 0                    ; 2 uses
  %i.db = select i1 %i.da, i64 9, i64 5
  %i.dc = icmp ult i64 %.us-phi217, %i.db
  br i1 %i.dc, label %ZSTD_decompressFrame.exit, label %ZSTD_frameHeaderSize_internal.exit.i

ZSTD_frameHeaderSize_internal.exit.i:             ; preds = %bb.y
  %i.dd = select i1 %i.da, i64 5, i64 1           ; 2 uses
  %i.de = getelementptr i8, ptr %.us-phi216, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !53
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
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !54
  %i.dq = zext nneg i32 %i.dj to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_fcs_fieldSize, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !54
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
  %i.ea = icmp ult i64 %.us-phi217, %i.dz
  br i1 %i.ea, label %ZSTD_decompressFrame.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %.us-phi216, i64 noundef %i.dx) ; 2 uses
  %i.ec = icmp ult i64 %i.eb, -119
  br i1 %i.ec, label %bb.ab, label %ZSTD_decompressFrame.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %.us-phi216, i64 %i.dx ; 2 uses
  %i.ee = sub nuw i64 %.us-phi217, %i.dx          ; 2 uses
  %i.ef = load i32, ptr %i.w, align 8, !tbaa !44  ; 2 uses
  %.not138.i = icmp eq i32 %i.ef, 0
  br i1 %.not138.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = load i32, ptr %i.x, align 8, !tbaa !72
  %..i113 = call i32 @llvm.umin.i32(i32 %i.eg, i32 %i.ef)
  store i32 %..i113, ptr %i.x, align 8, !tbaa !72
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.eh = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %i.ed, i64 noundef %i.ee, ptr noundef nonnull %9) #17 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, -119
  br i1 %i.ei, label %.lr.ph.i, label %.thread172.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.ej = ptrtoint ptr %i.cy to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ap, %.lr.ph.i
  %i.ek = phi i64 [ %i.eh, %.lr.ph.i ], [ %i.fq, %bb.ap ] ; 8 uses
  %.1113193.i = phi i64 [ %i.ee, %.lr.ph.i ], [ %i.fo, %bb.ap ]
  %.0116191.i = phi ptr [ %.089.ph259, %.lr.ph.i ], [ %i.fm, %bb.ap ] ; 10 uses
  %.1120190.i = phi ptr [ %i.ed, %.lr.ph.i ], [ %i.fn, %bb.ap ]
  %i.el = getelementptr inbounds nuw i8, ptr %.1120190.i, i64 3 ; 7 uses
  %i.em = add i64 %.1113193.i, -3                 ; 2 uses
  %i.en = icmp ugt i64 %i.ek, %i.em
  br i1 %i.en, label %.thread172.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not140.i = icmp uge ptr %i.el, %.0116191.i
  %i.eo = icmp ult ptr %i.el, %i.cy
  %or.cond.i = select i1 %.not140.i, i1 %i.eo, i1 false
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = ptrtoint ptr %.0116191.i to i64         ; 4 uses
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = getelementptr inbounds i8, ptr %.0116191.i, i64 %i.er
  %.0110.i = select i1 %or.cond.i, ptr %i.es, ptr %i.cy ; 2 uses
  %i.et = load i32, ptr %9, align 4, !tbaa !73
  switch i32 %i.et, label %.thread172.i [
    i32 2, label %ZSTD_copyRawBlock.exit.i
    i32 0, label %bb.ag
    i32 1, label %bb.ak
  ]

bb.ag:                                            ; preds = %bb.af
  %i.eu = sub i64 %i.ej, %i.eq
  %i.ev = icmp ugt i64 %i.ek, %i.eu
  br i1 %i.ev, label %.thread172.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ew = icmp eq ptr %.0116191.i, null
  br i1 %i.ew, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ex = icmp eq i64 %i.ek, 0
  br i1 %i.ex, label %ZSTD_copyRawBlock.exit.thread.i, label %.thread172.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0116191.i, ptr nonnull readonly align 1 %i.el, i64 %i.ek, i1 false)
  br label %ZSTD_copyRawBlock.exit.thread.i

bb.ak:                                            ; preds = %bb.af
  %i.ey = ptrtoint ptr %.0110.i to i64
  %i.ez = sub i64 %i.ey, %i.eq
  %i.fa = load i8, ptr %i.el, align 1, !tbaa !53
  %i.fb = load i32, ptr %i.y, align 4, !tbaa !74  ; 2 uses
  %i.fc = zext i32 %i.fb to i64                   ; 3 uses
  %i.fd = icmp ult i64 %i.ez, %i.fc
  br i1 %i.fd, label %.thread172.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = icmp eq ptr %.0116191.i, null
  br i1 %i.fe, label %bb.am, label %ZSTD_copyRawBlock.exit.thread165.i

bb.am:                                            ; preds = %bb.al
  %i.ff = icmp eq i32 %i.fb, 0
  br i1 %i.ff, label %ZSTD_copyRawBlock.exit.thread.i, label %.thread172.i

ZSTD_copyRawBlock.exit.thread165.i:               ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0116191.i, i8 %i.fa, i64 %i.fc, i1 false)
  br label %ZSTD_copyRawBlock.exit.thread.i

ZSTD_copyRawBlock.exit.i:                         ; preds = %bb.af
  %i.fg = ptrtoint ptr %.0110.i to i64
  %i.fh = sub i64 %i.fg, %i.eq
  %i.fi = call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %.0116191.i, i64 noundef %i.fh, ptr noundef nonnull %i.el, i64 noundef %i.ek, i32 noundef 0) #17 ; 3 uses
  %i.fj = icmp ult i64 %i.fi, -119
  br i1 %i.fj, label %ZSTD_copyRawBlock.exit.thread.i, label %.thread172.i

ZSTD_copyRawBlock.exit.thread.i:                  ; preds = %ZSTD_copyRawBlock.exit.i, %ZSTD_copyRawBlock.exit.thread165.i, %bb.am, %bb.aj, %bb.ai
  %.0169.i = phi i64 [ %i.fc, %ZSTD_copyRawBlock.exit.thread165.i ], [ %i.fi, %ZSTD_copyRawBlock.exit.i ], [ 0, %bb.am ], [ %i.ek, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.fk = load i32, ptr %i.z, align 8, !tbaa !75
  %.not142.i = icmp eq i32 %i.fk, 0
  br i1 %.not142.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %ZSTD_copyRawBlock.exit.thread.i
  %i.fl = call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(address) %i.aa, ptr noundef captures(address) %.0116191.i, i64 noundef %.0169.i) #17 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %ZSTD_copyRawBlock.exit.thread.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.0116191.i, i64 %.0169.i ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek ; 5 uses
  %i.fo = sub nuw i64 %i.em, %i.ek                ; 5 uses
  %i.fp = load i32, ptr %i.ab, align 4, !tbaa !67
  %.not144.i = icmp eq i32 %i.fp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %.not144.i, label %bb.ap, label %bb.aq

.thread172.i:                                     ; preds = %bb.ap, %ZSTD_copyRawBlock.exit.i, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.4127.ph.i = phi i64 [ %i.eh, %bb.ad ], [ -70, %bb.ak ], [ -70, %bb.ag ], [ -20, %bb.af ], [ %i.fi, %ZSTD_copyRawBlock.exit.i ], [ %i.fq, %bb.ap ], [ -72, %bb.ae ], [ -74, %bb.am ], [ -74, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %ZSTD_decompressFrame.exit

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.fq = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %i.fn, i64 noundef %i.fo, ptr noundef nonnull %9) #17 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, -119
  br i1 %i.fr, label %bb.ae, label %.thread172.i

bb.aq:                                            ; preds = %bb.ao
  %i.fs = load i64, ptr %i.ac, align 8, !tbaa !76 ; 2 uses
  %.not145.i = icmp eq i64 %i.fs, -1
  %i.ft = ptrtoint ptr %i.fm to i64
  %i.fu = ptrtoint ptr %.089.ph259 to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 4 uses
  %.not146.i = icmp eq i64 %i.fv, %i.fs
  %or.cond152.i = select i1 %.not145.i, i1 true, i1 %.not146.i
  br i1 %or.cond152.i, label %bb.ar, label %ZSTD_decompressFrame.exit

bb.ar:                                            ; preds = %bb.aq
  %i.fw = load i32, ptr %i.ad, align 8, !tbaa !77
  %.not147.i = icmp eq i32 %i.fw, 0
  br i1 %.not147.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = icmp ult i64 %i.fo, 4
  br i1 %i.fx, label %ZSTD_decompressFrame.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = load i32, ptr %i.ae, align 4, !tbaa !41
  %.not148.i = icmp eq i32 %i.fy, 0
  br i1 %.not148.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fz = call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(address) %i.aa) #20
  %i.ga = trunc i64 %i.fz to i32
  %.2121.val.i = load i32, ptr %i.fn, align 1, !tbaa !52
  %.not149.i = icmp eq i32 %.2121.val.i, %i.ga
  br i1 %.not149.i, label %bb.av, label %ZSTD_decompressFrame.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.gc = add i64 %i.fo, -4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ar
  %.3122.i = phi ptr [ %i.gb, %bb.av ], [ %i.fn, %bb.ar ] ; 3 uses
  %.3115.i = phi i64 [ %i.gc, %bb.av ], [ %i.fo, %bb.ar ] ; 2 uses
  %i.gd = ptrtoint ptr %.3122.i to i64
  %i.ge = ptrtoint ptr %.us-phi216 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = load i64, ptr %i.j, align 8, !tbaa !69  ; 2 uses
  %i.gh = icmp ne i64 %i.gg, 0
  %or.cond.i.i114 = and i1 %i.af, %i.gh
  br i1 %or.cond.i.i114, label %bb.ax, label %ZSTD_decompressFrame.exit

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  store i32 10506, ptr %8, align 8, !tbaa !82
  store i32 0, ptr %i.ah, align 4, !tbaa !83
  %i.gi = load ptr, ptr %i.ai, align 8, !tbaa !84 ; 2 uses
  %.not.i157.i = icmp eq ptr %i.gi, null
  br i1 %.not.i157.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gj = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %i.gi) #17
  store i32 %i.gj, ptr %i.ag, align 8, !tbaa !85
  %i.gk = load ptr, ptr %i.ai, align 8, !tbaa !84
  %i.gl = call i64 @ZSTD_DDict_dictSize(ptr noundef %i.gk) #17
  store i64 %i.gl, ptr %i.aj, align 8, !tbaa !86
  %i.gm = load i32, ptr %i.i, align 4, !tbaa !26
  store i32 %i.gm, ptr %i.ak, align 4, !tbaa !87
  %.pre.i.i = load i64, ptr %i.j, align 8, !tbaa !69
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gn = phi i64 [ %.pre.i.i, %bb.ay ], [ %i.gg, %bb.ax ]
  store i64 %i.fv, ptr %i.al, align 8, !tbaa !88
  store i64 %i.gf, ptr %i.am, align 8, !tbaa !89
  store ptr %0, ptr %i.an, align 8, !tbaa !90
  call void @ZSTD_trace_decompress_end(i64 noundef %i.gn, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %ZSTD_decompressFrame.exit

ZSTD_decompressFrame.exit:                        ; preds = %bb.aw, %bb.az, %bb.y, %ZSTD_frameHeaderSize_internal.exit.i, %bb.z, %bb.aa, %.thread172.i, %bb.aq, %bb.as, %bb.au
  %.4137 = phi ptr [ %.us-phi216, %bb.y ], [ %.us-phi216, %bb.z ], [ %.us-phi216, %.thread172.i ], [ %.us-phi216, %ZSTD_frameHeaderSize_internal.exit.i ], [ %.us-phi216, %bb.as ], [ %.us-phi216, %bb.au ], [ %.us-phi216, %bb.aq ], [ %.us-phi216, %bb.aa ], [ %.3122.i, %bb.az ], [ %.3122.i, %bb.aw ]
  %.4132 = phi i64 [ %.us-phi217, %bb.y ], [ %.us-phi217, %bb.z ], [ %.us-phi217, %.thread172.i ], [ %.us-phi217, %ZSTD_frameHeaderSize_internal.exit.i ], [ %.us-phi217, %bb.as ], [ %.us-phi217, %bb.au ], [ %.us-phi217, %bb.aq ], [ %.us-phi217, %bb.aa ], [ %.3115.i, %bb.az ], [ %.3115.i, %bb.aw ] ; 3 uses
  %.6.i = phi i64 [ -72, %bb.y ], [ -72, %bb.z ], [ %.4127.ph.i, %.thread172.i ], [ %i.dx, %ZSTD_frameHeaderSize_internal.exit.i ], [ -22, %bb.as ], [ -22, %bb.au ], [ -20, %bb.aq ], [ %i.eb, %bb.aa ], [ %i.fv, %bb.az ], [ %i.fv, %bb.aw ] ; 5 uses
  %i.go = call i32 @ZSTD_getErrorCode(i64 noundef %.6.i) #17
  %i.gp = icmp eq i32 %i.go, 10
  %or.cond8 = and i1 %i.aq, %i.gp
  br i1 %or.cond8, label %.thread145, label %bb.ba

bb.ba:                                            ; preds = %ZSTD_decompressFrame.exit
  %i.gq = icmp ult i64 %.6.i, -119
  br i1 %i.gq, label %.outer.outer, label %.thread145

.outer.outer:                                     ; preds = %bb.ba
  %i.gr = getelementptr inbounds nuw i8, ptr %.089.ph259, i64 %.6.i ; 2 uses
  %i.gs = sub i64 %.086.ph260, %.6.i
  %i.gt = load i32, ptr %11, align 8, !tbaa !38
  %.fr215406 = freeze i32 %i.gt
  %.not216407 = icmp eq i32 %.fr215406, 0         ; 2 uses
  %i.gu = select i1 %.not216407, i64 5, i64 1     ; 2 uses
  %.not97209256 = icmp ult i64 %.4132, %i.gu
  br i1 %.not97209256, label %.outer._crit_edge, label %.lr.ph.lr.ph, !llvm.loop !131

.outer._crit_edge:                                ; preds = %.outer.outer, %.outer, %bb.u, %.lr.ph.lr.ph.lr.ph
  %.089.ph.lcssa206 = phi ptr [ %i.bu, %.outer ], [ %.089.ph259, %bb.u ], [ %1, %.lr.ph.lr.ph.lr.ph ], [ %i.gr, %.outer.outer ]
  %.0.lcssa = phi i64 [ %i.bx, %.outer ], [ %i.ck, %bb.u ], [ %4, %.lr.ph.lr.ph.lr.ph ], [ %.4132, %.outer.outer ]
  %.not98 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not98, label %bb.bb, label %.thread145

bb.bb:                                            ; preds = %.outer._crit_edge
  %i.gv = ptrtoint ptr %.089.ph.lcssa206 to i64
  %i.gw = ptrtoint ptr %1 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  br label %.thread145

.thread145:                                       ; preds = %bb.ba, %ZSTD_decompressFrame.exit, %bb.x, %bb.r, %bb.q, %ZSTD_decompressLegacy.exit, %bb.h, %ZSTD_findFrameCompressedSizeLegacy.exit, %bb.t, %bb.s, %readSkippableFrameSize.exit, %ZSTD_decompressLegacy.exit.thread, %.outer._crit_edge, %bb.bb
  %.10 = phi i64 [ %i.gx, %bb.bb ], [ -72, %.outer._crit_edge ], [ %.3.i.ph, %ZSTD_decompressLegacy.exit.thread ], [ -14, %bb.t ], [ %.3.i, %ZSTD_decompressLegacy.exit ], [ -72, %bb.s ], [ %..i, %readSkippableFrameSize.exit ], [ -20, %bb.r ], [ -20, %bb.q ], [ %i.ba, %ZSTD_findFrameCompressedSizeLegacy.exit ], [ -64, %bb.h ], [ %i.cw, %bb.x ], [ -72, %ZSTD_decompressFrame.exit ], [ %.6.i, %bb.ba ]
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
