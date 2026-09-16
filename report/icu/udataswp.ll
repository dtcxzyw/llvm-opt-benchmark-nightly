Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/udataswp?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
begin_hunk_0_@udata_swapInvStringBlock_78:bb.a
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %.not43 = icmp eq i8 %i.l, 0
  br i1 %.not43, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.m = add nsw i32 %.047, -1
  %i.n = icmp sgt i32 %.047, 1
  br i1 %i.n, label %.lr.ph, label %.critedge, !llvm.loop !35

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %bb.f ], [ %.047, %.lr.ph ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = tail call noundef i32 %i.p(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %.0.lcssa, ptr noundef %3, ptr noundef nonnull %4) ; 0 uses
  %.not44 = icmp ne ptr %1, %3
  %i.r = icmp sgt i32 %2, %.0.lcssa
  %or.cond46 = and i1 %.not44, %i.r
  br i1 %or.cond46, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.s = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.v = sub nsw i32 %2, %.0.lcssa
  %i.w = zext nneg i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %i.x = load i32, ptr %4, align 4, !tbaa !13
  %i.y = icmp sgt i32 %i.x, 0
  %. = select i1 %i.y, i32 0, i32 %2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.b, %bb.e
  %.037 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %., %bb.h ], [ 0, %bb.b ]
  ret i32 %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @udata_printError_78(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  call void %i.c(ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: mustprogress uwtable
define range(i32 0, 65536) i32 @udata_swapDataHeader_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !13
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, -1
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %2, 0                       ; 2 uses
  %i.h = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4, !tbaa !13
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %or.cond7 = icmp ult i32 %2, 24
  br i1 %or.cond7, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !21
  %.not90 = icmp eq i8 %i.j, -38
  br i1 %.not90, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22
  %.not91 = icmp eq i8 %i.l, 39
  br i1 %.not91, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !23
  %.not92 = icmp eq i8 %i.o, 2
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.g
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str)
  store i32 16, ptr %4, align 4, !tbaa !13
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.r = load i16, ptr %1, align 2, !tbaa !24
  %i.s = tail call noundef zeroext i16 %i.q(i16 noundef zeroext %i.r) ; 4 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.u = load i16, ptr %i.m, align 2, !tbaa !25
  %i.v = tail call noundef zeroext i16 %i.t(i16 noundef zeroext %i.u) ; 3 uses
  %i.w = zext i16 %i.s to i64                     ; 2 uses
  %i.x = icmp ult i16 %i.s, 24
  %i.y = icmp ult i16 %i.v, 20
  %or.cond10 = or i1 %i.x, %i.y
  br i1 %or.cond10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = zext i16 %i.v to i64
  %i.aa = add nuw nsw i64 %i.z, 4                 ; 4 uses
  %i.ab = icmp samesign ugt i64 %i.aa, %i.w
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = zext i16 %i.s to i32                    ; 5 uses
  %or.cond96 = icmp ult i32 %2, %i.ac
  br i1 %or.cond96, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ad = zext i16 %i.s to i32
  %i.ae = zext i16 %i.v to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %2)
  store i32 8, ptr %4, align 4, !tbaa !13
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  br i1 %i.g, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.not93 = icmp eq ptr %1, %3
  br i1 %.not93, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 2 %1, i64 %i.w, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.ag, ptr %i.ai, align 2, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef %3, ptr noundef nonnull %4) ; 0 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.aq = tail call noundef i32 %i.ap(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 4, ptr noundef nonnull %i.ah, ptr noundef nonnull %4) ; 0 uses
  %i.ar = trunc nuw nsw i64 %i.aa to i32          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa ; 2 uses
  %.not = icmp eq i32 %i.ac, %i.ar
  br i1 %.not, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.at = sub nsw i32 %i.ac, %i.ar
  %smax = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %.not94 = icmp eq i8 %i.av, 0
  br i1 %.not94, label %.critedge.loopexit.split.loop.exit111, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !38

