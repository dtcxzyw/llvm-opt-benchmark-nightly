inline.NumInlined: 97
inline.NumDeleted: 9
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIN9Imath_3_14halfEEC2ERNS_14FlatImageLevelEiib:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIN9Imath_3_14halfEE6resizeEv.exit unwind label %bb.b, !inline_history !25

_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIN9Imath_3_14halfEE6resizeEv.exit: ; preds = %._crit_edge.i
  ret void
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIN9Imath_3_14halfEE16resetBasePointerEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = sdiv i32 %i.g, %i.i
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIN9Imath_3_14halfEE16resetBasePointerEv:bb.a
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.o
  %i.q = load i32, ptr %i.e, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !19
  %i.t = sdiv i32 %i.q, %i.s
end_hunk_2
begin_hunk_3_@_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE5sliceEv:bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %i.h = sext i32 %i.g to i64
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfEclEii
define weak_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfEclEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = sdiv i32 %2, %i.d
end_hunk_4
begin_hunk_5_@_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfEclEii
define weak_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfEclEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = sdiv i32 %2, %i.d
end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE2atEii:bb.a
bb.a:
  tail call void @_ZNK27OpenImageIO_v3_1_Imf__3_3_512ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = sdiv i32 %2, %i.d
end_hunk_6
begin_hunk_7_@_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE2atEii:bb.a
bb.a:
  tail call void @_ZNK27OpenImageIO_v3_1_Imf__3_3_512ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = sdiv i32 %2, %i.d
end_hunk_7
begin_hunk_8_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE3rowEi
define weak_odr noundef ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE3rowEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = mul nsw i32 %i.d, %1
end_hunk_8
begin_hunk_9_@_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE3rowEi
define weak_odr noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE3rowEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = mul nsw i32 %i.d, %1
end_hunk_9
begin_hunk_10_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfEC2ERNS_14FlatImageLevelEiib:bb.a
          to label %.noexc6 unwind label %bb.b    ; 2 uses

.noexc6:                                          ; preds = %.noexc
  store ptr %i.g, ptr %i.a, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.e, i1 false), !tbaa !37
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.noexc6
end_hunk_10
begin_hunk_11_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfEC2ERNS_14FlatImageLevelEiib:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE6resizeEv.exit unwind label %bb.b, !inline_history !39

_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE6resizeEv.exit: ; preds = %._crit_edge.i
  ret void
end_hunk_11
begin_hunk_12_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfED2Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

end_hunk_12
begin_hunk_13_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE6resizeEv
define weak_odr hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE6resizeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

end_hunk_13
begin_hunk_14_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE6resizeEv:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !36
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_512ImageChannel6resizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 3 uses
end_hunk_14
begin_hunk_15_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE6resizeEv:bb.a
  %i.g = shl i64 %i.e, 2                          ; 2 uses
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !36
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.g, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
end_hunk_15
begin_hunk_16_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE16resetBasePointerEv
define weak_odr hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE16resetBasePointerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = sdiv i32 %i.g, %i.i
end_hunk_16
begin_hunk_17_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE16resetBasePointerEv:bb.a
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.o
  %i.q = load i32, ptr %i.e, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !19
  %i.t = sdiv i32 %i.q, %i.s
end_hunk_17
begin_hunk_18_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE16resetBasePointerEv:bb.a
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.w, ptr %i.x, align 8, !tbaa !33
  ret void
}

end_hunk_18
begin_hunk_19_@_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE5sliceEv:bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %i.h = sext i32 %i.g to i64
end_hunk_19
begin_hunk_20_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjEclEii
define weak_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjEclEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = sdiv i32 %2, %i.d
end_hunk_20
begin_hunk_21_@_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjEclEii
define weak_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjEclEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = sdiv i32 %2, %i.d
end_hunk_21
begin_hunk_22_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE2atEii:bb.a
bb.a:
  tail call void @_ZNK27OpenImageIO_v3_1_Imf__3_3_512ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = sdiv i32 %2, %i.d
