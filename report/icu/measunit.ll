Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/measunit?download=true
inline.NumInlined: 326
inline.NumDeleted: 51
begin_hunk_0_@_ZN6icu_7811MeasureUnit12getAvailableEPKcPS0_iR10UErrorCode:bb.a
  %i.i = getelementptr inbounds [8 x i8], ptr @_ZN6icu_78L6gTypesE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %i.j)
  %i.k = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %i.c, i32 %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = add nsw i32 %i.g, 1
  br label %bb.e, !llvm.loop !1

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = icmp eq i32 %i.k, 0
  br i1 %i.n, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.118.i = phi i32 [ %.01724.i, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.116.i = phi i32 [ %i.m, %bb.c ], [ %.01525.i, %bb.d ] ; 2 uses
  %i.o = icmp slt i32 %.116.i, %.118.i
  br i1 %i.o, label %.lr.ph.i, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit.thread

_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit: ; preds = %bb.d
  %.off = add i32 %i.f, 3
  %i.p = icmp ult i32 %.off, 2
  br i1 %i.p, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit
  %i.q = getelementptr [4 x i8], ptr @_ZN6icu_78L8gOffsetsE, i64 %i.h ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  %i.t = load i32, ptr %i.q, align 4, !tbaa !36
  %i.u = sub nsw i32 %i.s, %i.t                   ; 6 uses
  %i.v = icmp slt i32 %2, %i.u
  br i1 %i.v, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.w = icmp sgt i32 %i.u, 0
  br i1 %i.w, label %.lr.ph.preheader, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f
  store i32 15, ptr %3, align 4, !tbaa !12
  br label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  call void @_ZN6icu_7811MeasureUnit5setToEii(ptr noundef nonnull align 8 dereferenceable(19) %i.x, i32 noundef %i.g, i32 noundef %i.y)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit.thread, label %.lr.ph, !llvm.loop !53

_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit.thread: ; preds = %bb.e, %.lr.ph, %.preheader, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit, %bb.g, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit ], [ %i.u, %.preheader ], [ %i.u, %bb.g ], [ %i.u, %.lr.ph ], [ 0, %bb.e ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7811MeasureUnit17getAvailableTypesER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @uenum_openCharStringsEnumeration_78(ptr noundef nonnull @_ZN6icu_78L6gTypesE, i32 noundef 24, ptr noundef nonnull %0) ; 2 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !12
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #17 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_7818UStringEnumerationC1EP12UEnumeration(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef %i.a)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 4, !tbaa !12
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.d) #17
  resume { ptr, i32 } %i.f

.sink.split:                                      ; preds = %bb.a, %bb.d
  tail call void @uenum_close_78(ptr noundef %i.a)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %.1 = phi ptr [ %i.d, %bb.c ], [ null, %.sink.split ]
  ret ptr %.1
}

declare ptr @uenum_openCharStringsEnumeration_78(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @uenum_close_78(ptr noundef) local_unnamed_addr #5

declare void @_ZN6icu_7818UStringEnumerationC1EP12UEnumeration(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811MeasureUnit8initTimeEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(19) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %3 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull @.str.1)
  %i.a = load ptr, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.a
  %.01525.i = phi i32 [ %.116.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.01724.i = phi i32 [ %.118.i, %bb.d ], [ 24, %bb.a ] ; 2 uses
  %i.d = add nsw i32 %.01724.i, %.01525.i
  %i.e = sdiv i32 %i.d, 2                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN6icu_78L6gTypesE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef %i.h)
  %i.i = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.a, i32 %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = add nsw i32 %i.e, 1
  br label %bb.d, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = icmp eq i32 %i.i, 0
  br i1 %i.l, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.118.i = phi i32 [ %.01724.i, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %.116.i = phi i32 [ %i.k, %bb.b ], [ %.01525.i, %bb.c ] ; 2 uses
  %i.m = icmp slt i32 %.116.i, %.118.i
  br i1 %i.m, label %.lr.ph.i, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit

_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit: ; preds = %bb.c, %bb.d
  %.2.i = phi i32 [ -1, %bb.d ], [ %i.e, %bb.c ]  ; 2 uses
  %i.n = trunc i32 %.2.i to i8                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  store i8 %i.n, ptr %i.o, align 2, !tbaa !22
  %i.p = sext i8 %i.n to i64
  %i.q = getelementptr inbounds [4 x i8], ptr @_ZN6icu_78L8gOffsetsE, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !36   ; 2 uses
  %sext = shl i32 %.2.i, 24
  %i.s = ashr exact i32 %sext, 24
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [4 x i8], ptr @_ZN6icu_78L8gOffsetsE, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36   ; 2 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %1)
  %i.x = load ptr, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp slt i32 %i.r, %i.w
  br i1 %i.aa, label %.lr.ph.i4, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit9

.lr.ph.i4:                                        ; preds = %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit, %bb.g
  %.01525.i5 = phi i32 [ %.116.i8, %bb.g ], [ %i.r, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit ] ; 2 uses
  %.01724.i6 = phi i32 [ %.118.i7, %bb.g ], [ %i.w, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit ] ; 2 uses
  %i.ab = add nsw i32 %.01724.i6, %.01525.i5
  %i.ac = sdiv i32 %i.ab, 2                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr @_ZN6icu_78L9gSubTypesE, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !37
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %i.af)
  %i.ag = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %i.x, i32 %i.z) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i4
  %i.ai = add nsw i32 %i.ac, 1
  br label %bb.g, !llvm.loop !1

