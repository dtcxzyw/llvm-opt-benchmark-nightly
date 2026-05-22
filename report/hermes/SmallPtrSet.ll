inline.NumInlined: 79
inline.NumDeleted: 30
begin_hunk_0_@_ZN4llvh19SmallPtrSetImplBase10CopyHelperERKS0_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.b, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7    ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !21
  %i.g = icmp eq ptr %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %.v.v.i = select i1 %i.g, i32 %i.i, i32 %i.b    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7    ; 2 uses
  %i.l = icmp ugt i32 %.v.v.i, 1
  br i1 %i.l, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %.v.i = zext i32 %.v.v.i to i64
  %.idx = shl nuw nsw i64 %.v.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.e, i64 %.idx, i1 false)
  %.pre = load i32, ptr %i.h, align 4, !tbaa !11
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %.v.v.i, 1
  br i1 %i.m, label %bb.d, label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !16
  store ptr %i.n, ptr %i.k, align 8, !tbaa !16
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit:               ; preds = %bb.b, %bb.c, %bb.d
  %i.o = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.o, ptr %i.p, align 4, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 captures(none) dereferenceable(28) %3) unnamed_addr #4 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.e, align 8, !tbaa !7
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.j = zext i32 %i.h to i64
  %.idx.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %i.f, i64 %.idx.i, i1 false)
  br label %_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.h, 1
  br i1 %i.k, label %bb.e, label %_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !16
  store ptr %i.l, ptr %1, align 8, !tbaa !16
  br label %_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_.exit

bb.f:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.e, align 8, !tbaa !7
  store ptr %i.c, ptr %i.a, align 8, !tbaa !7
  br label %_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_.exit

_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = load <2 x i32>, ptr %i.m, align 8, !tbaa !3
  store <2 x i32> %i.p, ptr %i.n, align 8, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !12
  store i32 %2, ptr %i.m, align 8, !tbaa !13
  store i32 0, ptr %i.o, align 4, !tbaa !11
  store i32 0, ptr %i.q, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(28) initializes((8, 28)) %0, i32 noundef %1, ptr noundef nonnull align 8 captures(none) dereferenceable(28) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !7
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 3 uses
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.e, ptr align 8 %i.g, i64 %.idx, i1 false)
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %i.i, 1
  br i1 %i.l, label %bb.e, label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !16
  store ptr %i.m, ptr %i.e, align 8, !tbaa !16
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.n, align 8, !tbaa !7
  store ptr %i.c, ptr %i.a, align 8, !tbaa !7
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit:               ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = load <2 x i32>, ptr %i.o, align 8, !tbaa !3
  store <2 x i32> %i.r, ptr %i.p, align 8, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.t, ptr %i.u, align 8, !tbaa !12
  store i32 %1, ptr %i.o, align 8, !tbaa !13
  store i32 0, ptr %i.q, align 4, !tbaa !11
  store i32 0, ptr %i.s, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh19SmallPtrSetImplBase8CopyFromERKS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(28) initializes((20, 28)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = load ptr, ptr %1, align 8, !tbaa !21
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %.sink.split, label %bb.c

.thread:                                          ; preds = %bb.a
  br i1 %i.h, label %.thread8, label %.thread9

.thread8:                                         ; preds = %.thread
  tail call void @free(ptr noundef %i.b) #13
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i32 %i.j, %i.l
  br i1 %.not, label %bb.f, label %bb.d

.thread9:                                         ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %.not10 = icmp eq i32 %i.n, %i.p
  br i1 %.not10, label %bb.f, label %.thread11

bb.d:                                             ; preds = %bb.c
  %i.q = zext i32 %i.l to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #14 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %2, label %.sink.split

2:                                                ; preds = %bb.d
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #13
  br label %.sink.split

.thread11:                                        ; preds = %.thread9
  %i.u = zext i32 %i.p to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.v) #15 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %.thread11
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.thread11, %2, %bb.d, %.thread8, %bb.b
  %.sink = phi ptr [ %i.s, %2 ], [ %i.c, %bb.b ], [ %.pre, %.thread8 ], [ %i.s, %bb.d ], [ %i.w, %.thread11 ], [ %i.w, %bb.e ] ; 2 uses
  store ptr %.sink, ptr %i.a, align 8, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.thread9, %bb.c
  %i.y = phi ptr [ %i.b, %bb.c ], [ %i.b, %.thread9 ], [ %.sink, %.sink.split ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !13
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !7   ; 3 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !21
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %.v.v.i.i = select i1 %i.ae, i32 %i.ag, i32 %i.aa ; 3 uses
  %i.ah = icmp ugt i32 %.v.v.i.i, 1
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %.v.i.i = zext i32 %.v.v.i.i to i64
  %.idx.i = shl nuw nsw i64 %.v.i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.ac, i64 %.idx.i, i1 false)
  %.pre.i = load i32, ptr %i.af, align 4, !tbaa !11
  br label %_ZN4llvh19SmallPtrSetImplBase10CopyHelperERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = icmp eq i32 %.v.v.i.i, 1
  br i1 %i.ai, label %bb.i, label %_ZN4llvh19SmallPtrSetImplBase10CopyHelperERKS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !16
  store ptr %i.aj, ptr %i.y, align 8, !tbaa !16
  br label %_ZN4llvh19SmallPtrSetImplBase10CopyHelperERKS0_.exit

