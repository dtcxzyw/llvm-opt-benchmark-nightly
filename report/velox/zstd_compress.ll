inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0_@ZSTD_compressEnd
define i64 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compress_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr nofree noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %7) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %7, align 8, !tbaa !68     ; 4 uses
  %i.b = add i32 %i.a, -32
  %narrow.i.i = icmp ult i32 %i.b, -22
  br i1 %narrow.i.i, label %ZSTD_checkCParams.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !69
  %i.e = add i32 %i.d, -31
  %narrow.i11.i = icmp ult i32 %i.e, -25
  br i1 %narrow.i11.i, label %ZSTD_checkCParams.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !70
  %i.h = add i32 %i.g, -31
  %narrow.i17.i = icmp ult i32 %i.h, -25
  br i1 %narrow.i17.i, label %ZSTD_checkCParams.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71
  %i.k = add i32 %i.j, -31
  %narrow.i23.i = icmp ult i32 %i.k, -30
  br i1 %narrow.i23.i, label %ZSTD_checkCParams.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !72
  %i.n = add i32 %i.m, -8
  %narrow.i29.i = icmp ult i32 %i.n, -5
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %narrow.i35.i = icmp ugt i32 %i.p, 131072
  %or.cond.i = select i1 %narrow.i29.i, i1 true, i1 %narrow.i35.i
  br i1 %or.cond.i, label %ZSTD_checkCParams.exit.thread, label %ZSTD_checkCParams.exit

ZSTD_checkCParams.exit:                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !73   ; 3 uses
  %i.s = add i32 %i.r, -1
  %narrow.i41.i = icmp ult i32 %i.s, 9
  br i1 %narrow.i41.i, label %bb.f, label %ZSTD_checkCParams.exit.thread

bb.f:                                             ; preds = %ZSTD_checkCParams.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.t, i8 0, i64 216, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !74
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.w, i64 12, i1 false), !tbaa.struct !75
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.y = add nsw i32 %i.r, -6
  %i.z = icmp ult i32 %i.y, -3
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.x, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.r, 6
  br i1 %i.ab, label %bb.i, label %.thread17

.thread17:                                        ; preds = %bb.g
  store i32 2, ptr %i.aa, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp samesign ugt i32 %i.a, 14
  %spec.select.i.i = select i1 %i.ac, i32 1, i32 2
  store i32 %spec.select.i.i, ptr %i.x, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 588
  store i32 2, ptr %i.ad, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp samesign ugt i32 %i.a, 16
  %i.af = select i1 %i.ae, i32 1, i32 2
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !77
  %i.ag = icmp samesign ugt i32 %i.a, 26
  %i.ah = select i1 %i.ag, i32 1, i32 2
  br label %ZSTD_CCtxParams_init_internal.exit

ZSTD_CCtxParams_init_internal.exit:               ; preds = %bb.h, %.thread17, %bb.i
  %.0.i25.i = phi i32 [ %i.ah, %bb.i ], [ 2, %bb.h ], [ 2, %.thread17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %.0.i25.i, ptr %i.ai, align 8, !tbaa !78
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i64 131072, ptr %i.aj, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 2, ptr %i.ak, align 8, !tbaa !80
  %i.al = tail call i64 @ZSTD_compress_advanced_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.t)
  br label %ZSTD_checkCParams.exit.thread

