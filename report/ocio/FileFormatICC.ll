Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatICC?download=true
inline.NumInlined: 1375
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN9SampleICC6Read64ERSiPvi:bb.a
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
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i.i.preheader
  %i.d = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %.pre, %.lr.ph.preheader ]
  %.012 = phi i32 [ %i.y, %.lr.ph.i.i.preheader ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0711 = phi ptr [ %i.x, %.lr.ph.i.i.preheader ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN9SampleICC5Read8ERSiPvi.exit.i, label %_ZN9SampleICC6Read16ERSiPvi.exit.thread9

_ZN9SampleICC5Read8ERSiPvi.exit.i:                ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef 2) ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.preheader, label %_ZN9SampleICC6Read16ERSiPvi.exit.thread9

.lr.ph.i.i.preheader:                             ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i
  %i.s = load i8, ptr %i.a, align 2, !tbaa !8
  %i.t = load i8, ptr %i.c, align 1, !tbaa !8
  store i8 %i.t, ptr %i.a, align 2, !tbaa !8
  store i8 %i.s, ptr %i.c, align 1, !tbaa !8
  %i.u = load i16, ptr %i.a, align 2, !tbaa !29
  %i.v = uitofp i16 %i.u to float
  %i.w = fdiv float %i.v, 6.553500e+04
  store float %i.w, ptr %.0711, align 4, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %.0711, i64 4
  %i.y = add nuw nsw i32 %.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %2
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC28IccTextDescriptionTypeReaderE, i64 16), ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !40
  store i8 0, ptr %i.k, align 8, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC34IccMultiLocalizedUnicodeTypeReaderE, i64 16), ptr %i.l, align 8, !tbaa !16
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
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.y, ptr noundef nonnull @.str.4, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit15 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit15: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit13
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !43
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.aa, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit15
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !50  ; 3 uses
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !53
  %.not.i18 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %bb.f
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store ptr %i.af, ptr %i.k, align 8, !tbaa !50
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit21

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit21 unwind label %bb.h

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit21: ; preds = %.noexc19, %bb.g
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.d
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit21
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ak = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #32
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit15, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit13, %bb.e, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit, %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.ao
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_515LocalFileFormat8ReadInfoERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN9SampleICC10IccContentE:bb.a
  %i.hx = load ptr, ptr %i.ht, align 8, !tbaa !80 ; 2 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = sdiv exact i64 %i.ia, 24                ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %i.hu
  br i1 %i.ic, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.id = sub nuw nsw i64 %i.hu, %i.ib
  call void @_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i64 noundef %i.id)
  %.pre = load i32, ptr %i.g, align 4, !tbaa !81
  br label %_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EE6resizeEm.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ie = icmp ugt i64 %i.ib, %i.hu
  br i1 %i.ie, label %bb.af, label %_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EE6resizeEm.exit

bb.af:                                            ; preds = %bb.ae
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %i.hu ; 2 uses
  %.not.i.i = icmp eq ptr %i.hw, %i.if
  br i1 %.not.i.i, label %_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN9SampleICC13IccTagElementES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN9SampleICC13IccTagElementES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.af
  store ptr %i.if, ptr %i.hv, align 8, !tbaa !79
  br label %_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EE6resizeEm.exit: ; preds = %bb.ad, %bb.ae, %bb.af, %_ZSt8_DestroyIPN9SampleICC13IccTagElementES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ig = phi i32 [ %.pre, %bb.ad ], [ %.cast, %bb.ae ], [ %.cast, %bb.af ], [ %.cast, %_ZSt8_DestroyIPN9SampleICC13IccTagElementES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %.not = icmp eq i32 %i.ig, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EE6resizeEm.exit
  %.pre321 = load ptr, ptr %1, align 8, !tbaa !16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i.i239.preheader
  %i.ih = phi ptr [ %.pre321, %.lr.ph.preheader ], [ %i.kb, %.lr.ph.i.i239.preheader ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.i.i239.preheader ] ; 4 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 -24
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds i8, ptr %1, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load i32, ptr %i.il, align 8, !tbaa !18
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %_ZN9SampleICC5Read8ERSiPvi.exit.i228, label %_ZN9SampleICC6Read32ERSiPvi.exit232.thread

_ZN9SampleICC5Read8ERSiPvi.exit.i228:             ; preds = %.lr.ph
  %i.io = load ptr, ptr %i.ht, align 8, !tbaa !80
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.io, i64 %indvars.iv ; 3 uses
  %i.iq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ip, i64 noundef 4) ; 0 uses
  %i.ir = load ptr, ptr %1, align 8, !tbaa !16
  %i.is = getelementptr i8, ptr %i.ir, i64 -24    ; 2 uses
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = getelementptr inbounds i8, ptr %1, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !18
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph.i.i229.preheader, label %_ZN9SampleICC6Read32ERSiPvi.exit232.thread

