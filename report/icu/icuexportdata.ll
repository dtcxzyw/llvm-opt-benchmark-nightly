Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/icuexportdata?download=true
inline.NumInlined: 823
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z23dumpGeneralCategoryMaskP8_IO_FILE:bb.a
  %fwrite54 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr %0) ; 0 uses
  %.not5583 = icmp sgt i32 %i.h, %i.i
  br i1 %.not5583, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81, %bb.h
  %fwrite56 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 2, i64 1, ptr %0) ; 0 uses
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

.lr.ph:                                           ; preds = %bb.h, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81
  %.084 = phi i32 [ %i.ac, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81 ], [ %i.h, %bb.h ] ; 16 uses
  %i.j = shl nuw i32 1, %.084
  invoke void @_Z14dumpValueEntry9UPropertyibP8_IO_FILE(i32 noundef 8192, i32 noundef %i.j, i1 noundef zeroext true, ptr noundef %0)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph
  %i.k = icmp ult i32 %.084, 6
  br i1 %i.k, label %bb.j, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit63

bb.j:                                             ; preds = %bb.i
  switch i32 %.084, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81 [
    i32 5, label %.invoke
    i32 3, label %bb.k
  ]

.invoke:                                          ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit78, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit75.thread, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit72.thread, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit69.thread, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit66.thread, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit63.thread, %bb.j, %bb.k
  %i.l = phi i32 [ 821559296, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit75.thread ], [ 14, %bb.k ], [ 62, %bb.j ], [ 448, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit63.thread ], [ 3584, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit66.thread ], [ 28672, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit69.thread ], [ 491521, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit72.thread ], [ 251658240, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit78 ]
  invoke void @_Z14dumpValueEntry9UPropertyibP8_IO_FILE(i32 noundef 8192, i32 noundef %i.l, i1 noundef zeroext true, ptr noundef %0)
          to label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  br label %.invoke

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit63: ; preds = %bb.i
  %i.m = icmp ult i32 %.084, 9
  br i1 %i.m, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit63.thread, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit66

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit63.thread: ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit63
  %i.n = add nsw i32 %.084, -8
  %i.o = icmp ult i32 %i.n, -9
  br i1 %i.o, label %.invoke, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit66: ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit63
  %i.p = icmp ult i32 %.084, 12
  br i1 %i.p, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit66.thread, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit69

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit66.thread: ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit66
  %i.q = add nsw i32 %.084, -11
  %i.r = icmp ult i32 %i.q, -12
  br i1 %i.r, label %.invoke, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit69: ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit66
  %i.s = icmp ult i32 %.084, 15
  br i1 %i.s, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit69.thread, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit72

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit69.thread: ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit69
  %i.t = add nsw i32 %.084, -14
  %i.u = icmp ult i32 %i.t, -15
  br i1 %i.u, label %.invoke, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit72: ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit69
  %i.v = icmp ult i32 %.084, 19
  br i1 %i.v, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit72.thread, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit75

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit72.thread: ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit72
  %i.w = add nsw i32 %.084, -18
  %i.x = icmp ult i32 %i.w, -19
  br i1 %i.x, label %.invoke, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit75: ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit72
  %i.y = icmp ult i32 %.084, 30
  br i1 %i.y, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit75.thread, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit75.thread: ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit75
  %i.z = add nsw i32 %.084, -29
  %i.aa = icmp ult i32 %i.z, -30
  br i1 %i.aa, label %.invoke, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit78

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit78: ; preds = %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit75.thread
  %i.ab = icmp eq i32 %.084, 27
  br i1 %i.ab, label %.invoke, label %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81

_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit81: ; preds = %.invoke, %bb.j, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit63.thread, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit66.thread, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit69.thread, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit72.thread, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit75, %_Z18maybeDumpMaskValue9UPropertyjjP8_IO_FILE.exit78
  %i.ac = add i32 %.084, 1
  %exitcond.not = icmp eq i32 %.084, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !117

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %.lr.ph, %bb.g, %bb.a, %bb.e, %bb.b, %bb.f
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp90
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z29getScriptExtensionsCodePointsRN6icu_7816IcuToolErrorCodeE(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeSet") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.USetAdder, align 8          ; 8 uses
  tail call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN12_GLOBAL__N_17set_addEP4USeti, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN12_GLOBAL__N_112set_addRangeEP4USetii, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  invoke void @uprv_addScriptExtensionsCodePoints_78(ptr noundef nonnull %2, ptr noundef nonnull %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %0) #25
  resume { ptr, i32 } %i.e
}

