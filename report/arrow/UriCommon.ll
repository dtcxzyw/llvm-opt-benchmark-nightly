inline.NumInlined: 8
begin_hunk_0_@uriRemoveDotSegmentsExA:bb.a

bb.d:                                             ; preds = %.thread297, %bb.c
  %.0186 = phi ptr [ %i.c, %bb.c ], [ %.6192.ph, %.thread297 ] ; 25 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0186, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 6 uses
  %i.k = load ptr, ptr %.0186, align 8, !tbaa !22 ; 14 uses
  %i.l = ptrtoint ptr %i.j to i64
end_hunk_0
begin_hunk_1_@uriRemoveDotSegmentsExA:bb.a

bb.ah:                                            ; preds = %bb.af
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bv = tail call ptr %i.bu(ptr noundef %3, i64 noundef 1, i64 noundef 32) #11 ; 4 uses
  %.not241 = icmp eq ptr %i.bv, null
  br i1 %.not241, label %bb.ai, label %bb.am

end_hunk_1
begin_hunk_2_@uriRemoveDotSegmentsExA:bb.a
  br i1 %.not240, label %bb.bj, label %.sink.split394

bb.am:                                            ; preds = %bb.ah
  store <2 x ptr> <ptr @.str, ptr @.str>, ptr %i.bv, align 8, !tbaa !34
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !24
  store ptr %i.bv, ptr %i.g, align 8, !tbaa !35
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ag
end_hunk_2
begin_hunk_3_@uriRemoveDotSegmentsExA:bb.a
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  store <2 x ptr> <ptr @.str, ptr @.str>, ptr %.0186, align 8, !tbaa !34
  store ptr %.0186, ptr %i.b, align 8, !tbaa !18
  store ptr %.0186, ptr %i.g, align 8, !tbaa !35
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
end_hunk_3
begin_hunk_4_@uriRemoveDotSegmentsExA:bb.a
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  store ptr null, ptr %i.g, align 8, !tbaa !35
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
end_hunk_4
begin_hunk_5_@uriRemoveDotSegmentsExA:bb.a
  br label %.thread297

.thread314:                                       ; preds = %.thread301
  store ptr %.0186, ptr %i.g, align 8, !tbaa !35
  br label %.thread297.thread

.sink.split394:                                   ; preds = %bb.al, %bb.ai
end_hunk_5
begin_hunk_6_@uriRemoveDotSegmentsExA:bb.a
.thread297:                                       ; preds = %bb.ar, %bb.bc, %bb.o, %.thread305, %bb.bi
  %.6192.ph = phi ptr [ %i.cz, %bb.bi ], [ %i.u, %bb.o ], [ %i.bc, %.thread305 ], [ %i.bc, %bb.bc ], [ %i.bc, %bb.ar ] ; 2 uses
  %.not256 = icmp eq ptr %.6192.ph, null
  br i1 %.not256, label %.thread297.thread, label %bb.d, !llvm.loop !36

.thread297.thread:                                ; preds = %.thread297, %bb.w, %bb.v, %uriIsHostSetA.exit.thread, %.thread314, %bb.bj, %bb.a, %bb.b
  %.7 = phi i32 [ 0, %bb.bj ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.w ], [ 1, %.thread314 ], [ 1, %uriIsHostSetA.exit.thread ], [ 1, %bb.v ], [ 1, %.thread297 ]
end_hunk_6
begin_hunk_7_@uriCopyPathA:bb.a
.preheader:                                       ; preds = %bb.a, %bb.h
  %.030 = phi ptr [ %i.k, %bb.h ], [ %i.b, %bb.a ] ; 2 uses
  %.028 = phi ptr [ %i.f, %bb.h ], [ null, %bb.a ] ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !37
  %i.f = tail call ptr %i.e(ptr noundef nonnull %2, i64 noundef 32) #11 ; 7 uses
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %bb.c, label %bb.e
end_hunk_7
begin_hunk_8_@uriCopyPathA:bb.a
  br label %bb.j