bb.f:                                             ; preds = %.lr.ph.i4
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.118.i7 = phi i32 [ %.01724.i6, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %.116.i8 = phi i32 [ %i.ai, %bb.e ], [ %.01525.i5, %bb.f ] ; 2 uses
  %i.ak = icmp slt i32 %.116.i8, %.118.i7
  br i1 %i.ak, label %.lr.ph.i4, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit9

_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit9: ; preds = %bb.f, %bb.g, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit
  %.2.i3 = phi i32 [ 65535, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit ], [ 65535, %bb.g ], [ %i.ac, %bb.f ]
  %i.al = load i8, ptr %i.o, align 2, !tbaa !22
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr @_ZN6icu_78L8gOffsetsE, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !36
  %i.ap = sub i32 %.2.i3, %i.ao
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.aq, ptr %i.ar, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811MeasureUnit12initCurrencyENS_11StringPieceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(19) %0, ptr %1, i32 %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull @.str.2)
  %i.a = load ptr, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i32, ptr %i.b, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.a
  %.01525.i = phi i32 [ %.116.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.01724.i = phi i32 [ %.118.i, %bb.d ], [ 24, %bb.a ] ; 2 uses
  %i.d = add nsw i32 %.01724.i, %.01525.i
  %i.e = sdiv i32 %i.d, 2                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN6icu_78L6gTypesE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %i.h)
  %i.i = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %i.a, i32 %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = add nsw i32 %i.e, 1
  br label %bb.d, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = icmp eq i32 %i.i, 0
  br i1 %i.l, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.118.i = phi i32 [ %.01724.i, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %.116.i = phi i32 [ %i.k, %bb.b ], [ %.01525.i, %bb.c ] ; 2 uses
  %i.m = icmp slt i32 %.116.i, %.118.i
  br i1 %i.m, label %.lr.ph.i, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit

_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit: ; preds = %bb.c, %bb.d
  %.2.i = phi i32 [ -1, %bb.d ], [ %i.e, %bb.c ]  ; 2 uses
  %i.n = trunc i32 %.2.i to i8                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  store i8 %i.n, ptr %i.o, align 2, !tbaa !22
  %i.p = sext i8 %i.n to i64
  %i.q = getelementptr inbounds [4 x i8], ptr @_ZN6icu_78L8gOffsetsE, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !36   ; 2 uses
  %sext = shl i32 %.2.i, 24
  %i.s = ashr exact i32 %sext, 24
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [4 x i8], ptr @_ZN6icu_78L8gOffsetsE, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36   ; 2 uses
  %i.x = icmp slt i32 %i.r, %i.w
  br i1 %i.x, label %.lr.ph.i22, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27.thread

.lr.ph.i22:                                       ; preds = %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit, %bb.g
  %.01525.i23 = phi i32 [ %.116.i26, %bb.g ], [ %i.r, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit ] ; 2 uses
  %.01724.i24 = phi i32 [ %.118.i25, %bb.g ], [ %i.w, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit ] ; 2 uses
  %i.y = add nsw i32 %.01724.i24, %.01525.i23     ; 2 uses
  %i.z = sdiv i32 %i.y, 2                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr @_ZN6icu_78L9gSubTypesE, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %i.ac)
  %i.ad = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %1, i32 %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i22
  %i.af = add nsw i32 %i.z, 1
  br label %bb.g, !llvm.loop !1

