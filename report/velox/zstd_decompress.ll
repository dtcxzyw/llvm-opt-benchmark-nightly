inline.NumInlined: 251
inline.NumDeleted: 58
begin_hunk_0_@ZSTD_getFrameContentSize:bb.a
  %i.h = call i64 @ZSTDv07_getFrameParams(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef %1) #16
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %.not.i, label %ZSTD_getDecompressedSize_legacy.exit, label %ZSTD_getDecompressedSize_legacy.exit.thread

ZSTD_getDecompressedSize_legacy.exit:             ; preds = %bb.e, %bb.d, %bb.f
  %.3.i = phi i64 [ %i.e, %bb.d ], [ %i.i, %bb.f ], [ %i.g, %bb.e ]
  %.3.i.fr = freeze i64 %.3.i                     ; 2 uses
  %i.j = icmp eq i64 %.3.i.fr, 0
  br i1 %i.j, label %ZSTD_getDecompressedSize_legacy.exit.thread, label %bb.g

ZSTD_getDecompressedSize_legacy.exit.thread:      ; preds = %bb.e, %bb.d, %bb.f, %ZSTD_getDecompressedSize_legacy.exit
  br label %bb.g

ZSTD_isLegacy.exit.thread:                        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.k = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %5, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %.not8 = icmp eq i64 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 1
  %i.o = load i64, ptr %5, align 8
  %spec.select = select i1 %i.n, i64 0, i64 %i.o
  %.0 = select i1 %.not8, i64 %spec.select, i64 -2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.g

bb.g:                                             ; preds = %ZSTD_getDecompressedSize_legacy.exit.thread, %ZSTD_getDecompressedSize_legacy.exit, %ZSTD_isLegacy.exit.thread
  %.1 = phi i64 [ %.0, %ZSTD_isLegacy.exit.thread ], [ -1, %ZSTD_getDecompressedSize_legacy.exit.thread ], [ %.3.i.fr, %ZSTD_getDecompressedSize_legacy.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -80, 4294967288) i64 @ZSTD_readSkippableFrame(ptr noundef writeonly captures(address_is_null) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i64 %4, 8
  br i1 %i.a, label %bb.h, label %ZSTD_isSkippableFrame.exit

ZSTD_isSkippableFrame.exit:                       ; preds = %bb.a
  %.val = load i32, ptr %3, align 1, !tbaa !3     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val.i = load i32, ptr %i.b, align 1, !tbaa !3 ; 2 uses
  %i.c = icmp ugt i32 %.val.i, -9
  %i.d = zext i32 %.val.i to i64
  %i.e = add nuw nsw i64 %i.d, 8                  ; 2 uses
  %i.f = icmp ugt i64 %i.e, %4
  %..i = select i1 %i.f, i64 -72, i64 %i.e
  %.1.i = select i1 %i.c, i64 -14, i64 %..i       ; 2 uses
  %i.g = add nsw i64 %.1.i, -8                    ; 5 uses
  %i.h = and i32 %.val, -16
  %.not.i.not = icmp eq i32 %i.h, 407710288
  br i1 %.not.i.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %ZSTD_isSkippableFrame.exit
  %i.i = icmp ugt i64 %.1.i, %4
  br i1 %i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.g, %1
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ne i64 %i.g, 0
  %i.l = icmp ne ptr %0, null
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.m, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %.val, -407710288
  store i32 %i.n, ptr %2, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %ZSTD_isSkippableFrame.exit, %bb.b, %bb.c, %bb.g, %bb.f, %bb.a
  %.1 = phi i64 [ -72, %bb.a ], [ -14, %ZSTD_isSkippableFrame.exit ], [ -72, %bb.b ], [ -70, %bb.c ], [ %i.g, %bb.g ], [ %i.g, %bb.f ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_findDecompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZSTD_frameSizeInfo, align 8 ; 4 uses
  %.not69 = icmp ult i64 %1, 5
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.03272 = phi ptr [ %0, %.lr.ph ], [ %.335, %bb.h ] ; 5 uses
  %.04071 = phi i64 [ %1, %.lr.ph ], [ %.343, %bb.h ] ; 5 uses
  %.04470 = phi i64 [ 0, %.lr.ph ], [ %.246, %bb.h ] ; 3 uses
  %.032.val = load i32, ptr %.03272, align 1, !tbaa !3
  %i.b = and i32 %.032.val, -16
  %i.c = icmp eq i32 %i.b, 407710288
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult i64 %.04071, 8
  br i1 %i.d, label %.thread59, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.03272, i64 4
  %.val.i = load i32, ptr %i.e, align 1, !tbaa !3 ; 2 uses
  %i.f = icmp ugt i32 %.val.i, -9
  %i.g = zext i32 %.val.i to i64
  %i.h = add nuw nsw i64 %i.g, 8                  ; 2 uses
  %.not79 = icmp ugt i64 %i.h, %.04071
  %or.cond = select i1 %i.f, i1 true, i1 %.not79
  br i1 %or.cond, label %.thread59, label %bb.h, !llvm.loop !63

bb.e:                                             ; preds = %bb.b
  %i.i = call i64 @ZSTD_getFrameContentSize(ptr noundef nonnull %.03272, i64 noundef %.04071) ; 3 uses
  %i.j = icmp ugt i64 %i.i, -3
  br i1 %i.j, label %.thread59, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add i64 %i.i, %.04470                    ; 2 uses
  %.not65 = icmp ult i64 %i.k, %.04470
  br i1 %.not65, label %.thread59, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull %.03272, i64 noundef %.04071, i32 noundef 0)
  %i.l = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.m = icmp ult i64 %i.l, -119
  br i1 %i.m, label %bb.h, label %.thread59

bb.h:                                             ; preds = %bb.d, %bb.g
  %.246 = phi i64 [ %.04470, %bb.d ], [ %i.k, %bb.g ] ; 2 uses
  %..i.pn = phi i64 [ %i.h, %bb.d ], [ %i.l, %bb.g ] ; 2 uses
  %.335 = getelementptr inbounds nuw i8, ptr %.03272, i64 %..i.pn
  %.343 = sub i64 %.04071, %..i.pn                ; 3 uses
  %.not = icmp ult i64 %.343, 5
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %.246, %bb.h ]
  %.040.lcssa = phi i64 [ %1, %bb.a ], [ %.343, %bb.h ]
  %.not50 = icmp eq i64 %.040.lcssa, 0
  %.044.53 = select i1 %.not50, i64 %.044.lcssa, i64 -2
  br label %.thread59