declare void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_17set_addEP4USeti(ptr noundef nonnull %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_112set_addRangeEP4USetii(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) ; 0 uses
  ret void
}

declare void @uprv_addScriptExtensionsCodePoints_78(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z20dumpScriptExtensionsP8_IO_FILE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.USetAdder, align 8          ; 8 uses
  %2 = alloca %"class.icu_78::IcuToolErrorCode", align 8 ; 13 uses
  %3 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 6 uses
  %4 = alloca %"class.std::vector", align 8       ; 13 uses
  %5 = alloca %"class.icu_78::UnicodeSet", align 8 ; 13 uses
  %6 = alloca %"class.icu_78::header::USetCodePointIterator", align 8 ; 11 uses
  %i.c = alloca [32 x i32], align 16              ; 5 uses
  %7 = alloca %"class.std::vector.2", align 8     ; 17 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %8 = alloca %"class.icu_78::internal::LocalOpenPointer.0", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.e, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7816IcuToolErrorCodeE, i64 16), ptr %2, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.28, ptr %i.f, align 8, !tbaa !24
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.29, i64 22, i64 1, ptr %0) ; 0 uses
  %i.g = invoke ptr @u_getPropertyName_78(i32 noundef 28672, i32 noundef 1)
          to label %bb.b unwind label %bb.r       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.h = invoke ptr @u_getPropertyName_78(i32 noundef 28672, i32 noundef 0)
          to label %bb.c unwind label %bb.r       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %i.g) #25 ; 0 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.h) #25 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 28672) #25 ; 0 uses
  invoke void @_Z19dumpPropertyAliases9UPropertyP8_IO_FILE(i32 noundef 28672, ptr noundef %0)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.l = invoke ptr @u_getIntPropertyMap_78(i32 noundef 4106, ptr noundef nonnull %i.e)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 340, ptr noundef %i.g)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.m = invoke ptr @umutablecptrie_fromUCPMap_78(ptr noundef %i.l, ptr noundef nonnull %i.e)
          to label %bb.i unwind label %bb.s       ; 3 uses

