inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 39
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_heap_strdup:bb.a

_Z10_mi_strlenPKc.exit:                           ; preds = %bb.a
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) ; 4 uses
  %i.b = add i64 %strlen.i, 1                     ; 2 uses
  %i.c = icmp ult i64 %i.b, 1025
  br i1 %i.c, label %bb.b, label %mi_heap_malloc.exit, !prof !26

bb.b:                                             ; preds = %_Z10_mi_strlenPKc.exit
  %i.d = add nsw i64 %strlen.i, 8
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %mi_heap_malloc.exit, label %mi_heap_malloc.exit.thread, !prof !19

mi_heap_malloc.exit.thread:                       ; preds = %bb.b
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.l, ptr %i.i, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !24
  %i.o = add i16 %i.n, 1
  store i16 %i.o, ptr %i.m, align 8, !tbaa !24
  br label %bb.c

mi_heap_malloc.exit:                              ; preds = %_Z10_mi_strlenPKc.exit, %bb.b
  %i.p = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %i.b, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %mi_heap_malloc.exit.thread, %mi_heap_malloc.exit
  %.0.i.i.i14 = phi ptr [ %i.j, %mi_heap_malloc.exit.thread ], [ %i.p, %mi_heap_malloc.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i14, ptr nonnull readonly align 1 %1, i64 %strlen.i, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 %strlen.i
  store i8 0, ptr %i.r, align 1, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %mi_heap_malloc.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.0.i.i.i14, %bb.c ], [ null, %mi_heap_malloc.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_Z10_mi_strlenPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  %.05 = phi i64 [ 0, %bb.a ], [ %strlen, %.preheader.preheader ]
  ret i64 %.05
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_strdup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %mi_heap_strdup.exit, label %_Z10_mi_strlenPKc.exit.i

_Z10_mi_strlenPKc.exit.i:                         ; preds = %bb.a
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) ; 4 uses
  %i.d = add i64 %strlen.i.i, 1                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 1025
  br i1 %i.e, label %bb.b, label %mi_heap_malloc.exit.i, !prof !26

bb.b:                                             ; preds = %_Z10_mi_strlenPKc.exit.i
  %i.f = add nsw i64 %strlen.i.i, 8
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %mi_heap_malloc.exit.i, label %mi_heap_malloc.exit.thread.i, !prof !19

mi_heap_malloc.exit.thread.i:                     ; preds = %bb.b
  %.val.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !22
  %i.n = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.n, ptr %i.k, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !24
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 8, !tbaa !24
  br label %bb.c

mi_heap_malloc.exit.i:                            ; preds = %bb.b, %_Z10_mi_strlenPKc.exit.i
  %i.r = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %i.d, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %mi_heap_strdup.exit, label %bb.c

