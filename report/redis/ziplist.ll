Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/ziplist?download=true
inline.NumInlined: 60
inline.NumDeleted: 6
begin_hunk_0_@zipStoreEntryEncoding:bb.a
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %2, 64
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not30 = icmp eq ptr %0, null
  br i1 %.not30, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = trunc nuw nsw i32 %2 to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !13
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.d = icmp ult i32 %2, 16384
  %.not29 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %i.d, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not29, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = lshr i32 %2, 8
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = or disjoint i8 %i.f, 64
  store i8 %i.g, ptr %i.a, align 1, !tbaa !13
  %i.h = trunc i32 %2 to i8
  %.1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.h, ptr %.1..1..1..1..sroa_idx, align 1, !tbaa !13
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  br i1 %.not29, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 -128, ptr %i.a, align 1, !tbaa !13
  %i.i = lshr i32 %2, 24
  %i.j = trunc nuw i32 %i.i to i8
  %.1..1..1..1..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %.1..1..1..1..sroa_idx35, align 1, !tbaa !13
  %i.k = lshr i32 %2, 16
  %i.l = trunc i32 %i.k to i8
  %.2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.l, ptr %.2..2..2..2..sroa_idx, align 1, !tbaa !13
  %i.m = lshr i32 %2, 8
  %i.n = trunc i32 %i.m to i8
  %.3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.n, ptr %.3..3..3..3..sroa_idx, align 1, !tbaa !13
  %i.o = trunc i32 %2 to i8
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.o, ptr %.4..4..4..4..sroa_idx, align 1, !tbaa !13
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %.not27 = icmp eq ptr %0, null
  br i1 %.not27, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %1, ptr %i.a, align 1, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.i, %bb.g, %bb.k
  %.0 = phi i8 [ 1, %bb.d ], [ 2, %bb.g ], [ 5, %bb.i ], [ 1, %bb.k ] ; 2 uses
  %i.p = zext nneg i8 %.0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.p, i1 false)
  %i.q = zext nneg i8 %.0 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.c, %bb.l
  %.025 = phi i32 [ %i.q, %bb.l ], [ 5, %bb.h ], [ 1, %bb.c ], [ 2, %bb.f ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @zipStorePrevEntryLengthLarge(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 1, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %1, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 1, 6) i32 @zipStorePrevEntryLength(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i32 %1, 254                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = select i1 %i.b, i32 1, i32 5
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.d, label %zipStorePrevEntryLengthLarge.exit

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nuw i32 %1 to i8
  store i8 %i.d, ptr %0, align 1, !tbaa !13
  br label %bb.e

zipStorePrevEntryLengthLarge.exit:                ; preds = %bb.c
  store i8 -2, ptr %0, align 1, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %1, ptr %i.e, align 1
  br label %bb.e

bb.e:                                             ; preds = %zipStorePrevEntryLengthLarge.exit, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.d ], [ 5, %zipStorePrevEntryLengthLarge.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -4, 5) i32 @zipPrevLenByteDiff(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13
  %i.b = icmp ult i8 %i.a, -2
  %. = select i1 %i.b, i32 -1, i32 -5
  %i.c = icmp ult i32 %1, 254
  %i.d = select i1 %i.c, i32 1, i32 5
  %i.e = add nsw i32 %., %i.d
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @zipTryEncoding(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = add i32 %1, -32
  %or.cond = icmp ult i32 %i.b, -31
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = call i32 @string2ll(ptr noundef %0, i64 noundef %i.c, ptr noundef nonnull %i.a) #18
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !14   ; 7 uses
  %or.cond3 = icmp ult i64 %i.e, 13
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = add nuw nsw i8 %i.f, -15
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.h = add i64 %i.e, 128
  %or.cond5 = icmp ult i64 %i.h, 256
  br i1 %or.cond5, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add i64 %i.e, 32768
  %or.cond7 = icmp ult i64 %i.i, 65536
  br i1 %or.cond7, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = add i64 %i.e, 8388608
  %or.cond9 = icmp ult i64 %i.j, 16777216
  br i1 %or.cond9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = add i64 %i.e, 2147483648
  %or.cond11 = icmp ult i64 %i.k, 4294967296
  %. = select i1 %or.cond11, i8 -48, i8 -32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi i8 [ %i.g, %bb.d ], [ -64, %bb.f ], [ -16, %bb.g ], [ %., %bb.h ], [ -2, %bb.e ]
  store i8 %.sink, ptr %3, align 1, !tbaa !13
  store i64 %i.e, ptr %2, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @zipSaveInteger(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = add i8 %2, 64                            ; 2 uses
  %i.b = tail call i8 @llvm.fshl.i8(i8 %i.a, i8 %i.a, i8 7)
  switch i8 %i.b, label %bb.g [
    i8 31, label %bb.b
    i8 0, label %bb.c
    i8 24, label %bb.d
    i8 8, label %bb.e
    i8 16, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %1 to i8
  store i8 %i.c, ptr %0, align 1, !tbaa !13
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %1 to i16
  store i16 %i.d, ptr %0, align 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %.1.extract.trunc = trunc i64 %1 to i24
  store i24 %.1.extract.trunc, ptr %0, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.e = trunc i64 %1 to i32
  store i32 %i.e, ptr %0, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  store i64 %1, ptr %0, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.f = add i8 %2, 15
  %or.cond = icmp ult i8 %i.f, 14
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 573) #18
  tail call void @abort() #19
  unreachable

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.f, %bb.d, %bb.b
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @zipLoadInteger(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = add i8 %1, 64                            ; 2 uses
  %i.b = tail call i8 @llvm.fshl.i8(i8 %i.a, i8 %i.a, i8 7)
  switch i8 %i.b, label %bb.g [
    i8 31, label %bb.b
    i8 0, label %bb.c
    i8 8, label %bb.d
    i8 24, label %bb.e
    i8 16, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !13
  %i.d = sext i8 %i.c to i64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.0.copyload7 = load i16, ptr %0, align 1
  %i.e = sext i16 %.0.copyload7 to i64
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %.0.copyload4 = load i32, ptr %0, align 1
  %i.f = sext i32 %.0.copyload4 to i64
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %.1.copyload = load i24, ptr %0, align 1
  %i.g = sext i24 %.1.copyload to i64
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %.0.copyload = load i64, ptr %0, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.h = add i8 %1, 15
  %or.cond = icmp ult i8 %i.h, 14
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = and i8 %1, 15
  %i.j = zext nneg i8 %i.i to i64
  %i.k = add nsw i64 %i.j, -1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 604) #18
  tail call void @abort() #19
  unreachable

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %.0.copyload, %bb.f ], [ %i.k, %bb.h ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ziplistNew() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(11) ptr @zmalloc(i64 noundef 11) #20 ; 5 uses
  store i32 11, ptr %i.a, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 10, ptr %i.b, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 0, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 -1, ptr %i.d, align 2, !tbaa !13
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ziplistResize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %1, 4294967295
  br i1 %i.a, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 723) #18
  tail call void @abort() #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @zrealloc(ptr noundef %0, i64 noundef %1) #21 ; 3 uses
  %i.c = trunc nuw i64 %1 to i32
  store i32 %i.c, ptr %i.b, align 4, !tbaa !9
  %i.d = getelementptr i8, ptr %i.b, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  store i8 -1, ptr %i.e, align 1, !tbaa !13
  ret ptr %i.b
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @__ziplistCascadeUpdate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.zlentry, align 8            ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %1, align 1, !tbaa !13
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @zipEntry(ptr noundef nonnull %1, ptr noundef %2)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23
  %i.m = add i32 %i.l, %i.j
  %.fr156 = freeze i32 %i.m                       ; 4 uses
  %i.n = zext i32 %.fr156 to i64                  ; 2 uses
  %i.o = icmp ult i32 %.fr156, 254                ; 2 uses
  %i.p = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %.not134 = icmp eq i8 %i.r, -1
  br i1 %.not134, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.s = select i1 %i.o, i32 1, i32 5
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.0140 = phi i64 [ 0, %.lr.ph ], [ %i.at, %bb.l ] ; 5 uses
  %.080139 = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.l ] ; 5 uses
  %.pn.in138 = phi ptr [ %1, %.lr.ph ], [ %.085135, %bb.l ] ; 4 uses
  %.083.in137 = phi i32 [ %i.s, %.lr.ph ], [ %i.aq, %bb.l ] ; 2 uses
  %.084136 = phi i64 [ %i.n, %.lr.ph ], [ %i.an, %bb.l ] ; 4 uses
  %.085135 = phi ptr [ %i.q, %.lr.ph ], [ %i.ar, %bb.l ] ; 13 uses
  %i.u = call fastcc i32 @zipEntrySafe(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef nonnull %.085135, ptr noundef %2, i32 noundef 0)
  %.not91 = icmp eq i32 %i.u, 0
  br i1 %.not91, label %bb.d, label %bb.e, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 770) #18
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4, !tbaa !25   ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp eq i64 %.084136, %i.w
  br i1 %i.x, label %zipStorePrevEntryLength.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %2, align 8, !tbaa !26     ; 2 uses
  %.not92 = icmp ult i32 %i.y, %.083.in137
  br i1 %.not92, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq i32 %i.y, %.083.in137
  %i.aa = trunc i64 %.084136 to i32               ; 3 uses
  br i1 %i.z, label %bb.h, label %zipStorePrevEntryLengthLarge.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ult i32 %i.aa, 254
  br i1 %i.ab, label %bb.i, label %zipStorePrevEntryLengthLarge.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ac = trunc i64 %.084136 to i8
  store i8 %i.ac, ptr %.085135, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLengthLarge.exit.i:              ; preds = %bb.h
  store i8 -2, ptr %.085135, align 1, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.085135, i64 1
  store i32 %i.aa, ptr %i.ad, align 1
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLengthLarge.exit:                ; preds = %bb.g
  store i8 -2, ptr %.085135, align 1, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.085135, i64 1
  store i32 %i.aa, ptr %i.ae, align 1
  br label %zipStorePrevEntryLength.exit

bb.j:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.v, 0
  %i.ag = add nuw nsw i64 %i.w, 4
  %i.ah = icmp eq i64 %i.ag, %.084136
end_hunk_0
