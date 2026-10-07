Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4frame?download=true
inline.NumInlined: 138
inline.NumDeleted: 18
begin_hunk_0_@LZ4F_createCDict_advanced:bb.a
bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %.0647084, i64 %.028627282, i1 false)
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.z = tail call ptr @LZ4_initStream(ptr noundef %i.y, i64 noundef 16416) #12 ; 0 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.ac = trunc nuw nsw i64 %.028627282 to i32    ; 2 uses
  %i.ad = tail call i32 @LZ4_loadDictSlow(ptr noundef %i.aa, ptr noundef %i.ab, i32 noundef %i.ac) #12 ; 0 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.af = tail call ptr @LZ4_initStreamHC(ptr noundef %i.ae, i64 noundef 262200) #12 ; 0 uses
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !51
  tail call void @LZ4_setCompressionLevel(ptr noundef %i.ag, i32 noundef 9) #12
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.aj = tail call i32 @LZ4_loadDictHC(ptr noundef %i.ah, ptr noundef %i.ai, i32 noundef %i.ac) #12 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %LZ4F_malloc.exit.thread, %LZ4F_malloc.exit, %bb.a, %bb.g, %bb.f
  %.029 = phi ptr [ %.0.i56607480, %bb.g ], [ null, %bb.f ], [ null, %bb.a ], [ null, %LZ4F_malloc.exit ], [ null, %LZ4F_malloc.exit.thread ]
  ret ptr %.029
}

; Function Attrs: nounwind uwtable
define void @LZ4F_freeCDict(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %LZ4F_free.exit21, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val14 = load ptr, ptr %i.d, align 8           ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %.val15 = load ptr, ptr %i.e, align 8           ; 2 uses
  %i.f = icmp eq ptr %i.c, null
  br i1 %i.f, label %LZ4F_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %.val14, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %.val14(ptr noundef %.val15, ptr noundef nonnull %i.c) #12, !inline_history !0
  br label %LZ4F_free.exitthread-pre-split

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #12
  br label %LZ4F_free.exitthread-pre-split

LZ4F_free.exitthread-pre-split:                   ; preds = %bb.e, %bb.d
  %.val12.pr = load ptr, ptr %i.d, align 8
  %.val13.pre = load ptr, ptr %i.e, align 8
  br label %LZ4F_free.exit

LZ4F_free.exit:                                   ; preds = %LZ4F_free.exitthread-pre-split, %bb.b
  %.val13 = phi ptr [ %.val13.pre, %LZ4F_free.exitthread-pre-split ], [ %.val15, %bb.b ]
  %.val12 = phi ptr [ %.val12.pr, %LZ4F_free.exitthread-pre-split ], [ %.val14, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %LZ4F_free.exit17, label %bb.f

bb.f:                                             ; preds = %LZ4F_free.exit
  %.not.i16 = icmp eq ptr %.val12, null
  br i1 %.not.i16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %.val12(ptr noundef %.val13, ptr noundef nonnull %i.h) #12, !inline_history !0
  br label %LZ4F_free.exit17

bb.h:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.h) #12
  br label %LZ4F_free.exit17

LZ4F_free.exit17:                                 ; preds = %LZ4F_free.exit, %bb.g, %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51   ; 3 uses
  %.val10 = load ptr, ptr %i.d, align 8           ; 3 uses
  %.val11 = load ptr, ptr %i.e, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.l, label %bb.i

bb.i:                                             ; preds = %LZ4F_free.exit17
  %.not.i18 = icmp eq ptr %.val10, null
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %.val10(ptr noundef %.val11, ptr noundef nonnull %i.k) #12, !inline_history !0
  br label %thread-pre-split

bb.k:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.k) #12
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.j, %bb.k
  %.val.pr = load ptr, ptr %i.d, align 8
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %LZ4F_free.exit17
  %.val = phi ptr [ %.val.pr, %thread-pre-split ], [ %.val10, %LZ4F_free.exit17 ] ; 2 uses
  %.not.i20 = icmp eq ptr %.val, null
  br i1 %.not.i20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val9 = load ptr, ptr %i.e, align 8
  tail call void %.val(ptr noundef %.val9, ptr noundef nonnull %0) #12, !inline_history !0
  br label %LZ4F_free.exit21