bb.i:                                             ; preds = %bb.h
  store ptr %i.m, ptr %3, align 8, !tbaa !32
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 342, ptr noundef %i.g)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %fwrite69 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !124
  store ptr %5, ptr %1, align 8, !tbaa !40, !noalias !124
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN12_GLOBAL__N_17set_addEP4USeti, ptr %i.n, align 8, !tbaa !41, !noalias !124
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN12_GLOBAL__N_112set_addRangeEP4USetii, ptr %i.o, align 8, !tbaa !42, !noalias !124
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !noalias !124
  invoke void @uprv_addScriptExtensionsCodePoints_78(ptr noundef nonnull %1, ptr noundef nonnull %i.e)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !124
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %5) #25
  br label %.body

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !124
  %i.r = invoke i32 @uset_getRangeCount_78(ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %bb.m unwind label %bb.v       ; 2 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  store ptr %5, ptr %6, align 8, !tbaa !127, !alias.scope !125
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.s, align 8, !tbaa !128, !alias.scope !125
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 %i.r, ptr %i.t, align 4, !tbaa !129, !alias.scope !125
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store i32 -1, ptr %i.u, align 8, !tbaa !130, !alias.scope !125
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 7 uses
  store i32 -1, ptr %i.v, align 4, !tbaa !131, !alias.scope !125
  %i.w = icmp sgt i32 %i.r, 0
  br i1 %i.w, label %bb.n, label %_ZNK6icu_786header14USetCodePoints5beginEv.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !125
  store i32 0, ptr %i.b, align 4, !tbaa !43, !noalias !125
  %i.x = invoke i32 @uset_getItem_78(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b)
          to label %.noexc93 unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc93:                                         ; preds = %bb.n
  %i.y = load i32, ptr %i.b, align 4, !tbaa !43, !noalias !125
  %i.z = icmp slt i32 %i.y, 1
  %i.aa = icmp eq i32 %i.x, 0
  %or.cond.i.i.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc93
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !128, !alias.scope !125
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.s, align 8, !tbaa !128, !alias.scope !125
  %.pre148.pre = load i32, ptr %i.u, align 8
  br label %bb.q

bb.p:                                             ; preds = %.noexc93
  store i32 -1, ptr %i.v, align 4, !tbaa !131, !alias.scope !125
  store i32 -1, ptr %i.u, align 8, !tbaa !130, !alias.scope !125
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre148 = phi i32 [ -1, %bb.p ], [ %.pre148.pre, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !125
  %.pre = load ptr, ptr %6, align 8, !tbaa !127
  %i.ad = icmp ne ptr %.pre, %5
  br label %_ZNK6icu_786header14USetCodePoints5beginEv.exit

_ZNK6icu_786header14USetCodePoints5beginEv.exit:  ; preds = %bb.q, %bb.m
  %i.ae = phi i32 [ %.pre148, %bb.q ], [ -1, %bb.m ] ; 2 uses
  %i.af = phi i1 [ %i.ad, %bb.q ], [ false, %bb.m ]
  %i.ag = icmp ne i32 %i.ae, -1
  %.not3.i136 = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %.not3.i136, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %_ZNK6icu_786header14USetCodePoints5beginEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.w

._crit_edge138:                                   ; preds = %_ZN6icu_786header21USetCodePointIteratorppEv.exit, %_ZNK6icu_786header14USetCodePoints5beginEv.exit
  %i.al = phi ptr [ %i.m, %_ZNK6icu_786header14USetCodePoints5beginEv.exit ], [ %10, %_ZN6icu_786header21USetCodePointIteratorppEv.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %fwrite70 = call i64 @fwrite(ptr nonnull @.str.34, i64 3, i64 1, ptr %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.am = load i32, ptr @trieType, align 4, !tbaa !34
  %i.an = invoke ptr @umutablecptrie_buildImmutable_78(ptr noundef %i.al, i32 noundef %i.am, i32 noundef 0, ptr noundef nonnull %i.e)
          to label %bb.be unwind label %bb.bn     ; 4 uses

bb.r:                                             ; preds = %bb.b, %bb.e, %bb.a, %bb.g, %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.s:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.t:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.u:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.w:                                             ; preds = %.lr.ph137, %_ZN6icu_786header21USetCodePointIteratorppEv.exit
  %9 = phi ptr [ %i.m, %.lr.ph137 ], [ %10, %_ZN6icu_786header21USetCodePointIteratorppEv.exit ]
  %i.at = phi i32 [ %i.ae, %.lr.ph137 ], [ %i.fe, %_ZN6icu_786header21USetCodePointIteratorppEv.exit ] ; 3 uses
  %i.au = invoke i32 @umutablecptrie_get_78(ptr noundef %9, i32 noundef %i.at)
          to label %bb.x unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.av = invoke i32 @uscript_getScriptExtensions_78(i32 noundef %i.at, ptr noundef nonnull %i.c, i32 noundef 32, ptr noundef nonnull %i.e)
          to label %bb.y unwind label %bb.ab      ; 2 uses

bb.y:                                             ; preds = %bb.x
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 358, ptr noundef %i.g)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit

.lr.ph.preheader:                                 ; preds = %bb.z
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.pre149 = load ptr, ptr %7, align 8, !tbaa !45 ; 4 uses
  %.not.i.i = icmp eq ptr %.pre149, %i.cg
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.ax = ptrtoint ptr %i.cg to i64
  %i.ay = ptrtoint ptr %.pre149 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 1
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = shl nuw nsw i64 %i.bb, 1
  %i.bd = xor i64 %i.bc, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.pre149, ptr nonnull %i.cg, i64 noundef %i.bd)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc94:                                         ; preds = %bb.aa
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.pre149, ptr nonnull %i.cg)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.w, %bb.n
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp118

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.bf = phi ptr [ null, %.lr.ph.preheader ], [ %i.ce, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 5 uses
  %i.bg = phi ptr [ null, %.lr.ph.preheader ], [ %i.cf, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 3 uses
  %i.bh = phi ptr [ null, %.lr.ph.preheader ], [ %i.cg, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !133
  %i.bk = trunc i32 %i.bj to i16                  ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.i.i96, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  store i16 %i.bk, ptr %i.bh, align 2, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
  store ptr %i.bl, ptr %i.ah, align 8, !tbaa !49
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.ad:                                            ; preds = %.lr.ph
  %i.bm = ptrtoint ptr %i.bg to i64
  %i.bn = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775806
  br i1 %i.bp, label %bb.ae, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.bq = ashr exact i64 %i.bo, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 4611686018427387903)
  %i.bu = select i1 %i.bs, i64 4611686018427387903, i64 %i.bt ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 1
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #28
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i16 %i.bk, ptr %i.bx, align 2, !tbaa !47
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.af, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.af:                                            ; preds = %.noexc98
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bw, ptr align 2 %i.bf, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.af, %.noexc98
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ca = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.cc) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bw, ptr %7, align 8, !tbaa !51
  store ptr %i.bz, ptr %i.ah, align 8, !tbaa !49
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  store ptr %i.cd, ptr %i.ai, align 8, !tbaa !50
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.ac
  %i.ce = phi ptr [ %i.bw, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bf, %bb.ac ]
  %i.cf = phi ptr [ %i.cd, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bg, %bb.ac ]
  %i.cg = phi ptr [ %i.bz, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bl, %bb.ac ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit: ; preds = %bb.z, %._crit_edge, %.noexc94
  %or.cond = icmp ugt i32 %i.au, 1
  br i1 %or.cond, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit
  %i.ch = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ci = trunc i32 %i.au to i16
  store i16 %i.ci, ptr %i.d, align 2, !tbaa !47
  %i.cj = invoke ptr @_ZNSt6vectorItSaItEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %i.d)
          to label %_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit unwind label %bb.ai ; 0 uses

_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit
  %i.cl = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 8 uses
  %i.cm = load ptr, ptr %4, align 8, !tbaa !55    ; 3 uses
  %.not73131.not = icmp eq ptr %i.cl, %i.cm
  br i1 %.not73131.not, label %.critedge, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.aj
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 24                ; 2 uses
  %i.cr = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.cs = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph134, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116
  %.047132 = phi i64 [ 0, %.lr.ph134 ], [ %i.de, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.047132 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !49 ; 2 uses
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !51 ; 3 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp eq i64 %i.dc, %i.cv
  br i1 %i.dd, label %bb.al, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116

bb.al:                                            ; preds = %bb.ak
  %.not.not.i.i.i.i.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.not.i.i.i.i.i, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.al
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.cz, ptr %i.cs, i64 %i.cv)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116: ; preds = %bb.ak, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit
  %i.de = add nuw i64 %.047132, 1                 ; 2 uses
  %exitcond147.not = icmp eq i64 %i.de, %i.cq
  br i1 %exitcond147.not, label %.critedge, label %bb.ak, !llvm.loop !123

.critedge:                                        ; preds = %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116, %bb.aj
  %.047.lcssa = phi i64 [ 0, %bb.aj ], [ %i.cq, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116 ]
  %i.df = load ptr, ptr %i.ak, align 8, !tbaa !56
  %.not.i = icmp eq ptr %i.cl, %i.df
  br i1 %.not.i, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %.critedge
  %i.dg = load ptr, ptr %i.ah, align 8, !tbaa !49 ; 2 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.dg, %i.dh
  br i1 %.not.i.i.i.i.i, label %.noexc101, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dl = icmp ugt i64 %i.dk, 9223372036854775806
  br i1 %i.dl, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, !prof !57

.noexc.i.i.i:                                     ; preds = %bb.an
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.an
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #28
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, %bb.am
  %i.dn = phi ptr [ null, %bb.am ], [ %i.dm, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.dn, ptr %i.cl, align 8, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !49
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dk
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !50
  %i.dr = load ptr, ptr %7, align 8, !tbaa !45    ; 4 uses
  %i.ds = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 4 uses
  %i.dw = icmp sgt i64 %i.dv, 2
  br i1 %i.dw, label %bb.ao, label %bb.ap, !prof !58

bb.ao:                                            ; preds = %.noexc101
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.dn, ptr align 2 %i.dr, i64 %i.dv, i1 false)
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

bb.ap:                                            ; preds = %.noexc101
  %i.dx = icmp eq i64 %i.dv, 2
  br i1 %i.dx, label %bb.aq, label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.dy = load i16, ptr %i.dr, align 2, !tbaa !47
  store i16 %i.dy, ptr %i.dn, align 2, !tbaa !47
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

_ZNSt6vectorItSaItEEC2ERKS1_.exit.i:              ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.dz = getelementptr inbounds i8, ptr %i.dn, i64 %i.dv
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !49
  %i.ea = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.eb, ptr %i.aj, align 8, !tbaa !54
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit

bb.ar:                                            ; preds = %.critedge
  invoke void @_ZNSt6vectorIS_ItSaItEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.ar
  %.pre150 = load ptr, ptr %7, align 8, !tbaa !51 ; 2 uses
  %.pre154 = ptrtoint ptr %.pre150 to i64
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i
  %.pre-phi = phi i64 [ %.pre154, %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.du, %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i ]
  %i.ec = phi ptr [ %.pre150, %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.dr, %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i ]
  %i.ed = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %.pre-phi
  %i.eg = lshr exact i64 %i.ef, 1
  %i.eh = trunc i64 %i.eg to i32
  invoke void @usrc_writeArray(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %i.ec, i32 noundef 16, i32 noundef %i.eh, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33)
          to label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread: ; preds = %bb.al, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit, %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit
  %.047129 = phi i64 [ %.047.lcssa, %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit ], [ %.047132, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit ], [ %.047132, %bb.al ]
  %switch.selectcmp = icmp eq i32 %i.au, 1
  %switch.selectcmp90 = icmp eq i32 %i.au, 0
  %DATAEXPORT_SCRIPT_X_WITH_COMMON.val = load i16, ptr @DATAEXPORT_SCRIPT_X_WITH_COMMON, align 2
  %DATAEXPORT_SCRIPT_X_WITH_INHERITED.val = load i16, ptr @DATAEXPORT_SCRIPT_X_WITH_INHERITED, align 2
  %DATAEXPORT_SCRIPT_X_WITH_OTHER.val = load i16, ptr @DATAEXPORT_SCRIPT_X_WITH_OTHER, align 2
  %switch.select.val = select i1 %switch.selectcmp, i16 %DATAEXPORT_SCRIPT_X_WITH_INHERITED.val, i16 %DATAEXPORT_SCRIPT_X_WITH_OTHER.val
  %.0 = select i1 %switch.selectcmp90, i16 %DATAEXPORT_SCRIPT_X_WITH_COMMON.val, i16 %switch.select.val
  %i.ei = zext i16 %.0 to i64
  %i.ej = or i64 %.047129, %i.ei
  %i.ek = trunc i64 %i.ej to i32
  %10 = load ptr, ptr %3, align 8, !tbaa !32      ; 3 uses
  invoke void @umutablecptrie_set_78(ptr noundef %10, i32 noundef %i.at, i32 noundef %i.ek, ptr noundef nonnull %i.e)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 413, ptr noundef %i.g)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.el = load ptr, ptr %7, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.em = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.ep) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.eq = load i32, ptr %i.u, align 8, !tbaa !130 ; 2 uses
  %i.er = load i32, ptr %i.v, align 4, !tbaa !131
  %i.es = icmp slt i32 %i.eq, %i.er
  br i1 %i.es, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.et = add nsw i32 %i.eq, 1                    ; 2 uses
  store i32 %i.et, ptr %i.u, align 8, !tbaa !130
  br label %_ZN6icu_786header21USetCodePointIteratorppEv.exit

