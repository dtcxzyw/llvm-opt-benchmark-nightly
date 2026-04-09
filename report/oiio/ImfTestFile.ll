inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileEPKcRbS2_S2_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(49) %4, ptr noundef nonnull %i.b, i32 noundef 4)
          to label %bb.c unwind label %bb.f, !inline_history !9 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.b, align 4
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileEPKcRbS2_S2_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(49) %4, ptr noundef nonnull %i.a, i32 noundef 4)
          to label %bb.d unwind label %bb.f, !inline_history !9 ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 4              ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileEPKcRbS2_S2_:bb.a
  %i.m = lshr i32 %i.l, 9
  %i.n = trunc i32 %i.m to i8
  %i.o = and i8 %i.n, 1
  store i8 %i.o, ptr %1, align 1, !tbaa !10
  %i.p = lshr i32 %i.l, 11
  %i.q = trunc i32 %i.p to i8
  %i.r = and i8 %i.q, 1
  store i8 %i.r, ptr %2, align 1, !tbaa !10
  %i.s = lshr i32 %i.l, 12
  %i.t = trunc i32 %i.s to i8
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %3, align 1, !tbaa !10
  %i.v = icmp eq i32 %i.g, 20000630
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_511StdIFStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(49) %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileEPKcRbS2_S2_:bb.a
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.y = call ptr @__cxa_begin_catch(ptr %.0) #6  ; 0 uses
  store i8 0, ptr %1, align 1, !tbaa !10
  call void @__cxa_end_catch()
  br label %bb.h

end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_518isTiledOpenExrFileEPKc:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = call noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileEPKcRbS2_S2_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.e = load i8, ptr %i.a, align 1, !range !12
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_517isDeepOpenExrFileEPKc:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = call noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileEPKcRbS2_S2_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.e = load i8, ptr %i.b, align 1, !range !12
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_522isMultiPartOpenExrFileEPKc:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = call noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileEPKcRbS2_S2_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.e = load i8, ptr %i.c, align 1, !range !12
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
end_hunk_6
begin_hunk_7_@_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileERNS_7IStreamERbS2_S2_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.b, i32 noundef 4)
          to label %bb.f unwind label %bb.i, !inline_history !13 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.b, align 4
end_hunk_7
begin_hunk_8_@_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileERNS_7IStreamERbS2_S2_:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.a, i32 noundef 4)
          to label %bb.g unwind label %bb.i, !inline_history !13 ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.a, align 4              ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileERNS_7IStreamERbS2_S2_:bb.a
  %i.x = lshr i32 %i.t, 9
  %i.y = trunc i32 %i.x to i8
  %i.z = and i8 %i.y, 1
  store i8 %i.z, ptr %1, align 1, !tbaa !10
  %i.aa = lshr i32 %i.t, 11
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = and i8 %i.ab, 1
  store i8 %i.ac, ptr %2, align 1, !tbaa !10
  %i.ad = lshr i32 %i.t, 12
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 1
  store i8 %i.af, ptr %3, align 1, !tbaa !10
  %i.ag = icmp eq i32 %i.o, 20000630
  br label %bb.m

end_hunk_9
begin_hunk_10_@_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileERNS_7IStreamERbS2_S2_:bb.a
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %1, align 1, !tbaa !10
  call void @__cxa_end_catch()
  br label %bb.m

end_hunk_10
begin_hunk_11_@_ZN27OpenImageIO_v3_1_Imf__3_3_518isTiledOpenExrFileERNS_7IStreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = call noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileERNS_7IStreamERbS2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.e = load i8, ptr %i.a, align 1, !range !12
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
end_hunk_11
begin_hunk_12_@_ZN27OpenImageIO_v3_1_Imf__3_3_517isDeepOpenExrFileERNS_7IStreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = call noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileERNS_7IStreamERbS2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.e = load i8, ptr %i.b, align 1, !range !12
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
end_hunk_12
begin_hunk_13_@_ZN27OpenImageIO_v3_1_Imf__3_3_522isMultiPartOpenExrFileERNS_7IStreamE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = call noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_513isOpenExrFileERNS_7IStreamERbS2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.e = load i8, ptr %i.c, align 1, !range !12
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
end_hunk_13
begin_hunk_14_@_ZN27OpenImageIO_v3_1_Imf__3_3_522isMultiPartOpenExrFileERNS_7IStreamE:bb.a
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = distinct !{null}
!10 = !{!11, !11, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{i8 0, i8 2}
!13 = distinct !{null}
end_hunk_14