bb.e:                                             ; preds = %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.030, i64 16, i1 false), !tbaa.struct !38
  %i.h = icmp eq ptr %.028, null
  br i1 %i.h, label %bb.f, label %bb.g

end_hunk_8
begin_hunk_9_@uriCopyPathA:bb.a

.thread38:                                        ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.m, align 8, !tbaa !24
  br label %bb.i
end_hunk_9
begin_hunk_10_@uriCopyAuthorityA:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !37
  %i.h = tail call ptr %i.g(ptr noundef nonnull %2, i64 noundef 4) #11 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.h, ptr %i.i, align 8, !tbaa !30
end_hunk_10
begin_hunk_11_@uriCopyAuthorityA:bb.a

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.p, align 8, !tbaa !30
  %i.q = load ptr, ptr %2, align 8, !tbaa !37
  %i.r = tail call ptr %i.q(ptr noundef nonnull %2, i64 noundef 16) #11 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.s, align 8, !tbaa !31
end_hunk_11
begin_hunk_12_@uriCopyAuthorityA:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !38
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !38
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.b, %bb.h
end_hunk_12
begin_hunk_13_@uriFixAmbiguityA:bb.a
  br i1 %i.r, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !37
  %i.t = tail call ptr %i.s(ptr noundef nonnull %1, i64 noundef 32) #11 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread, label %bb.i
end_hunk_13
begin_hunk_14_@uriRemoveDotSegmentsExW:bb.a

bb.d:                                             ; preds = %.thread297, %bb.c
  %.0186 = phi ptr [ %i.c, %bb.c ], [ %.6192.ph, %.thread297 ] ; 25 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0186, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 6 uses
  %i.k = load ptr, ptr %.0186, align 8, !tbaa !54 ; 14 uses
  %i.l = ptrtoint ptr %i.j to i64
end_hunk_14
begin_hunk_15_@uriRemoveDotSegmentsExW:bb.a

bb.ah:                                            ; preds = %bb.af
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bx = tail call ptr %i.bw(ptr noundef %3, i64 noundef 1, i64 noundef 32) #11 ; 4 uses
  %.not241 = icmp eq ptr %i.bx, null
  br i1 %.not241, label %bb.ai, label %bb.am

end_hunk_15
begin_hunk_16_@uriRemoveDotSegmentsExW:bb.a
  br i1 %.not240, label %bb.bj, label %.sink.split395

bb.am:                                            ; preds = %bb.ah
  store <2 x ptr> <ptr @.str.3, ptr @.str.3>, ptr %i.bx, align 8, !tbaa !61
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !55
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !62
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ag
end_hunk_16
begin_hunk_17_@uriRemoveDotSegmentsExW:bb.a
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  store <2 x ptr> <ptr @.str.3, ptr @.str.3>, ptr %.0186, align 8, !tbaa !61
  store ptr %.0186, ptr %i.b, align 8, !tbaa !50
  store ptr %.0186, ptr %i.g, align 8, !tbaa !62
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
end_hunk_17
begin_hunk_18_@uriRemoveDotSegmentsExW:bb.a
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  store ptr null, ptr %i.g, align 8, !tbaa !62
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
end_hunk_18
begin_hunk_19_@uriRemoveDotSegmentsExW:bb.a
  br label %.thread297

.thread314:                                       ; preds = %.thread301
  store ptr %.0186, ptr %i.g, align 8, !tbaa !62
  br label %.thread297.thread