_ZN4llvh19SmallPtrSetImplBase10CopyHelperERKS0_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ak = phi i32 [ %.pre.i, %bb.g ], [ %i.ag, %bb.h ], [ %i.ag, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN4llvh19SmallPtrSetImplBase8MoveFromEjOS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(28) initializes((16, 28)) %0, i32 noundef %1, ptr noundef nonnull align 8 captures(none) dereferenceable(28) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !7
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11   ; 3 uses
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.n = zext i32 %i.l to i64
  %.idx.i = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.j, i64 %.idx.i, i1 false)
  br label %_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp eq i32 %i.l, 1
  br i1 %i.o, label %bb.g, label %_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !16
  store ptr %i.p, ptr %i.i, align 8, !tbaa !16
  br label %_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_.exit

bb.h:                                             ; preds = %bb.c
  store ptr %i.f, ptr %i.a, align 8, !tbaa !7
  store ptr %i.g, ptr %i.e, align 8, !tbaa !7
  br label %_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_.exit

_ZN4llvh19SmallPtrSetImplBase10MoveHelperEjOS0_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = load <2 x i32>, ptr %i.q, align 8, !tbaa !3
  store <2 x i32> %i.t, ptr %i.r, align 8, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.v, ptr %i.w, align 8, !tbaa !12
  store i32 %1, ptr %i.q, align 8, !tbaa !13
  store i32 0, ptr %i.s, align 4, !tbaa !11
  store i32 0, ptr %i.u, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh19SmallPtrSetImplBase4swapERS0_(ptr noundef nonnull align 8 captures(address) dereferenceable(28) %0, ptr noundef nonnull align 8 captures(address) dereferenceable(28) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 9 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7    ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !21     ; 9 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.b, align 8, !tbaa !23
  store ptr %i.c, ptr %i.f, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !3
  %i.m = load i32, ptr %i.k, align 8, !tbaa !3
  store i32 %i.m, ptr %i.j, align 8, !tbaa !3
  store i32 %i.l, ptr %i.k, align 8, !tbaa !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  store i32 %i.p, ptr %i.o, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !3
  %i.u = load i32, ptr %i.s, align 8, !tbaa !3
  store i32 %i.u, ptr %i.r, align 8, !tbaa !3
  store i32 %i.t, ptr %i.s, align 8, !tbaa !3
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11   ; 3 uses
  %i.x = icmp ugt i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %i.w to i64
  %.idx = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.g, i64 %.idx, i1 false)
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %i.w, 1
  br i1 %i.z, label %bb.h, label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !16
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !16
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit:               ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !3
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !3
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !3
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !3
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !3
  store i32 %i.ag, ptr %i.v, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !3
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !3
  store i32 %i.al, ptr %i.ai, align 8, !tbaa !3
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !3
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !7
  store ptr %i.am, ptr %i.f, align 8, !tbaa !7
  %i.an = load ptr, ptr %0, align 8, !tbaa !21
  store ptr %i.an, ptr %i.b, align 8, !tbaa !7
  br label %bb.w

bb.i:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
end_hunk_0
