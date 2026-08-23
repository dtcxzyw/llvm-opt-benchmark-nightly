Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatICC?download=true
inline.NumInlined: 1375
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN9SampleICC11Swap16ArrayEPvi:bb.a
  store i8 %i.q, ptr %i.p, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %.07, i64 6 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.07, i64 7 ; 2 uses
  %i.u = load i8, ptr %i.s, align 1, !tbaa !8
  %i.v = load i8, ptr %i.t, align 1, !tbaa !8
  store i8 %i.v, ptr %i.s, align 1, !tbaa !8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.x = add nsw i32 %.056, -4
  %i.y = icmp sgt i32 %.056, 4
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZN9SampleICC6icFtoDEi(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = sitofp i32 %0 to double
  %i.b = fmul nnan double %i.a, f0x3EF0000000000000
  %i.c = fptrunc double %i.b to float
  ret float %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN9SampleICC5Read8ERSiPvi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %2 to i64
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %i.h) ; 0 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !18
  %i.p = icmp eq i32 %i.o, 0
  %. = select i1 %i.p, i32 %2, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -268435456, 268435456) i32 @_ZN9SampleICC6Read64ERSiPvi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN9SampleICC5Read8ERSiPvi.exit, label %_ZN9SampleICC11Swap64ArrayEPvi.exit

_ZN9SampleICC5Read8ERSiPvi.exit:                  ; preds = %bb.a
  %i.h = shl i32 %2, 3                            ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %i.i) ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %i.q = icmp eq i32 %i.p, 0
  %i.r = ashr exact i32 %i.h, 3                   ; 3 uses
  %i.s = select i1 %i.q, i32 %i.r, i32 0          ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %_ZN9SampleICC11Swap64ArrayEPvi.exit

.lr.ph.i:                                         ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit, %.lr.ph.i
  %.013.i = phi ptr [ %i.w, %.lr.ph.i ], [ %1, %_ZN9SampleICC5Read8ERSiPvi.exit ] ; 3 uses
  %.01112.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.r, %_ZN9SampleICC5Read8ERSiPvi.exit ] ; 2 uses
  %i.u = load <8 x i8>, ptr %.013.i, align 1, !tbaa !8
  %i.v = shufflevector <8 x i8> %i.u, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.v, ptr %.013.i, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %i.x = add nsw i32 %.01112.i, -1
  %i.y = icmp samesign ugt i32 %.01112.i, 1
  br i1 %i.y, label %.lr.ph.i, label %_ZN9SampleICC11Swap64ArrayEPvi.exit, !llvm.loop !9

_ZN9SampleICC11Swap64ArrayEPvi.exit:              ; preds = %.lr.ph.i, %bb.a, %_ZN9SampleICC5Read8ERSiPvi.exit
  %i.z = phi i32 [ 0, %bb.a ], [ %i.s, %_ZN9SampleICC5Read8ERSiPvi.exit ], [ %i.r, %.lr.ph.i ]
  ret i32 %i.z
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -536870912, 536870912) i32 @_ZN9SampleICC6Read32ERSiPvi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN9SampleICC5Read8ERSiPvi.exit, label %_ZN9SampleICC11Swap32ArrayEPvi.exit

_ZN9SampleICC5Read8ERSiPvi.exit:                  ; preds = %bb.a
  %i.h = shl i32 %2, 2                            ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %i.i) ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %i.q = icmp eq i32 %i.p, 0
  %i.r = ashr exact i32 %i.h, 2                   ; 3 uses
  %i.s = select i1 %i.q, i32 %i.r, i32 0          ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %_ZN9SampleICC11Swap32ArrayEPvi.exit

.lr.ph.i:                                         ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit, %.lr.ph.i
  %.09.i = phi ptr [ %i.w, %.lr.ph.i ], [ %1, %_ZN9SampleICC5Read8ERSiPvi.exit ] ; 3 uses
  %.078.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.r, %_ZN9SampleICC5Read8ERSiPvi.exit ] ; 2 uses
  %i.u = load <4 x i8>, ptr %.09.i, align 1, !tbaa !8
  %i.v = shufflevector <4 x i8> %i.u, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.v, ptr %.09.i, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.x = add nsw i32 %.078.i, -1
  %i.y = icmp samesign ugt i32 %.078.i, 1
  br i1 %i.y, label %.lr.ph.i, label %_ZN9SampleICC11Swap32ArrayEPvi.exit, !llvm.loop !13