.critedge.loopexit.split.loop.exit111:            ; preds = %.lr.ph
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %.critedge.loopexit.split.loop.exit111, %bb.r
  %.081.lcssa = phi i32 [ 0, %bb.r ], [ %i.aw, %.critedge.loopexit.split.loop.exit111 ], [ %smax, %bb.s ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  %i.ba = tail call noundef i32 %i.ay(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i32 noundef %.081.lcssa, ptr noundef nonnull %i.az, ptr noundef nonnull %4) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %.critedge, %bb.a, %bb.b, %bb.n, %bb.j, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.n ], [ 0, %bb.b ], [ %i.ac, %.critedge ], [ %i.ac, %bb.o ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @udata_openSwapper_78(i8 noundef signext %0, i8 noundef zeroext %1, i8 noundef signext %2, i8 noundef zeroext %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !13
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = or i8 %3, %1
  %or.cond.not = icmp ult i8 %i.d, 2
  br i1 %or.cond.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4, !tbaa !13
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = tail call noalias dereferenceable_or_null(96) ptr @uprv_malloc_78(i64 noundef 96) #12 ; 18 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %4, align 4, !tbaa !13
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, i8 0, i64 96, i1 false)
  store i8 %0, ptr %i.e, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %1, ptr %i.g, align 1, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %2, ptr %i.h, align 2, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store i8 %3, ptr %i.i, align 1, !tbaa !28
  %i.j = icmp eq i8 %0, 0                         ; 2 uses
  %_ZL21uprv_readDirectUInt16t._ZL19uprv_readSwapUInt16t = select i1 %i.j, ptr @_ZL21uprv_readDirectUInt16t, ptr @_ZL19uprv_readSwapUInt16t
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %_ZL21uprv_readDirectUInt16t._ZL19uprv_readSwapUInt16t, ptr %i.k, align 8, !tbaa !10
  %i.l = select i1 %i.j, ptr @_ZL21uprv_readDirectUInt32j, ptr @_ZL19uprv_readSwapUInt32j
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !11
  %i.n = icmp eq i8 %2, 0                         ; 2 uses
  %i.o = select i1 %i.n, ptr @_ZL22uprv_writeDirectUInt16Ptt, ptr @_ZL20uprv_writeSwapUInt16Ptt
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !41
  %i.q = select i1 %i.n, ptr @_ZL22uprv_writeDirectUInt32Pjj, ptr @_ZL20uprv_writeSwapUInt32Pjj
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.q, ptr %i.r, align 8, !tbaa !42
  %i.s = icmp eq i8 %3, 0                         ; 2 uses
  %i.t = select i1 %i.s, ptr @uprv_compareInvAscii_78, ptr @uprv_compareInvEbcdic_78
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !43
  %i.v = icmp eq i8 %0, %2                        ; 3 uses
  %_ZL16uprv_swapArray16PK12UDataSwapperPKviPvP10UErrorCode.sink = select i1 %i.v, ptr @_ZL16uprv_copyArray16PK12UDataSwapperPKviPvP10UErrorCode, ptr @_ZL16uprv_swapArray16PK12UDataSwapperPKviPvP10UErrorCode
  %_ZL16uprv_swapArray32PK12UDataSwapperPKviPvP10UErrorCode.sink = select i1 %i.v, ptr @_ZL16uprv_copyArray32PK12UDataSwapperPKviPvP10UErrorCode, ptr @_ZL16uprv_swapArray32PK12UDataSwapperPKviPvP10UErrorCode
  %_ZL16uprv_swapArray64PK12UDataSwapperPKviPvP10UErrorCode.sink = select i1 %i.v, ptr @_ZL16uprv_copyArray64PK12UDataSwapperPKviPvP10UErrorCode, ptr @_ZL16uprv_swapArray64PK12UDataSwapperPKviPvP10UErrorCode
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %_ZL16uprv_swapArray16PK12UDataSwapperPKviPvP10UErrorCode.sink, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %_ZL16uprv_swapArray32PK12UDataSwapperPKviPvP10UErrorCode.sink, ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %_ZL16uprv_swapArray64PK12UDataSwapperPKviPvP10UErrorCode.sink, ptr %i.y, align 8, !tbaa !45
  %i.z = icmp eq i8 %1, 0
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %uprv_copyAscii_78.uprv_ebcdicFromAscii_78 = select i1 %i.s, ptr @uprv_copyAscii_78, ptr @uprv_ebcdicFromAscii_78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %uprv_copyAscii_78.uprv_ebcdicFromAscii_78, ptr %i.aa, align 8, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i8 %3, 1
  %uprv_copyEbcdic_78.uprv_asciiFromEbcdic_78 = select i1 %i.ab, ptr @uprv_copyEbcdic_78, ptr @uprv_asciiFromEbcdic_78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %uprv_copyEbcdic_78.uprv_asciiFromEbcdic_78, ptr %i.ac, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a, %bb.b, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ %i.e, %bb.i ], [ %i.e, %bb.h ]
  ret ptr %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i16 @_ZL21uprv_readDirectUInt16t(i16 noundef returned zeroext %0) #5 {