.lr.ph.i.i229.preheader:                          ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i228
  %i.iy = load <4 x i8>, ptr %i.ip, align 1, !tbaa !8
  %i.iz = shufflevector <4 x i8> %i.iy, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.iz, ptr %i.ip, align 1, !tbaa !8
  %i.ja = load i64, ptr %i.is, align 8
  %i.jb = getelementptr inbounds i8, ptr %1, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !18
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %_ZN9SampleICC5Read8ERSiPvi.exit.i233, label %_ZN9SampleICC6Read32ERSiPvi.exit232.thread

_ZN9SampleICC5Read8ERSiPvi.exit.i233:             ; preds = %.lr.ph.i.i229.preheader
  %i.jf = load ptr, ptr %i.ht, align 8, !tbaa !80
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %indvars.iv
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 3 uses
  %i.ji = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.jh, i64 noundef 4) ; 0 uses
  %i.jj = load ptr, ptr %1, align 8, !tbaa !16
  %i.jk = getelementptr i8, ptr %i.jj, i64 -24    ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds i8, ptr %1, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !18
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph.i.i234.preheader, label %_ZN9SampleICC6Read32ERSiPvi.exit232.thread

.lr.ph.i.i234.preheader:                          ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i233
  %i.jq = load <4 x i8>, ptr %i.jh, align 1, !tbaa !8
  %i.jr = shufflevector <4 x i8> %i.jq, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.jr, ptr %i.jh, align 1, !tbaa !8
  %i.js = load i64, ptr %i.jk, align 8
  %i.jt = getelementptr inbounds i8, ptr %1, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !18
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %_ZN9SampleICC5Read8ERSiPvi.exit.i238, label %_ZN9SampleICC6Read32ERSiPvi.exit232.thread

_ZN9SampleICC5Read8ERSiPvi.exit.i238:             ; preds = %.lr.ph.i.i234.preheader
  %i.jx = load ptr, ptr %i.ht, align 8, !tbaa !80
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %indvars.iv
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 3 uses
  %i.ka = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.jz, i64 noundef 4) ; 0 uses
  %i.kb = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 -24
  %i.kd = load i64, ptr %i.kc, align 8
  %i.ke = getelementptr inbounds i8, ptr %1, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !18
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %.lr.ph.i.i239.preheader, label %_ZN9SampleICC6Read32ERSiPvi.exit232.thread

.lr.ph.i.i239.preheader:                          ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i238
  %i.ki = load <4 x i8>, ptr %i.jz, align 1, !tbaa !8
  %i.kj = shufflevector <4 x i8> %i.ki, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.kj, ptr %i.jz, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kk = load i32, ptr %i.g, align 4, !tbaa !81
  %i.kl = zext i32 %i.kk to i64
  %i.km = icmp samesign ult i64 %indvars.iv.next, %i.kl
  br i1 %i.km, label %.lr.ph, label %._crit_edge, !llvm.loop !82

_ZN9SampleICC6Read32ERSiPvi.exit232.thread:       ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i238, %_ZN9SampleICC5Read8ERSiPvi.exit.i233, %_ZN9SampleICC5Read8ERSiPvi.exit.i228, %.lr.ph.i.i234.preheader, %.lr.ph.i.i229.preheader, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.kn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.kn, ptr %8, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 43, ptr %i.b, align 8, !tbaa !65
  %i.ko = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc245 unwind label %bb.ag ; 3 uses