bb.aw:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.eu = load i32, ptr %i.s, align 8, !tbaa !128 ; 2 uses
  %i.ev = load i32, ptr %i.t, align 4, !tbaa !129
  %i.ew = icmp slt i32 %i.eu, %i.ev
  br i1 %i.ew, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !43
  %i.ex = load ptr, ptr %6, align 8, !tbaa !127
  %i.ey = invoke i32 @uset_getItem_78(ptr noundef %i.ex, i32 noundef %i.eu, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a)
          to label %.noexc103 unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %bb.ax
  %i.ez = load i32, ptr %i.a, align 4, !tbaa !43
  %i.fa = icmp slt i32 %i.ez, 1
  %i.fb = icmp eq i32 %i.ey, 0
  %or.cond.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.noexc103
  %i.fc = load i32, ptr %i.s, align 8, !tbaa !128
  %i.fd = add nsw i32 %i.fc, 1
  store i32 %i.fd, ptr %i.s, align 8, !tbaa !128
  %.pre151.pre = load i32, ptr %i.u, align 8
  br label %bb.ba

bb.az:                                            ; preds = %.noexc103
  store i32 -1, ptr %i.v, align 4, !tbaa !131
  store i32 -1, ptr %i.u, align 8, !tbaa !130
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pre151 = phi i32 [ -1, %bb.az ], [ %.pre151.pre, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6icu_786header21USetCodePointIteratorppEv.exit

bb.bb:                                            ; preds = %bb.aw
  store i32 -1, ptr %i.v, align 4, !tbaa !131
  store i32 -1, ptr %i.u, align 8, !tbaa !130
  br label %_ZN6icu_786header21USetCodePointIteratorppEv.exit

_ZN6icu_786header21USetCodePointIteratorppEv.exit: ; preds = %bb.av, %bb.ba, %bb.bb
  %i.fe = phi i32 [ %i.et, %bb.av ], [ %.pre151, %bb.ba ], [ -1, %bb.bb ] ; 2 uses
  %i.ff = load ptr, ptr %6, align 8, !tbaa !127
  %i.fg = icmp ne ptr %i.ff, %5
  %i.fh = icmp ne i32 %i.fe, -1
  %.not3.i = select i1 %i.fg, i1 true, i1 %i.fh
  br i1 %.not3.i, label %bb.w, label %._crit_edge138

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i, %bb.ar, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, %.noexc94, %bb.aa, %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit, %bb.as, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread, %bb.ae, %.noexc.i.i.i
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %.pn76 = phi { ptr, i32 } [ %i.ck, %bb.ai ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fi = load ptr, ptr %7, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i104 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorItSaItEED2Ev.exit105, label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.fj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fm) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit105

_ZNSt6vectorItSaItEED2Ev.exit105:                 ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit105, %bb.ab
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %_ZNSt6vectorItSaItEED2Ev.exit105 ], [ %i.be, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %.loopexit.split-lp118

.loopexit.split-lp118:                            ; preds = %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bd
  %.pn76.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.bd ], [ %lpad.loopexit.split-lp197, %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bq

bb.be:                                            ; preds = %._crit_edge138
  store ptr %i.an, ptr %8, align 8, !tbaa !37
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 423, ptr noundef %i.g)
          to label %bb.bf unwind label %bb.bo