bb.n:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %0) #12
  br label %LZ4F_free.exit21

LZ4F_free.exit21:                                 ; preds = %bb.n, %bb.m, %bb.a
  ret void
}

declare i32 @LZ4_loadDictSlow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @LZ4_initStreamHC(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @LZ4_setCompressionLevel(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @LZ4_loadDictHC(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @LZ4F_createCDict(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @LZ4F_createCDict_advanced(ptr noundef nonnull byval(%struct.LZ4F_CustomMem) align 8 @LZ4F_defaultCMem, ptr noundef %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @LZ4F_createCompressionContext_advanced(ptr nofree noundef readonly byval(%struct.LZ4F_CustomMem) align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.57.0.copyload = load ptr, ptr %.sroa.57.0..sroa_idx, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr %.sroa.4.0.copyload(ptr noundef %.sroa.57.0.copyload, i64 noundef 216) #12, !inline_history !2
  br label %LZ4F_calloc.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noalias dereferenceable_or_null(216) ptr @calloc(i64 noundef 1, i64 noundef 216) #14
  br label %LZ4F_calloc.exit

bb.e:                                             ; preds = %bb.c
  %i.d = tail call ptr %.sroa.0.0.copyload(ptr noundef %.sroa.57.0.copyload, i64 noundef 216) #12, !inline_history !2 ; 3 uses
  %.not10.i = icmp eq ptr %i.d, null
  br i1 %.not10.i, label %LZ4F_calloc.exit.thread, label %LZ4F_calloc.exit.thread10

LZ4F_calloc.exit.thread10:                        ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %i.d, i8 0, i64 216, i1 false)
  br label %bb.f

LZ4F_calloc.exit:                                 ; preds = %bb.b, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.d ] ; 2 uses
  %i.e = icmp eq ptr %.0.i, null
  br i1 %i.e, label %LZ4F_calloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %LZ4F_calloc.exit.thread10, %LZ4F_calloc.exit
  %.0.i12 = phi ptr [ %i.d, %LZ4F_calloc.exit.thread10 ], [ %.0.i, %LZ4F_calloc.exit ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i12, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !45
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i12, i64 88
  store i32 %1, ptr %i.f, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i12, i64 92
  store i32 0, ptr %i.g, align 4, !tbaa !34
  br label %LZ4F_calloc.exit.thread

LZ4F_calloc.exit.thread:                          ; preds = %bb.e, %LZ4F_calloc.exit, %bb.f
  %.0 = phi ptr [ %.0.i12, %bb.f ], [ null, %LZ4F_calloc.exit ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i64 -21, 1) i64 @LZ4F_createCompressionContext(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %LZ4F_calloc.exit.i

LZ4F_calloc.exit.i:                               ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(216) ptr @calloc(i64 noundef 1, i64 noundef 216) #14 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.sink.split, label %LZ4F_createCompressionContext_advanced.exit

LZ4F_createCompressionContext_advanced.exit:      ; preds = %LZ4F_calloc.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 %1, ptr %i.d, align 8, !tbaa !37
  br label %.sink.split

.sink.split:                                      ; preds = %LZ4F_calloc.exit.i, %LZ4F_createCompressionContext_advanced.exit
  %.sink = phi ptr [ %i.b, %LZ4F_createCompressionContext_advanced.exit ], [ null, %LZ4F_calloc.exit.i ]
  %.0.ph = phi i64 [ 0, %LZ4F_createCompressionContext_advanced.exit ], [ -9, %LZ4F_calloc.exit.i ]
  store ptr %.sink, ptr %0, align 8, !tbaa !85
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ -21, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define noundef i64 @LZ4F_freeCompressionContext(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %LZ4F_free.exit15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val10 = load ptr, ptr %i.c, align 8           ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val11 = load ptr, ptr %i.d, align 8           ; 2 uses
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %LZ4F_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %.val10, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %.val10(ptr noundef %.val11, ptr noundef nonnull %i.b) #12, !inline_history !0
  br label %LZ4F_free.exitthread-pre-split

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #12
  br label %LZ4F_free.exitthread-pre-split

LZ4F_free.exitthread-pre-split:                   ; preds = %bb.e, %bb.d
  %.val8.pr = load ptr, ptr %i.c, align 8
  %.val9.pre = load ptr, ptr %i.d, align 8
  br label %LZ4F_free.exit

LZ4F_free.exit:                                   ; preds = %LZ4F_free.exitthread-pre-split, %bb.b
  %.val9 = phi ptr [ %.val9.pre, %LZ4F_free.exitthread-pre-split ], [ %.val11, %bb.b ]
  %.val8 = phi ptr [ %.val8.pr, %LZ4F_free.exitthread-pre-split ], [ %.val10, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.i, label %bb.f

bb.f:                                             ; preds = %LZ4F_free.exit
  %.not.i12 = icmp eq ptr %.val8, null
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %.val8(ptr noundef %.val9, ptr noundef nonnull %i.g) #12, !inline_history !0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.g) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %LZ4F_free.exit
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i14 = icmp eq ptr %.val, null
  br i1 %.not.i14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val7 = load ptr, ptr %i.d, align 8
  tail call void %.val(ptr noundef %.val7, ptr noundef nonnull %0) #12, !inline_history !0
  br label %LZ4F_free.exit15

bb.k:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %0) #12
  br label %LZ4F_free.exit15

LZ4F_free.exit15:                                 ; preds = %bb.k, %bb.j, %bb.a
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @LZ4F_cctx_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = add i64 %i.c, 216
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load i16, ptr %i.e, align 8, !tbaa !41
  switch i16 %i.f, label %ctxTypeID_to_size.exit [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @LZ4_sizeofState() #12
  br label %ctxTypeID_to_size.exit

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @LZ4_sizeofStateHC() #12
  br label %ctxTypeID_to_size.exit

ctxTypeID_to_size.exit:                           ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.h, %bb.d ], [ %i.g, %bb.c ], [ 0, %bb.b ]
  %i.i = sext i32 %.0.i to i64
  %i.j = add i64 %i.d, %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %ctxTypeID_to_size.exit
  %.0 = phi i64 [ %i.j, %ctxTypeID_to_size.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @LZ4F_compressBegin(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i64 @LZ4F_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef %3)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @LZ4F_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #4 {
bb.a:
  %7 = alloca %struct.LZ4F_preferences_t, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store i32 4, ptr %7, align 8
  %i.a = icmp ult i64 %2, 19
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %6, null                     ; 4 uses
  %spec.store.select = select i1 %i.b, ptr %7, ptr %6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %spec.store.select, i64 56, i1 false), !tbaa.struct !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !53
  %i.f = icmp slt i32 %i.e, 2                     ; 2 uses
  %i.g = select i1 %i.f, i16 1, i16 2             ; 4 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @LZ4_sizeofState() #12
  br label %ctxTypeID_to_size.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @LZ4_sizeofStateHC() #12
  br label %ctxTypeID_to_size.exit

ctxTypeID_to_size.exit:                           ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !41
  switch i16 %i.k, label %ctxTypeID_to_size.exit136 [
    i16 1, label %bb.e
    i16 2, label %bb.f
  ]

bb.e:                                             ; preds = %ctxTypeID_to_size.exit
  %i.l = tail call i32 @LZ4_sizeofState() #12
  br label %ctxTypeID_to_size.exit136

bb.f:                                             ; preds = %ctxTypeID_to_size.exit
  %i.m = tail call i32 @LZ4_sizeofStateHC() #12
  br label %ctxTypeID_to_size.exit136

ctxTypeID_to_size.exit136:                        ; preds = %ctxTypeID_to_size.exit, %bb.e, %bb.f
  %.0.i135 = phi i32 [ %i.m, %bb.f ], [ %i.l, %bb.e ], [ 0, %ctxTypeID_to_size.exit ]
  %i.n = icmp slt i32 %.0.i135, %.0.i
  br i1 %i.n, label %bb.g, label %bb.u

bb.g:                                             ; preds = %ctxTypeID_to_size.exit136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val127 = load ptr, ptr %i.q, align 8          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val128 = load ptr, ptr %i.r, align 8
  %i.s = icmp eq ptr %i.p, null
  br i1 %i.s, label %LZ4F_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr %.val127, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void %.val127(ptr noundef %.val128, ptr noundef nonnull %i.p) #12, !inline_history !0
  br label %LZ4F_free.exit

bb.j:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.p) #12
  br label %LZ4F_free.exit

LZ4F_free.exit:                                   ; preds = %bb.g, %bb.i, %bb.j
  %i.t = load i32, ptr %i.d, align 8, !tbaa !53
  %i.u = icmp slt i32 %i.t, 2
  %.val133 = load ptr, ptr %0, align 8, !tbaa !43 ; 3 uses
  %.not.i137 = icmp eq ptr %.val133, null         ; 2 uses
  br i1 %i.u, label %bb.k, label %bb.o
end_hunk_0
begin_hunk_1_@LZ4F_flush:bb.a
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.b, 8
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.l = load i32, ptr %i.k, align 4, !tbaa !62
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %LZ4F_selectCompression.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.h, align 4, !tbaa !55
  %i.o = icmp slt i32 %i.j, 2
  %i.p = icmp eq i32 %i.n, 1                      ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %LZ4F_compressBlock.LZ4F_compressBlock_continue.i = select i1 %i.p, ptr @LZ4F_compressBlock, ptr @LZ4F_compressBlock_continue
  br label %LZ4F_selectCompression.exit

bb.g:                                             ; preds = %bb.e
  %LZ4F_compressBlockHC.LZ4F_compressBlockHC_continue.i = select i1 %i.p, ptr @LZ4F_compressBlockHC, ptr @LZ4F_compressBlockHC_continue
  br label %LZ4F_selectCompression.exit

LZ4F_selectCompression.exit:                      ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %LZ4F_compressBlockHC.LZ4F_compressBlockHC_continue.i, %bb.g ], [ %LZ4F_compressBlock.LZ4F_compressBlock_continue.i, %bb.f ], [ @LZ4F_doNotCompressBlock, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.x = load i32, ptr %i.w, align 4, !tbaa !59   ; 2 uses
  %.not31 = icmp eq i64 %i.b, 1
  %i.y = trunc i64 %i.b to i32                    ; 3 uses
  %i.z = add nsw i32 %i.y, -1
  %i.aa = select i1 %.not31, i32 1, i32 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ac = tail call i32 %.0.i(ptr noundef %i.t, ptr noundef %i.r, ptr noundef nonnull %i.ab, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.j, ptr noundef %i.v) #12, !inline_history !3 ; 3 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i32 %i.ac to i64                   ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %i.ae
  %or.cond.i = and i1 %i.ad, %.not.i
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %LZ4F_selectCompression.exit
  %i.af = or i32 %i.y, -2147483648
  store i32 %i.af, ptr %1, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.r, i64 %i.b, i1 false)
  %.pre32 = and i64 %i.b, 4294967295
  br label %bb.j

bb.i:                                             ; preds = %LZ4F_selectCompression.exit
  store i32 %i.ac, ptr %1, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre.i.pre-phi = phi i64 [ %i.ae, %bb.i ], [ %.pre32, %bb.h ] ; 3 uses
  %.not30.i = icmp eq i32 %i.x, 0
  br i1 %.not30.i, label %LZ4F_makeBlock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call i32 @LZ4_XXH32(ptr noundef nonnull %i.ab, i64 noundef %.pre.i.pre-phi, i32 noundef 0) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.pre.i.pre-phi
  store i32 %i.ag, ptr %i.ah, align 1
  br label %LZ4F_makeBlock.exit

LZ4F_makeBlock.exit:                              ; preds = %bb.j, %bb.k
  %i.ai = zext i32 %i.x to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.ak, %.pre.i.pre-phi  ; 2 uses
  %i.am = load i32, ptr %i.h, align 4, !tbaa !55
  %i.an = icmp eq i32 %i.am, 0
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !56  ; 2 uses
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %LZ4F_makeBlock.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ao ; 2 uses
  store ptr %i.ap, ptr %i.q, align 8, !tbaa !56
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %LZ4F_makeBlock.exit
  %i.aq = phi ptr [ %i.ap, %bb.l ], [ %.pre, %LZ4F_makeBlock.exit ]
  store i64 0, ptr %i.a, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  %i.az = icmp ugt ptr %i.at, %i.ay
  br i1 %i.az, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr %i.i, align 8, !tbaa !53
  %i.bb = icmp slt i32 %i.ba, 2
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call i32 @LZ4_saveDict(ptr noundef %i.bc, ptr noundef %i.av, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit

bb.p:                                             ; preds = %bb.n
  %i.be = tail call i32 @LZ4_saveDictHC(ptr noundef %i.bc, ptr noundef %i.av, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit

LZ4F_localSaveDict.exit:                          ; preds = %bb.o, %bb.p
  %i.bf = phi i32 [ %i.bd, %bb.o ], [ %i.be, %bb.p ]
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 %i.bh
  store ptr %i.bi, ptr %i.q, align 8, !tbaa !56
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.b, %bb.m, %LZ4F_localSaveDict.exit, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.al, %bb.m ], [ -20, %bb.b ], [ %i.al, %LZ4F_localSaveDict.exit ], [ -11, %bb.c ]
  ret i64 %.0
}

declare i32 @LZ4_XXH32_digest(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef ptr @LZ4F_createDecompressionContext_advanced(ptr nofree noundef readonly byval(%struct.LZ4F_CustomMem) align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.56.0.copyload = load ptr, ptr %.sroa.56.0..sroa_idx, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr %.sroa.4.0.copyload(ptr noundef %.sroa.56.0.copyload, i64 noundef 288) #12, !inline_history !2
  br label %LZ4F_calloc.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noalias dereferenceable_or_null(288) ptr @calloc(i64 noundef 1, i64 noundef 288) #14
  br label %LZ4F_calloc.exit

bb.e:                                             ; preds = %bb.c
  %i.d = tail call ptr %.sroa.0.0.copyload(ptr noundef %.sroa.56.0.copyload, i64 noundef 288) #12, !inline_history !2 ; 3 uses
  %.not10.i = icmp eq ptr %i.d, null
  br i1 %.not10.i, label %LZ4F_calloc.exit.thread, label %LZ4F_calloc.exit.thread9

LZ4F_calloc.exit.thread9:                         ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %i.d, i8 0, i64 288, i1 false)
  br label %bb.f

LZ4F_calloc.exit:                                 ; preds = %bb.b, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.d ] ; 2 uses
  %i.e = icmp eq ptr %.0.i, null
  br i1 %i.e, label %LZ4F_calloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %LZ4F_calloc.exit.thread9, %LZ4F_calloc.exit
  %.0.i11 = phi ptr [ %i.d, %LZ4F_calloc.exit.thread9 ], [ %.0.i, %LZ4F_calloc.exit ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i11, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !45
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i11, i64 64
  store i32 %1, ptr %i.f, align 8, !tbaa !64
  br label %LZ4F_calloc.exit.thread

LZ4F_calloc.exit.thread:                          ; preds = %bb.e, %LZ4F_calloc.exit, %bb.f
  %.0 = phi ptr [ %.0.i11, %bb.f ], [ null, %LZ4F_calloc.exit ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i64 -21, 1) i64 @LZ4F_createDecompressionContext(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %LZ4F_calloc.exit.i

LZ4F_calloc.exit.i:                               ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(288) ptr @calloc(i64 noundef 1, i64 noundef 288) #14 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.sink.split, label %LZ4F_createDecompressionContext_advanced.exit

LZ4F_createDecompressionContext_advanced.exit:    ; preds = %LZ4F_calloc.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %1, ptr %i.d, align 8, !tbaa !64
  br label %.sink.split

.sink.split:                                      ; preds = %LZ4F_calloc.exit.i, %LZ4F_createDecompressionContext_advanced.exit
  %.sink = phi ptr [ %i.b, %LZ4F_createDecompressionContext_advanced.exit ], [ null, %LZ4F_calloc.exit.i ]
  %.0.ph = phi i64 [ 0, %LZ4F_createDecompressionContext_advanced.exit ], [ -9, %LZ4F_calloc.exit.i ]
  store ptr %.sink, ptr %0, align 8, !tbaa !92
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ -21, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 0, 4294967296) i64 @LZ4F_freeDecompressionContext(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %LZ4F_free.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val12 = load ptr, ptr %i.e, align 8           ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val13 = load ptr, ptr %i.f, align 8           ; 2 uses
  %i.g = icmp eq ptr %i.d, null
  br i1 %i.g, label %LZ4F_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %.val12, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %.val12(ptr noundef %.val13, ptr noundef nonnull %i.d) #12, !inline_history !0
  br label %LZ4F_free.exitthread-pre-split

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #12
  br label %LZ4F_free.exitthread-pre-split

LZ4F_free.exitthread-pre-split:                   ; preds = %bb.e, %bb.d
  %.val10.pr = load ptr, ptr %i.e, align 8
  %.val11.pre = load ptr, ptr %i.f, align 8
  br label %LZ4F_free.exit

LZ4F_free.exit:                                   ; preds = %LZ4F_free.exitthread-pre-split, %bb.b
  %.val11 = phi ptr [ %.val11.pre, %LZ4F_free.exitthread-pre-split ], [ %.val13, %bb.b ]
  %.val10 = phi ptr [ %.val10.pr, %LZ4F_free.exitthread-pre-split ], [ %.val12, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %LZ4F_free.exit
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %.val10(ptr noundef %.val11, ptr noundef nonnull %i.i) #12, !inline_history !0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.i) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %LZ4F_free.exit
  %.val = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i16 = icmp eq ptr %.val, null
  br i1 %.not.i16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val9 = load ptr, ptr %i.f, align 8
  tail call void %.val(ptr noundef %.val9, ptr noundef nonnull %0) #12, !inline_history !0
  br label %LZ4F_free.exit17

bb.k:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %0) #12
  br label %LZ4F_free.exit17

LZ4F_free.exit17:                                 ; preds = %bb.k, %bb.j, %bb.a
  %.0.shrunk = phi i32 [ 0, %bb.a ], [ %i.b, %bb.j ], [ %i.b, %bb.k ]
  %.0 = zext i32 %.0.shrunk to i64
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @LZ4F_dctx_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68
  %i.f = add i64 %i.e, 292
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = phi i64 [ %i.f, %bb.c ], [ 288, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.m = add i64 %i.l, %i.g
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i64 [ %i.m, %bb.f ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @LZ4F_resetDecompressionContext(ptr nofree noundef writeonly captures(none) initializes((68, 80), (128, 144), (264, 268)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.a, align 4, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.c, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.d, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -15, 20) i64 @LZ4F_headerSize(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 5
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 1                ; 2 uses
  %i.d = and i32 %i.c, -16
  %i.e = icmp eq i32 %i.d, 407710288
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.c, 407708164
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 8
  %i.j = or disjoint i32 %i.i, 7
  %i.k = shl nuw nsw i32 %i.h, 2
  %i.l = and i32 %i.k, 4
  %narrow = add nuw nsw i32 %i.j, %i.l
  %i.m = zext nneg i32 %narrow to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.c, %bb.e
  %.0 = phi i64 [ 8, %bb.c ], [ -15, %bb.a ], [ %i.m, %bb.e ], [ -12, %bb.b ], [ -13, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @LZ4F_getFrameInfo(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %3, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65   ; 2 uses
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 0, ptr %i.b, align 8, !tbaa !15
  store i64 0, ptr %3, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !tbaa.struct !93
  %i.i = call i64 @LZ4F_decompress(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
end_hunk_1