.noexc245:                                        ; preds = %_ZN9SampleICC6Read32ERSiPvi.exit232.thread
  store ptr %i.ko, ptr %8, align 8, !tbaa !54
  %i.kp = load i64, ptr %i.b, align 8, !tbaa !65  ; 3 uses
  store i64 %i.kp, ptr %i.kn, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.ko, ptr noundef nonnull align 1 dereferenceable(43) @.str.12, i64 43, i1 false)
  %i.kq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !43
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kp
  store i8 0, ptr %i.kr, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.unreachable317 unwind label %bb.ah

.unreachable317:                                  ; preds = %.noexc245
  unreachable

bb.ag:                                            ; preds = %_ZN9SampleICC6Read32ERSiPvi.exit232.thread
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

bb.ah:                                            ; preds = %.noexc245
  %i.kt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ku = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.kn
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %bb.ah
  %i.kw = load i64, ptr %i.kn, align 8, !tbaa !8
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250, %bb.ag
  %.pn158 = phi { ptr, i32 } [ %i.ks, %bb.ag ], [ %i.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ], [ %i.kt, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.bh

._crit_edge:                                      ; preds = %.lr.ph.i.i239.preheader, %_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.ky = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ky, ptr %9, align 8, !tbaa !40
  %i.kz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.kz, align 8, !tbaa !43
  store i8 0, ptr %i.ky, align 8, !tbaa !8
  %i.la = invoke noundef zeroext i1 @_ZNK9SampleICC10IccContent8ValidateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %._crit_edge
  br i1 %i.la, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.unreachable315 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj, %._crit_edge
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.unreachable315:                                  ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.lc = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #31
          to label %bb.am unwind label %bb.ak     ; 12 uses

bb.am:                                            ; preds = %bb.al
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ld, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_515LocalCachedFileE, i64 16), ptr %i.lc, align 8, !tbaa !16
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 24 ; 2 uses
  store ptr %i.lf, ptr %i.le, align 8, !tbaa !40
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store i8 0, ptr %i.lf, align 8, !tbaa !8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 40
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.lh, i8 0, i64 128, i1 false)
  store float 1.000000e+00, ptr %i.li, align 8, !tbaa !31
  %scevgep8.i = getelementptr inbounds nuw i8, ptr %i.lc, i64 172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %scevgep8.i, i8 0, i64 28, i1 false)
  store ptr %i.lc, ptr %0, align 8, !tbaa !83
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.lj, align 8, !tbaa !88
  %i.lk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %bb.ar unwind label %bb.an     ; 5 uses

bb.an:                                            ; preds = %bb.am
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  %i.ln = call ptr @__cxa_begin_catch(ptr %i.lm) #30 ; 0 uses
  %i.lo = load ptr, ptr %i.lc, align 8, !tbaa !16
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(200) %i.lc) #30, !inline_history !89
  invoke void @__cxa_rethrow() #33
          to label %bb.aq unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ls = landingpad { ptr, i32 }
          catch ptr null
  %i.lt = extractvalue { ptr, i32 } %i.ls, 0
  call void @__clang_call_terminate(ptr %i.lt) #34
  unreachable

bb.aq:                                            ; preds = %bb.an
  unreachable