bb.a:
  ret i16 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i16 @_ZL19uprv_readSwapUInt16t(i16 noundef zeroext %0) #5 {
bb.a:
  %i.a = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL21uprv_readDirectUInt32j(i32 noundef returned %0) #5 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL19uprv_readSwapUInt32j(i32 noundef %0) #5 {
bb.a:
  %i.a = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL22uprv_writeDirectUInt16Ptt(ptr nofree noundef writeonly captures(none) initializes((0, 2)) %0, i16 noundef zeroext %1) #6 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL20uprv_writeSwapUInt16Ptt(ptr nofree noundef writeonly captures(none) initializes((0, 2)) %0, i16 noundef zeroext %1) #6 {
bb.a:
  %i.a = tail call i16 @llvm.bswap.i16(i16 %1)
  store i16 %i.a, ptr %0, align 2, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL22uprv_writeDirectUInt32Pjj(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) #6 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL20uprv_writeSwapUInt32Pjj(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) #6 {
bb.a:
  %i.a = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.a, ptr %0, align 4, !tbaa !32
  ret void
}

declare i32 @uprv_compareInvAscii_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #7

declare i32 @uprv_compareInvEbcdic_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL16uprv_copyArray16PK12UDataSwapperPKviPvP10UErrorCode(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address) %3, ptr nofree noundef captures(address_is_null) %4) #8 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !13
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  %i.g = trunc i32 %2 to i1
  %i.h = icmp eq ptr %3, null
  %or.cond5 = or i1 %i.h, %i.g
  %or.cond26 = or i1 %or.cond3, %or.cond5
  br i1 %or.cond26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4, !tbaa !13
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %2, 0
  %.not24 = icmp eq ptr %1, %3
  %or.cond27 = or i1 %i.i, %.not24
  br i1 %or.cond27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %1, i64 %i.j, i1 false)