ZSTD_checkCParams.exit.thread:                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a, %ZSTD_checkCParams.exit, %ZSTD_CCtxParams_init_internal.exit
  %.1 = phi i64 [ %i.al, %ZSTD_CCtxParams_init_internal.exit ], [ -42, %ZSTD_checkCParams.exit ], [ -42, %bb.a ], [ -42, %bb.e ], [ -42, %bb.d ], [ -42, %bb.c ], [ -42, %bb.b ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compress_advanced_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #2 {
bb.a:
  %.not66.i = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %.not66.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store i64 %i.b, ptr %i.c, align 8, !tbaa !263
  %i.d = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef readonly %7, i64 noundef %4, i64 noundef %6, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.e = icmp ult i64 %i.d, -119
  br i1 %i.e, label %.thread87.i, label %ZSTD_compressBegin_internal.exit.thread

.thread87.i:                                      ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.n = icmp eq ptr %5, null
  %i.o = icmp ult i64 %6, 8
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.thread87.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 2056
  store i32 0, ptr %i.q, align 8, !tbaa !166
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 5604
  store i32 0, ptr %i.r, align 4, !tbaa !167
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 5608
  store i32 0, ptr %i.s, align 8, !tbaa !168
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 5612
  store i32 0, ptr %i.t, align 4, !tbaa !169
  %.val.i = load i32, ptr %5, align 1, !tbaa !3
  %.not.i = icmp eq i32 %.val.i, -332356553
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef %5, i64 noundef %6, i32 noundef 0, i32 noundef 0)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.v = load i32, ptr %i.u, align 8, !tbaa !92
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.val.i.i = load i32, ptr %i.w, align 1, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = phi i32 [ %.val.i.i, %bb.g ], [ 0, %bb.f ]
  %i.y = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %i.g, ptr noundef %i.m, ptr noundef nonnull %5, i64 noundef range(i64 8, 0) %6) ; 4 uses
  %i.z = icmp ult i64 %i.y, -119
  br i1 %i.z, label %bb.i, label %ZSTD_compressBegin_internal.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %i.y
  %gepdiff.i.i = sub nsw i64 %6, %i.y
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %i.h, ptr noundef null, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef %i.aa, i64 noundef %gepdiff.i.i, i32 noundef 0, i32 noundef range(i32 0, 2) 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %.thread87.i
  %.0.i.ph = phi i32 [ 0, %.thread87.i ], [ %i.x, %bb.i ], [ 0, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 %.0.i.ph, ptr %i.ab, align 8, !tbaa !183
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 %6, ptr %i.ac, align 8, !tbaa !184
  %i.ad = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %ZSTD_compressBegin_internal.exit.thread

ZSTD_compressBegin_internal.exit.thread:          ; preds = %bb.h, %bb.c, %bb.j
  %.1 = phi i64 [ %i.ad, %bb.j ], [ %i.y, %bb.h ], [ %i.d, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compress_usingDict(ptr noundef initializes((448, 664)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.ZSTD_compressionParameters, align 4 ; 6 uses
  %.not = icmp eq ptr %5, null
  %i.a = select i1 %.not, i64 0, i64 %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !311
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %8, i32 noundef %7, i64 noundef %4, i64 noundef %i.a, i32 noundef 0), !noalias !311
  %.sroa.0.0.copyload = load i32, ptr %8, align 4, !tbaa !3 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.7.sroa.0.0.copyload = load <5 x i32>, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.718.0.copyload = load i32, ptr %.sroa.718.0..sroa_idx, align 4, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !311
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.c = icmp eq i32 %7, 0
  %i.d = select i1 %i.c, i32 3, i32 %7            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.b, i8 0, i64 216, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 456
  store <5 x i32> %.sroa.7.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx17, align 4
  %.sroa.718.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %.sroa.718.0.copyload, ptr %.sroa.718.0..sroa_idx19, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 1, ptr %i.f, align 8, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 %i.d, ptr %i.g, align 4, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.i = add i32 %.sroa.718.0.copyload, -6
  %i.j = icmp ult i32 %i.i, -3
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.h, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.l = icmp ugt i32 %.sroa.718.0.copyload, 6
  br i1 %i.l, label %bb.d, label %.thread26

.thread26:                                        ; preds = %bb.b
  store i32 2, ptr %i.k, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i32 %.sroa.0.0.copyload, 14
  %spec.select.i.i = select i1 %i.m, i32 1, i32 2
  store i32 %spec.select.i.i, ptr %i.h, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 588
  store i32 2, ptr %i.n, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ugt i32 %.sroa.0.0.copyload, 16
  %i.p = select i1 %i.o, i32 1, i32 2
  store i32 %i.p, ptr %i.k, align 4, !tbaa !77
  %i.q = icmp ugt i32 %.sroa.0.0.copyload, 26
  %i.r = select i1 %i.q, i32 1, i32 2
  br label %ZSTD_CCtxParams_init_internal.exit

ZSTD_CCtxParams_init_internal.exit:               ; preds = %bb.c, %.thread26, %bb.d
  %.0.i25.i = phi i32 [ %i.r, %bb.d ], [ 2, %bb.c ], [ 2, %.thread26 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %.0.i25.i, ptr %i.s, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i64 131072, ptr %i.t, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.v = icmp slt i32 %i.d, 10
  %..i27.i = select i1 %i.v, i32 2, i32 1
  store i32 %..i27.i, ptr %i.u, align 8, !tbaa !80
  %i.w = tail call i64 @ZSTD_compress_advanced_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.b)
  ret i64 %i.w
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressCCtx(ptr noundef initializes((448, 664)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.ZSTD_compressionParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !314
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %6, i32 noundef %5, i64 noundef %4, i64 noundef 0, i32 noundef 0), !noalias !314
  %.sroa.0.0.copyload.i = load i32, ptr %6, align 4, !tbaa !3 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.7.i.sroa.0.0.copyload = load <5 x i32>, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.718.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.718.0.copyload.i = load i32, ptr %.sroa.718.0..sroa_idx.i, align 4, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !314
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.b = icmp eq i32 %5, 0
  %i.c = select i1 %i.b, i32 3, i32 %5            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.a, i8 0, i64 216, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 %.sroa.0.0.copyload.i, ptr %i.d, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  store <5 x i32> %.sroa.7.i.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx17.i, align 4
  %.sroa.718.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %.sroa.718.0.copyload.i, ptr %.sroa.718.0..sroa_idx19.i, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 1, ptr %i.e, align 8, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 %i.c, ptr %i.f, align 4, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.h = add i32 %.sroa.718.0.copyload.i, -6
  %i.i = icmp ult i32 %i.h, -3
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.g, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.k = icmp ugt i32 %.sroa.718.0.copyload.i, 6
  br i1 %i.k, label %bb.d, label %.thread26.i

.thread26.i:                                      ; preds = %bb.b
  store i32 2, ptr %i.j, align 4, !tbaa !77
  br label %ZSTD_compress_usingDict.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ugt i32 %.sroa.0.0.copyload.i, 14
  %spec.select.i.i.i = select i1 %i.l, i32 1, i32 2
  store i32 %spec.select.i.i.i, ptr %i.g, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 588
  store i32 2, ptr %i.m, align 4, !tbaa !77
  br label %ZSTD_compress_usingDict.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp ugt i32 %.sroa.0.0.copyload.i, 16
  %i.o = select i1 %i.n, i32 1, i32 2
  store i32 %i.o, ptr %i.j, align 4, !tbaa !77
  %i.p = icmp ugt i32 %.sroa.0.0.copyload.i, 26
  %i.q = select i1 %i.p, i32 1, i32 2
  br label %ZSTD_compress_usingDict.exit

ZSTD_compress_usingDict.exit:                     ; preds = %.thread26.i, %bb.c, %bb.d
  %.0.i25.i.i = phi i32 [ %i.q, %bb.d ], [ 2, %bb.c ], [ 2, %.thread26.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %.0.i25.i.i, ptr %i.r, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i64 131072, ptr %i.s, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.u = icmp slt i32 %i.c, 10
  %..i27.i.i = select i1 %i.u, i32 2, i32 1
  store i32 %..i27.i.i, ptr %i.t, align 8, !tbaa !80
  %.not66.i.i = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %.not66.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_compress_usingDict.exit
  %i.v = tail call i64 @ZSTD_trace_compress_begin(ptr noundef nonnull %0) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_compress_usingDict.exit
  %i.w = phi i64 [ %i.v, %bb.e ], [ 0, %ZSTD_compress_usingDict.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store i64 %i.w, ptr %i.x, align 8, !tbaa !263
  %i.y = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.a, i64 noundef %4, i64 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.z = icmp ult i64 %i.y, -119
  br i1 %i.z, label %.thread87.i.i, label %ZSTD_compress_advanced_internal.exit

.thread87.i.i:                                    ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 0, ptr %i.aa, align 8, !tbaa !183
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 0, ptr %i.ab, align 8, !tbaa !184
  %i.ac = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %ZSTD_compress_advanced_internal.exit

ZSTD_compress_advanced_internal.exit:             ; preds = %bb.f, %.thread87.i.i
  %.1.i = phi i64 [ %i.ac, %.thread87.i.i ], [ %i.y, %bb.f ]
  ret i64 %.1.i
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.ZSTD_CCtx_s, align 8        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #27, !srcloc !7 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5248) %5, i8 0, i64 5248, i1 false)
  br i1 %.not.i.i.i, label %ZSTD_clearAllDicts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #27, !srcloc !8 ; 0 uses
  %i.c = icmp ugt i32 %i.a, 6
  br i1 %i.c, label %ZSTD_cpuid.exit.i.i, label %ZSTD_clearAllDicts.exit

ZSTD_cpuid.exit.i.i:                              ; preds = %bb.b
  %i.d = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #27, !srcloc !9
  %i.e = extractvalue { i32, i32, i32 } %i.d, 1   ; 2 uses
  %i.f = and i32 %i.e, 8
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %ZSTD_clearAllDicts.exit, label %bb.c

bb.c:                                             ; preds = %ZSTD_cpuid.exit.i.i
  %i.g = lshr i32 %i.e, 8
  %i.h = and i32 %i.g, 1
  br label %ZSTD_clearAllDicts.exit

ZSTD_clearAllDicts.exit:                          ; preds = %bb.a, %bb.b, %ZSTD_cpuid.exit.i.i, %bb.c
  %i.i = phi i32 [ 0, %ZSTD_cpuid.exit.i.i ], [ %i.h, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 3656 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 880 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 888 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 3688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, i8 0, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.o, i8 0, i64 216, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i32 3, ptr %i.p, align 4, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 1, ptr %i.q, align 8, !tbaa !44
  %i.r = call i64 @ZSTD_compressCCtx(ptr noundef nonnull %5, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4)
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !115  ; 3 uses
  %.val.i10 = load ptr, ptr %i.l, align 8         ; 2 uses
  %.val6.i11 = load ptr, ptr %i.m, align 8
  %.not.i.i12 = icmp eq ptr %i.s, null
  br i1 %.not.i.i12, label %ZSTD_customFree.exit.i14, label %bb.d

bb.d:                                             ; preds = %ZSTD_clearAllDicts.exit
  %.not4.i.i13 = icmp eq ptr %.val.i10, null
  br i1 %.not4.i.i13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void %.val.i10(ptr noundef %.val6.i11, ptr noundef nonnull %i.s) #28, !inline_history !317
  br label %ZSTD_customFree.exit.i14

bb.f:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.s) #28
  br label %ZSTD_customFree.exit.i14

ZSTD_customFree.exit.i14:                         ; preds = %bb.f, %bb.e, %ZSTD_clearAllDicts.exit
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !119  ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %ZSTD_clearAllDicts.exit28, label %bb.g

bb.g:                                             ; preds = %ZSTD_customFree.exit.i14
  %.sroa.3.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %i.t, i64 6048
  %.sroa.3.0.copyload.i.i16 = load ptr, ptr %.sroa.3.0..sroa_idx.i.i15, align 8, !tbaa !48 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i17 = getelementptr inbounds nuw i8, ptr %i.t, i64 6056
  %.sroa.5.0.copyload.i.i18 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i17, align 8, !tbaa !48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57   ; 4 uses
  %.not.i.i.i19 = icmp ugt ptr %i.w, %i.t
  br i1 %.not.i.i.i19, label %ZSTD_cwksp_owns_buffer.exit.i.i20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.z = icmp uge ptr %i.t, %i.y
  br label %ZSTD_cwksp_owns_buffer.exit.i.i20

ZSTD_cwksp_owns_buffer.exit.i.i20:                ; preds = %bb.h, %bb.g
  %.not.i7.i21 = phi i1 [ true, %bb.g ], [ %i.z, %bb.h ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 72, i1 false)
  %.not.i.i.i.i22 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i22, label %ZSTD_cwksp_free.exit.i.i24, label %bb.i

bb.i:                                             ; preds = %ZSTD_cwksp_owns_buffer.exit.i.i20
  %.not4.i.i.i.i23 = icmp eq ptr %.sroa.3.0.copyload.i.i16, null
  br i1 %.not4.i.i.i.i23, label %ZSTD_cwksp_free.exit.thread.i.i27, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %.sroa.3.0.copyload.i.i16(ptr noundef %.sroa.5.0.copyload.i.i18, ptr noundef nonnull %i.w) #28, !inline_history !318
  br label %ZSTD_cwksp_free.exit.i.i24

ZSTD_cwksp_free.exit.i.i24:                       ; preds = %bb.j, %ZSTD_cwksp_owns_buffer.exit.i.i20
  br i1 %.not.i7.i21, label %bb.k, label %ZSTD_clearAllDicts.exit28

ZSTD_cwksp_free.exit.thread.i.i27:                ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.w) #28
  br i1 %.not.i7.i21, label %.thread.i.i26, label %ZSTD_clearAllDicts.exit28

bb.k:                                             ; preds = %ZSTD_cwksp_free.exit.i.i24
  %.not4.i.i.i25 = icmp eq ptr %.sroa.3.0.copyload.i.i16, null
  br i1 %.not4.i.i.i25, label %.thread.i.i26, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void %.sroa.3.0.copyload.i.i16(ptr noundef %.sroa.5.0.copyload.i.i18, ptr noundef nonnull %i.t) #28, !inline_history !319
  br label %ZSTD_clearAllDicts.exit28

.thread.i.i26:                                    ; preds = %bb.k, %ZSTD_cwksp_free.exit.thread.i.i27
  call void @free(ptr noundef nonnull %i.t) #28
  br label %ZSTD_clearAllDicts.exit28

ZSTD_clearAllDicts.exit28:                        ; preds = %ZSTD_customFree.exit.i14, %ZSTD_cwksp_free.exit.i.i24, %ZSTD_cwksp_free.exit.thread.i.i27, %bb.l, %.thread.i.i26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, i8 0, i64 72, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 680 ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8           ; 2 uses
  %.val3.i = load ptr, ptr %i.m, align 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i8 0, i64 72, i1 false)
  %.not.i.i.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i5, label %ZSTD_freeCCtxContent.exit, label %bb.m

bb.m:                                             ; preds = %ZSTD_clearAllDicts.exit28
  %.not4.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not4.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void %.val.i(ptr noundef %.val3.i, ptr noundef nonnull %i.ab) #28, !inline_history !59
  br label %ZSTD_freeCCtxContent.exit

bb.o:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.ab) #28
  br label %ZSTD_freeCCtxContent.exit

ZSTD_freeCCtxContent.exit:                        ; preds = %ZSTD_clearAllDicts.exit28, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i64 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTD_estimateCDictSize_advanced(i64 noundef %0, ptr nofree noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
ZSTD_resolveRowMatchFinderMode.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73
  %i.c = add i32 %i.b, -6
  %i.d = icmp ult i32 %i.c, -3
  %i.e = load i32, ptr %1, align 8
  %i.f = icmp ult i32 %i.e, 15
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl i64 4, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !70
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = shl nuw i64 1, %i.n
  %i.p = add nuw i64 %i.o, 63
  %i.q = and i64 %i.p, -64
  %i.r = select i1 %i.g, i64 0, i64 %i.q
  %i.s = shl i64 4, %i.n
  %i.t = icmp eq i32 %2, 1
  %i.u = add i64 %0, 7
  %i.v = and i64 %i.u, -8
  %i.w = add i64 %i.v, 14912
  %i.x = select i1 %i.t, i64 14912, i64 %i.w
  %i.y = add i64 %i.x, %i.k
  %i.z = add i64 %i.y, %i.s
  %i.aa = add i64 %i.z, %i.r
end_hunk_0
begin_hunk_1_@ZSTD_freeCDict:bb.a
  ret i64 0
}

; Function Attrs: nounwind uwtable
define ptr @ZSTD_createCDict(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8 ; 7 uses
  %4 = alloca %struct.ZSTD_compressionParameters, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %4, i32 noundef %2, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, i8 0, i64 216, i1 false)
  store i32 1, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !74
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 0
  %i.f = select i1 %i.e, i32 3, i32 %2
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 6068
  store i32 %i.f, ptr %i.g, align 4, !tbaa !264
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @ZSTD_createCDict_byReference(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8 ; 7 uses
  %4 = alloca %struct.ZSTD_compressionParameters, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %4, i32 noundef %2, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %3, i8 0, i64 216, i1 false)
  store i32 1, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !74
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 0
  %i.f = select i1 %i.e, i32 3, i32 %2
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 6068
  store i32 %i.f, ptr %i.g, align 4, !tbaa !264
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @ZSTD_initStaticCDict(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %6) local_unnamed_addr #2 {
ZSTD_resolveRowMatchFinderMode.exit:
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73
  %i.c = add i32 %i.b, -6
  %i.d = icmp ult i32 %i.c, -3
  %i.e = load i32, ptr %6, align 8
  %i.f = icmp ult i32 %i.e, 15
  %i.g = select i1 %i.d, i1 true, i1 %i.f         ; 2 uses
  %.0.i = select i1 %i.g, i32 2, i32 1            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl i64 4, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !70
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = shl nuw i64 1, %i.n
  %i.p = add nuw i64 %i.o, 63
  %i.q = and i64 %i.p, -64
  %i.r = select i1 %i.g, i64 0, i64 %i.q
  %i.s = shl i64 4, %i.n
  %i.t = icmp eq i32 %4, 1
  %i.u = add i64 %3, 7
  %i.v = and i64 %i.u, -8
  %i.w = add i64 %i.v, 14912
  %i.x = select i1 %i.t, i64 14912, i64 %i.w
  %i.y = add i64 %i.x, %i.k
  %i.z = add i64 %i.y, %i.s
  %i.aa = add i64 %i.z, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ab = ptrtoint ptr %0 to i64
  %i.ac = and i64 %i.ab, 7
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.a, label %.critedge

bb.a:                                             ; preds = %ZSTD_resolveRowMatchFinderMode.exit
  %i.ad = icmp samesign ult i64 %1, 6080
  %.not24 = icmp eq ptr %0, null
  %or.cond = or i1 %.not24, %i.ad
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = and i64 %i.ag, -64
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.aj, align 8, !tbaa !48
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ae, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !48
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.af, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.af, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !48
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.af, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !48
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ai, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !48
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ai, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !48
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !195
  %.sroa.1930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %.sroa.1930.0..sroa_idx, align 4, !tbaa !3
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !3
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !3
  %i.ak = icmp ult i64 %1, %i.aa
  br i1 %i.ak, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %7, i8 0, i64 216, i1 false)
  store i32 1, ptr %i.al, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.am, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false), !tbaa.struct !74
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 %.0.i, ptr %i.an, align 8, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 6072
  store i32 %.0.i, ptr %i.ao, align 8, !tbaa !266
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 6068
  store i32 0, ptr %i.ap, align 4, !tbaa !264
  %i.aq = tail call fastcc i64 @ZSTD_initCDict_internal(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 8 %7)
  %i.ar = icmp ult i64 %i.aq, -119
  %. = select i1 %i.ar, ptr %0, ptr null
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b, %ZSTD_resolveRowMatchFinderMode.exit
  %.1 = phi ptr [ null, %ZSTD_resolveRowMatchFinderMode.exit ], [ null, %bb.b ], [ %., %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ZSTD_getCParamsFromCDict(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.a, i64 28, i1 false), !tbaa.struct !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ZSTD_getDictID_fromCDict(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6064
  %i.c = load i32, ptr %i.b, align 8, !tbaa !275
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.ZSTD_CCtx_params_s, align 8 ; 16 uses
  %6 = alloca %struct.ZSTD_compressionParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %4, 131072
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !262  ; 2 uses
  %i.e = mul i64 %i.d, 6
  %i.f = icmp ult i64 %4, %i.e
  %i.g = icmp eq i64 %4, -1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %i.i = load i32, ptr %i.h, align 4, !tbaa !264  ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.042.0.copyload = load i32, ptr %i.k, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 364
  %.sroa.8.sroa.0.0.copyload52 = load <5 x i32>, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !264
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %6, i32 noundef %i.i, i64 noundef %4, i64 noundef %i.d, i32 noundef 3), !alias.scope !328
  %.sroa.0.0.copyload = load i32, ptr %6, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.8.sroa.0.0.copyload = load <5 x i32>, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.835.0.copyload = load i32, ptr %.sroa.835.0..sroa_idx, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.8.sroa.0.0 = phi <5 x i32> [ %.sroa.8.sroa.0.0.copyload52, %bb.e ], [ %.sroa.8.sroa.0.0.copyload, %bb.f ]
  %i.l = phi i32 [ %.pre, %bb.e ], [ %i.i, %bb.f ] ; 2 uses
  %.sroa.835.0 = phi i32 [ %.sroa.5.0.copyload, %bb.e ], [ %.sroa.835.0.copyload, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %.sroa.042.0.copyload, %bb.e ], [ %.sroa.0.0.copyload, %bb.f ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %5, i8 0, i64 216, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 %.sroa.0.0, ptr %i.m, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <5 x i32> %.sroa.8.sroa.0.0, ptr %.sroa.8.0..sroa_idx34, align 8
  %.sroa.835.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %.sroa.835.0, ptr %.sroa.835.0..sroa_idx38, align 4, !tbaa !3
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %2, ptr %i.n, align 8
  %.sroa.13.28..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %3, ptr %.sroa.13.28..sroa_idx, align 8, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %i.l, ptr %i.o, align 4, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.q = add i32 %.sroa.835.0, -6
  %i.r = icmp ult i32 %i.q, -3
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 2, ptr %i.p, align 8, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 2 uses
  %i.t = icmp ugt i32 %.sroa.835.0, 6
  br i1 %i.t, label %bb.j, label %.thread46

.thread46:                                        ; preds = %bb.h
  store i32 2, ptr %i.s, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit

bb.i:                                             ; preds = %bb.g
  %i.u = icmp ugt i32 %.sroa.0.0, 14
  %spec.select.i.i = select i1 %i.u, i32 1, i32 2
  store i32 %spec.select.i.i, ptr %i.p, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 2, ptr %i.v, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit

bb.j:                                             ; preds = %bb.h
  %i.w = icmp ugt i32 %.sroa.0.0, 16
  %i.x = select i1 %i.w, i32 1, i32 2
  store i32 %i.x, ptr %i.s, align 4, !tbaa !77
  %i.y = icmp ugt i32 %.sroa.0.0, 26
  %i.z = select i1 %i.y, i32 1, i32 2
  br label %ZSTD_CCtxParams_init_internal.exit

ZSTD_CCtxParams_init_internal.exit:               ; preds = %bb.i, %.thread46, %bb.j
  %.0.i25.i = phi i32 [ %i.z, %bb.j ], [ 2, %bb.i ], [ 2, %.thread46 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i32 %.0.i25.i, ptr %i.aa, align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 200
  store i64 131072, ptr %i.ab, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.ad = icmp slt i32 %i.l, 10
  %..i27.i = select i1 %i.ad, i32 2, i32 1
  store i32 %..i27.i, ptr %i.ac, align 8, !tbaa !80
  %.not = icmp eq i64 %4, -1
  br i1 %.not, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %ZSTD_CCtxParams_init_internal.exit
  %i.ae = icmp ugt i64 %4, 1
  br i1 %i.ae, label %bb.l, label %.split25

bb.l:                                             ; preds = %bb.k
  %i.af = tail call i64 @llvm.umin.i64(i64 %4, i64 524288)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %i.aj = sub nuw nsw i32 32, %i.ai
  br label %.split25

.split25:                                         ; preds = %bb.k, %bb.l
  %i.ak = phi i32 [ %i.aj, %bb.l ], [ 1, %bb.k ]
  %i.al = tail call i32 @llvm.umax.i32(i32 %.sroa.0.0, i32 %i.ak)
  store i32 %i.al, ptr %i.m, align 4, !tbaa !84
  br label %.sink.split

.sink.split:                                      ; preds = %ZSTD_CCtxParams_init_internal.exit, %.split25
  %.sink = phi i64 [ %4, %.split25 ], [ -1, %ZSTD_CCtxParams_init_internal.exit ]
  %i.am = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %5, i64 noundef %.sink, i32 noundef 0)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ -32, %bb.a ], [ %i.am, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.ZSTD_CCtx_params_s, align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ZSTD_compressBegin_usingCDict_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.042.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !3 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 364
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !3 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !264 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %2, i8 0, i64 216, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.042.0.copyload.i, ptr %i.c, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.0..sroa_idx34.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i, i64 20, i1 false)
  %.sroa.835.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.835.0..sroa_idx38.i, align 4, !tbaa !3
  %.sroa.13.28..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %.sroa.13.28..sroa_idx.i, align 8, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %.pre.i, ptr %i.d, align 4, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.f = add i32 %.sroa.5.0.copyload.i, -6
  %i.g = icmp ult i32 %i.f, -3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.e, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 2 uses
  %i.i = icmp ugt i32 %.sroa.5.0.copyload.i, 6
  br i1 %i.i, label %bb.e, label %.thread46.i

.thread46.i:                                      ; preds = %bb.c
  store i32 2, ptr %i.h, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i32 %.sroa.042.0.copyload.i, 14
  %spec.select.i.i.i = select i1 %i.j, i32 1, i32 2
  store i32 %spec.select.i.i.i, ptr %i.e, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 2, ptr %i.k, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %.sroa.042.0.copyload.i, 16
  %i.m = select i1 %i.l, i32 1, i32 2
  store i32 %i.m, ptr %i.h, align 4, !tbaa !77
  %i.n = icmp ugt i32 %.sroa.042.0.copyload.i, 26
  %i.o = select i1 %i.n, i32 1, i32 2
  br label %ZSTD_CCtxParams_init_internal.exit.i

ZSTD_CCtxParams_init_internal.exit.i:             ; preds = %bb.e, %bb.d, %.thread46.i
  %.0.i25.i.i = phi i32 [ %i.o, %bb.e ], [ 2, %bb.d ], [ 2, %.thread46.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 %.0.i25.i.i, ptr %i.p, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 131072, ptr %i.q, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.s = icmp slt i32 %.pre.i, 10
  %..i27.i.i = select i1 %i.s, i32 2, i32 1
  store i32 %..i27.i.i, ptr %i.r, align 8, !tbaa !80
  %i.t = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef -1, i32 noundef 0)
  br label %ZSTD_compressBegin_usingCDict_internal.exit

ZSTD_compressBegin_usingCDict_internal.exit:      ; preds = %bb.a, %ZSTD_CCtxParams_init_internal.exit.i
  %.0.i = phi i64 [ -32, %bb.a ], [ %i.t, %ZSTD_CCtxParams_init_internal.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.ZSTD_CCtx_params_s, align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ZSTD_compressBegin_usingCDict_deprecated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.042.0.copyload.i.i = load i32, ptr %i.b, align 8, !tbaa !3 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 364
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !3 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !264 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %2, i8 0, i64 216, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.042.0.copyload.i.i, ptr %i.c, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx34.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.0..sroa_idx34.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i, i64 20, i1 false)
  %.sroa.835.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sroa.5.0.copyload.i.i, ptr %.sroa.835.0..sroa_idx38.i.i, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %.pre.i.i, ptr %i.d, align 4, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.f = add i32 %.sroa.5.0.copyload.i.i, -6
  %i.g = icmp ult i32 %i.f, -3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.e, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 2 uses
  %i.i = icmp ugt i32 %.sroa.5.0.copyload.i.i, 6
  br i1 %i.i, label %bb.e, label %.thread46.i.i

.thread46.i.i:                                    ; preds = %bb.c
  store i32 2, ptr %i.h, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i32 %.sroa.042.0.copyload.i.i, 14
  %spec.select.i.i.i.i = select i1 %i.j, i32 1, i32 2
  store i32 %spec.select.i.i.i.i, ptr %i.e, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 2, ptr %i.k, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %.sroa.042.0.copyload.i.i, 16
  %i.m = select i1 %i.l, i32 1, i32 2
  store i32 %i.m, ptr %i.h, align 4, !tbaa !77
  %i.n = icmp ugt i32 %.sroa.042.0.copyload.i.i, 26
  %i.o = select i1 %i.n, i32 1, i32 2
  br label %ZSTD_CCtxParams_init_internal.exit.i.i

ZSTD_CCtxParams_init_internal.exit.i.i:           ; preds = %bb.e, %bb.d, %.thread46.i.i
  %.0.i25.i.i.i = phi i32 [ %i.o, %bb.e ], [ 2, %bb.d ], [ 2, %.thread46.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 %.0.i25.i.i.i, ptr %i.p, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 131072, ptr %i.q, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.s = icmp slt i32 %.pre.i.i, 10
  %..i27.i.i.i = select i1 %i.s, i32 2, i32 1
  store i32 %..i27.i.i.i, ptr %i.r, align 8, !tbaa !80
  %i.t = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef -1, i32 noundef 0)
  br label %ZSTD_compressBegin_usingCDict_deprecated.exit

ZSTD_compressBegin_usingCDict_deprecated.exit:    ; preds = %bb.a, %ZSTD_CCtxParams_init_internal.exit.i.i
  %.0.i.i = phi i64 [ -32, %bb.a ], [ %i.t, %ZSTD_CCtxParams_init_internal.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i64 %.0.i.i
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compress_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef readonly byval(%struct.ZSTD_frameParameters) align 8 captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val5 = load i32, ptr %i.a, align 8
  %i.b = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %5, i64 %.val, i32 %.val5, i64 noundef %4) ; 2 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.b, label %ZSTD_compress_usingCDict_internal.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %ZSTD_compress_usingCDict_internal.exit

ZSTD_compress_usingCDict_internal.exit:           ; preds = %bb.a, %bb.b
  %.1.i = phi i64 [ %i.d, %bb.b ], [ %i.b, %bb.a ]
end_hunk_1