bb.ar:                                            ; preds = %bb.am
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i32 1, ptr %i.lu, align 8, !tbaa !90
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i32 1, ptr %i.lv, align 4, !tbaa !92
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lk, align 8, !tbaa !16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store ptr %i.lc, ptr %i.lw, align 8, !tbaa !93
  store ptr %i.lk, ptr %i.lj, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store i32 1685283693, ptr %i.h, align 4, !tbaa !95
  %i.lx = invoke noundef ptr @_ZN9SampleICC10IccContent7LoadTagERSiRK14icTagSignature(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.as unwind label %bb.au     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %.not143 = icmp eq ptr %i.lx, null
  br i1 %.not143, label %bb.at, label %.thread

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  store i32 1684370275, ptr %i.i, align 4, !tbaa !95
  %i.ly = invoke noundef ptr @_ZN9SampleICC10IccContent7LoadTagERSiRK14icTagSignature(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.aw unwind label %bb.av     ; 2 uses

bb.au:                                            ; preds = %bb.ar
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %bb.bg

bb.av:                                            ; preds = %bb.at
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %bb.bg

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  %.not144 = icmp eq ptr %i.ly, null
  br i1 %.not144, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  %i.mb = load i64, ptr %i.lg, align 8, !tbaa !43
  %i.mc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.le, i64 noundef 0, i64 noundef %i.mb, ptr noundef nonnull @.str.13, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ay ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.thread:                                          ; preds = %bb.as, %bb.aw
  %.089312 = phi ptr [ %i.ly, %bb.aw ], [ %i.lx, %bb.as ] ; 2 uses
  %i.me = call ptr @__dynamic_cast(ptr nonnull %.089312, ptr nonnull @_ZTIN9SampleICC13IccTypeReaderE, ptr nonnull @_ZTIN9SampleICC28IccTextDescriptionTypeReaderE, i64 0) #30 ; 2 uses
  %.not145 = icmp eq ptr %i.me, null
  br i1 %.not145, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.thread
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.le, ptr noundef nonnull align 8 dereferenceable(32) %i.mf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bb:                                            ; preds = %.thread
  %i.mh = call ptr @__dynamic_cast(ptr nonnull %.089312, ptr nonnull @_ZTIN9SampleICC13IccTypeReaderE, ptr nonnull @_ZTIN9SampleICC34IccMultiLocalizedUnicodeTypeReaderE, i64 0) #30 ; 2 uses
  %.not146 = icmp eq ptr %i.mh, null
  br i1 %.not146, label %.noexc.i258, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.le, ptr noundef nonnull align 8 dereferenceable(32) %i.mi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.noexc.i258:                                      ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.mk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.mk, ptr %10, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 41, ptr %i.a, align 8, !tbaa !65
  %i.ml = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc259 unwind label %bb.be ; 3 uses

.noexc259:                                        ; preds = %.noexc.i258
  store ptr %i.ml, ptr %10, align 8, !tbaa !54
  %i.mm = load i64, ptr %i.a, align 8, !tbaa !65  ; 3 uses
  store i64 %i.mm, ptr %i.mk, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.ml, ptr noundef nonnull align 1 dereferenceable(41) @.str.14, i64 41, i1 false)
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.mm, ptr %i.mn, align 8, !tbaa !43
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mm
  store i8 0, ptr %i.mo, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.unreachable316 unwind label %bb.bf

.unreachable316:                                  ; preds = %.noexc259
  unreachable

bb.be:                                            ; preds = %.noexc.i258
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

bb.bf:                                            ; preds = %.noexc259
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mr = load ptr, ptr %10, align 8, !tbaa !54   ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.mk
  br i1 %i.ms, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.bf
  %i.mt = load i64, ptr %i.mk, align 8, !tbaa !8
  %i.mu = add i64 %i.mt, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264, %bb.be
  %.pn147 = phi { ptr, i32 } [ %i.mp, %bb.be ], [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ], [ %i.mq, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.bc, %bb.az, %bb.ax
  %i.mv = load ptr, ptr %9, align 8, !tbaa !54    ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.ky
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.mx = load i64, ptr %i.ky, align 8, !tbaa !8
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.my) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  ret void

bb.bg:                                            ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %bb.bd, %bb.ay, %bb.av, %bb.au
  %.pn151.pn = phi { ptr, i32 } [ %i.lz, %bb.au ], [ %i.md, %bb.ay ], [ %i.ma, %bb.av ], [ %i.mg, %bb.ba ], [ %i.mj, %bb.bd ], [ %.pn147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  br label %.body

.body:                                            ; preds = %bb.ao, %bb.ak, %bb.bg
  %.pn151.pn.pn = phi { ptr, i32 } [ %.pn151.pn, %bb.bg ], [ %i.lr, %bb.ao ], [ %i.lb, %bb.ak ]
  %i.mz = load ptr, ptr %9, align 8, !tbaa !54    ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.ky
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %.body
  %i.nb = load i64, ptr %i.ky, align 8, !tbaa !8
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217
  %.pn158.pn.pn = phi { ptr, i32 } [ %.pn139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ %.pn158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ %.pn151.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ], [ %.pn141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.pn158.pn.pn.pn = phi { ptr, i32 } [ %.pn158.pn.pn, %bb.bh ], [ %.pn136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ]
  resume { ptr, i32 } %.pn158.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16), i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !40
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.51) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !65
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !54
  %i.g = load i64, ptr %i.a, align 8, !tbaa !65
  store i64 %i.g, ptr %i.b, align 8, !tbaa !8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !8
  store i8 %i.i, ptr %i.h, align 1, !tbaa !8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !43
  %i.l = load ptr, ptr %0, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK9SampleICC10IccContent8ValidateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 31 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN9SampleICC10IccContentD2Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %.not67 = icmp eq ptr %i.b, %i.d
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.01.08 = phi ptr [ %i.j, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.08, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #30
  store ptr null, ptr %i.e, align 8, !tbaa !126
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.08, i64 24 ; 2 uses
  %.not6 = icmp eq ptr %i.j, %i.d
  br i1 %.not6, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !242

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !80
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !243
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EED2Ev.exit

_ZNSt6vectorIN9SampleICC13IccTagElementESaIS1_EED2Ev.exit: ; preds = %._crit_edge, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_515LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES6_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 1 captures(none) %3, ptr nofree noundef readonly align 8 captures(none) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::shared_ptr", align 8   ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::shared_ptr.15", align 16 ; 12 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %11 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %12 = alloca %"class.std::vector.44", align 8   ; 9 uses
  %13 = alloca %"class.std::vector.44", align 8   ; 9 uses
  %14 = alloca %"class.std::vector.44", align 8   ; 9 uses
  %15 = alloca %"class.std::vector.44", align 8   ; 9 uses
  %16 = alloca %"class.std::shared_ptr.50", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.std::vector.44", align 8   ; 9 uses
  %18 = alloca %"class.std::vector.44", align 8   ; 9 uses
  %19 = alloca %"class.std::vector.44", align 8   ; 9 uses
  %20 = alloca %"class.std::vector.44", align 8   ; 9 uses
  %21 = alloca %"class.std::shared_ptr.50", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.d = load ptr, ptr %4, align 8, !tbaa !238, !noalias !250 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_515LocalCachedFileEEC2INS0_10CachedFileEEERKS_IT_EPS1_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %i.d, ptr nonnull @_ZTIN16OpenColorIO_v2_510CachedFileE, ptr nonnull @_ZTIN16OpenColorIO_v2_515LocalCachedFileE, i64 0) #30, !noalias !250 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_515LocalCachedFileEEC2INS0_10CachedFileEEERKS_IT_EPS1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %7, align 8, !tbaa !83, !alias.scope !250
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88, !noalias !250 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !88, !alias.scope !250
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8, !noalias !250
  %.not.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.j, align 4, !tbaa !81, !noalias !250
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !81, !noalias !250
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread

_ZNSt10shared_ptrIN16OpenColorIO_v2_515LocalCachedFileEEC2INS0_10CachedFileEEERKS_IT_EPS1_.exit.i.i: ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !250
  br label %bb.f

_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split: ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !250 ; 0 uses
  %.pr.pre = load ptr, ptr %7, align 8, !tbaa !83 ; 2 uses
  %i.o = icmp eq ptr %.pr.pre, null
  br i1 %i.o, label %bb.f, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_515LocalCachedFileEEC2INS0_10CachedFileEEERKS_IT_EPS1_.exit.i.i, %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.33, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load ptr, ptr %9, align 8, !tbaa !54
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef %i.r)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #33
          to label %bb.dp unwind label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %.049 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.w = load ptr, ptr %9, align 8, !tbaa !54     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.z = load i64, ptr %i.x, align 8, !tbaa !8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %.049, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %.049, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn156 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #30
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn156, %bb.m ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %bb.k ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.s, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.do