_ZN9SampleICC11Swap32ArrayEPvi.exit:              ; preds = %.lr.ph.i, %bb.a, %_ZN9SampleICC5Read8ERSiPvi.exit
  %i.z = phi i32 [ 0, %bb.a ], [ %i.s, %_ZN9SampleICC5Read8ERSiPvi.exit ], [ %i.r, %.lr.ph.i ]
  ret i32 %i.z
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1073741824, 1073741824) i32 @_ZN9SampleICC6Read16ERSiPvi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN9SampleICC5Read8ERSiPvi.exit, label %_ZN9SampleICC11Swap16ArrayEPvi.exit

_ZN9SampleICC5Read8ERSiPvi.exit:                  ; preds = %bb.a
  %i.h = shl i32 %2, 1                            ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %i.i) ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %i.q = icmp eq i32 %i.p, 0
  %i.r = ashr exact i32 %i.h, 1                   ; 3 uses
  %i.s = select i1 %i.q, i32 %i.r, i32 0          ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %_ZN9SampleICC11Swap16ArrayEPvi.exit

.lr.ph.i:                                         ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit, %.lr.ph.i
  %.07.i = phi ptr [ %i.x, %.lr.ph.i ], [ %1, %_ZN9SampleICC5Read8ERSiPvi.exit ] ; 4 uses
  %.056.i = phi i32 [ %i.y, %.lr.ph.i ], [ %i.r, %_ZN9SampleICC5Read8ERSiPvi.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i, i64 1 ; 2 uses
  %i.v = load i8, ptr %.07.i, align 1, !tbaa !8
  %i.w = load i8, ptr %i.u, align 1, !tbaa !8
  store i8 %i.w, ptr %.07.i, align 1, !tbaa !8
  store i8 %i.v, ptr %i.u, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 2
  %i.y = add nsw i32 %.056.i, -1
  %i.z = icmp samesign ugt i32 %.056.i, 1
  br i1 %i.z, label %.lr.ph.i, label %_ZN9SampleICC11Swap16ArrayEPvi.exit, !llvm.loop !15

_ZN9SampleICC11Swap16ArrayEPvi.exit:              ; preds = %.lr.ph.i, %bb.a, %_ZN9SampleICC5Read8ERSiPvi.exit
  %i.aa = phi i32 [ 0, %bb.a ], [ %i.s, %_ZN9SampleICC5Read8ERSiPvi.exit ], [ %i.r, %.lr.ph.i ]
  ret i32 %i.aa
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN9SampleICC11Read16FloatERSiPvi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %_ZN9SampleICC6Read16ERSiPvi.exit.thread9

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i.i.preheader
  %i.c = phi ptr [ %i.k, %.lr.ph.i.i.preheader ], [ %.pre, %.lr.ph.preheader ]
  %.012 = phi i32 [ %i.x, %.lr.ph.i.i.preheader ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0711 = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN9SampleICC5Read8ERSiPvi.exit.i, label %_ZN9SampleICC6Read16ERSiPvi.exit.thread9

_ZN9SampleICC5Read8ERSiPvi.exit.i:                ; preds = %.lr.ph
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef 2) ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i.preheader, label %_ZN9SampleICC6Read16ERSiPvi.exit.thread9

.lr.ph.i.i.preheader:                             ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i
  %i.r = load i8, ptr %i.a, align 2, !tbaa !8
  %i.s = load i8, ptr %3, align 1, !tbaa !8
  store i8 %i.s, ptr %i.a, align 2, !tbaa !8
  store i8 %i.r, ptr %3, align 1, !tbaa !8
  %i.t = load i16, ptr %i.a, align 2, !tbaa !29
  %i.u = uitofp i16 %i.t to float
  %i.v = fdiv float %i.u, 6.553500e+04
  store float %i.v, ptr %.0711, align 4, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %.0711, i64 4
  %i.x = add nuw nsw i32 %.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %2
  br i1 %exitcond.not, label %_ZN9SampleICC6Read16ERSiPvi.exit.thread9, label %.lr.ph, !llvm.loop !33

_ZN9SampleICC6Read16ERSiPvi.exit.thread9:         ; preds = %.lr.ph.i.i.preheader, %.lr.ph, %_ZN9SampleICC5Read8ERSiPvi.exit.i, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.012, %_ZN9SampleICC5Read8ERSiPvi.exit.i ], [ %.012, %.lr.ph ], [ %2, %.lr.ph.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN9SampleICC13IccTypeReader6CreateE18icTagTypeSignature(i32 noundef %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.g [
    i32 1482250784, label %bb.b
    i32 1885434465, label %bb.c
    i32 1668641398, label %bb.d
    i32 1684370275, label %bb.e
    i32 1835824483, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC21IccXYZArrayTypeReaderE, i64 16), ptr %i.a, align 8, !tbaa !16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC28IccParametricCurveTypeReaderE, i64 16), ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 0, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 0, ptr %i.d, align 2, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !39
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC18IccCurveTypeReaderE, i64 16), ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC28IccTextDescriptionTypeReaderE, i64 16), ptr %i.h, align 16, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !40
  store i8 0, ptr %i.k, align 8, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC34IccMultiLocalizedUnicodeTypeReaderE, i64 16), ptr %i.l, align 16, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !40
  store i8 0, ptr %i.o, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.f, %bb.d ], [ %i.h, %bb.e ], [ %i.l, %bb.f ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_515LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS2_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenColorIO_v2_5::FormatInfo", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !43
  store i8 0, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !43
  store i8 0, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.g, align 4, !tbaa !49
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 38)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !tbaa !43
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str.1, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i32 1, ptr %i.f, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.p, ptr %i.k, align 8, !tbaa !50
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit unwind label %bb.h

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.c
  %i.q = load i64, ptr %i.b, align 8, !tbaa !43
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull @.str.2, i64 noundef 28)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit
  %i.s = load i64, ptr %i.e, align 8, !tbaa !43
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull @.str.3, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit9 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !50   ; 3 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !53
  %.not.i10 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit9
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %bb.d
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store ptr %i.x, ptr %i.k, align 8, !tbaa !50
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit13

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit9
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit13 unwind label %bb.h

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit13: ; preds = %.noexc11, %bb.e
  %i.y = load i64, ptr %i.b, align 8, !tbaa !43