bb.c:                                             ; preds = %mi_heap_malloc.exit.i, %mi_heap_malloc.exit.thread.i
  %.0.i.i.i14.i = phi ptr [ %i.l, %mi_heap_malloc.exit.thread.i ], [ %i.r, %mi_heap_malloc.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i14.i, ptr nonnull readonly align 1 %0, i64 %strlen.i.i, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i14.i, i64 %strlen.i.i
  store i8 0, ptr %i.t, align 1, !tbaa !27
  br label %mi_heap_strdup.exit

mi_heap_strdup.exit:                              ; preds = %bb.a, %mi_heap_malloc.exit.i, %bb.c
  %.1.i = phi ptr [ null, %bb.a ], [ %.0.i.i.i14.i, %bb.c ], [ null, %mi_heap_malloc.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_strndup(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i64 [ %i.g, %.preheader.i ], [ 0, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !27
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ult i64 %.0.i, %2
  %i.f = and i1 %i.e, %i.d
  %i.g = add i64 %.0.i, 1                         ; 3 uses
  br i1 %i.f, label %.preheader.i, label %_Z11_mi_strnlenPKcm.exit, !llvm.loop !42

_Z11_mi_strnlenPKcm.exit:                         ; preds = %.preheader.i
  %i.h = icmp ult i64 %i.g, 1025
  br i1 %i.h, label %bb.b, label %mi_heap_malloc.exit, !prof !26

bb.b:                                             ; preds = %_Z11_mi_strnlenPKcm.exit
  %i.i = add nsw i64 %.0.i, 8
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %mi_heap_malloc.exit, label %mi_heap_malloc.exit.thread, !prof !19

mi_heap_malloc.exit.thread:                       ; preds = %bb.b
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !22
  %i.q = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.n, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !24
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !24
  br label %bb.c

mi_heap_malloc.exit:                              ; preds = %_Z11_mi_strnlenPKcm.exit, %bb.b
  %i.u = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %mi_heap_malloc.exit.thread, %mi_heap_malloc.exit
  %.0.i.i.i15 = phi ptr [ %i.o, %mi_heap_malloc.exit.thread ], [ %i.u, %mi_heap_malloc.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i15, ptr nonnull readonly align 1 %1, i64 %.0.i, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i15, i64 %.0.i
  store i8 0, ptr %i.w, align 1, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %mi_heap_malloc.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.0.i.i.i15, %bb.c ], [ null, %mi_heap_malloc.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_Z11_mi_strnlenPKcm(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i64 [ %i.g, %.preheader ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.0
  %i.c = load i8, ptr %i.b, align 1, !tbaa !27
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ult i64 %.0, %1
  %i.f = and i1 %i.e, %i.d
  %i.g = add nuw i64 %.0, 1
  br i1 %i.f, label %.preheader, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.07 = phi i64 [ 0, %bb.a ], [ %.0, %.preheader ]
  ret i64 %.07
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_strndup(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %mi_heap_strndup.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.i, %.preheader.i.i ], [ 0, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27
  %i.f = icmp ne i8 %i.e, 0
  %i.g = icmp ult i64 %.0.i.i, %1
  %i.h = and i1 %i.g, %i.f
  %i.i = add i64 %.0.i.i, 1                       ; 3 uses
  br i1 %i.h, label %.preheader.i.i, label %_Z11_mi_strnlenPKcm.exit.i, !llvm.loop !42

_Z11_mi_strnlenPKcm.exit.i:                       ; preds = %.preheader.i.i
  %i.j = icmp ult i64 %i.i, 1025
  br i1 %i.j, label %bb.b, label %mi_heap_malloc.exit.i, !prof !26

bb.b:                                             ; preds = %_Z11_mi_strnlenPKcm.exit.i
  %i.k = add nsw i64 %.0.i.i, 8
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %mi_heap_malloc.exit.i, label %mi_heap_malloc.exit.thread.i, !prof !19

mi_heap_malloc.exit.thread.i:                     ; preds = %bb.b
  %.val.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !22
  %i.s = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.s, ptr %i.p, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !24
  %i.v = add i16 %i.u, 1
  store i16 %i.v, ptr %i.t, align 8, !tbaa !24
  br label %bb.c

mi_heap_malloc.exit.i:                            ; preds = %bb.b, %_Z11_mi_strnlenPKcm.exit.i
  %i.w = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.b, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %mi_heap_strndup.exit, label %bb.c

bb.c:                                             ; preds = %mi_heap_malloc.exit.i, %mi_heap_malloc.exit.thread.i
  %.0.i.i.i15.i = phi ptr [ %i.q, %mi_heap_malloc.exit.thread.i ], [ %i.w, %mi_heap_malloc.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i15.i, ptr nonnull readonly align 1 %0, i64 %.0.i.i, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i15.i, i64 %.0.i.i
  store i8 0, ptr %i.y, align 1, !tbaa !27
  br label %mi_heap_strndup.exit

mi_heap_strndup.exit:                             ; preds = %bb.a, %mi_heap_malloc.exit.i, %bb.c
  %.1.i = phi ptr [ null, %bb.a ], [ %.0.i.i.i15.i, %bb.c ], [ null, %mi_heap_malloc.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noalias ptr @mi_heap_realpath(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @realpath(ptr noundef %1, ptr noundef nonnull %2) #55
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @realpath(ptr noundef %1, ptr noundef null) #55 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %_Z10_mi_strlenPKc.exit.i

_Z10_mi_strlenPKc.exit.i:                         ; preds = %bb.c
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) ; 4 uses
  %i.d = add i64 %strlen.i.i, 1                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 1025
  br i1 %i.e, label %bb.d, label %mi_heap_malloc.exit.i, !prof !26

bb.d:                                             ; preds = %_Z10_mi_strlenPKc.exit.i
  %i.f = add nsw i64 %strlen.i.i, 8
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %mi_heap_malloc.exit.i, label %mi_heap_malloc.exit.thread.i, !prof !19

mi_heap_malloc.exit.thread.i:                     ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !22
  %i.n = inttoptr i64 %.val.i.i.i.i.i.i to ptr
  store ptr %i.n, ptr %i.k, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !24
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 8, !tbaa !24
  br label %bb.e

mi_heap_malloc.exit.i:                            ; preds = %bb.d, %_Z10_mi_strlenPKc.exit.i
  %i.r = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef %i.d, i1 noundef zeroext false, i64 noundef 0) #55 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %mi_heap_strdup.exit, label %bb.e

bb.e:                                             ; preds = %mi_heap_malloc.exit.i, %mi_heap_malloc.exit.thread.i
  %.0.i.i.i14.i = phi ptr [ %i.l, %mi_heap_malloc.exit.thread.i ], [ %i.r, %mi_heap_malloc.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i14.i, ptr nonnull readonly align 1 %i.b, i64 %strlen.i.i, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i14.i, i64 %strlen.i.i
  store i8 0, ptr %i.t, align 1, !tbaa !27
  br label %mi_heap_strdup.exit

mi_heap_strdup.exit:                              ; preds = %mi_heap_malloc.exit.i, %bb.e
  %.1.i = phi ptr [ null, %mi_heap_malloc.exit.i ], [ %.0.i.i.i14.i, %bb.e ]
  tail call void @mi_cfree(ptr noundef nonnull %i.b) #55
  br label %bb.f

bb.f:                                             ; preds = %mi_heap_strdup.exit, %bb.c, %bb.b
  %.1 = phi ptr [ %i.a, %bb.b ], [ %.1.i, %mi_heap_strdup.exit ], [ null, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define void @mi_cfree(ptr noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr @_ZL14mi_arena_count monotonic, align 64 ; 2 uses
  %.not1922.not.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not1922.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.critedge.i.i.i
  %.01323.i.i.i = phi i64 [ %i.l, %.critedge.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %.01323.i.i.i
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8
  %.not18.i.i.i = icmp ugt ptr %i.e, %0
  br i1 %.not18.i.i.i, label %.critedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic ptr, ptr %i.d seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43
  %i.i = shl i64 %i.h, 25
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = icmp ugt ptr %i.j, %0
  br i1 %i.k, label %mi_is_in_heap_region.exit.thread2.loopexit, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.l = add nuw i64 %.01323.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.a
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !53

.loopexit.i.i:                                    ; preds = %.critedge.i.i.i, %bb.a
  %i.m = icmp eq ptr %0, null
  br i1 %i.m, label %mi_free.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = add i64 %i.n, -1                         ; 3 uses
  %i.p = and i64 %i.o, -33554432                  ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = icmp slt i64 %i.o, 33554432
  %i.s = select i1 %i.r, ptr null, ptr %i.q       ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = icmp ugt ptr %i.s, inttoptr (i64 52776558133247 to ptr)
  br i1 %i.u, label %mi_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = udiv i64 %i.t, 2164663517184
  %i.w = urem i64 %i.t, 2164663517184             ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZL14mi_segment_map, i64 %i.v
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %mi_free.exit, label %mi_is_in_heap_region.exit, !prof !19

mi_is_in_heap_region.exit:                        ; preds = %bb.e
  %i.aa = lshr exact i64 %i.w, 25
  %i.ab = lshr i64 %i.w, 31
  %i.ac = and i64 %i.aa, 63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8
  %i.ag = shl nuw i64 1, %i.ac
  %i.ah = and i64 %i.af, %i.ag
  %.not.i2.i.i = icmp ne i64 %i.ah, 0
  %i.ai = icmp ne ptr %i.s, null
  %i.aj = and i1 %i.ai, %.not.i2.i.i
  br i1 %i.aj, label %mi_is_in_heap_region.exit.thread2, label %mi_free.exit

mi_is_in_heap_region.exit.thread2.loopexit:       ; preds = %bb.c
  %.pre = ptrtoint ptr %0 to i64                  ; 2 uses
  %.pre3 = add i64 %.pre, -1                      ; 2 uses
  %.pre5 = and i64 %.pre3, -33554432              ; 2 uses
  %.pre7 = inttoptr i64 %.pre5 to ptr
  br label %mi_is_in_heap_region.exit.thread2

mi_is_in_heap_region.exit.thread2:                ; preds = %mi_is_in_heap_region.exit.thread2.loopexit, %mi_is_in_heap_region.exit
  %.pre-phi8 = phi ptr [ %.pre7, %mi_is_in_heap_region.exit.thread2.loopexit ], [ %i.q, %mi_is_in_heap_region.exit ] ; 3 uses
  %.pre-phi6 = phi i64 [ %.pre5, %mi_is_in_heap_region.exit.thread2.loopexit ], [ %i.p, %mi_is_in_heap_region.exit ] ; 2 uses
  %.pre-phi4 = phi i64 [ %.pre3, %mi_is_in_heap_region.exit.thread2.loopexit ], [ %i.o, %mi_is_in_heap_region.exit ]
  %.pre-phi = phi i64 [ %.pre, %mi_is_in_heap_region.exit.thread2.loopexit ], [ %i.n, %mi_is_in_heap_region.exit ]
  %i.ak = icmp slt i64 %.pre-phi4, 33554432
  %i.al = icmp eq i64 %.pre-phi6, 0
  %i.am = or i1 %i.ak, %i.al
  br i1 %i.am, label %mi_free.exit, label %bb.f, !prof !19

bb.f:                                             ; preds = %mi_is_in_heap_region.exit.thread2
  %i.an = tail call ptr @llvm.thread.pointer.p0()
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre-phi8, i64 280
  %i.aq = load atomic i64, ptr %i.ap monotonic, align 8
  %i.ar = sub i64 %.pre-phi, %.pre-phi6
  %i.as = lshr i64 %i.ar, 16
  %i.at = getelementptr inbounds nuw i8, ptr %.pre-phi8, i64 288
  %i.au = getelementptr inbounds nuw [96 x i8], ptr %i.at, i64 %i.as ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL19mi_arenas_try_purgebb:bb.a
  br i1 %or.cond, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = load atomic i64, ptr @_ZL14mi_arena_count acquire, align 64 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.v = select i1 %1, i64 %i.t, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = cmpxchg ptr @_ZZL19mi_arenas_try_purgebbE11purge_guard, i64 0, i64 1 acq_rel acquire, align 8
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.preheader
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %mi_option_get.exit.i29, !prof !19

bb.i:                                             ; preds = %bb.h
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit.i29

mi_option_get.exit.i29:                           ; preds = %bb.i, %bb.h
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 776), align 8, !tbaa !111
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %_ZL20mi_arena_purge_delayv.exit30, !prof !19

bb.j:                                             ; preds = %mi_option_get.exit.i29
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 768)), !inline_history !121
  br label %_ZL20mi_arena_purge_delayv.exit30

_ZL20mi_arena_purge_delayv.exit30:                ; preds = %mi_option_get.exit.i29, %bb.j
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 768), align 16, !tbaa !116
  %i.af = mul nsw i64 %i.ae, %i.ab
  %i.ag = add nsw i64 %i.af, %i.p
  store atomic i64 %i.ag, ptr @_ZL22mi_arenas_purge_expire release, align 64
  br label %bb.k

bb.k:                                             ; preds = %_ZL20mi_arena_purge_delayv.exit30, %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread
  %.053 = phi i64 [ 0, %_ZL20mi_arena_purge_delayv.exit30 ], [ %i.mw, %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread ] ; 2 uses
  %.02152 = phi i64 [ %i.v, %_ZL20mi_arena_purge_delayv.exit30 ], [ %.223.ph, %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread ] ; 8 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %.053
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8 ; 8 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !149, !range !91, !noundef !92
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 144 ; 3 uses
  %i.an = load atomic i64, ptr %i.am monotonic, align 8 ; 3 uses
  br i1 %0, label %_ZSt39atomic_compare_exchange_strong_explicitIlEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = icmp sgt i64 %i.an, %i.p
  %or.cond.i = or i1 %i.ao, %i.ap
  br i1 %or.cond.i, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread, label %_ZSt39atomic_compare_exchange_strong_explicitIlEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i

_ZSt39atomic_compare_exchange_strong_explicitIlEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i: ; preds = %bb.n, %bb.m
  %i.aq = cmpxchg ptr %i.am, i64 %i.an, i64 0 acq_rel acquire, align 8 ; 0 uses
  %i.ar = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 344), i64 1 monotonic, align 8 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !110 ; 2 uses
  %.not156.i = icmp eq i64 %i.at, 0
  br i1 %.not156.i, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt39atomic_compare_exchange_strong_explicitIlEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 168 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 160 ; 3 uses
  br label %bb.o

._crit_edge.i:                                    ; preds = %.loopexit137.i
  br i1 %.4.i, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit, label %bb.br

bb.o:                                             ; preds = %.loopexit137.i, %.lr.ph.i
  %i.ay = phi i64 [ %i.at, %.lr.ph.i ], [ %i.mc, %.loopexit137.i ]
  %.049153.i = phi i64 [ 0, %.lr.ph.i ], [ %i.md, %.loopexit137.i ] ; 5 uses
  %.050152.i = phi i1 [ true, %.lr.ph.i ], [ %.4.i, %.loopexit137.i ] ; 2 uses
  %.052151.i = phi i1 [ false, %.lr.ph.i ], [ %.355.i, %.loopexit137.i ] ; 2 uses
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !162
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.049153.i
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %.loopexit137.i, label %.preheader136.i

.preheader136.i:                                  ; preds = %bb.o
  %i.bc = shl i64 %.049153.i, 6
  %i.bd = and i64 %.049153.i, 288230376151711743
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bd ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge62.i, %.preheader136.i
  %.046149.i = phi i64 [ 0, %.preheader136.i ], [ %i.ma, %.critedge62.i ] ; 7 uses
  %.047148.i = phi i64 [ %i.bb, %.preheader136.i ], [ %.148.i, %.critedge62.i ] ; 3 uses
  %.151147.i = phi i1 [ %.050152.i, %.preheader136.i ], [ %.3.i, %.critedge62.i ] ; 3 uses
  %.153146.i = phi i1 [ %.052151.i, %.preheader136.i ], [ %.254.i, %.critedge62.i ] ; 2 uses
  %i.bf = sub nuw nsw i64 64, %.046149.i          ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.preheader.i
  %.044143.i = phi i64 [ 0, %.preheader.i ], [ %i.bj, %bb.q ] ; 4 uses
  %i.bg = add nuw nsw i64 %.044143.i, %.046149.i
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bh, %.047148.i
  %.not59.i = icmp eq i64 %i.bi, 0
  br i1 %.not59.i, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = add nuw nsw i64 %.044143.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.bf
  br i1 %exitcond.not.i, label %_ZL15mi_bitmap_mask_mm.exit.i.i.preheader, label %bb.p, !llvm.loop !163

.critedge.i:                                      ; preds = %bb.p
  %.not60144.i = icmp eq i64 %.044143.i, 0
  br i1 %.not60144.i, label %.critedge62.i, label %_ZL15mi_bitmap_mask_mm.exit.i.i.preheader

_ZL15mi_bitmap_mask_mm.exit.i.i.preheader:        ; preds = %bb.q, %.critedge.i
  %.145145.i.ph = phi i64 [ %.044143.i, %.critedge.i ], [ %i.bf, %bb.q ]
  br label %_ZL15mi_bitmap_mask_mm.exit.i.i

_ZL15mi_bitmap_mask_mm.exit.i.i:                  ; preds = %_ZL15mi_bitmap_mask_mm.exit.i.i.preheader, %.loopexit.i
  %.145145.i = phi i64 [ %i.bu, %.loopexit.i ], [ %.145145.i.ph, %_ZL15mi_bitmap_mask_mm.exit.i.i.preheader ] ; 6 uses
  %i.bk = icmp ugt i64 %.145145.i, 63             ; 2 uses
  %notmask.i.i.i = shl nsw i64 -1, %.145145.i
  %i.bl = xor i64 %notmask.i.i.i, -1
  %i.bm = shl i64 %i.bl, %.046149.i               ; 2 uses
  %.0.i.i.i = select i1 %i.bk, i64 -1, i64 %i.bm  ; 3 uses
  %i.bn = load atomic i64, ptr %i.be monotonic, align 8 ; 2 uses
  %i.bo = and i64 %.0.i.i.i, %i.bn
  %.not13.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %_ZL15mi_bitmap_mask_mm.exit.i.i, %_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i
  %.014.i.i = phi i64 [ %i.bs, %_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i ], [ %i.bn, %_ZL15mi_bitmap_mask_mm.exit.i.i ] ; 2 uses
  %i.bp = or i64 %.014.i.i, %.0.i.i.i
  %i.bq = cmpxchg ptr %i.be, i64 %.014.i.i, i64 %i.bp acq_rel acquire, align 8 ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  br i1 %i.br, label %_Z20_mi_bitmap_try_claimPSt6atomicImEmmm.exit.i, label %_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i

_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bs = extractvalue { i64, i1 } %i.bq, 0       ; 2 uses
  %i.bt = and i64 %i.bs, %.0.i.i.i
  %.not.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !164

.loopexit.i:                                      ; preds = %_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, %_ZL15mi_bitmap_mask_mm.exit.i.i
  %i.bu = add nsw i64 %.145145.i, -1              ; 2 uses
  %.not60.i = icmp eq i64 %i.bu, 0
  br i1 %.not60.i, label %.critedge62.i, label %_ZL15mi_bitmap_mask_mm.exit.i.i, !llvm.loop !165

_Z20_mi_bitmap_try_claimPSt6atomicImEmmm.exit.i:  ; preds = %.lr.ph.i.i
  %i.bv = load ptr, ptr %i.au, align 8, !tbaa !162
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.049153.i
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 3 uses
  %i.by = add i64 %.145145.i, %.046149.i          ; 4 uses
  %i.bz = icmp ult i64 %.046149.i, %i.by
  br i1 %i.bz, label %.preheader.i.i.preheader, label %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.thread.i

.preheader.i.i.preheader:                         ; preds = %_Z20_mi_bitmap_try_claimPSt6atomicImEmmm.exit.i
  %broadcast.splatinsert108 = insertelement <16 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat109 = shufflevector <16 x i64> %broadcast.splatinsert108, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.bq
  %.02229.i.i = phi i1 [ %.2.i.i, %bb.bq ], [ false, %.preheader.i.i.preheader ] ; 2 uses
  %.02328.i.i = phi i64 [ %i.lt, %bb.bq ], [ %.046149.i, %.preheader.i.i.preheader ] ; 8 uses
  %i.ca = add i64 %.02328.i.i, 1
  %i.cb = call i64 @llvm.umax.i64(i64 %i.by, i64 %i.ca)
  %i.cc = sub i64 %i.cb, %.02328.i.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %n.vec = and i64 %i.cc, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.02328.i.i, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.cd = add <16 x i64> %vec.ind, %broadcast.splat
  %i.ce = shl nuw <16 x i64> splat (i64 1), %i.cd
  %i.cf = and <16 x i64> %i.ce, %broadcast.splat109
  %.fr = freeze <16 x i64> %i.cf
  %i.cg = icmp eq <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %.not110 = icmp eq i16 %i.ch, 0
  br i1 %.not110, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %.critedge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %.027.i.i.ph = phi i64 [ 0, %.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.cj = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.cg, i1 false)
  %i.ck = add i64 %index, %i.cj
  br label %.critedge.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.r
  %.027.i.i = phi i64 [ %i.co, %bb.r ], [ %.027.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cl = add i64 %.027.i.i, %.02328.i.i
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = and i64 %i.cm, %i.bx
  %.not.i64.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i64.i, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %scalar.ph
  %i.co = add i64 %.027.i.i, 1                    ; 3 uses
  %i.cp = add i64 %i.co, %.02328.i.i
  %i.cq = icmp ult i64 %i.cp, %i.by
  br i1 %i.cq, label %scalar.ph, label %.critedge.i.i, !llvm.loop !169

.critedge.i.i:                                    ; preds = %bb.r, %scalar.ph, %vector.early.exit, %middle.block
  %.0.lcssa.i.i = phi i64 [ %n.vec, %middle.block ], [ %i.ck, %vector.early.exit ], [ %i.co, %bb.r ], [ %.027.i.i, %scalar.ph ] ; 11 uses
  %.not26.i.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not26.i.i, label %bb.bq, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.cr = add i64 %.02328.i.i, %i.bc              ; 2 uses
  %i.cs = shl i64 %.0.lcssa.i.i, 25               ; 17 uses
  %i.ct = load atomic ptr, ptr %i.aw seq_cst, align 8 ; 4 uses
  %i.cu = shl i64 %i.cr, 25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu ; 6 uses
  %i.cw = load ptr, ptr %i.ax, align 8, !tbaa !150
  %i.cx = lshr i64 %i.cr, 6                       ; 6 uses
  %i.cy = and i64 %.02328.i.i, 63                 ; 9 uses
  %i.cz = add i64 %.0.lcssa.i.i, %i.cy
  %i.da = icmp ult i64 %i.cz, 65                  ; 2 uses
  br i1 %i.da, label %bb.t, label %_ZL15mi_bitmap_mask_mm.exit24.i.i.i, !prof !26

bb.t:                                             ; preds = %bb.s
  %i.db = icmp ugt i64 %.0.lcssa.i.i, 63
  br i1 %i.db, label %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %notmask.i.i.i.i = shl nsw i64 -1, %.0.lcssa.i.i
  %i.dc = xor i64 %notmask.i.i.i.i, -1
  %i.dd = shl i64 %i.dc, %i.cy
  br label %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i

_ZL15mi_bitmap_mask_mm.exit24.i.i.i:              ; preds = %bb.s
  %i.de = sub nuw nsw i64 64, %i.cy               ; 2 uses
  %i.df = icmp eq i64 %i.cy, 0
  %notmask.i22.i.i.i = shl nsw i64 -1, %i.de
  %i.dg = xor i64 %notmask.i22.i.i.i, -1
  %i.dh = shl i64 %i.dg, %i.cy
  %.0.i23.i.i.i = select i1 %i.df, i64 -1, i64 %i.dh ; 2 uses
  %i.di = sub i64 %.0.lcssa.i.i, %i.de            ; 2 uses
  %i.dj = lshr i64 %i.di, 6                       ; 2 uses
  %i.dk = and i64 %i.di, 63                       ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i, label %_ZL15mi_bitmap_mask_mm.exit27.i.i.i

_ZL15mi_bitmap_mask_mm.exit27.i.i.i:              ; preds = %_ZL15mi_bitmap_mask_mm.exit24.i.i.i
  %notmask.i25.i.i.i = shl nsw i64 -1, %i.dk
  %i.dm = xor i64 %notmask.i25.i.i.i, -1
  br label %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i

_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i:     ; preds = %_ZL15mi_bitmap_mask_mm.exit27.i.i.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i, %bb.u, %bb.t
  %.069.i.i = phi i64 [ %.0.i23.i.i.i, %_ZL15mi_bitmap_mask_mm.exit27.i.i.i ], [ %.0.i23.i.i.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i ], [ %i.dd, %bb.u ], [ -1, %bb.t ] ; 2 uses
  %.068.i.i = phi i64 [ -1, %_ZL15mi_bitmap_mask_mm.exit27.i.i.i ], [ -1, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %storemerge.i.i.i = phi i64 [ %i.dm, %_ZL15mi_bitmap_mask_mm.exit27.i.i.i ], [ 0, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %.0.i.i85.i = phi i64 [ %i.dj, %_ZL15mi_bitmap_mask_mm.exit27.i.i.i ], [ %i.dj, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cx ; 2 uses
  %i.do = load atomic i64, ptr %i.dn monotonic, align 8
  %i.dp = and i64 %i.do, %.069.i.i                ; 3 uses
  %.not.i86.i = icmp eq i64 %i.dp, %.069.i.i      ; 2 uses
  %switch.tableidx = add i64 %i.dp, 1             ; 2 uses
  %i.dq = icmp ult i64 %switch.tableidx, 3
  br i1 %i.dq, label %switch.lookup, label %bb.v

bb.v:                                             ; preds = %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i
  %i.dr = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.dp)
  br label %_ZL11mi_popcountm.exit.i.i

switch.lookup:                                    ; preds = %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm, i64 %switch.tableidx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZL11mi_popcountm.exit.i.i

_ZL11mi_popcountm.exit.i.i:                       ; preds = %switch.lookup, %bb.v
  %.028.i.i = phi i64 [ %switch.ext, %switch.lookup ], [ %i.dr, %bb.v ] ; 2 uses
  %.071.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.not4472.i.i = icmp eq i64 %.0.i.i85.i, 0
  br i1 %.not4472.i.i, label %._crit_edge.i.i, label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %_ZL11mi_popcountm.exit.i.i, %bb.x
  %.in.i.i = phi i64 [ %i.ds, %bb.x ], [ %.0.i.i85.i, %_ZL11mi_popcountm.exit.i.i ]
  %.076.i.i = phi ptr [ %.0.i89.i, %bb.x ], [ %.071.i.i, %_ZL11mi_popcountm.exit.i.i ] ; 2 uses
  %.175.i.i = phi i64 [ %.2.i88.i, %bb.x ], [ %.028.i.i, %_ZL11mi_popcountm.exit.i.i ] ; 2 uses
  %.13473.i.i = phi i1 [ %spec.select52.i.i, %bb.x ], [ %.not.i86.i, %_ZL11mi_popcountm.exit.i.i ]
  %i.ds = add nsw i64 %.in.i.i, -1                ; 2 uses
  %i.dt = load atomic i64, ptr %.076.i.i monotonic, align 8
  %i.du = and i64 %i.dt, %.068.i.i                ; 4 uses
  %.not50.i.i = icmp eq i64 %i.du, %.068.i.i
  %spec.select52.i.i = select i1 %.not50.i.i, i1 %.13473.i.i, i1 false ; 2 uses
  switch i64 %i.du, label %bb.w [
    i64 0, label %bb.x
    i64 1, label %_ZL11mi_popcountm.exit58.i.i
    i64 -1, label %_ZL11mi_popcountm.exit58.fold.split.i.i
  ]

bb.w:                                             ; preds = %.lr.ph.i87.i
  %i.dv = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.du)
  br label %_ZL11mi_popcountm.exit58.i.i

_ZL11mi_popcountm.exit58.fold.split.i.i:          ; preds = %.lr.ph.i87.i
  br label %_ZL11mi_popcountm.exit58.i.i

_ZL11mi_popcountm.exit58.i.i:                     ; preds = %_ZL11mi_popcountm.exit58.fold.split.i.i, %bb.w, %.lr.ph.i87.i
  %.0.i57.i.i = phi i64 [ %i.dv, %bb.w ], [ %i.du, %.lr.ph.i87.i ], [ 64, %_ZL11mi_popcountm.exit58.fold.split.i.i ]
  %i.dw = add i64 %.0.i57.i.i, %.175.i.i
  br label %bb.x

bb.x:                                             ; preds = %_ZL11mi_popcountm.exit58.i.i, %.lr.ph.i87.i
  %.2.i88.i = phi i64 [ %i.dw, %_ZL11mi_popcountm.exit58.i.i ], [ %.175.i.i, %.lr.ph.i87.i ] ; 2 uses
  %.0.i89.i = getelementptr inbounds nuw i8, ptr %.076.i.i, i64 8 ; 2 uses
  %.not44.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not44.i.i, label %._crit_edge.i.i, label %.lr.ph.i87.i, !llvm.loop !170

._crit_edge.i.i:                                  ; preds = %bb.x, %_ZL11mi_popcountm.exit.i.i
  %.134.lcssa.i.i = phi i1 [ %.not.i86.i, %_ZL11mi_popcountm.exit.i.i ], [ %spec.select52.i.i, %bb.x ] ; 2 uses
  %.1.lcssa.i.i = phi i64 [ %.028.i.i, %_ZL11mi_popcountm.exit.i.i ], [ %.2.i88.i, %bb.x ] ; 2 uses
  %.0.lcssa.i90.i = phi ptr [ %.071.i.i, %_ZL11mi_popcountm.exit.i.i ], [ %.0.i89.i, %bb.x ]
  %.not45.i.i = icmp eq i64 %storemerge.i.i.i, 0
  br i1 %.not45.i.i, label %_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm.exit.i, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.dx = load atomic i64, ptr %.0.lcssa.i90.i monotonic, align 8
  %i.dy = and i64 %i.dx, %storemerge.i.i.i        ; 4 uses
  %.not46.i.i = icmp eq i64 %i.dy, %storemerge.i.i.i
  %spec.select53.i.i = select i1 %.not46.i.i, i1 %.134.lcssa.i.i, i1 false ; 2 uses
  switch i64 %i.dy, label %bb.z [
    i64 0, label %_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm.exit.i
    i64 1, label %_ZL11mi_popcountm.exit61.i.i
  ]

bb.z:                                             ; preds = %bb.y
  %i.dz = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.dy)
  br label %_ZL11mi_popcountm.exit61.i.i

_ZL11mi_popcountm.exit61.i.i:                     ; preds = %bb.z, %bb.y
  %.0.i60.i.i = phi i64 [ %i.dz, %bb.z ], [ %i.dy, %bb.y ]
  %i.ea = add i64 %.0.i60.i.i, %.1.lcssa.i.i
  br i1 %spec.select53.i.i, label %bb.aa, label %bb.ay

_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm.exit.i: ; preds = %bb.y, %._crit_edge.i.i
  %.4.i.i = phi i1 [ %.134.lcssa.i.i, %._crit_edge.i.i ], [ %spec.select53.i.i, %bb.y ]
  br i1 %.4.i.i, label %bb.aa, label %bb.ay

bb.aa:                                            ; preds = %_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm.exit.i, %_ZL11mi_popcountm.exit61.i.i
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ab, label %mi_option_get.exit.i74.i, !prof !19

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit.i74.i

mi_option_get.exit.i74.i:                         ; preds = %bb.ab, %bb.aa
  %i.ed = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.ee = icmp slt i64 %i.ed, 0
  br i1 %i.ee, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.ac

bb.ac:                                            ; preds = %mi_option_get.exit.i74.i
  %i.ef = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 296), i64 1 monotonic, align 8 ; 0 uses
  %i.eg = icmp eq i64 %i.cs, 0                    ; 3 uses
  br i1 %i.eg, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %i.cs monotonic, align 8
  %i.ei = add nsw i64 %i.eh, %i.cs                ; 3 uses
  %i.ej = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16 ; 2 uses
  %.old3.i.i.i.i75.i = icmp slt i64 %i.ej, %i.ei
  br i1 %.old3.i.i.i.i75.i, label %.preheader.i.i.i.i81.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i76.i

.preheader.i.i.i.i81.i:                           ; preds = %bb.ad, %.preheader.i.i.i.i81.i
  %.0.i.i.i.i82.i = phi i64 [ %i.em, %.preheader.i.i.i.i81.i ], [ %i.ej, %bb.ad ]
  %i.ek = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i.i82.i, i64 %i.ei release monotonic, align 8 ; 2 uses
  %i.el = extractvalue { i64, i1 } %i.ek, 1
  %i.em = extractvalue { i64, i1 } %i.ek, 0       ; 2 uses
  %i.en = icmp sge i64 %i.em, %i.ei
  %or.cond.not.i.i.i.i83.i = select i1 %i.el, i1 true, i1 %i.en
  br i1 %or.cond.not.i.i.i.i83.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i76.i, label %.preheader.i.i.i.i81.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i76.i: ; preds = %.preheader.i.i.i.i81.i, %bb.ad
  %i.eo = icmp sgt i64 %i.cs, 0
  br i1 %i.eo, label %bb.ae, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i

bb.ae:                                            ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i76.i
  %i.ep = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %i.cs monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i: ; preds = %bb.ae, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i76.i, %bb.ac
  %i.eq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 168), align 8, !tbaa !111
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.af, label %mi_option_is_enabled.exit.i78.i, !prof !19

bb.af:                                            ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 160)), !inline_history !115
  br label %mi_option_is_enabled.exit.i78.i

mi_option_is_enabled.exit.i78.i:                  ; preds = %bb.af, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i
  %i.es = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 160), align 16, !tbaa !116
  %.not.i79.i = icmp eq i64 %i.es, 0
  br i1 %.not.i79.i, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %mi_option_is_enabled.exit.i78.i
  %i.et = call noundef zeroext i1 @_Z14_mi_preloadingv()
  br i1 %i.et, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.eg, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %i.cs monotonic, align 8
  %i.ev = sub nsw i64 %i.eu, %i.cs                ; 3 uses
  %i.ew = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64) monotonic, align 64 ; 2 uses
  %.old3.i.i.i.i110.i = icmp slt i64 %i.ew, %i.ev
  br i1 %.old3.i.i.i.i110.i, label %.preheader.i.i.i.i121.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i111.i

.preheader.i.i.i.i121.i:                          ; preds = %bb.ai, %.preheader.i.i.i.i121.i
  %.0.i.i.i.i122.i = phi i64 [ %i.ez, %.preheader.i.i.i.i121.i ], [ %i.ew, %bb.ai ]
  %i.ex = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %.0.i.i.i.i122.i, i64 %i.ev release monotonic, align 8 ; 2 uses
  %i.ey = extractvalue { i64, i1 } %i.ex, 1
  %i.ez = extractvalue { i64, i1 } %i.ex, 0       ; 2 uses
  %i.fa = icmp sge i64 %i.ez, %i.ev
  %or.cond.not.i.i.i.i123.i = select i1 %i.ey, i1 true, i1 %i.fa
  br i1 %or.cond.not.i.i.i.i123.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i111.i, label %.preheader.i.i.i.i121.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i111.i: ; preds = %.preheader.i.i.i.i121.i, %bb.ai
  %i.fb = icmp slt i64 %i.cs, 0
  br i1 %i.fb, label %bb.aj, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i112.i

bb.aj:                                            ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i111.i
  %i.fc = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 56), i64 %i.cs monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i112.i

_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i112.i: ; preds = %bb.aj, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i111.i
  %i.fd = icmp eq ptr %i.ct, null
  br i1 %i.fd, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.ak

bb.ak:                                            ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i112.i
  %i.fe = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !67 ; 5 uses
  %i.ff = ptrtoint ptr %i.cv to i64
  %i.fg = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fe)
  %i.fh = icmp samesign ult i64 %i.fg, 2
  %i.fi = add i64 %i.ff, -1
  %i.fj = add i64 %i.fi, %i.fe                    ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cs
  %i.fl = ptrtoint ptr %i.fk to i64               ; 3 uses
  br i1 %i.fh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fm = sub i64 0, %i.fe                        ; 2 uses
  %i.fn = and i64 %i.fj, %i.fm
  %i.fo = and i64 %i.fm, %i.fl
  br label %_ZL17mi_align_down_ptrPvm.exit27.i.i.i114.i

bb.am:                                            ; preds = %bb.ak
  %i.fp = urem i64 %i.fj, %i.fe
  %i.fq = sub nuw i64 %i.fj, %i.fp
  %i.fr = urem i64 %i.fl, %i.fe
  %i.fs = sub nuw i64 %i.fl, %i.fr
  br label %_ZL17mi_align_down_ptrPvm.exit27.i.i.i114.i

_ZL17mi_align_down_ptrPvm.exit27.i.i.i114.i:      ; preds = %bb.am, %bb.al
  %.in.i.i.i115.i = phi i64 [ %i.fq, %bb.am ], [ %i.fn, %bb.al ] ; 2 uses
  %.in30.i.i.i116.i = phi i64 [ %i.fs, %bb.am ], [ %i.fo, %bb.al ]
  %i.ft = sub i64 %.in30.i.i.i116.i, %.in.i.i.i115.i ; 3 uses
  %i.fu = icmp slt i64 %i.ft, 1
  br i1 %i.fu, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.an

bb.an:                                            ; preds = %_ZL17mi_align_down_ptrPvm.exit27.i.i.i114.i
  %i.fv = inttoptr i64 %.in.i.i.i115.i to ptr     ; 2 uses
  %i.fw = call i32 @madvise(ptr noundef %i.fv, i64 noundef %i.ft, i32 noundef 4) #55
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %_Z17_mi_prim_decommitPvmPb.exit.i117.i

_Z17_mi_prim_decommitPvmPb.exit.i117.i:           ; preds = %bb.an
  %i.fy = tail call ptr @__errno_location() #59
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !71 ; 3 uses
  %.not.i118.i = icmp eq i32 %i.fz, 0
  br i1 %.not.i118.i, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.ao

bb.ao:                                            ; preds = %_Z17_mi_prim_decommitPvmPb.exit.i117.i
  call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.170, i32 noundef %i.fz, i32 noundef %i.fz, ptr noundef %i.fv, i64 noundef %i.ft)
  br label %_Z15_mi_os_purge_exPvmbm.exit84.i