_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread: ; preds = %bb.c, %bb.e, %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split
  %i.ab = phi ptr [ %.pr.pre, %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split ], [ %i.f, %bb.e ], [ %i.f, %bb.c ]
  %i.ac = load ptr, ptr %5, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %i.ag = invoke noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef %6, i32 noundef %i.af)
          to label %bb.p unwind label %bb.ag

bb.p:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread
  %i.ah = invoke noundef i32 @_ZNK16OpenColorIO_v2_513FileTransform16getInterpolationEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.q unwind label %bb.ah      ; 2 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 184 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !187
  %.not157 = icmp eq ptr %i.aj, null
  br i1 %.not157, label %bb.am, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN16OpenColorIO_v2_511HandleLUT1DERKSt10shared_ptrINS_11Lut1DOpDataEENS_13InterpolationERb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i32 noundef %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.am = load <2 x ptr>, ptr %11, align 16, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !88 ; 8 uses
  store <2 x ptr> %i.am, ptr %10, align 16, !tbaa !253
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataEEaSEOS2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ao, align 8, !tbaa !90
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !92
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #30, !inline_history !186
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #30, !inline_history !186
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataEEaSEOS2_.exit

bb.v:                                             ; preds = %bb.t
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i73 = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i.i73, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.w ], [ %i.bb, %bb.x ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.y, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataEEaSEOS2_.exit, !prof !130

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #30
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataEEaSEOS2_.exit: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.y
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !88 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataEEaSEOS2_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.be, align 8, !tbaa !90
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !92
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #30, !inline_history !254
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #30, !inline_history !254
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.ac ], [ %i.br, %bb.ad ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.ae, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataEEaSEOS2_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.bt = load i8, ptr %i.a, align 1, !tbaa !251, !range !255, !noundef !256
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN16OpenColorIO_v2_530LogWarningInterpolationNotUsedENS_13InterpolationERKNS_13FileTransformE(i32 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.ak unwind label %bb.aj

bb.ag:                                            ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_15LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ah:                                            ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ai:                                            ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.al

bb.aj:                                            ; preds = %bb.af
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.af, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.am

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %.pn54 = phi { ptr, i32 } [ %i.by, %bb.aj ], [ %i.bx, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.dn

bb.am:                                            ; preds = %bb.ak, %bb.q
  switch i32 %i.ag, label %bb.da [
    i32 1, label %bb.an
    i32 0, label %bb.bu
  ]

bb.an:                                            ; preds = %bb.am
  %i.bz = load ptr, ptr %10, align 16, !tbaa !187
  %.not159 = icmp eq ptr %i.bz, null
  br i1 %.not159, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN16OpenColorIO_v2_513CreateLut1DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut1DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0)
          to label %bb.bs unwind label %bb.ap

bb.ap:                                            ; preds = %bb.bx, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.ao
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.cb = load ptr, ptr %7, align 8, !tbaa !83    ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 168
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !31
  %i.ce = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %bb.ar unwind label %bb.bh     ; 3 uses

bb.ar:                                            ; preds = %bb.aq
  %i.cf = fpext float %i.cd to double
  store ptr %i.ce, ptr %12, align 8, !tbaa !257
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !260
  store double %i.cf, ptr %i.ce, align 8, !tbaa !176
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 172
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !31
  %i.cl = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %bb.as unwind label %bb.bi     ; 3 uses

bb.as:                                            ; preds = %bb.ar
  %i.cm = fpext float %i.ck to double
  store ptr %i.cl, ptr %13, align 8, !tbaa !257
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !260
  store double %i.cm, ptr %i.cl, align 8, !tbaa !176
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 176
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !31
  %i.cs = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %bb.at unwind label %bb.bj     ; 3 uses

bb.at:                                            ; preds = %bb.as
  %i.ct = fpext float %i.cr to double
  store ptr %i.cs, ptr %14, align 8, !tbaa !257
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
end_hunk_2