end_hunk_0
begin_hunk_1_@_ZL16uprv_swapArray32PK12UDataSwapperPKviPvP10UErrorCode:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %.034 = phi i32 [ %i.ad, %.lr.ph ], [ %.034.ph, %.lr.ph.preheader43 ] ; 2 uses
  %.02533 = phi ptr [ %i.ac, %.lr.ph ], [ %.02533.ph, %.lr.ph.preheader43 ] ; 2 uses
  %.02632 = phi ptr [ %i.z, %.lr.ph ], [ %.02632.ph, %.lr.ph.preheader43 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02632, i64 4
  %i.aa = load i32, ptr %.02632, align 4, !tbaa !32
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %.02533, i64 4
  store i32 %i.ab, ptr %.02533, align 4, !tbaa !32
  %i.ad = add nsw i32 %.034, -1
  %i.ae = icmp samesign ugt i32 %.034, 1
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.f, %bb.a, %bb.b, %bb.e
  %.027 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ %2, %middle.block ], [ %2, %.lr.ph ]
  ret i32 %.027
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL16uprv_swapArray64PK12UDataSwapperPKviPvP10UErrorCode(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) #9 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !13
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %2, 7
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp eq ptr %3, null
  %or.cond5 = or i1 %i.h, %i.i
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4, !tbaa !13
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.j = lshr exact i32 %2, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03039 = phi i32 [ %i.o, %.lr.ph ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.03138 = phi ptr [ %i.n, %.lr.ph ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.03237 = phi ptr [ %i.k, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03237, i64 8
  %i.l = load i64, ptr %.03237, align 8, !tbaa !54
  %i.m = tail call i64 @llvm.bswap.i64(i64 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %.03138, i64 8
  store i64 %i.m, ptr %.03138, align 8, !tbaa !54
  %i.o = add nsw i32 %.03039, -1
  %i.p = icmp samesign ugt i32 %.03039, 1
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !52

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ %2, %.lr.ph ]
  ret i32 %.0
}

declare i32 @uprv_copyAscii_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

declare i32 @uprv_ebcdicFromAscii_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

declare i32 @uprv_copyEbcdic_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

declare i32 @uprv_asciiFromEbcdic_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: mustprogress uwtable
define noundef ptr @udata_openSwapperForInputData_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i8 noundef signext %2, i8 noundef zeroext %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !13
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond = icmp ult i32 %1, 24
  %i.e = icmp ugt i8 %3, 1
  %or.cond4 = or i1 %or.cond, %i.e
  br i1 %or.cond4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4, !tbaa !13
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !21
  %.not50 = icmp eq i8 %i.g, -38
  br i1 %.not50, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22
  %.not51 = icmp eq i8 %i.i, 39
  br i1 %.not51, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = load i8, ptr %i.k, align 2, !tbaa !23
  %.not52 = icmp eq i8 %i.l, 2
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store i32 16, ptr %4, align 4, !tbaa !13
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i8, ptr %i.m, align 2, !tbaa !27    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  %i.q = icmp eq i8 %i.n, 0
  %i.r = load i16, ptr %0, align 2, !tbaa !24     ; 2 uses
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = load i16, ptr %i.j, align 2, !tbaa !25
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.u = load i16, ptr %i.j, align 2, !tbaa !25
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.043 = phi i16 [ %i.r, %bb.k ], [ %i.t, %bb.l ] ; 3 uses
  %.0 = phi i16 [ %i.s, %bb.k ], [ %i.v, %bb.l ]  ; 2 uses
  %i.w = icmp ult i16 %.043, 24
  %i.x = icmp ult i16 %.0, 20
  %or.cond9 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond9, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = zext i16 %.0 to i64
  %i.z = zext i16 %.043 to i64
  %i.aa = add nuw nsw i64 %i.y, 4
  %i.ab = icmp samesign ugt i64 %i.aa, %i.z
  %i.ac = zext i16 %.043 to i32
  %or.cond54 = icmp ult i32 %1, %i.ac
  %or.cond55 = or i1 %or.cond54, %i.ab
  br i1 %or.cond55, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 16, ptr %4, align 4, !tbaa !13
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ad = tail call ptr @udata_openSwapper_78(i8 noundef signext %i.n, i8 noundef zeroext %i.p, i8 noundef signext %2, i8 noundef zeroext %3, ptr noundef nonnull %4)
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.b, %bb.p, %bb.o, %bb.i, %bb.e
  %.044 = phi ptr [ %i.ad, %bb.p ], [ null, %bb.e ], [ null, %bb.i ], [ null, %bb.o ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.044
}

; Function Attrs: mustprogress uwtable
define void @udata_closeSwapper_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @uprv_free_78(ptr noundef %0)
  ret void
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"_ZTS12UDataSwapper", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88}
!10 = !{!9, !8, i64 8}
!11 = !{!9, !8, i64 16}
!12 = !{!"_ZTS10UErrorCode", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!9, !8, i64 72}
!17 = !{!"short", !4, i64 0}
!18 = !{!"_ZTS10MappedData", !17, i64 0, !4, i64 2, !4, i64 3}
!19 = !{!"_ZTS9UDataInfo", !17, i64 0, !17, i64 2, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7, !4, i64 8, !4, i64 12, !4, i64 16}
!20 = !{!"_ZTS10DataHeader", !18, i64 0, !19, i64 4}
!21 = !{!20, !4, i64 2}
!22 = !{!20, !4, i64 3}
!23 = !{!20, !4, i64 10}
!24 = !{!20, !17, i64 0}
!25 = !{!20, !17, i64 4}
!26 = !{!9, !4, i64 2}
!27 = !{!20, !4, i64 8}
!28 = !{!9, !4, i64 3}
!29 = !{!20, !4, i64 9}
!30 = !{!9, !8, i64 48}
!31 = !{!17, !17, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !15}
!36 = !{!9, !8, i64 80}
!37 = !{!9, !8, i64 88}
!38 = distinct !{!38, !15}
!39 = !{!9, !4, i64 0}
!40 = !{!9, !4, i64 1}
!41 = !{!9, !8, i64 32}
!42 = !{!9, !8, i64 40}
!43 = !{!9, !8, i64 24}
!44 = !{!9, !8, i64 56}
!45 = !{!9, !8, i64 64}
!46 = distinct !{!46, !15, !33, !34}
!47 = distinct !{!47, !15, !33, !34}
!48 = distinct !{!48, !15, !33}
!49 = !{!"branch_weights", i32 8, i32 8}
!50 = distinct !{!50, !15, !33, !34}
!51 = distinct !{!51, !15, !33}
!52 = distinct !{!52, !15}
!53 = !{!"long", !4, i64 0}
!54 = !{!53, !53, i64 0}
end_hunk_1