bb.ap:                                            ; preds = %bb.ag, %mi_option_is_enabled.exit.i78.i
  %i.ga = icmp eq ptr %i.ct, null
  %or.cond.i.i.i98.i = or i1 %i.eg, %i.ga
  br i1 %or.cond.i.i.i98.i, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gb = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !67 ; 5 uses
  %i.gc = ptrtoint ptr %i.cv to i64
  %i.gd = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gb)
  %i.ge = icmp samesign ult i64 %i.gd, 2
  %i.gf = add i64 %i.gc, -1
  %i.gg = add i64 %i.gf, %i.gb                    ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cs
  %i.gi = ptrtoint ptr %i.gh to i64               ; 3 uses
  br i1 %i.ge, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gj = sub i64 0, %i.gb                        ; 2 uses
  %i.gk = and i64 %i.gg, %i.gj
  %i.gl = and i64 %i.gj, %i.gi
  br label %_ZL17mi_align_down_ptrPvm.exit27.i.i.i99.i

bb.as:                                            ; preds = %bb.aq
  %i.gm = urem i64 %i.gg, %i.gb
  %i.gn = sub nuw i64 %i.gg, %i.gm
  %i.go = urem i64 %i.gi, %i.gb
  %i.gp = sub nuw i64 %i.gi, %i.go
  br label %_ZL17mi_align_down_ptrPvm.exit27.i.i.i99.i

_ZL17mi_align_down_ptrPvm.exit27.i.i.i99.i:       ; preds = %bb.as, %bb.ar
  %.in.i.i.i100.i = phi i64 [ %i.gn, %bb.as ], [ %i.gk, %bb.ar ] ; 2 uses
  %.in30.i.i.i101.i = phi i64 [ %i.gp, %bb.as ], [ %i.gl, %bb.ar ]
  %i.gq = sub i64 %.in30.i.i.i101.i, %.in.i.i.i100.i ; 8 uses
  %i.gr = icmp slt i64 %i.gq, 1
  br i1 %i.gr, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.at

bb.at:                                            ; preds = %_ZL17mi_align_down_ptrPvm.exit27.i.i.i99.i
  %i.gs = inttoptr i64 %.in.i.i.i100.i to ptr     ; 4 uses
  %i.gt = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %i.gq monotonic, align 8
  %i.gu = add nsw i64 %i.gt, %i.gq                ; 3 uses
  %i.gv = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88) monotonic, align 8 ; 2 uses
  %.old3.i.i.i.i102.i = icmp slt i64 %i.gv, %i.gu
  br i1 %.old3.i.i.i.i102.i, label %.preheader.i.i.i.i107.i, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i103.i

.preheader.i.i.i.i107.i:                          ; preds = %bb.at, %.preheader.i.i.i.i107.i
  %.0.i.i.i.i108.i = phi i64 [ %i.gy, %.preheader.i.i.i.i107.i ], [ %i.gv, %bb.at ]
  %i.gw = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88), i64 %.0.i.i.i.i108.i, i64 %i.gu release monotonic, align 8 ; 2 uses
  %i.gx = extractvalue { i64, i1 } %i.gw, 1
  %i.gy = extractvalue { i64, i1 } %i.gw, 0       ; 2 uses
  %i.gz = icmp sge i64 %i.gy, %i.gu
  %or.cond.not.i.i.i.i109.i = select i1 %i.gx, i1 true, i1 %i.gz
  br i1 %or.cond.not.i.i.i.i109.i, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i103.i, label %.preheader.i.i.i.i107.i, !llvm.loop !147

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i103.i: ; preds = %.preheader.i.i.i.i107.i, %bb.at
  %i.ha = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80), i64 %i.gq monotonic, align 8 ; 0 uses
  %i.hb = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.hc = load atomic i64, ptr @_ZZ14_mi_prim_resetPvmE6advice.0 monotonic, align 8
  %i.hd = trunc i64 %i.hc to i32                  ; 3 uses
  %i.he = call i32 @madvise(ptr noundef %i.gs, i64 noundef %i.gq, i32 noundef %i.hd) #55
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %_ZL12unix_madvisePvmi.exit.lr.ph.i.i.i

_ZL12unix_madvisePvmi.exit.lr.ph.i.i.i:           ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i103.i
  %i.hg = tail call ptr @__errno_location() #59   ; 3 uses
  br label %_ZL12unix_madvisePvmi.exit.i.i.i

_ZL12unix_madvisePvmi.exit.i.i.i:                 ; preds = %bb.au, %_ZL12unix_madvisePvmi.exit.lr.ph.i.i.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !71 ; 3 uses
  switch i32 %i.hh, label %.critedge.i.i.i [
    i32 0, label %_Z15_mi_os_purge_exPvmbm.exit84.i
    i32 11, label %bb.au
  ]

bb.au:                                            ; preds = %_ZL12unix_madvisePvmi.exit.i.i.i
  store i32 0, ptr %i.hg, align 4, !tbaa !71
  %i.hi = call i32 @madvise(ptr noundef %i.gs, i64 noundef %i.gq, i32 noundef %i.hd) #55
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %_ZL12unix_madvisePvmi.exit.i.i.i, !llvm.loop !171

.critedge.i.i.i:                                  ; preds = %_ZL12unix_madvisePvmi.exit.i.i.i
  %i.hk = icmp eq i32 %i.hh, 22
  %i.hl = icmp eq i32 %i.hd, 8
  %or.cond.i.i.i = and i1 %i.hl, %i.hk
  br i1 %or.cond.i.i.i, label %bb.av, label %_Z14_mi_prim_resetPvm.exit.i.i

bb.av:                                            ; preds = %.critedge.i.i.i
  store atomic i64 4, ptr @_ZZ14_mi_prim_resetPvmE6advice.0 release, align 8
  %i.hm = call i32 @madvise(ptr noundef %i.gs, i64 noundef %i.gq, i32 noundef 4) #55
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ho = load i32, ptr %i.hg, align 4, !tbaa !71
  br label %_Z14_mi_prim_resetPvm.exit.i.i

_Z14_mi_prim_resetPvm.exit.i.i:                   ; preds = %bb.aw, %.critedge.i.i.i
  %.0.i.i105.i = phi i32 [ %i.ho, %bb.aw ], [ %i.hh, %.critedge.i.i.i ] ; 3 uses
  %.not.i106.i = icmp eq i32 %.0.i.i105.i, 0
  br i1 %.not.i106.i, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.ax

bb.ax:                                            ; preds = %_Z14_mi_prim_resetPvm.exit.i.i
  call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.38, i32 noundef %.0.i.i105.i, i32 noundef %.0.i.i105.i, ptr noundef %i.gs, i64 noundef %i.gq)
  br label %_Z15_mi_os_purge_exPvmbm.exit84.i

bb.ay:                                            ; preds = %_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm.exit.i, %_ZL11mi_popcountm.exit61.i.i
  %.3.i132.i = phi i64 [ %i.ea, %_ZL11mi_popcountm.exit61.i.i ], [ %.1.lcssa.i.i, %_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm.exit.i ]
  %i.hp = shl i64 %.3.i132.i, 25                  ; 5 uses
  %i.hq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.az, label %mi_option_get.exit.i72.i, !prof !19

bb.az:                                            ; preds = %bb.ay
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit.i72.i

mi_option_get.exit.i72.i:                         ; preds = %bb.az, %bb.ay
  %i.hs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.ht = icmp slt i64 %i.hs, 0
  br i1 %i.ht, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.ba

bb.ba:                                            ; preds = %mi_option_get.exit.i72.i
  %i.hu = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 296), i64 1 monotonic, align 8 ; 0 uses
  %i.hv = icmp eq i64 %i.cs, 0                    ; 2 uses
  br i1 %i.hv, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hw = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %i.cs monotonic, align 8
  %i.hx = add nsw i64 %i.hw, %i.cs                ; 3 uses
  %i.hy = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16 ; 2 uses
  %.old3.i.i.i.i.i = icmp slt i64 %i.hy, %i.hx
  br i1 %.old3.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.bb, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.ib, %.preheader.i.i.i.i.i ], [ %i.hy, %bb.bb ]
  %i.hz = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i.i.i, i64 %i.hx release monotonic, align 8 ; 2 uses
  %i.ia = extractvalue { i64, i1 } %i.hz, 1
  %i.ib = extractvalue { i64, i1 } %i.hz, 0       ; 2 uses
  %i.ic = icmp sge i64 %i.ib, %i.hx
  %or.cond.not.i.i.i.i.i = select i1 %i.ia, i1 true, i1 %i.ic
  br i1 %or.cond.not.i.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i:   ; preds = %.preheader.i.i.i.i.i, %bb.bb
  %i.id = icmp sgt i64 %i.cs, 0
  br i1 %i.id, label %bb.bc, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i.i

bb.bc:                                            ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i
  %i.ie = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %i.cs monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i.i

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i.i: ; preds = %bb.bc, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i, %bb.ba
  %i.if = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 168), align 8, !tbaa !111
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.bd, label %mi_option_is_enabled.exit.i.i, !prof !19

bb.bd:                                            ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i.i
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 160)), !inline_history !115
  br label %mi_option_is_enabled.exit.i.i

mi_option_is_enabled.exit.i.i:                    ; preds = %bb.bd, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i.i
  %i.ih = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 160), align 16, !tbaa !116
  %.not.i73.i = icmp eq i64 %i.ih, 0
  br i1 %.not.i73.i, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.be

bb.be:                                            ; preds = %mi_option_is_enabled.exit.i.i
  %i.ii = call noundef zeroext i1 @_Z14_mi_preloadingv()
  br i1 %i.ii, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ij = icmp eq i64 %i.hp, 0
  br i1 %i.ij, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ik = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %i.hp monotonic, align 8
  %i.il = sub nsw i64 %i.ik, %i.hp                ; 3 uses
  %i.im = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64) monotonic, align 64 ; 2 uses
  %.old3.i.i.i.i91.i = icmp slt i64 %i.im, %i.il
  br i1 %.old3.i.i.i.i91.i, label %.preheader.i.i.i.i95.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i92.i

.preheader.i.i.i.i95.i:                           ; preds = %bb.bg, %.preheader.i.i.i.i95.i
  %.0.i.i.i.i96.i = phi i64 [ %i.ip, %.preheader.i.i.i.i95.i ], [ %i.im, %bb.bg ]
  %i.in = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %.0.i.i.i.i96.i, i64 %i.il release monotonic, align 8 ; 2 uses
  %i.io = extractvalue { i64, i1 } %i.in, 1
  %i.ip = extractvalue { i64, i1 } %i.in, 0       ; 2 uses
  %i.iq = icmp sge i64 %i.ip, %i.il
  %or.cond.not.i.i.i.i97.i = select i1 %i.io, i1 true, i1 %i.iq
  br i1 %or.cond.not.i.i.i.i97.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i92.i, label %.preheader.i.i.i.i95.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i92.i: ; preds = %.preheader.i.i.i.i95.i, %bb.bg
  %i.ir = icmp slt i64 %i.hp, 0
  br i1 %i.ir, label %bb.bh, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i

bb.bh:                                            ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i92.i
  %i.is = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 56), i64 %i.hp monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i

_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i: ; preds = %bb.bh, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i92.i, %bb.bf
  %i.it = icmp eq ptr %i.ct, null
  %or.cond.i.i.i.i = or i1 %i.hv, %i.it
  br i1 %or.cond.i.i.i.i, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.bi

bb.bi:                                            ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i
  %i.iu = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !67 ; 5 uses
  %i.iv = ptrtoint ptr %i.cv to i64
  %i.iw = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iu)
  %i.ix = icmp samesign ult i64 %i.iw, 2
  %i.iy = add i64 %i.iv, -1
  %i.iz = add i64 %i.iy, %i.iu                    ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cs
  %i.jb = ptrtoint ptr %i.ja to i64               ; 3 uses
  br i1 %i.ix, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jc = sub i64 0, %i.iu                        ; 2 uses
  %i.jd = and i64 %i.iz, %i.jc
  %i.je = and i64 %i.jc, %i.jb
  br label %_ZL17mi_align_down_ptrPvm.exit27.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.jf = urem i64 %i.iz, %i.iu
  %i.jg = sub nuw i64 %i.iz, %i.jf
  %i.jh = urem i64 %i.jb, %i.iu
  %i.ji = sub nuw i64 %i.jb, %i.jh
  br label %_ZL17mi_align_down_ptrPvm.exit27.i.i.i.i

_ZL17mi_align_down_ptrPvm.exit27.i.i.i.i:         ; preds = %bb.bk, %bb.bj
  %.in.i.i.i.i = phi i64 [ %i.jg, %bb.bk ], [ %i.jd, %bb.bj ] ; 2 uses
  %.in30.i.i.i.i = phi i64 [ %i.ji, %bb.bk ], [ %i.je, %bb.bj ]
  %i.jj = sub i64 %.in30.i.i.i.i, %.in.i.i.i.i    ; 3 uses
  %i.jk = icmp slt i64 %i.jj, 1
  br i1 %i.jk, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.bl

bb.bl:                                            ; preds = %_ZL17mi_align_down_ptrPvm.exit27.i.i.i.i
  %i.jl = inttoptr i64 %.in.i.i.i.i to ptr        ; 2 uses
  %i.jm = call i32 @madvise(ptr noundef %i.jl, i64 noundef %i.jj, i32 noundef 4) #55
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %_Z17_mi_prim_decommitPvmPb.exit.i.i

_Z17_mi_prim_decommitPvmPb.exit.i.i:              ; preds = %bb.bl
  %i.jo = tail call ptr @__errno_location() #59
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !71 ; 3 uses
  %.not.i93.i = icmp eq i32 %i.jp, 0
  br i1 %.not.i93.i, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.bm

bb.bm:                                            ; preds = %_Z17_mi_prim_decommitPvmPb.exit.i.i
  call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.170, i32 noundef %i.jp, i32 noundef %i.jp, ptr noundef %i.jl, i64 noundef %i.jj)
  br label %_Z15_mi_os_purge_exPvmbm.exit84.i