.thread59:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.f, %._crit_edge
  %.5 = phi i64 [ %.044.53, %._crit_edge ], [ -2, %bb.c ], [ %i.i, %bb.e ], [ -2, %bb.g ], [ -2, %bb.f ], [ -2, %bb.d ]
  ret i64 %.5
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_findFrameCompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZSTD_frameSizeInfo, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_getDecompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @ZSTD_getFrameContentSize(ptr noundef %0, i64 noundef %1) ; 2 uses
  %i.b = icmp ugt i64 %i.a, -3
  %i.c = select i1 %i.b, i64 0, i64 %i.a
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompressBound(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZSTD_frameSizeInfo, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.019 = phi i64 [ %1, %bb.a ], [ %i.f, %bb.c ]  ; 3 uses
  %.017 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.c ]   ; 2 uses
  %.015 = phi ptr [ %0, %bb.a ], [ %i.e, %bb.c ]  ; 2 uses
  %.not = icmp eq i64 %.019, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.015, i64 noundef %.019, i32 noundef 0)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %3 = icmp ult i64 %i.c, -119
  %4 = icmp ne i64 %i.d, -2
  %or.cond.not = select i1 %3, i1 %4, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 %i.c
  %i.f = sub i64 %.019, %i.c
  %i.g = add i64 %i.d, %.017
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br i1 %or.cond.not, label %bb.b, label %bb.d, !llvm.loop !68

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi i64 [ -2, %bb.c ], [ %.017, %bb.b ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZSTD_frameHeader, align 8   ; 7 uses
  %5 = alloca %struct.blockProperties_t, align 4  ; 7 uses
  %i.a = icmp eq i32 %3, 0
  %i.b = icmp ugt i64 %2, 3
  %or.cond82.not = and i1 %i.b, %i.a
  br i1 %or.cond82.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %1, align 1, !tbaa !3   ; 3 uses
  %i.c = add i32 %.val.i, 47205080
  %i.d = icmp ult i32 %i.c, -3
  br i1 %i.d, label %ZSTD_isLegacy.exit.thread, label %ZSTD_isLegacy.exit.i

ZSTD_isLegacy.exit.i:                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  switch i32 %.val.i, label %default.unreachable.i [
    i32 -47205083, label %bb.c
    i32 -47205082, label %bb.d
    i32 -47205081, label %bb.e
  ]

bb.c:                                             ; preds = %ZSTD_isLegacy.exit.i
  tail call void @ZSTDv05_findFrameSizeInfoLegacy(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #16
  br label %bb.f

bb.d:                                             ; preds = %ZSTD_isLegacy.exit.i
  tail call void @ZSTDv06_findFrameSizeInfoLegacy(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #16
  br label %bb.f

bb.e:                                             ; preds = %ZSTD_isLegacy.exit.i
  tail call void @ZSTDv07_findFrameSizeInfoLegacy(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #16
  br label %bb.f

default.unreachable.i:                            ; preds = %ZSTD_isLegacy.exit.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65, !alias.scope !69 ; 2 uses
  %i.i = icmp ult i64 %i.h, -119
  %i.j = icmp ugt i64 %i.h, %2
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  store i64 -72, ptr %i.g, align 8, !tbaa !65, !alias.scope !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.k, align 8, !tbaa !67, !alias.scope !69
  br label %ZSTD_findFrameSizeInfoLegacy.exit

bb.g:                                             ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67, !alias.scope !69 ; 2 uses
  %.not9.i = icmp eq i64 %.pre.i, -2
  br i1 %.not9.i, label %ZSTD_findFrameSizeInfoLegacy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = lshr i64 %.pre.i, 17
  store i64 %i.l, ptr %0, align 8, !tbaa !72, !alias.scope !69
  br label %ZSTD_findFrameSizeInfoLegacy.exit

ZSTD_isLegacy.exit.thread:                        ; preds = %bb.b
  %i.m = icmp ugt i64 %2, 7
  %i.n = and i32 %.val.i, -16
  %i.o = icmp eq i32 %i.n, 407710288
  %or.cond = and i1 %i.m, %i.o
  br i1 %or.cond, label %readSkippableFrameSize.exit, label %.thread

readSkippableFrameSize.exit:                      ; preds = %ZSTD_isLegacy.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i62 = load i32, ptr %i.p, align 1, !tbaa !3 ; 2 uses
  %i.q = icmp ugt i32 %.val.i62, -9
  %i.r = zext i32 %.val.i62 to i64
  %i.s = add nuw nsw i64 %i.r, 8                  ; 2 uses
  %i.t = icmp ugt i64 %i.s, %2
  %..i = select i1 %i.t, i64 -72, i64 %i.s
  %.1.i = select i1 %i.q, i64 -14, i64 %..i
  store i64 0, ptr %0, align 8, !tbaa !53
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !53
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !73
  br label %ZSTD_findFrameSizeInfoLegacy.exit

.thread:                                          ; preds = %bb.a, %ZSTD_isLegacy.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.u = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2, i32 noundef %3) ; 3 uses
  %i.v = icmp ult i64 %i.u, -119
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !65, !alias.scope !74
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.x, align 8, !tbaa !67, !alias.scope !74
  br label %.critedge

bb.j:                                             ; preds = %.thread
  %.not57 = icmp eq i64 %i.u, 0
  br i1 %.not57, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %i.y, align 8, !tbaa !65, !alias.scope !77
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.z, align 8, !tbaa !67, !alias.scope !77
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac ; 2 uses
  %i.ae = sub i64 %2, %i.ac                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.af = call i64 @ZSTD_getcBlockSize(ptr noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %5) #16 ; 3 uses
  %i.ag = icmp ult i64 %i.af, -119
  br i1 %i.ag, label %.lr.ph, label %.thread67

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
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !80
  %.not59 = icmp eq i32 %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.not59, label %bb.o, label %bb.p

.thread67:                                        ; preds = %bb.m, %bb.o, %bb.l
  %.lcssa.sink = phi i64 [ %i.af, %bb.l ], [ %i.ar, %bb.o ], [ -72, %bb.m ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa.sink, ptr %i.ap, align 8, !tbaa !65
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.aq, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
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
end_hunk_0