end_hunk_22
begin_hunk_23_@_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE2atEii:bb.a
bb.a:
  tail call void @_ZNK27OpenImageIO_v3_1_Imf__3_3_512ImageChannel11boundsCheckEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = sdiv i32 %2, %i.d
end_hunk_23
begin_hunk_24_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE3rowEi
define weak_odr noundef ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE3rowEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = mul nsw i32 %i.d, %1
end_hunk_24
begin_hunk_25_@_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE3rowEi
define weak_odr noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE3rowEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = mul nsw i32 %i.d, %1
end_hunk_25
begin_hunk_26_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjEC2ERNS_14FlatImageLevelEiib:bb.a
          to label %.noexc6 unwind label %bb.b    ; 2 uses

.noexc6:                                          ; preds = %.noexc
  store ptr %i.g, ptr %i.a, align 8, !tbaa !43
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

end_hunk_26
begin_hunk_27_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjEC2ERNS_14FlatImageLevelEiib:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE6resizeEv.exit unwind label %bb.b, !inline_history !44

_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE6resizeEv.exit: ; preds = %._crit_edge.i
  ret void
end_hunk_27
begin_hunk_28_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjED2Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

end_hunk_28
begin_hunk_29_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE6resizeEv
define weak_odr hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE6resizeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

end_hunk_29
begin_hunk_30_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE6resizeEv:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !43
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_512ImageChannel6resizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 3 uses
end_hunk_30
begin_hunk_31_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE6resizeEv:bb.a
  %i.g = shl i64 %i.e, 2                          ; 2 uses
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !43
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

end_hunk_31
begin_hunk_32_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE16resetBasePointerEv
define weak_odr hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE16resetBasePointerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = sdiv i32 %i.g, %i.i
end_hunk_32
begin_hunk_33_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE16resetBasePointerEv:bb.a
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.o
  %i.q = load i32, ptr %i.e, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !19
  %i.t = sdiv i32 %i.q, %i.s
end_hunk_33
begin_hunk_34_@_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE16resetBasePointerEv:bb.a
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.w, ptr %i.x, align 8, !tbaa !40
  ret void
}

end_hunk_34
begin_hunk_35_@_ZN27OpenImageIO_v3_1_Imf__3_3_516FlatImageChannel9flatLevelEv
define noundef nonnull align 8 dereferenceable(88) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_516FlatImageChannel9flatLevelEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26, !nonnull !27, !align !28
  ret ptr %i.b
}

end_hunk_35
begin_hunk_36_@_ZNK27OpenImageIO_v3_1_Imf__3_3_516FlatImageChannel9flatLevelEv
define noundef nonnull align 8 dereferenceable(88) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_516FlatImageChannel9flatLevelEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26, !nonnull !27, !align !28
  ret ptr %i.b
}

end_hunk_36
begin_hunk_37_@llvm.memset.p0.i64
!22 = !{!10, !17, i64 48}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !5, i64 0}
!25 = !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIN9Imath_3_14halfEE6resizeEv}
!26 = !{!12, !13, i64 8}
!27 = !{}
!28 = !{i64 8}
!29 = !{!30, !4, i64 4}
!30 = !{!"_ZTSN9Imath_3_13BoxINS_4Vec2IiEEEE", !31, i64 0, !31, i64 8}
!31 = !{!"_ZTSN9Imath_3_14Vec2IiEE", !4, i64 0, !4, i64 4}
!32 = !{!30, !4, i64 0}
!33 = !{!34, !35, i64 56}
!34 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfEE", !11, i64 0, !35, i64 48, !35, i64 56}
!35 = !{!"p1 float", !14, i64 0}
!36 = !{!34, !35, i64 48}
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !5, i64 0}
!39 = !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIfE6resizeEv}
!40 = !{!41, !42, i64 56}
!41 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjEE", !11, i64 0, !42, i64 48, !42, i64 56}
!42 = !{!"p1 int", !14, i64 0}
!43 = !{!41, !42, i64 48}
!44 = !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_521TypedFlatImageChannelIjE6resizeEv}
end_hunk_37