_Z15_mi_os_purge_exPvmbm.exit84.i:                ; preds = %bb.au, %_ZL12unix_madvisePvmi.exit.i.i.i, %bb.bm, %_Z17_mi_prim_decommitPvmPb.exit.i.i, %bb.bl, %_ZL17mi_align_down_ptrPvm.exit27.i.i.i.i, %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i, %bb.be, %mi_option_is_enabled.exit.i.i, %mi_option_get.exit.i72.i, %bb.ax, %_Z14_mi_prim_resetPvm.exit.i.i, %bb.av, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i103.i, %_ZL17mi_align_down_ptrPvm.exit27.i.i.i99.i, %bb.ap, %bb.ao, %_Z17_mi_prim_decommitPvmPb.exit.i117.i, %bb.an, %_ZL17mi_align_down_ptrPvm.exit27.i.i.i114.i, %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i112.i, %bb.ah, %mi_option_get.exit.i74.i
  %.0.in.i.i31 = phi i1 [ false, %bb.ax ], [ false, %mi_option_is_enabled.exit.i.i ], [ false, %mi_option_get.exit.i74.i ], [ false, %bb.ap ], [ false, %_ZL17mi_align_down_ptrPvm.exit27.i.i.i99.i ], [ false, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i103.i ], [ false, %_Z17_mi_prim_decommitPvmPb.exit.i.i ], [ false, %bb.bl ], [ false, %bb.av ], [ false, %_Z14_mi_prim_resetPvm.exit.i.i ], [ true, %bb.ah ], [ false, %mi_option_get.exit.i72.i ], [ false, %bb.be ], [ true, %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i112.i ], [ true, %_ZL17mi_align_down_ptrPvm.exit27.i.i.i114.i ], [ false, %bb.an ], [ false, %_Z17_mi_prim_decommitPvmPb.exit.i117.i ], [ false, %bb.ao ], [ true, %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i ], [ true, %_ZL17mi_align_down_ptrPvm.exit27.i.i.i.i ], [ false, %bb.bm ], [ false, %_ZL12unix_madvisePvmi.exit.i.i.i ], [ false, %bb.au ] ; 3 uses
  %i.jq = load ptr, ptr %i.au, align 8, !tbaa !162 ; 3 uses
  br i1 %i.da, label %bb.bn, label %_ZL15mi_bitmap_mask_mm.exit24.i.i.i.i, !prof !26

bb.bn:                                            ; preds = %_Z15_mi_os_purge_exPvmbm.exit84.i
  %i.jr = icmp ugt i64 %.0.lcssa.i.i, 63
  br i1 %i.jr, label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.thread.thread.i.i, label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.thread.i.i

_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.thread.i.i: ; preds = %bb.bn
  %notmask.i.i.i.i.i = shl nsw i64 -1, %.0.lcssa.i.i
  %i.js = xor i64 %notmask.i.i.i.i.i, -1
  %i.jt = shl i64 %i.js, %i.cy
  %i.ju = xor i64 %i.jt, -1                       ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.cx
  %i.jw = atomicrmw and ptr %i.jv, i64 %i.ju acq_rel, align 8 ; 0 uses
  br i1 %.0.in.i.i31, label %._crit_edge.thread.i42.i.i, label %_ZL14mi_arena_purgeP10mi_arena_smm.exit.i

_ZL15mi_bitmap_mask_mm.exit24.i.i.i.i:            ; preds = %_Z15_mi_os_purge_exPvmbm.exit84.i
  %i.jx = sub nuw nsw i64 64, %i.cy               ; 2 uses
  %i.jy = icmp eq i64 %i.cy, 0
  %notmask.i22.i.i.i.i = shl nsw i64 -1, %i.jx
  %i.jz = xor i64 %notmask.i22.i.i.i.i, -1
  %i.ka = shl i64 %i.jz, %i.cy
  %i.kb = sub i64 %.0.lcssa.i.i, %i.jx            ; 4 uses
  %i.kc = lshr i64 %i.kb, 6                       ; 7 uses
  %i.kd = and i64 %i.kb, 63                       ; 2 uses
  %notmask.i25.i.i.i.i = shl nsw i64 -1, %i.kd    ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.cx ; 2 uses
  %i.kf = xor i64 %i.ka, -1
  %i.kg = select i1 %i.jy, i64 0, i64 %i.kf       ; 2 uses
  %i.kh = atomicrmw and ptr %i.ke, i64 %i.kg acq_rel, align 8 ; 0 uses
  %.032.i.i.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 3 uses
  %.not1633.i.i.i = icmp eq i64 %i.kc, 0          ; 2 uses
  br i1 %.not1633.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZL15mi_bitmap_mask_mm.exit24.i.i.i.i
  %xtraiter = and i64 %i.kc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.036.i.i.i.prol = phi ptr [ %.0.i.i71.i.prol, %.lr.ph.i.i.i.prol ], [ %.032.i.i.i, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.01434.i.i.i.prol = phi i64 [ %i.ki, %.lr.ph.i.i.i.prol ], [ %i.kc, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ki = add nsw i64 %.01434.i.i.i.prol, -1      ; 2 uses
  %i.kj = atomicrmw xchg ptr %.036.i.i.i.prol, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.i71.i.prol = getelementptr inbounds nuw i8, ptr %.036.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !172

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.0.i.i71.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %.0.i.i71.i.prol, %.lr.ph.i.i.i.prol ]
  %.036.i.i.i.unr = phi ptr [ %.032.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.0.i.i71.i.prol, %.lr.ph.i.i.i.prol ]
  %.01434.i.i.i.unr = phi i64 [ %i.kc, %.lr.ph.i.i.i.preheader ], [ %i.ki, %.lr.ph.i.i.i.prol ]
  %i.kk = icmp ult i64 %i.kb, 512
  br i1 %i.kk, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.036.i.i.i = phi ptr [ %.0.i.i71.i.7, %.lr.ph.i.i.i ], [ %.036.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.01434.i.i.i = phi i64 [ %i.ks, %.lr.ph.i.i.i ], [ %.01434.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.kl = atomicrmw xchg ptr %.036.i.i.i, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.i71.i = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 8
  %i.km = atomicrmw xchg ptr %.0.i.i71.i, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.i71.i.1 = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 16
  %i.kn = atomicrmw xchg ptr %.0.i.i71.i.1, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.i71.i.2 = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 24
  %i.ko = atomicrmw xchg ptr %.0.i.i71.i.2, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.i71.i.3 = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 32
  %i.kp = atomicrmw xchg ptr %.0.i.i71.i.3, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.i71.i.4 = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 40
  %i.kq = atomicrmw xchg ptr %.0.i.i71.i.4, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.i71.i.5 = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 48
  %i.kr = atomicrmw xchg ptr %.0.i.i71.i.5, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.i71.i.6 = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 56
  %i.ks = add nsw i64 %.01434.i.i.i, -8           ; 2 uses
  %i.kt = atomicrmw xchg ptr %.0.i.i71.i.6, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.i71.i.7 = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 64 ; 2 uses
  %.not16.i.i.i.7 = icmp eq i64 %i.ks, 0
  br i1 %.not16.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !153

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i.i
  %.0.lcssa.i.i.i = phi ptr [ %.032.i.i.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i.i ], [ %.0.i.i71.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.0.i.i71.i.7, %.lr.ph.i.i.i ]
  %.not17.i.i.i = icmp eq i64 %i.kd, 0            ; 2 uses
  br i1 %.not17.i.i.i, label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.i.i.i
  %i.ku = atomicrmw and ptr %.0.lcssa.i.i.i, i64 %notmask.i25.i.i.i.i acq_rel, align 8 ; 0 uses
  br label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.i.i

_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.i.i: ; preds = %bb.bo, %._crit_edge.i.i.i
  br i1 %.0.in.i.i31, label %_ZL15mi_bitmap_mask_mm.exit24.i.i19.i.i, label %_ZL14mi_arena_purgeP10mi_arena_smm.exit.i

_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.thread.thread.i.i: ; preds = %bb.bn
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.cx
  %i.kw = atomicrmw xchg ptr %i.kv, i64 0 acq_rel, align 8 ; 0 uses
  br i1 %.0.in.i.i31, label %._crit_edge.thread.i42.i.i, label %_ZL14mi_arena_purgeP10mi_arena_smm.exit.i

_ZL15mi_bitmap_mask_mm.exit24.i.i19.i.i:          ; preds = %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.i.i
  %i.kx = load ptr, ptr %i.ax, align 8, !tbaa !150
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.cx ; 2 uses
  %i.kz = atomicrmw and ptr %i.ky, i64 %i.kg acq_rel, align 8 ; 0 uses
  %.032.i24.i.i = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 3 uses
  br i1 %.not1633.i.i.i, label %._crit_edge.i34.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_ZL15mi_bitmap_mask_mm.exit24.i.i19.i.i
  %xtraiter121 = and i64 %i.kc, 7                 ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph.i26.i.i.prol.loopexit, label %.lr.ph.i26.i.i.prol

.lr.ph.i26.i.i.prol:                              ; preds = %.lr.ph.i26.i.i.preheader, %.lr.ph.i26.i.i.prol
  %.036.i27.i.i.prol = phi ptr [ %.0.i32.i.i.prol, %.lr.ph.i26.i.i.prol ], [ %.032.i24.i.i, %.lr.ph.i26.i.i.preheader ] ; 2 uses
  %.01434.i29.i.i.prol = phi i64 [ %i.la, %.lr.ph.i26.i.i.prol ], [ %i.kc, %.lr.ph.i26.i.i.preheader ]
  %prol.iter123 = phi i64 [ %prol.iter123.next, %.lr.ph.i26.i.i.prol ], [ 0, %.lr.ph.i26.i.i.preheader ]
  %i.la = add nsw i64 %.01434.i29.i.i.prol, -1    ; 2 uses
  %i.lb = atomicrmw xchg ptr %.036.i27.i.i.prol, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i32.i.i.prol = getelementptr inbounds nuw i8, ptr %.036.i27.i.i.prol, i64 8 ; 3 uses
  %prol.iter123.next = add i64 %prol.iter123, 1   ; 2 uses
  %prol.iter123.cmp.not = icmp eq i64 %prol.iter123.next, %xtraiter121
  br i1 %prol.iter123.cmp.not, label %.lr.ph.i26.i.i.prol.loopexit, label %.lr.ph.i26.i.i.prol, !llvm.loop !173

.lr.ph.i26.i.i.prol.loopexit:                     ; preds = %.lr.ph.i26.i.i.prol, %.lr.ph.i26.i.i.preheader
  %.0.i32.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i26.i.i.preheader ], [ %.0.i32.i.i.prol, %.lr.ph.i26.i.i.prol ]
  %.036.i27.i.i.unr = phi ptr [ %.032.i24.i.i, %.lr.ph.i26.i.i.preheader ], [ %.0.i32.i.i.prol, %.lr.ph.i26.i.i.prol ]
  %.01434.i29.i.i.unr = phi i64 [ %i.kc, %.lr.ph.i26.i.i.preheader ], [ %i.la, %.lr.ph.i26.i.i.prol ]
  %i.lc = icmp ult i64 %i.kb, 512
  br i1 %i.lc, label %._crit_edge.i34.i.i, label %.lr.ph.i26.i.i

._crit_edge.thread.i42.i.i:                       ; preds = %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.thread.thread.i.i, %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.thread.i.i
  %.031.ph.i43.i.i = phi i64 [ 0, %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.thread.thread.i.i ], [ %i.ju, %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.thread.i.i ]
  %i.ld = load ptr, ptr %i.ax, align 8, !tbaa !150
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.cx
  %i.lf = atomicrmw and ptr %i.le, i64 %.031.ph.i43.i.i acq_rel, align 8 ; 0 uses
  br label %_ZL14mi_arena_purgeP10mi_arena_smm.exit.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i.prol.loopexit, %.lr.ph.i26.i.i
  %.036.i27.i.i = phi ptr [ %.0.i32.i.i.7, %.lr.ph.i26.i.i ], [ %.036.i27.i.i.unr, %.lr.ph.i26.i.i.prol.loopexit ] ; 9 uses
  %.01434.i29.i.i = phi i64 [ %i.ln, %.lr.ph.i26.i.i ], [ %.01434.i29.i.i.unr, %.lr.ph.i26.i.i.prol.loopexit ]
  %i.lg = atomicrmw xchg ptr %.036.i27.i.i, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i32.i.i = getelementptr inbounds nuw i8, ptr %.036.i27.i.i, i64 8
  %i.lh = atomicrmw xchg ptr %.0.i32.i.i, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i32.i.i.1 = getelementptr inbounds nuw i8, ptr %.036.i27.i.i, i64 16
  %i.li = atomicrmw xchg ptr %.0.i32.i.i.1, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i32.i.i.2 = getelementptr inbounds nuw i8, ptr %.036.i27.i.i, i64 24
  %i.lj = atomicrmw xchg ptr %.0.i32.i.i.2, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i32.i.i.3 = getelementptr inbounds nuw i8, ptr %.036.i27.i.i, i64 32
  %i.lk = atomicrmw xchg ptr %.0.i32.i.i.3, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i32.i.i.4 = getelementptr inbounds nuw i8, ptr %.036.i27.i.i, i64 40
  %i.ll = atomicrmw xchg ptr %.0.i32.i.i.4, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i32.i.i.5 = getelementptr inbounds nuw i8, ptr %.036.i27.i.i, i64 48
  %i.lm = atomicrmw xchg ptr %.0.i32.i.i.5, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i32.i.i.6 = getelementptr inbounds nuw i8, ptr %.036.i27.i.i, i64 56
  %i.ln = add nsw i64 %.01434.i29.i.i, -8         ; 2 uses
  %i.lo = atomicrmw xchg ptr %.0.i32.i.i.6, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i32.i.i.7 = getelementptr inbounds nuw i8, ptr %.036.i27.i.i, i64 64 ; 2 uses
  %.not16.i33.i.i.7 = icmp eq i64 %i.ln, 0
  br i1 %.not16.i33.i.i.7, label %._crit_edge.i34.i.i, label %.lr.ph.i26.i.i, !llvm.loop !153

._crit_edge.i34.i.i:                              ; preds = %.lr.ph.i26.i.i.prol.loopexit, %.lr.ph.i26.i.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i19.i.i
  %.0.lcssa.i36.i.i = phi ptr [ %.032.i24.i.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i19.i.i ], [ %.0.i32.i.i.lcssa.unr, %.lr.ph.i26.i.i.prol.loopexit ], [ %.0.i32.i.i.7, %.lr.ph.i26.i.i ]
  br i1 %.not17.i.i.i, label %_ZL14mi_arena_purgeP10mi_arena_smm.exit.i, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge.i34.i.i
  %i.lp = atomicrmw and ptr %.0.lcssa.i36.i.i, i64 %notmask.i25.i.i.i.i acq_rel, align 8 ; 0 uses
  br label %_ZL14mi_arena_purgeP10mi_arena_smm.exit.i

_ZL14mi_arena_purgeP10mi_arena_smm.exit.i:        ; preds = %bb.bp, %._crit_edge.i34.i.i, %._crit_edge.thread.i42.i.i, %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.thread.thread.i.i, %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.i.i, %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit.thread.i.i
  %i.lq = icmp eq i64 %.0.lcssa.i.i, %.145145.i
  %spec.select.i.i = select i1 %i.lq, i1 true, i1 %.02229.i.i
  %i.lr = freeze i1 %spec.select.i.i
  br label %bb.bq

bb.bq:                                            ; preds = %_ZL14mi_arena_purgeP10mi_arena_smm.exit.i, %.critedge.i.i
  %.2.i.i = phi i1 [ %i.lr, %_ZL14mi_arena_purgeP10mi_arena_smm.exit.i ], [ %.02229.i.i, %.critedge.i.i ] ; 2 uses
  %i.ls = add i64 %.02328.i.i, 1
  %i.lt = add i64 %i.ls, %.0.lcssa.i.i            ; 2 uses
  %i.lu = icmp ult i64 %i.lt, %i.by
  br i1 %i.lu, label %.preheader.i.i, label %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.i, !llvm.loop !174

_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.i: ; preds = %bb.bq
  %spec.select.i = select i1 %.2.i.i, i1 %.151147.i, i1 false
  br label %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.thread.i

_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.thread.i: ; preds = %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.i, %_Z20_mi_bitmap_try_claimPSt6atomicImEmmm.exit.i
  %i.lv = phi i1 [ false, %_Z20_mi_bitmap_try_claimPSt6atomicImEmmm.exit.i ], [ %spec.select.i, %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.i ]
  %i.lw = xor i64 %i.bm, -1
  %i.lx = select i1 %i.bk, i64 0, i64 %i.lw
  %i.ly = atomicrmw and ptr %i.be, i64 %i.lx acq_rel, align 8 ; 0 uses
  br label %.critedge62.i

.critedge62.i:                                    ; preds = %.loopexit.i, %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.thread.i, %.critedge.i
  %.145139.i = phi i64 [ %.145145.i, %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.thread.i ], [ 0, %.critedge.i ], [ 0, %.loopexit.i ]
  %.254.i = phi i1 [ true, %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.thread.i ], [ %.153146.i, %.critedge.i ], [ %.153146.i, %.loopexit.i ] ; 2 uses
  %.3.i = phi i1 [ %i.lv, %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.thread.i ], [ %.151147.i, %.critedge.i ], [ %.151147.i, %.loopexit.i ] ; 2 uses
  %.148.i = phi i64 [ %i.bx, %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.thread.i ], [ %.047148.i, %.critedge.i ], [ %.047148.i, %.loopexit.i ]
  %i.lz = add nuw nsw i64 %.046149.i, 1
  %i.ma = add i64 %i.lz, %.145139.i               ; 2 uses
  %i.mb = icmp ult i64 %i.ma, 64
  br i1 %i.mb, label %.preheader.i, label %.loopexit137.loopexit.i, !llvm.loop !175

.loopexit137.loopexit.i:                          ; preds = %.critedge62.i
  %.pre.i = load i64, ptr %i.as, align 8, !tbaa !110
  br label %.loopexit137.i

.loopexit137.i:                                   ; preds = %.loopexit137.loopexit.i, %bb.o
  %i.mc = phi i64 [ %i.ay, %bb.o ], [ %.pre.i, %.loopexit137.loopexit.i ] ; 2 uses
  %.355.i = phi i1 [ %.052151.i, %bb.o ], [ %.254.i, %.loopexit137.loopexit.i ] ; 3 uses
  %.4.i = phi i1 [ %.050152.i, %bb.o ], [ %.3.i, %.loopexit137.loopexit.i ] ; 2 uses
  %i.md = add nuw i64 %.049153.i, 1               ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.mc
  br i1 %i.me, label %bb.o, label %._crit_edge.i, !llvm.loop !176

bb.br:                                            ; preds = %._crit_edge.i
  %i.mf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %bb.bs, label %mi_option_get.exit.i.i, !prof !19

bb.bs:                                            ; preds = %bb.br
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.bs, %bb.br
  %i.mh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.mi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 776), align 8, !tbaa !111
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %bb.bt, label %_ZL20mi_arena_purge_delayv.exit.i, !prof !19

bb.bt:                                            ; preds = %mi_option_get.exit.i.i
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 768)), !inline_history !121
  br label %_ZL20mi_arena_purge_delayv.exit.i

