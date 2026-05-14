inline.NumInlined: 162
inline.NumDeleted: 17
begin_hunk_0_@mbedtls_mpi_shrink:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !7
  %i.d = zext i16 %i.c to i64                     ; 7 uses
  %.not = icmp samesign ult i64 %1, %i.d
  br i1 %.not, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %bb.b
  %.041 = add nsw i64 %i.d, -1                    ; 2 uses
  %.not3042 = icmp eq i64 %.041, 0
  br i1 %.not3042, label %.preheader._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.preheader
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %1, %i.d
  br i1 %i.f, label %bb.d, label %mbedtls_mpi_grow.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 8) #13 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %mbedtls_mpi_grow.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %mbedtls_mpi_grow.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.i, i64 %i.j, i1 false)
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.i, i64 noundef %i.j)
  br label %mbedtls_mpi_grow.exit.sink.split

.preheader:                                       ; preds = %.lr.ph
  %.0 = add nsw i64 %.044, -1                     ; 2 uses
  %.not30 = icmp eq i64 %.0, 0
  br i1 %.not30, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !17

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader
  %.044 = phi i64 [ %.0, %.preheader ], [ %.041, %.lr.ph.preheader ] ; 4 uses
  %.0.in43 = phi i64 [ %.044, %.preheader ], [ %i.d, %.lr.ph.preheader ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.044
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %.not31 = icmp eq i64 %i.l, 0
  br i1 %.not31, label %.preheader, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader._crit_edge, !llvm.loop !17

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge, %.preheader.preheader
  %.0.in.lcssa = phi i64 [ %.0.in43, %._crit_edge ], [ %i.d, %.preheader.preheader ], [ %.044, %.preheader ]
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0.in.lcssa, i64 %1) ; 4 uses
  %i.m = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef 8) #13 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %mbedtls_mpi_grow.exit, label %bb.g

bb.g:                                             ; preds = %.preheader._crit_edge
  %i.o = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %.not32 = icmp eq ptr %i.o, null
  br i1 %.not32, label %mbedtls_mpi_grow.exit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl nuw nsw i64 %spec.select, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.o, i64 %i.p, i1 false)
  %i.q = shl nuw nsw i64 %i.d, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.o, i64 noundef %i.q)
  br label %mbedtls_mpi_grow.exit.sink.split

mbedtls_mpi_grow.exit.sink.split:                 ; preds = %bb.g, %bb.h, %bb.e, %bb.f
  %.sink40 = phi i64 [ %1, %bb.e ], [ %1, %bb.f ], [ %spec.select, %bb.h ], [ %spec.select, %bb.g ]
  %.sink = phi ptr [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %i.r = trunc nuw i64 %.sink40 to i16
  store i16 %i.r, ptr %i.b, align 2, !tbaa !7
  store ptr %.sink, ptr %0, align 8, !tbaa !15
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %mbedtls_mpi_grow.exit.sink.split, %bb.d, %bb.c, %.preheader._crit_edge, %bb.a
  %.025 = phi i32 [ 0, %bb.c ], [ -16, %.preheader._crit_edge ], [ -16, %bb.a ], [ -16, %bb.d ], [ 0, %mbedtls_mpi_grow.exit.sink.split ]
  ret i32 %.025
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -16, 1) i32 @mbedtls_mpi_copy(ptr noundef captures(address) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %mbedtls_mpi_grow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !7    ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = load i16, ptr %i.e, align 2, !tbaa !7    ; 2 uses
  %.not40 = icmp eq i16 %i.f, 0
  br i1 %.not40, label %mbedtls_mpi_grow.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.g, align 8, !tbaa !12
  %i.h = load ptr, ptr %0, align 8, !tbaa !15
  %i.i = zext i16 %i.f to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.j, i1 false)
  br label %mbedtls_mpi_grow.exit

bb.e:                                             ; preds = %bb.b
  %i.k = zext i16 %i.c to i64
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  %.not44 = icmp eq i64 %i.m, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.n = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %.045 = phi i64 [ %i.m, %.lr.ph ], [ %i.q, %bb.g ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.045
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %.not37 = icmp eq i64 %i.p, 0
  br i1 %.not37, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i64 %.045, -1                    ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa = phi i64 [ 0, %bb.e ], [ %.045, %bb.f ], [ 0, %bb.g ] ; 3 uses
  %i.r = add nuw nsw i64 %.0.lcssa, 1             ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i16, ptr %i.s, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.t, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !7
  %i.x = zext i16 %i.w to i64                     ; 3 uses
  %.not38 = icmp ult i64 %.0.lcssa, %i.x
  br i1 %.not38, label %bb.m, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.y = icmp ugt i64 %.0.lcssa, 9999
  br i1 %i.y, label %mbedtls_mpi_grow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 8) #13 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %mbedtls_mpi_grow.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = shl nuw nsw i64 %i.x, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.ab, i64 %i.ac, i1 false)
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ab, i64 noundef %i.ac)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = trunc nuw nsw i64 %i.r to i16
  store i16 %i.ad, ptr %i.v, align 2, !tbaa !7
  store ptr %i.z, ptr %0, align 8, !tbaa !15
  br label %mbedtls_mpi_grow.exit.thread