bb.bf:                                            ; preds = %bb.be
  %fwrite71 = call i64 @fwrite(ptr nonnull @.str.35, i64 36, i64 1, ptr %0) ; 0 uses
  invoke void @usrc_writeUCPTrie(ptr noundef %0, ptr noundef %i.h, ptr noundef %i.an, i32 noundef 1)
          to label %bb.bg unwind label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %.not.i106 = icmp eq ptr %i.an, null
  br i1 %.not.i106, label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @ucptrie_close_78(ptr noundef nonnull %i.an)
          to label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #24
  unreachable

_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit: ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.fp = load ptr, ptr %4, align 8, !tbaa !55    ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !54 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fp, %i.fr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fy, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i ], [ %i.fp, %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit ] ; 3 uses
  %i.fs = load ptr, ptr %.05.i.i.i, align 8, !tbaa !51 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !50
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #26
  br label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i:  ; preds = %bb.bj, %.lr.ph.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i107 = icmp eq ptr %i.fy, %i.fr
  br i1 %.not.i.i.i107, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit
  %i.fz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.fp, %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !56
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #26
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not.i108 = icmp eq ptr %i.al, null
  br i1 %.not.i108, label %_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit
  invoke void @umutablecptrie_close_78(ptr noundef nonnull %i.al)
          to label %_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #24
  unreachable

_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit: ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.bn:                                            ; preds = %._crit_edge138
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bf, %bb.be
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.bo ], [ %i.gh, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bq

bb.bq:                                            ; preds = %bb.v, %.loopexit.split-lp118, %bb.bp
  %.pn76.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bp ], [ %.pn76.pn.pn.pn.pn, %.loopexit.split-lp118 ], [ %i.as, %bb.v ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %5) #25
  br label %.body

.body:                                            ; preds = %bb.u, %bb.k, %bb.bq
  %.pn76.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %i.ar, %bb.u ], [ %i.q, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.br

bb.br:                                            ; preds = %.body, %bb.t
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.aq, %bb.t ]
  call void @_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.s
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.pn.pn, %bb.br ], [ %i.ap, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.r
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bs ]
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare i32 @umutablecptrie_get_78(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @uscript_getScriptExtensions_78(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @usrc_writeArray(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !51 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
end_hunk_0