_ZL20mi_arena_purge_delayv.exit.i:                ; preds = %bb.bt, %mi_option_get.exit.i.i
  %i.mk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 768), align 16, !tbaa !116
  %i.ml = mul nsw i64 %i.mk, %i.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.mm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #55 ; 0 uses
  %i.mn = load i64, ptr %2, align 8, !tbaa !159
  %i.mo = mul nsw i64 %i.mn, 1000
  %i.mp = load i64, ptr %i.w, align 8, !tbaa !161
  %i.mq = sdiv i64 %i.mp, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %i.mr = add i64 %i.mo, %i.ml
  %i.ms = add i64 %i.mr, %i.mq
  %i.mt = cmpxchg ptr %i.am, i64 0, i64 %i.ms acq_rel acquire, align 8 ; 0 uses
  br i1 %.355.i, label %bb.bu, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread

_ZL18mi_arena_try_purgeP10mi_arena_slb.exit:      ; preds = %._crit_edge.i
  br i1 %.355.i, label %bb.bu, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread

bb.bu:                                            ; preds = %_ZL20mi_arena_purge_delayv.exit.i, %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit
  %i.mu = icmp ult i64 %.02152, 2
  br i1 %i.mu, label %.thread43, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mv = add i64 %.02152, -1
  br label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread

_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread: ; preds = %_ZSt39atomic_compare_exchange_strong_explicitIlEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i, %bb.n, %bb.l, %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit, %bb.bv, %bb.k, %_ZL20mi_arena_purge_delayv.exit.i
  %.223.ph = phi i64 [ %.02152, %_ZL20mi_arena_purge_delayv.exit.i ], [ %i.mv, %bb.bv ], [ %.02152, %bb.k ], [ %.02152, %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit ], [ %.02152, %bb.l ], [ %.02152, %bb.n ], [ %.02152, %_ZSt39atomic_compare_exchange_strong_explicitIlEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i ]
  %i.mw = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.mw, %i.t
  br i1 %exitcond.not, label %bb.bw, label %bb.k, !llvm.loop !177

bb.bw:                                            ; preds = %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread
  store atomic i64 0, ptr @_ZL22mi_arenas_purge_expire release, align 64
  br label %.thread43

.thread43:                                        ; preds = %bb.bu, %bb.bw
  store atomic i64 0, ptr @_ZZL19mi_arenas_try_purgebbE11purge_guard release, align 8
  br label %.critedge, !llvm.loop !178

.critedge:                                        ; preds = %.preheader, %.thread43, %bb.f, %bb.g, %bb.a, %_ZL20mi_arena_purge_delayv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z18_mi_arenas_collectb(i1 noundef zeroext %0) local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @_ZL19mi_arenas_try_purgebb(i1 noundef zeroext %0, i1 noundef zeroext %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z28_mi_arena_unsafe_destroy_allv() local_unnamed_addr #6 {
bb.a:
  %i.a = load atomic i64, ptr @_ZL14mi_arena_count monotonic, align 64 ; 3 uses
  %.not24.i = icmp eq i64 %i.a, 0
  br i1 %.not24.i, label %_ZL24mi_arenas_unsafe_destroyv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_Z19_mi_arena_meta_freePv10mi_memid_sm.exit.i
  %.022.i = phi i64 [ %i.q, %_Z19_mi_arena_meta_freePv10mi_memid_sm.exit.i ], [ 0, %bb.a ] ; 4 uses
  %.01721.i = phi i64 [ %.2.i, %_Z19_mi_arena_meta_freePv10mi_memid_sm.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %.022.i ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 8 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_Z19_mi_arena_meta_freePv10mi_memid_sm.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.d) #55 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = load atomic ptr, ptr %i.f seq_cst, align 8
  %.not20.i = icmp eq ptr %i.g, null
  br i1 %.not20.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !179
  %i.j = add i32 %i.i, -3
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store atomic ptr null, ptr %i.b release, align 8
  %i.m = load atomic ptr, ptr %i.f seq_cst, align 8
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef %i.m, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1.i = phi i64 [ %.01721.i, %bb.d ], [ %.022.i, %bb.c ], [ %.022.i, %bb.b ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %i.n = add i32 %.sroa.3.0.copyload, -3
  %i.o = icmp ult i32 %i.n, 3
  br i1 %i.o, label %bb.f, label %_Z19_mi_arena_meta_freePv10mi_memid_sm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.c, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.p)
  br label %_Z19_mi_arena_meta_freePv10mi_memid_sm.exit.i

_Z19_mi_arena_meta_freePv10mi_memid_sm.exit.i:    ; preds = %bb.e, %bb.f, %.lr.ph.i
  %.2.i = phi i64 [ %.01721.i, %.lr.ph.i ], [ %.1.i, %bb.f ], [ %.1.i, %bb.e ] ; 2 uses
  %i.q = add nuw i64 %.022.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %i.a
  br i1 %exitcond.not.i, label %_ZL24mi_arenas_unsafe_destroyv.exit, label %.lr.ph.i, !llvm.loop !180

_ZL24mi_arenas_unsafe_destroyv.exit:              ; preds = %_Z19_mi_arena_meta_freePv10mi_memid_sm.exit.i, %bb.a
  %.017.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2.i, %_Z19_mi_arena_meta_freePv10mi_memid_sm.exit.i ]
  %i.r = cmpxchg ptr @_ZL14mi_arena_count, i64 %i.a, i64 %.017.lcssa.i acq_rel acquire, align 8 ; 0 uses
  tail call fastcc void @_ZL19mi_arenas_try_purgebb(i1 noundef zeroext true, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef zeroext i1 @_Z18_mi_arena_containsPKv(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load atomic i64, ptr @_ZL14mi_arena_count monotonic, align 64 ; 2 uses
  %.not1922.not = icmp eq i64 %i.a, 0
  br i1 %.not1922.not, label %.critedge21, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.01323 = phi i64 [ %i.l, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %.01323
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8
  %.not18 = icmp ugt ptr %i.e, %0
  br i1 %.not18, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic ptr, ptr %i.d seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43
  %i.i = shl i64 %i.h, 25
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = icmp ugt ptr %i.j, %0
  br i1 %i.k, label %.critedge21, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.lr.ph
  %i.l = add nuw i64 %.01323, 1                   ; 2 uses
end_hunk_1
begin_hunk_2_@_Z26_mi_os_alloc_huge_os_pagesmilPmS_P10mi_memid_s:bb.a
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !71   ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !71
  %i.z = load i32, ptr %i.i, align 4, !tbaa !107
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !107
  %i.ab = or i32 %i.y, %i.q
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %_Z20_mi_heap_random_nextP9mi_heap_s.exit.i, !llvm.loop !108

_Z20_mi_heap_random_nextP9mi_heap_s.exit.i:       ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i.i
  %i.ad = zext i32 %i.y to i64
  %i.ae = shl nuw nsw i64 %i.ad, 13
  %i.af = and i64 %i.ae, 4396972769280
  %i.ag = or disjoint i64 %i.af, 35184372088832
  br label %bb.k

bb.k:                                             ; preds = %_Z20_mi_heap_random_nextP9mi_heap_s.exit.i, %bb.f
  %.0.i = phi i64 [ %i.ag, %_Z20_mi_heap_random_nextP9mi_heap_s.exit.i ], [ %.015.i, %bb.f ] ; 2 uses
  %i.ah = add i64 %.0.i, %i.c
  %i.ai = cmpxchg ptr @_ZL13mi_huge_start, i64 %.015.i, i64 %i.ah acq_rel acquire, align 8 ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i

_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i: ; preds = %bb.k
  %i.ak = extractvalue { i64, i1 } %i.ai, 0
  br label %bb.f, !llvm.loop !191

bb.l:                                             ; preds = %bb.k
  %i.al = inttoptr i64 %.0.i to ptr               ; 2 uses
  %i.am = load i64, ptr @_ZL13mi_clock_diff, align 8, !tbaa !74
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.m, label %_Z15_mi_clock_startv.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  %i.ao = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #55 ; 0 uses
  %i.ap = load i64, ptr %9, align 8, !tbaa !159
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !161
  %.neg.i = sdiv i64 %i.ar, -1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  %i.as = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #55 ; 0 uses
  %i.at = load i64, ptr %8, align 8, !tbaa !159
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !161
  %i.aw = sdiv i64 %i.av, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #55
  %reass.add.i = sub i64 %i.at, %i.ap
  %reass.mul.i = mul i64 %reass.add.i, 1000
  %.neg2.i = add nsw i64 %i.aw, %.neg.i
  %i.ax = add i64 %.neg2.i, %reass.mul.i
  store i64 %i.ax, ptr @_ZL13mi_clock_diff, align 8, !tbaa !74
  br label %_Z15_mi_clock_startv.exit

_Z15_mi_clock_startv.exit:                        ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.ay = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #55 ; 0 uses
  %i.az = load i64, ptr %7, align 8, !tbaa !159
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  %.not113 = icmp eq i64 %0, 0
  br i1 %.not113, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_Z15_mi_clock_startv.exit
  %.neg = sdiv i64 %i.bb, -1000000
  %i.bc = icmp sgt i64 %2, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.be = shl nuw nsw i64 %2, 1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZL15mi_os_prim_freePvmm.exit
  %.047111 = phi i8 [ 1, %.lr.ph ], [ %spec.select, %_ZL15mi_os_prim_freePvmm.exit ]
  %.049110 = phi i64 [ 0, %.lr.ph ], [ %i.cd, %_ZL15mi_os_prim_freePvmm.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.bf = shl i64 %.049110, 30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bf ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.bh = call noundef i32 @_Z28_mi_prim_alloc_huge_os_pagesPvmiPbPS_(ptr noundef nonnull %i.bg, i64 noundef 1073741824, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !93, !range !91, !noundef !92
  %i.bj = trunc nuw i8 %i.bi to i1
  %spec.select = select i1 %i.bj, i8 %.047111, i8 0 ; 3 uses
  %.not67 = icmp eq i32 %i.bh, 0
  br i1 %.not67, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.39, i32 noundef %i.bh, i32 noundef %i.bh, ptr noundef nonnull %i.bg, i64 noundef 1073741824)
  br label %_ZL15mi_os_prim_freePvmm.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !69  ; 4 uses
  %.not68 = icmp eq ptr %i.bk, %i.bg
  br i1 %.not68, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not71 = icmp eq ptr %i.bk, null
  br i1 %.not71, label %_ZL15mi_os_prim_freePvmm.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.40, i64 noundef %.049110, ptr noundef nonnull %i.bg)
  %i.bl = call i32 @munmap(ptr noundef nonnull %i.bk, i64 noundef 1073741824) #55
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %_Z13_mi_prim_freePvm.exit.i, label %_Z13_mi_prim_freePvm.exit.thread.i

_Z13_mi_prim_freePvm.exit.i:                      ; preds = %bb.r
  %i.bn = tail call ptr @__errno_location() #59
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !71 ; 3 uses
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %_Z13_mi_prim_freePvm.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %_Z13_mi_prim_freePvm.exit.i
  call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.167, i32 noundef %i.bo, i32 noundef %i.bo, i64 noundef 1073741824, ptr noundef nonnull %i.bk)
  br label %_Z13_mi_prim_freePvm.exit.thread.i

_Z13_mi_prim_freePvm.exit.thread.i:               ; preds = %bb.s, %_Z13_mi_prim_freePvm.exit.i, %bb.r
  %i.bp = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 1073741824 monotonic, align 8
  %i.bq = add nsw i64 %i.bp, -1073741824          ; 3 uses
  %i.br = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64) monotonic, align 64 ; 2 uses
  %.old3.i.i.i.i = icmp slt i64 %i.br, %i.bq
  br i1 %.old3.i.i.i.i, label %.preheader.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %_Z13_mi_prim_freePvm.exit.thread.i, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.bu, %.preheader.i.i.i.i ], [ %i.br, %_Z13_mi_prim_freePvm.exit.thread.i ]
  %i.bs = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %.0.i.i.i.i, i64 %i.bq release monotonic, align 8 ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  %i.bu = extractvalue { i64, i1 } %i.bs, 0       ; 2 uses
  %i.bv = icmp sge i64 %i.bu, %i.bq
  %or.cond.not.i.i.i.i = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond.not.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i:     ; preds = %.preheader.i.i.i.i, %_Z13_mi_prim_freePvm.exit.thread.i
  %i.bw = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 48), i64 1073741824 monotonic, align 8
  %i.bx = add nsw i64 %i.bw, -1073741824          ; 3 uses
  %i.by = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 40) monotonic, align 8 ; 2 uses
  %.old3.i.i.i16.i = icmp slt i64 %i.by, %i.bx
  br i1 %.old3.i.i.i16.i, label %.preheader.i.i.i18.i, label %_ZL15mi_os_prim_freePvmm.exit.thread

.preheader.i.i.i18.i:                             ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i, %.preheader.i.i.i18.i
  %.0.i.i.i19.i = phi i64 [ %i.cb, %.preheader.i.i.i18.i ], [ %i.by, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i ]
  %i.bz = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 40), i64 %.0.i.i.i19.i, i64 %i.bx release monotonic, align 8 ; 2 uses
  %i.ca = extractvalue { i64, i1 } %i.bz, 1
  %i.cb = extractvalue { i64, i1 } %i.bz, 0       ; 2 uses
  %i.cc = icmp sge i64 %i.cb, %i.bx
  %or.cond.not.i.i.i20.i = select i1 %i.ca, i1 true, i1 %i.cc
  br i1 %or.cond.not.i.i.i20.i, label %_ZL15mi_os_prim_freePvmm.exit.thread, label %.preheader.i.i.i18.i, !llvm.loop !147

bb.t:                                             ; preds = %bb.p
  %i.cd = add nuw i64 %.049110, 1                 ; 4 uses
  %i.ce = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 1073741824 monotonic, align 8
  %i.cf = add nsw i64 %i.ce, 1073741824           ; 3 uses
  %i.cg = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64) monotonic, align 64 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.cg, %i.cf
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

.preheader.i.i.i:                                 ; preds = %bb.t, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.cj, %.preheader.i.i.i ], [ %i.cg, %bb.t ]
  %i.ch = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %.0.i.i.i, i64 %i.cf release monotonic, align 8 ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  %i.cj = extractvalue { i64, i1 } %i.ch, 0       ; 2 uses
  %i.ck = icmp sge i64 %i.cj, %i.cf
  %or.cond.not.i.i.i = select i1 %i.ci, i1 true, i1 %i.ck
  br i1 %or.cond.not.i.i.i, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, label %.preheader.i.i.i, !llvm.loop !147

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %.preheader.i.i.i, %bb.t
  %i.cl = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 56), i64 1073741824 monotonic, align 8 ; 0 uses
  %i.cm = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 48), i64 1073741824 monotonic, align 8
  %i.cn = add nsw i64 %i.cm, 1073741824           ; 3 uses
  %i.co = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 40) monotonic, align 8 ; 2 uses
  %.old3.i.i.i74 = icmp slt i64 %i.co, %i.cn
  br i1 %.old3.i.i.i74, label %.preheader.i.i.i75, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit78

.preheader.i.i.i75:                               ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, %.preheader.i.i.i75
  %.0.i.i.i76 = phi i64 [ %i.cr, %.preheader.i.i.i75 ], [ %i.co, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit ]
  %i.cp = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 40), i64 %.0.i.i.i76, i64 %i.cn release monotonic, align 8 ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.cp, 1
  %i.cr = extractvalue { i64, i1 } %i.cp, 0       ; 2 uses
  %i.cs = icmp sge i64 %i.cr, %i.cn
  %or.cond.not.i.i.i77 = select i1 %i.cq, i1 true, i1 %i.cs
  br i1 %or.cond.not.i.i.i77, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit78, label %.preheader.i.i.i75, !llvm.loop !147

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit78:  ; preds = %.preheader.i.i.i75, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  %i.ct = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 32), i64 1073741824 monotonic, align 8 ; 0 uses
  br i1 %i.bc, label %bb.u, label %_ZL15mi_os_prim_freePvmm.exit

bb.u:                                             ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.cu = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #55 ; 0 uses
  %i.cv = load i64, ptr %6, align 8, !tbaa !159
  %i.cw = load i64, ptr %i.bd, align 8, !tbaa !161
  %i.cx = sdiv i64 %i.cw, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.cy = load i64, ptr @_ZL13mi_clock_diff, align 8, !tbaa !74
  %reass.add = sub i64 %i.cv, %i.az
  %reass.mul = mul i64 %reass.add, 1000
  %.neg91 = add nsw i64 %i.cx, %.neg
  %i.cz = sub i64 %.neg91, %i.cy
  %i.da = add i64 %i.cz, %reass.mul               ; 2 uses
  %i.db = add i64 %.049110, 2
  %i.dc = udiv i64 %i.da, %i.db
  %i.dd = mul i64 %i.dc, %0
  %i.de = icmp sgt i64 %i.dd, %i.be
  %.not7085 = icmp sgt i64 %i.da, %2
  %.not70 = or i1 %.not7085, %i.de
  br i1 %.not70, label %.thread, label %_ZL15mi_os_prim_freePvmm.exit

.thread:                                          ; preds = %bb.u
  call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.41, i64 noundef %i.cd)
  br label %_ZL15mi_os_prim_freePvmm.exit.thread