bb.m:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr %0, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = sub nsw i64 %i.x, %i.r
  %i.ah = shl nsw i64 %i.ag, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.ah, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %mbedtls_mpi_grow.exit.thread

mbedtls_mpi_grow.exit.thread:                     ; preds = %bb.l, %bb.m
  %i.ai = phi ptr [ %i.z, %bb.l ], [ %.pre, %bb.m ]
  %i.aj = load ptr, ptr %1, align 8, !tbaa !15
  %i.ak = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ak, i1 false)
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.i, %bb.h, %mbedtls_mpi_grow.exit.thread, %bb.c, %bb.d, %bb.a
  %.028 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %mbedtls_mpi_grow.exit.thread ], [ -16, %bb.i ], [ -16, %bb.h ]
  ret i32 %.028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @mbedtls_mpi_swap(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  store <16 x i8> %.sroa.0.0.copyload, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -16, 1) i32 @mbedtls_mpi_lset(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !7    ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  %i.d = zext i16 %i.b to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #13 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mbedtls_mpi_grow.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.h, i64 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i16 1, ptr %i.a, align 2, !tbaa !7
  store ptr %i.f, ptr %0, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.i = phi i64 [ %i.e, %._crit_edge ], [ 8, %bb.e ]
  %i.j = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.e ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.i, i1 false)
  %.0.i7 = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %1, i1 false)
  %i.k = load ptr, ptr %0, align 8, !tbaa !15
  store i64 %.0.i7, ptr %i.k, align 8, !tbaa !13
  %i.l = ashr i64 %1, 62
  %i.m = trunc nsw i64 %i.l to i16
  %i.n = or i16 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.n, ptr %i.o, align 8, !tbaa !12
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.b, %bb.f
  %.0.i10 = phi i32 [ 0, %bb.f ], [ -16, %bb.b ]
  ret i32 %.0.i10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @mbedtls_mpi_get_bit(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !7
  %i.c = zext i16 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 6
  %.not = icmp ugt i64 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = lshr i64 %1, 6
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = and i64 %1, 63
  %i.j = lshr i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -16, 1) i32 @mbedtls_mpi_set_bit(ptr noundef captures(none) %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 6                           ; 3 uses
  %i.b = and i64 %1, 63                           ; 2 uses
  %or.cond = icmp ugt i8 %2, 1
  br i1 %or.cond, label %mbedtls_mpi_grow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !7
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = shl nuw nsw i64 %i.e, 6
  %.not = icmp ugt i64 %i.f, %1
  br i1 %.not, label %mbedtls_mpi_grow.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i8 %2, 0
  br i1 %i.g, label %mbedtls_mpi_grow.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.i = icmp ugt i64 %1, 639999
  br i1 %i.i, label %mbedtls_mpi_grow.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not25 = icmp samesign ult i64 %i.a, %i.e
  br i1 %.not25, label %mbedtls_mpi_grow.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 8) #13 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %mbedtls_mpi_grow.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.l, i64 %i.m, i1 false)
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.l, i64 noundef %i.m)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = trunc nuw nsw i64 %i.h to i16
  store i16 %i.n, ptr %i.c, align 2, !tbaa !7
  store ptr %i.j, ptr %0, align 8, !tbaa !15
  br label %mbedtls_mpi_grow.exit.thread

mbedtls_mpi_grow.exit.thread:                     ; preds = %bb.e, %bb.i, %bb.b
  %i.o = shl nuw i64 1, %i.b
  %i.p = xor i64 %i.o, -1
  %i.q = load ptr, ptr %0, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.a ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = and i64 %i.s, %i.p
  %i.u = zext nneg i8 %2 to i64
  %i.v = shl nuw i64 %i.u, %i.b
  %i.w = or i64 %i.t, %i.v
  store i64 %i.w, ptr %i.r, align 8, !tbaa !13
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.f, %bb.d, %mbedtls_mpi_grow.exit.thread, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ -4, %bb.a ], [ 0, %mbedtls_mpi_grow.exit.thread ], [ -16, %bb.f ], [ -16, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 4194240) i64 @mbedtls_mpi_lsb(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !7    ; 2 uses
  %i.c = zext i16 %i.b to i64
  %.not12 = icmp eq i16 %i.b, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.011
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw nsw i64 %.011, 6
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.f, i1 true)
  %i.i = or disjoint i64 %i.h, %i.g
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw nsw i64 %.011, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !20

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.08 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i64 %.08
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @mbedtls_mpi_bitlen(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !7
  %i.d = zext i16 %i.c to i64
  %i.e = tail call noundef i64 @_Z23mbedtls_mpi_core_bitlenPKmm(ptr noundef %i.a, i64 noundef %i.d)
  ret i64 %i.e
}

end_hunk_0