.sink.split395:                                   ; preds = %bb.al, %bb.ai
end_hunk_19
begin_hunk_20_@uriRemoveDotSegmentsExW:bb.a
.thread297:                                       ; preds = %bb.ar, %bb.bc, %bb.o, %.thread305, %bb.bi
  %.6192.ph = phi ptr [ %i.db, %bb.bi ], [ %i.v, %bb.o ], [ %i.be, %.thread305 ], [ %i.be, %bb.bc ], [ %i.be, %bb.ar ] ; 2 uses
  %.not256 = icmp eq ptr %.6192.ph, null
  br i1 %.not256, label %.thread297.thread, label %bb.d, !llvm.loop !63

.thread297.thread:                                ; preds = %.thread297, %bb.w, %bb.v, %uriIsHostSetW.exit.thread, %.thread314, %bb.bj, %bb.a, %bb.b
  %.7 = phi i32 [ 0, %bb.bj ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.w ], [ 1, %.thread314 ], [ 1, %uriIsHostSetW.exit.thread ], [ 1, %bb.v ], [ 1, %.thread297 ]
end_hunk_20
begin_hunk_21_@uriCopyPathW:bb.a
.preheader:                                       ; preds = %bb.a, %bb.h
  %.030 = phi ptr [ %i.k, %bb.h ], [ %i.b, %bb.a ] ; 2 uses
  %.028 = phi ptr [ %i.f, %bb.h ], [ null, %bb.a ] ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !37
  %i.f = tail call ptr %i.e(ptr noundef nonnull %2, i64 noundef 32) #11 ; 7 uses
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %bb.c, label %bb.e
end_hunk_21
begin_hunk_22_@uriCopyPathW:bb.a
  br label %bb.j

bb.e:                                             ; preds = %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.030, i64 16, i1 false), !tbaa.struct !64
  %i.h = icmp eq ptr %.028, null
  br i1 %i.h, label %bb.f, label %bb.g

end_hunk_22
begin_hunk_23_@uriCopyPathW:bb.a

.thread38:                                        ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.f, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.m, align 8, !tbaa !55
  br label %bb.i
end_hunk_23
begin_hunk_24_@uriCopyAuthorityW:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !37
  %i.h = tail call ptr %i.g(ptr noundef nonnull %2, i64 noundef 4) #11 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.h, ptr %i.i, align 8, !tbaa !58
end_hunk_24
begin_hunk_25_@uriCopyAuthorityW:bb.a

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.p, align 8, !tbaa !58
  %i.q = load ptr, ptr %2, align 8, !tbaa !37
  %i.r = tail call ptr %i.q(ptr noundef nonnull %2, i64 noundef 16) #11 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.s, align 8, !tbaa !59
end_hunk_25
begin_hunk_26_@uriCopyAuthorityW:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !64
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !64
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.b, %bb.h
end_hunk_26
begin_hunk_27_@uriFixAmbiguityW:bb.a
  br i1 %i.r, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !37
  %i.t = tail call ptr %i.s(ptr noundef nonnull %1, i64 noundef 32) #11 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread, label %bb.i
end_hunk_27
begin_hunk_28_@uriFixEmptyTrailSegmentW:bb.a
!31 = !{!13, !16, i64 56}
!32 = !{!13, !9, i64 64}
!33 = !{!28, !10, i64 8}
!34 = !{!9, !9, i64 0}
!35 = !{!13, !17, i64 104}
!36 = distinct !{!36, !26}
!37 = !{!28, !10, i64 0}
!38 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!39 = distinct !{!39, !26}
!40 = !{!13, !4, i64 144}
!41 = !{i64 0, i64 16, !23}
end_hunk_28
begin_hunk_29_@uriFixEmptyTrailSegmentW:bb.a
!58 = !{!47, !15, i64 48}
!59 = !{!47, !16, i64 56}
!60 = !{!47, !44, i64 64}
!61 = !{!44, !44, i64 0}
!62 = !{!47, !49, i64 104}
!63 = distinct !{!63, !26}
!64 = !{i64 0, i64 8, !61, i64 8, i64 8, !61}
!65 = distinct !{!65, !26}
!66 = !{!47, !4, i64 144}
end_hunk_29