_ZL15mi_os_prim_freePvmm.exit.thread:             ; preds = %.preheader.i.i.i18.i, %bb.o, %.thread, %bb.q, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i
  %.150.ph = phi i64 [ %.049110, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i ], [ %.049110, %bb.q ], [ %.049110, %bb.o ], [ %i.cd, %.thread ], [ %.049110, %.preheader.i.i.i18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit

_ZL15mi_os_prim_freePvmm.exit:                    ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit78, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %exitcond.not = icmp eq i64 %i.cd, %0
  br i1 %exitcond.not, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %_ZL15mi_os_prim_freePvmm.exit, %_Z15_mi_clock_startv.exit, %_ZL15mi_os_prim_freePvmm.exit.thread
  %.251 = phi i64 [ %.150.ph, %_ZL15mi_os_prim_freePvmm.exit.thread ], [ 0, %_Z15_mi_clock_startv.exit ], [ %0, %_ZL15mi_os_prim_freePvmm.exit ] ; 3 uses
  %.2 = phi i8 [ %spec.select, %_ZL15mi_os_prim_freePvmm.exit.thread ], [ 1, %_Z15_mi_clock_startv.exit ], [ %spec.select, %_ZL15mi_os_prim_freePvmm.exit ]
  br i1 %.not66, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  store i64 %.251, ptr %3, align 8, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = shl i64 %.251, 30
  store i64 %i.df, ptr %4, align 8, !tbaa !74
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not72 = icmp eq i64 %.251, 0
  br i1 %.not72, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !93
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !93
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 %.2, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !93
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 4, ptr %.sroa.779.0..sroa_idx, align 4, !tbaa !136
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.dg = phi ptr [ null, %bb.y ], [ %i.al, %bb.z ]
  ret ptr %i.dg
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z19_mi_warning_messagePKcz(ptr nofree noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #6 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 72), align 8, !tbaa !111
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %mi_option_is_enabled.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 64)), !inline_history !115
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %bb.a, %bb.b
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 64), align 16, !tbaa !116
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %mi_option_is_enabled.exit
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 8), align 8, !tbaa !111
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %mi_option_is_enabled.exit1, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull @_ZL7options), !inline_history !115
  br label %mi_option_is_enabled.exit1

mi_option_is_enabled.exit1:                       ; preds = %bb.c, %bb.d
  %i.f = load i64, ptr @_ZL7options, align 16, !tbaa !116
  %.not2 = icmp eq i64 %i.f, 0
  br i1 %.not2, label %bb.h, label %bb.e

bb.e:                                             ; preds = %mi_option_is_enabled.exit1
  %i.g = load i64, ptr @_ZL20mi_max_warning_count, align 8, !tbaa !74
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr @_ZL13warning_count, i64 1 acq_rel, align 8
  %i.j = load i64, ptr @_ZL20mi_max_warning_count, align 8, !tbaa !74
  %i.k = icmp sgt i64 %i.i, %i.j
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %mi_option_is_enabled.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @_ZL18mi_vfprintf_threadPFvPKcPvES1_S0_S0_P13__va_list_tag(ptr noundef nonnull @.str.36, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %mi_option_is_enabled.exit1, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at(i64 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef null) #55
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 13) i32 @mi_reserve_huge_os_pages_interleave(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %_ZL22_mi_os_numa_node_countv.exit

bb.c:                                             ; preds = %bb.b
  %i.b = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %_ZL22_mi_os_numa_node_countv.exit, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noundef i64 @_Z26_mi_os_numa_node_count_getv()
          to label %_ZL22_mi_os_numa_node_countv.exit unwind label %bb.i

_ZL22_mi_os_numa_node_countv.exit:                ; preds = %bb.c, %bb.d, %bb.b
  %i.d = phi i64 [ %1, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = udiv i64 %0, %i.d
  %i.f = urem i64 %0, %i.d
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZL22_mi_os_numa_node_countv.exit
  %i.h = udiv i64 %2, %i.d
  %i.i = add i64 %i.h, 50
  br label %bb.f

bb.f:                                             ; preds = %_ZL22_mi_os_numa_node_countv.exit, %bb.e
  %i.j = phi i64 [ %i.i, %bb.e ], [ 0, %_ZL22_mi_os_numa_node_countv.exit ]
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %.03349 = phi i64 [ 0, %bb.f ], [ %i.o, %bb.h ] ; 3 uses
  %.03648 = phi i64 [ %0, %bb.f ], [ %.137, %bb.h ] ; 2 uses
  %i.k = icmp ult i64 %.03349, %i.f
  %i.l = zext i1 %i.k to i64
  %spec.select = add i64 %i.e, %i.l               ; 3 uses
  %i.m = trunc i64 %.03349 to i32
  %i.n = tail call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select, i32 noundef %i.m, i64 noundef %i.j, i1 noundef zeroext false, ptr noundef null) #55 ; 2 uses
  %.not43 = icmp eq i32 %i.n, 0
  br i1 %.not43, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %.137 = tail call i64 @llvm.usub.sat.i64(i64 %.03648, i64 %spec.select)
  %i.o = add nuw i64 %.03349, 1                   ; 2 uses
  %i.p = icmp uge i64 %i.o, %i.d
  %i.q = icmp ule i64 %.03648, %spec.select
  %.not46 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %.not46, label %.loopexit, label %bb.g, !llvm.loop !192

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ %i.n, %bb.g ]
  ret i32 %.4

bb.i:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #56
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 13) i32 @mi_reserve_huge_os_pages(i64 noundef %0, double noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.20)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

end_hunk_2
begin_hunk_3_@_Z13_mi_vsnprintfPcmPKcP13__va_list_tag:bb.a
  %i.db = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.f, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.dd = phi ptr [ %i.cz, %bb.av ], [ %i.db, %bb.aw ]
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !74
  br label %bb.bf

bb.ay:                                            ; preds = %bb.ah
  br i1 %i.by, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.df = load ptr, ptr %i.g, align 8
  %i.dg = zext nneg i32 %i.bx to i64
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  %i.di = add nuw nsw i32 %i.bx, 8
  store i32 %i.di, ptr %3, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.dj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  store ptr %i.dk, ptr %i.f, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dl = phi ptr [ %i.dh, %bb.az ], [ %i.dj, %bb.ba ]
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !71
  %i.dn = zext i32 %i.dm to i64
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ag
  %i.do = load i32, ptr %3, align 8               ; 3 uses
  %i.dp = icmp ult i32 %i.do, 41
  br i1 %i.dp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.dq = load ptr, ptr %i.g, align 8
  %i.dr = zext nneg i32 %i.do to i64
  %i.ds = getelementptr i8, ptr %i.dq, i64 %i.dr
  %i.dt = add nuw nsw i32 %i.do, 8
  store i32 %i.dt, ptr %3, align 8
  br label %.lr.ph.i255

bb.be:                                            ; preds = %bb.bc
  %i.du = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  store ptr %i.dv, ptr %i.f, align 8
  br label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.be, %bb.bd
  %i.dw = phi ptr [ %i.ds, %bb.bd ], [ %i.du, %bb.be ]
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !74
  %i.dy = getelementptr inbounds nuw i8, ptr %.0302343, i64 1 ; 3 uses
  store i8 48, ptr %.0302343, align 1, !tbaa !27
  %i.dz = icmp ult ptr %i.dy, %i.e
  br i1 %i.dz, label %.lr.ph.i255.1, label %_ZL7mi_outsPKcPPcS1_.exit258

.lr.ph.i255.1:                                    ; preds = %.lr.ph.i255
  %i.ea = getelementptr inbounds nuw i8, ptr %.0302343, i64 2
  store i8 120, ptr %i.dy, align 1, !tbaa !27
  br label %_ZL7mi_outsPKcPPcS1_.exit258

_ZL7mi_outsPKcPPcS1_.exit258:                     ; preds = %.lr.ph.i255.1, %.lr.ph.i255
  %.lcssa443 = phi ptr [ %i.dy, %.lr.ph.i255 ], [ %i.ea, %.lr.ph.i255.1 ]
  %i.eb = tail call i64 @llvm.usub.sat.i64(i64 %.2, i64 2)
  br label %bb.bf