end_hunk_0
begin_hunk_1_@_ZN9SampleICC28IccParametricCurveTypeReader4ReadERSij:bb.a
.lr.ph.preheader:                                 ; preds = %.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i.i37.preheader
  %i.bn = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.bx, %.lr.ph.i.i37.preheader ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.i.i37.preheader ] ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !18
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN9SampleICC5Read8ERSiPvi.exit.i36, label %.critedge

_ZN9SampleICC5Read8ERSiPvi.exit.i36:              ; preds = %.lr.ph
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !39
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv ; 3 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.bv, i64 noundef 4) ; 0 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %1, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !18
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i37.preheader, label %.critedge

.lr.ph.i.i37.preheader:                           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i36
  %i.ce = load <4 x i8>, ptr %i.bv, align 1, !tbaa !8
  %i.cf = shufflevector <4 x i8> %i.ce, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cf, ptr %i.bv, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load i16, ptr %i.ay, align 2, !tbaa !38
  %i.ch = zext i16 %i.cg to i64
  %.not28 = icmp samesign ult i64 %indvars.iv.next, %i.ch
  br i1 %.not28, label %.lr.ph, label %.critedge, !llvm.loop !275

.critedge:                                        ; preds = %.lr.ph.i.i37.preheader, %.lr.ph, %_ZN9SampleICC5Read8ERSiPvi.exit.i36, %_ZN9SampleICC5Read8ERSiPvi.exit.i31, %_ZN9SampleICC5Read8ERSiPvi.exit.i29, %_ZN9SampleICC5Read8ERSiPvi.exit.i, %.lr.ph.i.i30.preheader, %bb.d, %.thread, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %.lr.ph.i.i30.preheader ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i31 ], [ true, %bb.d ], [ false, %bb.c ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i29 ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i ], [ false, %.thread ], [ false, %.lr.ph ], [ true, %.lr.ph.i.i37.preheader ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK9SampleICC28IccParametricCurveTypeReader17IsParametricCurveEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC18IccCurveTypeReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC18IccCurveTypeReaderE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !276
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC18IccCurveTypeReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC18IccCurveTypeReaderE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN9SampleICC18IccCurveTypeReaderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !276
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32, !inline_history !277
  br label %_ZN9SampleICC18IccCurveTypeReaderD2Ev.exit

_ZN9SampleICC18IccCurveTypeReaderD2Ev.exit:       ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9SampleICC18IccCurveTypeReader4ReadERSij(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = icmp ult i32 %2, 12
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !16
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN9SampleICC5Read8ERSiPvi.exit.i, label %bb.h

_ZN9SampleICC5Read8ERSiPvi.exit.i:                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !16
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !18
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN9SampleICC5Read8ERSiPvi.exit.i11, label %_ZN9SampleICC6Read32ERSiPvi.exit

_ZN9SampleICC5Read8ERSiPvi.exit.i11:              ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i
  %i.t = load <4 x i8>, ptr %i.b, align 4, !tbaa !8
  %i.u = shufflevector <4 x i8> %i.t, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.u, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 4) ; 0 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !16
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i12.preheader, label %_ZN9SampleICC6Read32ERSiPvi.exit15.thread

.lr.ph.i.i12.preheader:                           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i11
  %i.ad = load <4 x i8>, ptr %i.c, align 4, !tbaa !8
  %i.ae = shufflevector <4 x i8> %i.ad, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.ae, ptr %i.c, align 4, !tbaa !8
  %.cast = bitcast <4 x i8> %i.ae to i32          ; 5 uses
  %i.af = icmp ugt i32 %.cast, 65536
  br i1 %i.af, label %_ZN9SampleICC6Read32ERSiPvi.exit15.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i12.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = zext nneg i32 %.cast to i64             ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !221 ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !219 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.ah
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = sub nuw nsw i64 %i.ah, %i.ao
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.aq)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !81
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ugt i64 %i.ao, %i.ah
  br i1 %i.ar, label %bb.f, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.as
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !221
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.at = phi i32 [ %.pre, %bb.d ], [ %.cast, %bb.e ], [ %.cast, %bb.f ], [ %.cast, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %.not9 = icmp eq i32 %i.at, 0
  br i1 %.not9, label %_ZN9SampleICC6Read32ERSiPvi.exit15.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.av = icmp sgt i32 %i.at, 0
  br i1 %i.av, label %.lr.ph.preheader.i, label %_ZN9SampleICC6Read32ERSiPvi.exit15.thread.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.g
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !16
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.preheader.i
  %i.aw = phi ptr [ %i.be, %.lr.ph.i.i.preheader.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.012.i = phi i32 [ %i.br, %.lr.ph.i.i.preheader.i ], [ 0, %.lr.ph.preheader.i ]
  %.0711.i = phi ptr [ %i.bq, %.lr.ph.i.i.preheader.i ], [ %i.au, %.lr.ph.preheader.i ] ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %1, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !18
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN9SampleICC5Read8ERSiPvi.exit.i.i, label %_ZN9SampleICC6Read32ERSiPvi.exit15.thread.sink.split

_ZN9SampleICC5Read8ERSiPvi.exit.i.i:              ; preds = %.lr.ph.i
  %i.bd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 2) ; 0 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !18
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.preheader.i, label %_ZN9SampleICC6Read32ERSiPvi.exit15.thread.sink.split

.lr.ph.i.i.preheader.i:                           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i.i
  %i.bl = load i8, ptr %i.a, align 2, !tbaa !8
  %i.bm = load i8, ptr %3, align 1, !tbaa !8
  store i8 %i.bm, ptr %i.a, align 2, !tbaa !8
  store i8 %i.bl, ptr %3, align 1, !tbaa !8
  %i.bn = load i16, ptr %i.a, align 2, !tbaa !29
  %i.bo = uitofp i16 %i.bn to float
  %i.bp = fdiv float %i.bo, 6.553500e+04
  store float %i.bp, ptr %.0711.i, align 4, !tbaa !31
  %i.bq = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4
  %i.br = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.br, %i.at
  br i1 %exitcond.not.i, label %_ZN9SampleICC6Read32ERSiPvi.exit15.thread.sink.split, label %.lr.ph.i, !llvm.loop !33

_ZN9SampleICC6Read32ERSiPvi.exit15.thread.sink.split: ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i.i, %.lr.ph.i, %.lr.ph.i.i.preheader.i, %bb.g
  %.0.ph = phi i1 [ false, %bb.g ], [ true, %.lr.ph.i.i.preheader.i ], [ false, %.lr.ph.i ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN9SampleICC6Read32ERSiPvi.exit15.thread

_ZN9SampleICC6Read32ERSiPvi.exit15.thread:        ; preds = %_ZN9SampleICC6Read32ERSiPvi.exit15.thread.sink.split, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %_ZN9SampleICC5Read8ERSiPvi.exit.i11, %.lr.ph.i.i12.preheader
  %.0 = phi i1 [ true, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ false, %.lr.ph.i.i12.preheader ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i11 ], [ %.0.ph, %_ZN9SampleICC6Read32ERSiPvi.exit15.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZN9SampleICC6Read32ERSiPvi.exit

_ZN9SampleICC6Read32ERSiPvi.exit:                 ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i, %_ZN9SampleICC6Read32ERSiPvi.exit15.thread
  %.1 = phi i1 [ %.0, %_ZN9SampleICC6Read32ERSiPvi.exit15.thread ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %_ZN9SampleICC6Read32ERSiPvi.exit
  %.2 = phi i1 [ false, %bb.a ], [ %.1, %_ZN9SampleICC6Read32ERSiPvi.exit ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #20 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #34
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !219    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !276
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !31
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !221
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #33
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !31
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !31
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #32
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !219
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !221
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !276
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC28IccTextDescriptionTypeReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC28IccTextDescriptionTypeReaderE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
end_hunk_1