bb.f:                                             ; preds = %.lr.ph.i22
  %i.ag = icmp eq i32 %i.ad, 0
  br i1 %i.ag, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.118.i25 = phi i32 [ %.01724.i24, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %.116.i26 = phi i32 [ %i.af, %bb.e ], [ %.01525.i23, %bb.f ] ; 2 uses
  %i.ah = icmp slt i32 %.116.i26, %.118.i25
  br i1 %i.ah, label %.lr.ph.i22, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27.thread

_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27: ; preds = %bb.f
  %.off = add i32 %i.y, 3
  %i.ai = icmp ult i32 %.off, 2
  br i1 %i.ai, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27.thread, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit34

_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27.thread: ; preds = %bb.g, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27
  %i.aj = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 112) #17 ; 11 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN6icu_7815MeasureUnitImpl15forCurrencyCodeENS_11StringPieceER10UErrorCode.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27.thread
  store i32 0, ptr %i.aj, align 8, !tbaa !42, !alias.scope !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store i32 0, ptr %i.al, align 8, !tbaa !30, !alias.scope !56
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.an, ptr %i.am, align 8, !tbaa !32, !alias.scope !56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 8, ptr %i.ao, align 8, !tbaa !43, !alias.scope !56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 28 ; 2 uses
  store i8 0, ptr %i.ap, align 4, !tbaa !31, !alias.scope !56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !alias.scope !56
  %i.ar = sext i32 %2 to i64                      ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = add nsw i64 %i.ar, 1
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef null) #17
  %i.at = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.as) #17 ; 3 uses
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !25, !alias.scope !56
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i.thread, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i

_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %1, i64 %i.ar, i1 false)
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !25, !alias.scope !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  store i8 0, ptr %i.av, align 1, !tbaa !45
  %.pre.i = load ptr, ptr %i.aq, align 8, !tbaa !25, !alias.scope !56
  %.not = icmp eq ptr %.pre.i, null
  br i1 %.not, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i.thread, label %.critedge

_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.h
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef null) #17
  store ptr null, ptr %i.aq, align 8, !tbaa !25, !alias.scope !56
  br label %.critedge

_ZN6icu_7815MeasureUnitImpl15forCurrencyCodeENS_11StringPieceER10UErrorCode.exit: ; preds = %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !20
  br label %bb.o

.critedge:                                        ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i, %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !20
  br label %bb.s

_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i.thread: ; preds = %bb.i, %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ay, align 8, !tbaa !20
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef null) #17
  %i.az = load i32, ptr %i.al, align 8, !tbaa !30 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i.thread
  %i.bb = load i8, ptr %i.ap, align 4, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !32
  invoke void @uprv_free_78(ptr noundef %i.bc)
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #18
  unreachable

.lr.ph.i.i:                                       ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i.thread, %bb.m
  %i.bf = phi i32 [ %i.bk, %bb.m ], [ %i.az, %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i.thread ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.m ], [ 0, %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm.i.thread ] ; 2 uses
  %i.bg = load ptr, ptr %i.am, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bi) #17
  %.pre.i.i = load i32, ptr %i.al, align 8, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.bk = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.pre.i.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next.i.i, %i.bl
  br i1 %i.bm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

bb.n:                                             ; preds = %bb.j, %._crit_edge.i.i
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.aj) #17
  store ptr null, ptr %i.ay, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %_ZN6icu_7815MeasureUnitImpl15forCurrencyCodeENS_11StringPieceER10UErrorCode.exit, %bb.n
  %i.bn = load i8, ptr %i.o, align 2, !tbaa !22
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr @_ZN6icu_78L8gOffsetsE, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !36 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !36 ; 2 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull @.str.347)
  %i.bt = load ptr, ptr %7, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = icmp slt i32 %i.bq, %i.bs
  br i1 %i.bw, label %.lr.ph.i29, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit34

.lr.ph.i29:                                       ; preds = %bb.o, %bb.r
  %.01525.i30 = phi i32 [ %.116.i33, %bb.r ], [ %i.bq, %bb.o ] ; 2 uses
  %.01724.i31 = phi i32 [ %.118.i32, %bb.r ], [ %i.bs, %bb.o ] ; 2 uses
  %i.bx = add nsw i32 %.01724.i31, %.01525.i30
  %i.by = sdiv i32 %i.bx, 2                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr @_ZN6icu_78L9gSubTypesE, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !37
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef %i.cb)
  %i.cc = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.bt, i32 %i.bv) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i29
  %i.ce = add nsw i32 %i.by, 1
  br label %bb.r, !llvm.loop !1