bb.bf:                                            ; preds = %_ZL7mi_outsPKcPPcS1_.exit258, %bb.al, %bb.at, %bb.bb, %bb.ax, %bb.ap
  %.1303 = phi ptr [ %.0302343, %bb.bb ], [ %.0302343, %bb.al ], [ %.0302343, %bb.ap ], [ %.0302343, %bb.at ], [ %.0302343, %bb.ax ], [ %.lcssa443, %_ZL7mi_outsPKcPPcS1_.exit258 ] ; 19 uses
  %.3 = phi i64 [ %.2, %bb.bb ], [ %.2, %bb.al ], [ %.2, %bb.ap ], [ %.2, %bb.at ], [ %.2, %bb.ax ], [ %i.eb, %_ZL7mi_outsPKcPPcS1_.exit258 ] ; 2 uses
  %.0191 = phi i64 [ %i.dn, %bb.bb ], [ %i.cg, %bb.al ], [ %i.co, %bb.ap ], [ %i.cw, %bb.at ], [ %i.de, %bb.ax ], [ %i.dx, %_ZL7mi_outsPKcPPcS1_.exit258 ] ; 4 uses
  %i.ec = icmp eq i64 %.3, 0
  br i1 %i.ec, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  switch i8 %.6210, label %bb.bi [
    i8 120, label %bb.bh
    i8 112, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  %i.ed = icmp ult i64 %.0191, 4294967296
  %i.ee = icmp ult i64 %.0191, 281474976710656
  %i.ef = select i1 %i.ee, i64 12, i64 16
  %i.eg = select i1 %i.ed, i64 8, i64 %i.ef
  %spec.store.select = select i1 %i.bt, i64 %i.eg, i64 2
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bf
  %.1200 = phi i8 [ 48, %bb.bh ], [ %.0199, %bb.bg ], [ %.0199, %bb.bf ] ; 5 uses
  %.5 = phi i64 [ %spec.store.select, %bb.bh ], [ 0, %bb.bg ], [ %.3, %bb.bf ] ; 5 uses
  %i.eh = or i1 %i.bu, %i.bt
  %i.ei = select i1 %i.eh, i64 16, i64 10         ; 3 uses
  %i.ej = icmp eq i64 %.0191, 0
  br i1 %i.ej, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %.not47.i = icmp ne i8 %.0195, 0
  %.not.i.i = icmp ult ptr %.1303, %i.e
  %or.cond.i = select i1 %.not47.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %bb.bk, label %_ZL7mi_outccPPcS_.exit.i

bb.bk:                                            ; preds = %bb.bj
  store i8 %.0195, ptr %.1303, align 1, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %.1303, i64 1
  br label %_ZL7mi_outccPPcS_.exit.i

_ZL7mi_outccPPcS_.exit.i:                         ; preds = %bb.bk, %bb.bj
  %.12 = phi ptr [ %i.ek, %bb.bk ], [ %.1303, %bb.bj ] ; 4 uses
  %.not.i48.i = icmp ult ptr %.12, %i.e
  br i1 %.not.i48.i, label %bb.bl, label %_ZL7mi_outsPKcPPcS1_.exit

bb.bl:                                            ; preds = %_ZL7mi_outccPPcS_.exit.i
  store i8 48, ptr %.12, align 1, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %.12, i64 1
  br label %_ZL7mi_outsPKcPPcS1_.exit

bb.bm:                                            ; preds = %bb.bi
  %i.em = icmp ult ptr %.1303, %i.e
  br i1 %i.em, label %.split.i, label %.split56.us.i

.split.i:                                         ; preds = %bb.bm, %_ZL7mi_outccPPcS_.exit51.i
  %.10 = phi ptr [ %.11, %_ZL7mi_outccPPcS_.exit51.i ], [ %.1303, %bb.bm ]
  %i.en = phi ptr [ %i.ew, %_ZL7mi_outccPPcS_.exit51.i ], [ %.1303, %bb.bm ] ; 4 uses
  %.054.i = phi i64 [ %i.eo, %_ZL7mi_outccPPcS_.exit51.i ], [ %.0191, %bb.bm ] ; 3 uses
  %.not.i50.i = icmp ult ptr %i.en, %i.e
  %i.eo = udiv i64 %.054.i, %i.ei
  %i.ep = urem i64 %.054.i, %i.ei                 ; 2 uses
  br i1 %.not.i50.i, label %bb.bn, label %_ZL7mi_outccPPcS_.exit51.i

bb.bn:                                            ; preds = %.split.i
  %i.eq = icmp samesign ult i64 %i.ep, 10
  %i.er = trunc nuw nsw i64 %i.ep to i8           ; 2 uses
  %i.es = or disjoint i8 %i.er, 48
  %i.et = add nuw nsw i8 %i.er, 55
  %i.eu = select i1 %i.eq, i8 %i.es, i8 %i.et
  store i8 %i.eu, ptr %i.en, align 1, !tbaa !27
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 2 uses
  br label %_ZL7mi_outccPPcS_.exit51.i

_ZL7mi_outccPPcS_.exit51.i:                       ; preds = %bb.bn, %.split.i
  %.11 = phi ptr [ %i.ev, %bb.bn ], [ %.10, %.split.i ] ; 2 uses
  %i.ew = phi ptr [ %i.ev, %bb.bn ], [ %i.en, %.split.i ] ; 2 uses
  %.not.i260 = icmp ugt i64 %i.ei, %.054.i
  br i1 %.not.i260, label %.split56.us.i, label %.split.i, !llvm.loop !278

.split56.us.i:                                    ; preds = %_ZL7mi_outccPPcS_.exit51.i, %bb.bm
  %.8 = phi ptr [ %.1303, %bb.bm ], [ %.11, %_ZL7mi_outccPPcS_.exit51.i ]
  %i.ex = phi ptr [ %.1303, %bb.bm ], [ %i.ew, %_ZL7mi_outccPPcS_.exit51.i ] ; 4 uses
  %.not46.i = icmp ne i8 %.0195, 0
  %.not.i52.i = icmp ult ptr %i.ex, %i.e
  %or.cond70.i = select i1 %.not46.i, i1 %.not.i52.i, i1 false
  br i1 %or.cond70.i, label %bb.bo, label %_ZL7mi_outccPPcS_.exit53.i

bb.bo:                                            ; preds = %.split56.us.i
  store i8 %.0195, ptr %i.ex, align 1, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1 ; 2 uses
  br label %_ZL7mi_outccPPcS_.exit53.i

_ZL7mi_outccPPcS_.exit53.i:                       ; preds = %bb.bo, %.split56.us.i
  %.9310 = phi ptr [ %i.ey, %bb.bo ], [ %.8, %.split56.us.i ] ; 3 uses
  %i.ez = phi ptr [ %i.ey, %bb.bo ], [ %i.ex, %.split56.us.i ]
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %.1303 to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 1                       ; 4 uses
  %.not58.i = icmp eq i64 %i.fd, 0
  br i1 %.not58.i, label %_ZL7mi_outsPKcPPcS1_.exit, label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %_ZL7mi_outccPPcS_.exit53.i
  %i.fe = getelementptr i8, ptr %.1303, i64 %i.fc ; 3 uses
  %i.ff = icmp eq i64 %i.fd, 1
  br i1 %i.ff, label %.epil.preheader448, label %.lr.ph.i259.new

.lr.ph.i259.new:                                  ; preds = %.lr.ph.i259
  %unroll_iter452 = and i64 %i.fd, 9223372036854775806
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i259.new
  %.04257.i = phi i64 [ 0, %.lr.ph.i259.new ], [ %i.fr, %bb.bp ] ; 5 uses
  %niter453 = phi i64 [ 0, %.lr.ph.i259.new ], [ %niter453.next.1, %bb.bp ]
  %i.fg = xor i64 %.04257.i, -1
  %i.fh = getelementptr i8, ptr %i.fe, i64 %i.fg  ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !27
  %i.fj = getelementptr inbounds nuw i8, ptr %.1303, i64 %.04257.i ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !27
  store i8 %i.fk, ptr %i.fh, align 1, !tbaa !27
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !27
  %i.fl = xor i64 %.04257.i, -2
  %i.fm = getelementptr i8, ptr %i.fe, i64 %i.fl  ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !27
  %i.fo = getelementptr inbounds nuw i8, ptr %.1303, i64 %.04257.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !27
  store i8 %i.fq, ptr %i.fm, align 1, !tbaa !27
  store i8 %i.fn, ptr %i.fp, align 1, !tbaa !27
  %i.fr = add nuw nsw i64 %.04257.i, 2            ; 2 uses
  %niter453.next.1 = add i64 %niter453, 2         ; 2 uses
  %niter453.ncmp.1 = icmp eq i64 %niter453.next.1, %unroll_iter452
  br i1 %niter453.ncmp.1, label %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa, label %bb.bp, !llvm.loop !280

bb.bq:                                            ; preds = %bb.ag, %bb.ag
  %i.fs = add i8 %.0196, -76                      ; 2 uses
  %i.ft = tail call i8 @llvm.fshl.i8(i8 %i.fs, i8 %i.fs, i8 7)
  %i.fu = load i32, ptr %3, align 8               ; 11 uses
  %i.fv = icmp ult i32 %i.fu, 41                  ; 5 uses
  switch i8 %i.ft, label %bb.ch [
    i8 23, label %bb.br
    i8 20, label %bb.bv
    i8 0, label %bb.bz
    i8 16, label %bb.cd
  ]

bb.br:                                            ; preds = %bb.bq
  br i1 %i.fv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.fw = load ptr, ptr %i.g, align 8
  %i.fx = zext nneg i32 %i.fu to i64
  %i.fy = getelementptr i8, ptr %i.fw, i64 %i.fx
  %i.fz = add nuw nsw i32 %i.fu, 8
  store i32 %i.fz, ptr %3, align 8
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.ga = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 8
  store ptr %i.gb, ptr %i.f, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.gc = phi ptr [ %i.fy, %bb.bs ], [ %i.ga, %bb.bt ]
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !74
  br label %bb.cl

bb.bv:                                            ; preds = %bb.bq
  br i1 %i.fv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ge = load ptr, ptr %i.g, align 8
  %i.gf = zext nneg i32 %i.fu to i64
  %i.gg = getelementptr i8, ptr %i.ge, i64 %i.gf
  %i.gh = add nuw nsw i32 %i.fu, 8
  store i32 %i.gh, ptr %3, align 8
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.gi = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 8
  store ptr %i.gj, ptr %i.f, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.gk = phi ptr [ %i.gg, %bb.bw ], [ %i.gi, %bb.bx ]
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !74
  br label %bb.cl

bb.bz:                                            ; preds = %bb.bq
  br i1 %i.fv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.gm = load ptr, ptr %i.g, align 8
  %i.gn = zext nneg i32 %i.fu to i64
  %i.go = getelementptr i8, ptr %i.gm, i64 %i.gn
  %i.gp = add nuw nsw i32 %i.fu, 8
  store i32 %i.gp, ptr %3, align 8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.gq = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  store ptr %i.gr, ptr %i.f, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.gs = phi ptr [ %i.go, %bb.ca ], [ %i.gq, %bb.cb ]
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !277
  br label %bb.cl

bb.cd:                                            ; preds = %bb.bq
  br i1 %i.fv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.gu = load ptr, ptr %i.g, align 8
  %i.gv = zext nneg i32 %i.fu to i64
  %i.gw = getelementptr i8, ptr %i.gu, i64 %i.gv
  %i.gx = add nuw nsw i32 %i.fu, 8
  store i32 %i.gx, ptr %3, align 8
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.gy = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  store ptr %i.gz, ptr %i.f, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ha = phi ptr [ %i.gw, %bb.ce ], [ %i.gy, %bb.cf ]
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !74
  br label %bb.cl

bb.ch:                                            ; preds = %bb.bq
  br i1 %i.fv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.hc = load ptr, ptr %i.g, align 8
  %i.hd = zext nneg i32 %i.fu to i64
  %i.he = getelementptr i8, ptr %i.hc, i64 %i.hd
  %i.hf = add nuw nsw i32 %i.fu, 8
  store i32 %i.hf, ptr %3, align 8
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.hg = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  store ptr %i.hh, ptr %i.f, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.hi = phi ptr [ %i.he, %bb.ci ], [ %i.hg, %bb.cj ]
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !71
  %i.hk = sext i32 %i.hj to i64
  br label %bb.cl

bb.cl:                                            ; preds = %bb.by, %bb.cg, %bb.ck, %bb.cc, %bb.bu
  %.0190 = phi i64 [ %i.gd, %bb.bu ], [ %i.gl, %bb.by ], [ %i.gt, %bb.cc ], [ %i.hb, %bb.cg ], [ %i.hk, %bb.ck ] ; 4 uses
  %i.hl = icmp slt i64 %.0190, 0
  br i1 %i.hl, label %.thread313, label %bb.cm

.thread313:                                       ; preds = %bb.cl
  %i.hm = sub i64 0, %.0190
  br label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.hn = icmp eq i64 %.0190, 0
  br i1 %i.hn, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %.not47.i275.not = icmp eq i8 %.0195, 0
  br i1 %.not47.i275.not, label %_ZL7mi_outccPPcS_.exit.i279, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i8 %.0195, ptr %.0302343, align 1, !tbaa !27
  %i.ho = getelementptr inbounds nuw i8, ptr %.0302343, i64 1
  br label %_ZL7mi_outccPPcS_.exit.i279

_ZL7mi_outccPPcS_.exit.i279:                      ; preds = %bb.co, %bb.cn
  %.18 = phi ptr [ %i.ho, %bb.co ], [ %.0302343, %bb.cn ] ; 4 uses
  %.not.i48.i280 = icmp ult ptr %.18, %i.e
  br i1 %.not.i48.i280, label %bb.cp, label %_ZL7mi_outsPKcPPcS1_.exit

bb.cp:                                            ; preds = %_ZL7mi_outccPPcS_.exit.i279
  store i8 48, ptr %.18, align 1, !tbaa !27
  %i.hp = getelementptr inbounds nuw i8, ptr %.18, i64 1
  br label %_ZL7mi_outsPKcPPcS1_.exit

bb.cq:                                            ; preds = %.thread313, %bb.cm
  %.0317 = phi i8 [ 45, %.thread313 ], [ %.0195, %bb.cm ] ; 2 uses
  %.1316 = phi i64 [ %i.hm, %.thread313 ], [ %.0190, %bb.cm ]
  br label %.split.i270

.split.i270:                                      ; preds = %bb.cq, %_ZL7mi_outccPPcS_.exit51.i273
  %.16 = phi ptr [ %.0302343, %bb.cq ], [ %.17, %_ZL7mi_outccPPcS_.exit51.i273 ]
  %i.hq = phi ptr [ %.0302343, %bb.cq ], [ %i.hw, %_ZL7mi_outccPPcS_.exit51.i273 ] ; 4 uses
  %.054.i271 = phi i64 [ %.1316, %bb.cq ], [ %i.hr, %_ZL7mi_outccPPcS_.exit51.i273 ] ; 3 uses
  %.not.i50.i272 = icmp ult ptr %i.hq, %i.e
  %i.hr = udiv i64 %.054.i271, 10
  %i.hs = urem i64 %.054.i271, 10
  br i1 %.not.i50.i272, label %bb.cr, label %_ZL7mi_outccPPcS_.exit51.i273

bb.cr:                                            ; preds = %.split.i270
  %i.ht = trunc nuw nsw i64 %i.hs to i8
  %i.hu = or disjoint i8 %i.ht, 48
  store i8 %i.hu, ptr %i.hq, align 1, !tbaa !27
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 1 ; 2 uses
  br label %_ZL7mi_outccPPcS_.exit51.i273

_ZL7mi_outccPPcS_.exit51.i273:                    ; preds = %bb.cr, %.split.i270
  %.17 = phi ptr [ %i.hv, %bb.cr ], [ %.16, %.split.i270 ] ; 2 uses
  %i.hw = phi ptr [ %i.hv, %bb.cr ], [ %i.hq, %.split.i270 ] ; 5 uses
  %.not.i274 = icmp ult i64 %.054.i271, 10
  br i1 %.not.i274, label %.split56.us.i261, label %.split.i270, !llvm.loop !278

.split56.us.i261:                                 ; preds = %_ZL7mi_outccPPcS_.exit51.i273
  %.not46.i262 = icmp ne i8 %.0317, 0
  %.not.i52.i263 = icmp ult ptr %i.hw, %i.e
  %or.cond70.i264 = select i1 %.not46.i262, i1 %.not.i52.i263, i1 false
  br i1 %or.cond70.i264, label %bb.cs, label %_ZL7mi_outccPPcS_.exit53.i265

bb.cs:                                            ; preds = %.split56.us.i261
  store i8 %.0317, ptr %i.hw, align 1, !tbaa !27
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 2 uses
  br label %_ZL7mi_outccPPcS_.exit53.i265

_ZL7mi_outccPPcS_.exit53.i265:                    ; preds = %bb.cs, %.split56.us.i261
  %.15 = phi ptr [ %i.hx, %bb.cs ], [ %.17, %.split56.us.i261 ] ; 3 uses
  %i.hy = phi ptr [ %i.hx, %bb.cs ], [ %i.hw, %.split56.us.i261 ]
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %.0302343 to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 3 uses
  %i.ic = lshr i64 %i.ib, 1                       ; 4 uses
  %.not58.i266 = icmp eq i64 %i.ic, 0
  br i1 %.not58.i266, label %_ZL7mi_outsPKcPPcS1_.exit, label %.lr.ph.i267

.lr.ph.i267:                                      ; preds = %_ZL7mi_outccPPcS_.exit53.i265
  %i.id = getelementptr i8, ptr %.0302343, i64 %i.ib ; 3 uses
  %i.ie = icmp eq i64 %i.ic, 1
  br i1 %i.ie, label %.epil.preheader, label %.lr.ph.i267.new

.lr.ph.i267.new:                                  ; preds = %.lr.ph.i267
  %unroll_iter = and i64 %i.ic, 9223372036854775806
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %.lr.ph.i267.new
  %.04257.i268 = phi i64 [ 0, %.lr.ph.i267.new ], [ %i.iq, %bb.ct ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i267.new ], [ %niter.next.1, %bb.ct ]
  %i.if = xor i64 %.04257.i268, -1
  %i.ig = getelementptr i8, ptr %i.id, i64 %i.if  ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !27
  %i.ii = getelementptr inbounds nuw i8, ptr %.0302343, i64 %.04257.i268 ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !27
  store i8 %i.ij, ptr %i.ig, align 1, !tbaa !27
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !27
  %i.ik = xor i64 %.04257.i268, -2
  %i.il = getelementptr i8, ptr %i.id, i64 %i.ik  ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !27
  %i.in = getelementptr inbounds nuw i8, ptr %.0302343, i64 %.04257.i268
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !27
  store i8 %i.ip, ptr %i.il, align 1, !tbaa !27
  store i8 %i.im, ptr %i.io, align 1, !tbaa !27
  %i.iq = add nuw nsw i64 %.04257.i268, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa, label %bb.ct, !llvm.loop !280

bb.cu:                                            ; preds = %bb.ag
  %i.ir = add i8 %.6210, -32
  %or.cond45 = icmp ult i8 %i.ir, 95
  br i1 %or.cond45, label %_ZL7mi_outccPPcS_.exit283, label %_ZL7mi_outsPKcPPcS1_.exit

_ZL7mi_outccPPcS_.exit283:                        ; preds = %bb.cu
  store i8 37, ptr %.0302343, align 1, !tbaa !27
  %i.is = getelementptr inbounds nuw i8, ptr %.0302343, i64 1 ; 3 uses
  %.not.i284 = icmp ult ptr %i.is, %i.e
  br i1 %.not.i284, label %bb.cv, label %_ZL7mi_outsPKcPPcS1_.exit

bb.cv:                                            ; preds = %_ZL7mi_outccPPcS_.exit283
  store i8 %.6210, ptr %i.is, align 1, !tbaa !27
  %i.it = getelementptr inbounds nuw i8, ptr %.0302343, i64 2
  br label %_ZL7mi_outsPKcPPcS1_.exit

_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa:  ; preds = %bb.bp
  %i.iu = and i64 %i.fc, 2
  %lcmp.mod450.not = icmp eq i64 %i.iu, 0
  br i1 %lcmp.mod450.not, label %_ZL7mi_outsPKcPPcS1_.exit, label %.epil.preheader448

.epil.preheader448:                               ; preds = %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa, %.lr.ph.i259
  %.04257.i.epil.init = phi i64 [ 0, %.lr.ph.i259 ], [ %i.fr, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa ] ; 2 uses
  %lcmp.mod451 = trunc i64 %i.fd to i1
  tail call void @llvm.assume(i1 %lcmp.mod451)
  %i.iv = xor i64 %.04257.i.epil.init, -1
  %i.iw = getelementptr i8, ptr %i.fe, i64 %i.iv  ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !27
  %i.iy = getelementptr inbounds nuw i8, ptr %.1303, i64 %.04257.i.epil.init ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !27
  store i8 %i.iz, ptr %i.iw, align 1, !tbaa !27
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !27
  br label %_ZL7mi_outsPKcPPcS1_.exit

_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa:  ; preds = %bb.ct
  %i.ja = and i64 %i.ib, 2
  %lcmp.mod.not = icmp eq i64 %i.ja, 0
  br i1 %lcmp.mod.not, label %_ZL7mi_outsPKcPPcS1_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa, %.lr.ph.i267
  %.04257.i268.epil.init = phi i64 [ 0, %.lr.ph.i267 ], [ %i.iq, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa ] ; 2 uses
  %lcmp.mod447 = trunc i64 %i.ic to i1
  tail call void @llvm.assume(i1 %lcmp.mod447)
  %i.jb = xor i64 %.04257.i268.epil.init, -1
  %i.jc = getelementptr i8, ptr %i.id, i64 %i.jb  ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !27
  %i.je = getelementptr inbounds nuw i8, ptr %.0302343, i64 %.04257.i268.epil.init ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !27
  store i8 %i.jf, ptr %i.jc, align 1, !tbaa !27
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !27
  br label %_ZL7mi_outsPKcPPcS1_.exit

_ZL7mi_outsPKcPPcS1_.exit:                        ; preds = %.epil.preheader, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa, %.epil.preheader448, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa, %.lr.ph.i, %bb.cv, %_ZL7mi_outccPPcS_.exit283, %_ZL7mi_outccPPcS_.exit53.i265, %bb.cp, %_ZL7mi_outccPPcS_.exit.i279, %_ZL7mi_outccPPcS_.exit53.i, %bb.bl, %_ZL7mi_outccPPcS_.exit.i, %bb.ae, %bb.af, %bb.cu
  %.2304 = phi ptr [ %.9310, %.epil.preheader448 ], [ %i.bo, %.lr.ph.i ], [ %.0302343, %bb.cu ], [ %i.is, %_ZL7mi_outccPPcS_.exit283 ], [ %.0302343, %bb.ae ], [ %.0302343, %bb.af ], [ %i.el, %bb.bl ], [ %.12, %_ZL7mi_outccPPcS_.exit.i ], [ %.9310, %_ZL7mi_outccPPcS_.exit53.i ], [ %i.hp, %bb.cp ], [ %.18, %_ZL7mi_outccPPcS_.exit.i279 ], [ %.15, %_ZL7mi_outccPPcS_.exit53.i265 ], [ %i.it, %bb.cv ], [ %.9310, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa ], [ %.15, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa ], [ %.15, %.epil.preheader ]
  %.2201 = phi i8 [ %.1200, %.epil.preheader448 ], [ %.0199, %.lr.ph.i ], [ %.0199, %bb.cu ], [ %.0199, %_ZL7mi_outccPPcS_.exit283 ], [ %.0199, %bb.ae ], [ %.0199, %bb.af ], [ %.1200, %bb.bl ], [ %.1200, %_ZL7mi_outccPPcS_.exit.i ], [ %.1200, %_ZL7mi_outccPPcS_.exit53.i ], [ %.0199, %bb.cp ], [ %.0199, %_ZL7mi_outccPPcS_.exit.i279 ], [ %.0199, %_ZL7mi_outccPPcS_.exit53.i265 ], [ %.0199, %bb.cv ], [ %.1200, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa ], [ %.0199, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa ], [ %.0199, %.epil.preheader ] ; 2 uses
  %.6 = phi i64 [ %.5, %.epil.preheader448 ], [ %.2, %.lr.ph.i ], [ %.2, %bb.cu ], [ %.2, %_ZL7mi_outccPPcS_.exit283 ], [ %.2, %bb.ae ], [ %.2, %bb.af ], [ %.5, %bb.bl ], [ %.5, %_ZL7mi_outccPPcS_.exit.i ], [ %.5, %_ZL7mi_outccPPcS_.exit53.i ], [ %.2, %bb.cp ], [ %.2, %_ZL7mi_outccPPcS_.exit.i279 ], [ %.2, %_ZL7mi_outccPPcS_.exit53.i265 ], [ %.2, %bb.cv ], [ %.5, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa ], [ %.2, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa ], [ %.2, %.epil.preheader ] ; 7 uses
  %.1193 = phi ptr [ %.1303, %.epil.preheader448 ], [ %.0302343, %.lr.ph.i ], [ %.0302343, %bb.cu ], [ %.0302343, %_ZL7mi_outccPPcS_.exit283 ], [ %.0302343, %bb.ae ], [ %.0302343, %bb.af ], [ %.1303, %bb.bl ], [ %.1303, %_ZL7mi_outccPPcS_.exit.i ], [ %.1303, %_ZL7mi_outccPPcS_.exit53.i ], [ %.0302343, %bb.cp ], [ %.0302343, %_ZL7mi_outccPPcS_.exit.i279 ], [ %.0302343, %_ZL7mi_outccPPcS_.exit53.i265 ], [ %.0302343, %bb.cv ], [ %.1303, %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa ], [ %.0302343, %_ZL7mi_outsPKcPPcS1_.exit.loopexit438.unr-lcssa ], [ %.0302343, %.epil.preheader ] ; 10 uses
  %.fr.i = freeze ptr %.2304                      ; 7 uses
  %i.jg = ptrtoint ptr %.fr.i to i64              ; 3 uses
  %i.jh = ptrtoint ptr %.1193 to i64              ; 2 uses
  %i.ji = sub i64 %i.jg, %i.jh                    ; 13 uses
  %i.jj = icmp ult i64 %i.ji, %.6
  br i1 %i.jj, label %bb.cw, label %_ZL17mi_out_alignrightcPcmmS_.exit

bb.cw:                                            ; preds = %_ZL7mi_outsPKcPPcS1_.exit
  %i.jk = sub nuw i64 %.6, %i.ji                  ; 2 uses
  %i.jl = icmp ult ptr %.fr.i, %i.e
  br i1 %i.jl, label %.lr.ph.preheader.i, label %_ZL11mi_out_fillcmPPcS_.exit

.lr.ph.preheader.i:                               ; preds = %bb.cw
  %i.jm = xor i64 %i.jg, -1
  %i.jn = add i64 %i.jm, %i.h
  %i.jo = add i64 %i.jk, -1
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.jn, i64 %i.jo)
  %i.jp = add nuw i64 %umin.i, 1                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.fr.i, i8 range(i8 32, 49) %.2201, i64 %i.jp, i1 false), !tbaa !27
  %scevgep.i = getelementptr i8, ptr %.fr.i, i64 %i.jp
  br label %_ZL11mi_out_fillcmPPcS_.exit

_ZL11mi_out_fillcmPPcS_.exit:                     ; preds = %bb.cw, %.lr.ph.preheader.i
  %.09.lcssa.i = phi ptr [ %.fr.i, %bb.cw ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 4 uses
  %.not249 = icmp ugt ptr %.09.lcssa.i, %i.e
  %or.cond251 = select i1 %.not248, i1 true, i1 %.not249
  br i1 %or.cond251, label %_ZL17mi_out_alignrightcPcmmS_.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZL11mi_out_fillcmPPcS_.exit
  %i.jq = icmp ne ptr %.fr.i, %.1193
  %i.jr = getelementptr inbounds nuw i8, ptr %.1193, i64 %.6
  %.not.i287 = icmp ult ptr %i.jr, %i.e
  %or.cond27.i = select i1 %i.jq, i1 %.not.i287, i1 false
  br i1 %or.cond27.i, label %iter.check, label %_ZL17mi_out_alignrightcPcmmS_.exit

iter.check:                                       ; preds = %bb.cx
  %min.iters.check = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check, label %.preheader31.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.js = add i64 %.6, %i.jh
  %i.jt = sub i64 %i.js, %i.jg
  %diff.check = icmp ugt i64 %i.jt, -32
  br i1 %diff.check, label %.preheader31.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check429 = icmp ult i64 %i.ji, 32
  br i1 %min.iters.check429, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ju = and i64 %i.ji, 24
  %n.vec = and i64 %i.ji, -32                     ; 4 uses
  %i.jv = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jw = or disjoint i64 %index, 1               ; 2 uses
  %i.jx = sub nuw i64 %i.ji, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -15
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 -31
  %wide.load = load <16 x i8>, ptr %i.jz, align 1, !tbaa !27
  %wide.load430 = load <16 x i8>, ptr %i.ka, align 1, !tbaa !27
  %i.kb = sub i64 %.6, %i.jw
  %i.kc = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.kb ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -15
  %i.ke = getelementptr inbounds i8, ptr %i.kc, i64 -31
  store <16 x i8> %wide.load, ptr %i.kd, align 1, !tbaa !27
  store <16 x i8> %wide.load430, ptr %i.ke, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kf = icmp eq i64 %index.next, %n.vec
  br i1 %i.kf, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ji, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ju, 0
  br i1 %min.epilog.iters.check, label %.preheader31.i.preheader, label %vec.epilog.ph, !prof !282

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %i.ji, -8                   ; 3 uses
  %i.kg = or disjoint i64 %n.vec431, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 2 uses
  %i.kh = or disjoint i64 %index432, 1            ; 2 uses
  %i.ki = sub nuw i64 %i.ji, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.ki
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -7
  %wide.load433 = load <8 x i8>, ptr %i.kk, align 1, !tbaa !27
  %i.kl = sub i64 %.6, %i.kh
  %i.km = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.kl
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 -7
  store <8 x i8> %wide.load433, ptr %i.kn, align 1, !tbaa !27
  %index.next434 = add nuw i64 %index432, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next434, %n.vec431
  br i1 %i.ko, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !283

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.ji, %n.vec431
  br i1 %cmp.n435, label %.preheader.preheader.i, label %.preheader31.i.preheader

.preheader31.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02232.i.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.jv, %vec.epilog.iter.check ], [ %i.kg, %vec.epilog.middle.block ]
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.i.preheader, %.preheader31.i
  %.02232.i = phi i64 [ %i.ku, %.preheader31.i ], [ %.02232.i.ph, %.preheader31.i.preheader ] ; 4 uses
  %i.kp = sub nuw i64 %i.ji, %.02232.i
  %i.kq = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !27
  %i.ks = sub i64 %.6, %.02232.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.1193, i64 %i.ks
  store i8 %i.kr, ptr %i.kt, align 1, !tbaa !27
  %i.ku = add nuw i64 %.02232.i, 1
  %exitcond.i = icmp eq i64 %.02232.i, %i.ji
  br i1 %exitcond.i, label %.preheader.preheader.i, label %.preheader31.i, !llvm.loop !284

.preheader.preheader.i:                           ; preds = %.preheader31.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1193, i8 range(i8 32, 49) %.2201, i64 %i.jk, i1 false), !tbaa !27
  br label %_ZL17mi_out_alignrightcPcmmS_.exit

_ZL17mi_out_alignrightcPcmmS_.exit:               ; preds = %_ZL11mi_out_fillcmPPcS_.exit, %_ZL7mi_outsPKcPPcS1_.exit, %bb.cx, %.preheader.preheader.i, %_ZL7mi_outccPPcS_.exit, %switch.early.test
  %.4306 = phi ptr [ %.09.lcssa.i, %.preheader.preheader.i ], [ %.fr.i, %_ZL7mi_outsPKcPPcS1_.exit ], [ %.0302343, %switch.early.test ], [ %i.m, %_ZL7mi_outccPPcS_.exit ], [ %.09.lcssa.i, %bb.cx ], [ %.09.lcssa.i, %_ZL11mi_out_fillcmPPcS_.exit ] ; 3 uses
  %.9 = phi ptr [ %.6217, %.preheader.preheader.i ], [ %.6217, %_ZL7mi_outsPKcPPcS1_.exit ], [ %i.k, %switch.early.test ], [ %i.k, %_ZL7mi_outccPPcS_.exit ], [ %.6217, %bb.cx ], [ %.6217, %_ZL11mi_out_fillcmPPcS_.exit ]
  %.not = icmp ult ptr %.4306, %i.e
  br i1 %.not, label %bb.c, label %_ZL17mi_out_alignrightcPcmmS_.exit.thread325

_ZL17mi_out_alignrightcPcmmS_.exit.thread325:     ; preds = %_ZL17mi_out_alignrightcPcmmS_.exit, %bb.f, %bb.c, %bb.w, %bb.h, %bb.k, %bb.n, %bb.q, %bb.y, %bb.u, %bb.t, %bb.b
  %.0302341 = phi ptr [ %.0302343, %bb.t ], [ %0, %bb.b ], [ %.4306, %_ZL17mi_out_alignrightcPcmmS_.exit ], [ %.0302343, %bb.f ], [ %.0302343, %bb.c ], [ %.0302343, %bb.w ], [ %.0302343, %bb.h ], [ %.0302343, %bb.k ], [ %.0302343, %bb.n ], [ %.0302343, %bb.q ], [ %.0302343, %bb.y ], [ %.0302343, %bb.u ] ; 2 uses
  store i8 0, ptr %.0302341, align 1, !tbaa !27
  %i.kv = ptrtoint ptr %.0302341 to i64
  %i.kw = ptrtoint ptr %0 to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = trunc i64 %i.kx to i32
end_hunk_3
begin_hunk_4_@_ZL24mi_segment_span_allocateP12mi_segment_smm:bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !161
  %i.fe = sdiv i64 %i.fd, 1000000
  %i.ff = add nsw i64 %i.fe, %i.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.fg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ad, label %mi_option_get.exit.i.i, !prof !19

bb.ad:                                            ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.ad, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  %i.fi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.fj = add nsw i64 %i.ff, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !326
  %.pre36.i.i = load i64, ptr %i.eb, align 8, !tbaa !74
  %.phi.trans.insert37.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre38.i.i = load i64, ptr %.phi.trans.insert37.i.i, align 8, !tbaa !74
  %.phi.trans.insert39.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre40.i.i = load i64, ptr %.phi.trans.insert39.i.i, align 8, !tbaa !74
  %.phi.trans.insert41.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre42.i.i = load i64, ptr %.phi.trans.insert41.i.i, align 8, !tbaa !74
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre44.i.i = load i64, ptr %.phi.trans.insert43.i.i, align 8, !tbaa !74
  %.phi.trans.insert45.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre46.i.i = load i64, ptr %.phi.trans.insert45.i.i, align 8, !tbaa !74
  %.phi.trans.insert47.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre48.i.i = load i64, ptr %.phi.trans.insert47.i.i, align 8, !tbaa !74
  %.phi.trans.insert49.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre50.i.i = load i64, ptr %.phi.trans.insert49.i.i, align 8, !tbaa !74
  br label %bb.ae

bb.ae:                                            ; preds = %mi_option_get.exit.i.i, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i
  %i.fl = phi i64 [ %.pre50.i.i, %mi_option_get.exit.i.i ], [ %i.ex, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fm = phi i64 [ %.pre48.i.i, %mi_option_get.exit.i.i ], [ %i.eu, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fn = phi i64 [ %.pre46.i.i, %mi_option_get.exit.i.i ], [ %i.er, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fo = phi i64 [ %.pre44.i.i, %mi_option_get.exit.i.i ], [ %i.eo, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fp = phi i64 [ %.pre42.i.i, %mi_option_get.exit.i.i ], [ %i.el, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fq = phi i64 [ %.pre40.i.i, %mi_option_get.exit.i.i ], [ %i.ei, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fr = phi i64 [ %.pre38.i.i, %mi_option_get.exit.i.i ], [ %i.ef, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fs = phi i64 [ %.pre36.i.i, %mi_option_get.exit.i.i ], [ %i.ec, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.ft = xor i64 %i.bk, -1
  %i.fu = and i64 %i.fs, %i.ft
  store i64 %i.fu, ptr %i.eb, align 8, !tbaa !74
  %i.fv = xor i64 %i.bo, -1
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fx = and i64 %i.fr, %i.fv
  store i64 %i.fx, ptr %i.fw, align 8, !tbaa !74
  %i.fy = xor i64 %i.bs, -1
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ga = and i64 %i.fq, %i.fy
  store i64 %i.ga, ptr %i.fz, align 8, !tbaa !74
  %i.gb = xor i64 %i.bw, -1
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gd = and i64 %i.fp, %i.gb
  store i64 %i.gd, ptr %i.gc, align 8, !tbaa !74
  %i.ge = xor i64 %i.av, -1
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gg = and i64 %i.fo, %i.ge
  store i64 %i.gg, ptr %i.gf, align 8, !tbaa !74
  %i.gh = xor i64 %i.aw, -1
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gj = and i64 %i.fn, %i.gh
  store i64 %i.gj, ptr %i.gi, align 8, !tbaa !74
  %i.gk = xor i64 %i.ay, -1
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gm = and i64 %i.fm, %i.gk
  store i64 %i.gm, ptr %i.gl, align 8, !tbaa !74
  %i.gn = xor i64 %i.ea, -1
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gp = and i64 %i.fl, %i.gn
  store i64 %i.gp, ptr %i.go, align 8, !tbaa !74
  br label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57: ; preds = %bb.ae, %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit: ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.ah

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread: ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.gq, align 4, !tbaa !25
  %i.gr = trunc i64 %2 to i32
  store i32 %i.gr, ptr %i.e, align 8, !tbaa !123
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.i, ptr %i.gs, align 8, !tbaa !20
  %i.gt = add i64 %2, -1
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.gt, i64 255) ; 2 uses
  %i.gu = add i64 %spec.store.select, %1
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !122 ; 3 uses
  %.not = icmp ult i64 %i.gu, %i.gw
  %i.gx = xor i64 %1, -1
  %i.gy = add i64 %i.gw, %i.gx
  %.049 = select i1 %.not, i64 %spec.store.select, i64 %i.gy ; 2 uses
  %.not5559 = icmp eq i64 %.049, 0
  br i1 %.not5559, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread
  %i.gz = add i64 %.049, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.gz, i64 2) ; 2 uses
  %i.ha = add i64 %umax, -1                       ; 2 uses
  %i.hb = add i64 %umax, -2
  %xtraiter = and i64 %i.ha, 3                    ; 3 uses
  %i.hc = icmp ult i64 %i.hb, 3
  br i1 %i.hc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ha, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04761.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ig, %._crit_edge.loopexit.unr-lcssa ]
  %.pn60.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %.048.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04761.epil = phi i64 [ %i.hh, %.lr.ph.epil ], [ %.04761.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.pn60.epil = phi ptr [ %.048.epil, %.lr.ph.epil ], [ %.pn60.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.048.epil = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 96 ; 2 uses
  %i.hd = trunc i64 %.04761.epil to i32
  %i.he = mul i32 %i.hd, 96
  %i.hf = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 100
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !25
  store i32 0, ptr %.048.epil, align 8, !tbaa !123
  %i.hg = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 136
  store i64 1, ptr %i.hg, align 8, !tbaa !20
  %i.hh = add nuw i64 %.04761.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !399

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread
  %i.hi = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %2
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -96 ; 2 uses
  %i.hk = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.gw ; 2 uses
  %i.hl = icmp ugt ptr %i.hj, %i.hk
  %spec.select = select i1 %i.hl, ptr %i.hk, ptr %i.hj ; 5 uses
  %i.hm = icmp ugt ptr %spec.select, %i.e
  br i1 %i.hm, label %bb.af, label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04761 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ig, %.lr.ph ] ; 5 uses
  %.pn60 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %.048.3, %.lr.ph ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.048 = getelementptr inbounds nuw i8, ptr %.pn60, i64 96
  %i.hn = trunc i64 %.04761 to i32
  %i.ho = mul i32 %i.hn, 96
  %i.hp = getelementptr inbounds nuw i8, ptr %.pn60, i64 100
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !25
  store i32 0, ptr %.048, align 8, !tbaa !123
  %i.hq = getelementptr inbounds nuw i8, ptr %.pn60, i64 136
  store i64 1, ptr %i.hq, align 8, !tbaa !20
  %.048.1 = getelementptr inbounds nuw i8, ptr %.pn60, i64 192
  %i.hr = trunc i64 %.04761 to i32
  %i.hs = mul i32 %i.hr, 96
  %i.ht = add i32 %i.hs, 96
  %i.hu = getelementptr inbounds nuw i8, ptr %.pn60, i64 196
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !25
  store i32 0, ptr %.048.1, align 8, !tbaa !123
  %i.hv = getelementptr inbounds nuw i8, ptr %.pn60, i64 232
  store i64 1, ptr %i.hv, align 8, !tbaa !20
  %.048.2 = getelementptr inbounds nuw i8, ptr %.pn60, i64 288
  %i.hw = trunc i64 %.04761 to i32
  %i.hx = mul i32 %i.hw, 96
  %i.hy = add i32 %i.hx, 192
  %i.hz = getelementptr inbounds nuw i8, ptr %.pn60, i64 292
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !25
  store i32 0, ptr %.048.2, align 8, !tbaa !123
  %i.ia = getelementptr inbounds nuw i8, ptr %.pn60, i64 328
  store i64 1, ptr %i.ia, align 8, !tbaa !20
  %.048.3 = getelementptr inbounds nuw i8, ptr %.pn60, i64 384 ; 3 uses
  %i.ib = trunc i64 %.04761 to i32
  %i.ic = mul i32 %i.ib, 96
  %i.id = add i32 %i.ic, 288
  %i.ie = getelementptr inbounds nuw i8, ptr %.pn60, i64 388
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !25
  store i32 0, ptr %.048.3, align 8, !tbaa !123
  %i.if = getelementptr inbounds nuw i8, ptr %.pn60, i64 424
  store i64 1, ptr %i.if, align 8, !tbaa !20
  %i.ig = add nuw i64 %.04761, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !400

bb.af:                                            ; preds = %._crit_edge
  %i.ih = ptrtoint ptr %spec.select to i64
  %i.ii = sub i64 %i.ih, %i.f
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !25
  store i32 0, ptr %spec.select, align 8, !tbaa !123
  %i.il = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  store i64 1, ptr %i.il, align 8, !tbaa !20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.in = load i8, ptr %i.im, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !331
  %i.iq = icmp eq i32 %i.ip, 1
  %i.ir = select i1 %i.iq, i8 4, i8 0
  %i.is = and i8 %i.in, -6
  %i.it = or disjoint i8 %i.is, 1
  %i.iu = or disjoint i8 %i.ir, %i.it
  store i8 %i.iu, ptr %i.im, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !225
  %i.ix = add i64 %i.iw, 1
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !225
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit, %bb.ag
  %.050 = phi ptr [ %i.e, %bb.ag ], [ null, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit ]
  ret ptr %.050
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL15mi_buffered_outPKcPv(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !27      ; 2 uses
  %.not22 = icmp eq i8 %i.c, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.h = phi i8 [ %i.c, %.lr.ph ], [ %i.av, %bb.k ] ; 2 uses
  %.023 = phi ptr [ %0, %.lr.ph ], [ %i.au, %bb.k ]
  %i.i = load i64, ptr %i.d, align 8, !tbaa !401  ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !358
  %.not18 = icmp ult i64 %i.i, %i.j
  br i1 %.not18, label %_ZL17mi_buffered_flushP10buffered_s.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !27
  %i.m = load ptr, ptr %1, align 8, !tbaa !355    ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !359  ; 2 uses
  %i.o = icmp eq ptr %i.m, null
  %i.p = load ptr, ptr @stdout, align 8
  %i.q = icmp eq ptr %i.m, %i.p
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = icmp eq ptr %i.m, %i.r
  %or.cond17.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.s
  br i1 %or.cond17.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc noundef zeroext i1 @_ZL21mi_recurse_enter_primv()
  br i1 %i.t, label %bb.e, label %_ZL17mi_buffered_flushP10buffered_s.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load atomic ptr, ptr @_ZL10mi_out_arg.0 acquire, align 8
  %i.v = load volatile ptr, ptr @_ZL14mi_out_default, align 8, !tbaa !69 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = select i1 %i.w, ptr @_ZL10mi_out_bufPKcPv, ptr %i.v
  tail call void %i.x(ptr noundef %i.n, ptr noundef %i.u), !inline_history !402
  tail call fastcc void @_ZL20mi_recurse_exit_primv()
  br label %_ZL17mi_buffered_flushP10buffered_s.exit

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !357
  tail call void %i.m(ptr noundef %i.n, ptr noundef %i.y), !inline_history !402
  br label %_ZL17mi_buffered_flushP10buffered_s.exit

_ZL17mi_buffered_flushP10buffered_s.exit:         ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.z = phi i64 [ %i.i, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.ab = add nuw i64 %i.z, 1
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !401
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.h, ptr %i.ac, align 1, !tbaa !27
  %i.ad = icmp eq i8 %i.h, 10
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZL17mi_buffered_flushP10buffered_s.exit
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.af = load i64, ptr %i.d, align 8, !tbaa !401
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !27
  %i.ah = load ptr, ptr %1, align 8, !tbaa !355   ; 4 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !359 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, null
  %i.ak = load ptr, ptr @stdout, align 8
  %i.al = icmp eq ptr %i.ah, %i.ak
  %or.cond.i.i19 = select i1 %i.aj, i1 true, i1 %i.al
  %i.am = load ptr, ptr @stderr, align 8
  %i.an = icmp eq ptr %i.ah, %i.am
  %or.cond17.i.i20 = select i1 %or.cond.i.i19, i1 true, i1 %i.an
  br i1 %or.cond17.i.i20, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call fastcc noundef zeroext i1 @_ZL21mi_recurse_enter_primv()
  br i1 %i.ao, label %bb.i, label %_ZL17mi_buffered_flushP10buffered_s.exit21

bb.i:                                             ; preds = %bb.h
  %i.ap = load atomic ptr, ptr @_ZL10mi_out_arg.0 acquire, align 8
  %i.aq = load volatile ptr, ptr @_ZL14mi_out_default, align 8, !tbaa !69 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = select i1 %i.ar, ptr @_ZL10mi_out_bufPKcPv, ptr %i.aq
  tail call void %i.as(ptr noundef %i.ai, ptr noundef %i.ap), !inline_history !402
  tail call fastcc void @_ZL20mi_recurse_exit_primv()
  br label %_ZL17mi_buffered_flushP10buffered_s.exit21

bb.j:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !357
  tail call void %i.ah(ptr noundef %i.ai, ptr noundef %i.at), !inline_history !402
  br label %_ZL17mi_buffered_flushP10buffered_s.exit21

_ZL17mi_buffered_flushP10buffered_s.exit21:       ; preds = %bb.h, %bb.i, %bb.j
  store i64 0, ptr %i.d, align 8, !tbaa !401
  br label %bb.k

bb.k:                                             ; preds = %_ZL17mi_buffered_flushP10buffered_s.exit21, %_ZL17mi_buffered_flushP10buffered_s.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.023, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !27  ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !403

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16mi_stat_print_exPK15mi_stat_count_sPKclPFvS3_PvES4_S3_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef range(i64 -1, 2) %2, ptr noundef nonnull %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  tail call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.210, ptr noundef %1)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !156  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.g = load i64, ptr %0, align 8, !tbaa !157
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.g, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.h = load i64, ptr %i.f, align 8, !tbaa !154
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.h, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i8 0, ptr %i.b, align 16, !tbaa !27
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.216, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.215)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.e, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.i = load i64, ptr %0, align 8, !tbaa !157
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.i, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.j = load i64, ptr %i.f, align 8, !tbaa !154
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.j, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.k = icmp eq i64 %2, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.11)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i8 0, ptr %i.a, align 16, !tbaa !27
end_hunk_4