bb.q:                                             ; preds = %.lr.ph.i29
  %i.cf = icmp eq i32 %i.cc, 0
  br i1 %i.cf, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit34, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.118.i32 = phi i32 [ %.01724.i31, %bb.p ], [ %i.by, %bb.q ] ; 2 uses
  %.116.i33 = phi i32 [ %i.ce, %bb.p ], [ %.01525.i30, %bb.q ] ; 2 uses
  %i.cg = icmp slt i32 %.116.i33, %.118.i32
  br i1 %i.cg, label %.lr.ph.i29, label %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit34

_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit34: ; preds = %bb.r, %bb.q, %bb.o, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27
  %.1 = phi i32 [ %i.z, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit27 ], [ 65535, %bb.o ], [ 65535, %bb.r ], [ %i.by, %bb.q ]
  %i.ch = load i8, ptr %i.o, align 2, !tbaa !22
  %i.ci = sext i8 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr @_ZN6icu_78L8gOffsetsE, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !36
  %i.cl = sub i32 %.1, %i.ck
  %i.cm = trunc i32 %i.cl to i16
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit34
  %.sink = phi i16 [ -1, %.critedge ], [ %i.cm, %_ZN6icu_78L12binarySearchEPKPKciiNS_11StringPieceE.exit34 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sink, ptr %i.cn, align 8, !tbaa !21
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydaEPv(ptr noundef) local_unnamed_addr #3

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !35}
!1 = distinct !{!1, !35}
!2 = distinct !{!2, !35}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"_ZTS10UErrorCode", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"vtable pointer", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSN6icu_787UObjectE"}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"p1 _ZTSN6icu_7815MeasureUnitImplE", !16, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = !{!"_ZTSN6icu_7811MeasureUnitE", !15, i64 0, !17, i64 8, !18, i64 16, !7, i64 18}
!20 = !{!19, !17, i64 8}
!21 = !{!19, !18, i64 16}
!22 = !{!19, !7, i64 18}
!23 = !{!"p1 omnipotent char", !16, i64 0}
!24 = !{!"_ZTSN6icu_7811FixedStringE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"any p2 pointer", !16, i64 0}
!27 = !{!"p2 _ZTSN6icu_7814SingleUnitImplE", !26, i64 0}
!28 = !{!"_ZTSN6icu_7815MaybeStackArrayIPNS_14SingleUnitImplELi8EEE", !27, i64 0, !8, i64 8, !7, i64 12, !7, i64 16}
!29 = !{!"_ZTSN6icu_7810MemoryPoolINS_14SingleUnitImplELi8EEE", !8, i64 0, !28, i64 8}
!30 = !{!29, !8, i64 0}
!31 = !{!28, !7, i64 12}
!32 = !{!28, !27, i64 0}
!33 = !{!"p1 _ZTSN6icu_7814SingleUnitImplE", !16, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!8, !8, i64 0}
!37 = !{!23, !23, i64 0}
!38 = !{!"_ZTSN6icu_7822UMeasureUnitComplexityE", !7, i64 0}
!39 = !{!"_ZTSN6icu_7816MaybeStackVectorINS_14SingleUnitImplELi8EEE", !29, i64 0}
!40 = !{!"long", !7, i64 0}
!41 = !{!"_ZTSN6icu_7815MeasureUnitImplE", !38, i64 0, !39, i64 8, !24, i64 96, !40, i64 104}
!42 = !{!41, !38, i64 0}
!43 = !{!28, !8, i64 8}
!44 = !{!41, !40, i64 104}
!45 = !{!7, !7, i64 0}
!46 = !{!"_ZTSN6icu_789ErrorCodeE", !11, i64 8}
!47 = !{!46, !11, i64 8}
!48 = distinct !{!48, !35}
!49 = !{!"_ZTSSt9type_info", !23, i64 8}
!50 = !{!49, !23, i64 8}
!51 = distinct !{!51, !35}
!52 = distinct !{!52, !35}
!53 = distinct !{!53, !35}
!54 = distinct !{!54, i1 true, !"_ZN6icu_7815MeasureUnitImpl15forCurrencyCodeENS_11StringPieceER10UErrorCode"}
!55 = distinct !{!55, !54, !"_ZN6icu_7815MeasureUnitImpl15forCurrencyCodeENS_11StringPieceER10UErrorCode: argument 0"}
!56 = !{!55}
end_hunk_0
