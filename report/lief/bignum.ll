Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/bignum?download=true
inline.NumInlined: 198
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@mbedtls_mpi_cmp_abs:bb.a
  br i1 %.not3147, label %.loopexit, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.preheader.preheader
  %i.s = load ptr, ptr %0, align 8, !tbaa !15
  %i.t = load ptr, ptr %1, align 8, !tbaa !15
  br label %.lr.ph49

.preheader:                                       ; preds = %bb.g
  %.not31 = icmp eq i64 %i.u, 0
  br i1 %.not31, label %.loopexit, label %.lr.ph49, !llvm.loop !40

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.preheader
  %.148 = phi i64 [ %i.u, %.preheader ], [ %.024.lcssa, %.lr.ph49.preheader ]
  %i.u = add nsw i64 %.148, -1                    ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph49
  %i.aa = icmp ult i64 %i.w, %i.y
  br i1 %i.aa, label %..loopexit.loopexit_crit_edge50, label %.preheader, !llvm.loop !40

..loopexit.loopexit_crit_edge50:                  ; preds = %bb.g
  br label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %.lr.ph49, %.preheader, %.preheader.preheader, %..loopexit.loopexit_crit_edge50, %bb.f, %._crit_edge40
  %.025 = phi i32 [ -1, %bb.f ], [ 1, %._crit_edge40 ], [ -1, %..loopexit.loopexit_crit_edge50 ], [ 0, %.preheader.preheader ], [ 0, %.preheader ], [ 1, %.lr.ph49 ]
  ret i32 %.025
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -32768, 32769) i32 @mbedtls_mpi_cmp_mpi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !8    ; 2 uses
  %.not44 = icmp eq i16 %i.b, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i16 %i.b to i64
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.03545 = phi i64 [ %i.c, %.lr.ph ], [ %i.h, %bb.c ] ; 3 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.03545
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %.not39 = icmp eq i64 %i.g, 0
  br i1 %.not39, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %.03545, -1                  ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.035.lcssa = phi i64 [ 0, %bb.a ], [ %.03545, %bb.b ], [ 0, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !8    ; 2 uses
  %.not4048 = icmp eq i16 %i.j, 0
  br i1 %.not4048, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge
  %i.k = zext i16 %i.j to i64
  %i.l = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph51, %bb.e
  %.049 = phi i64 [ %i.k, %.lr.ph51 ], [ %i.p, %bb.e ] ; 3 uses
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %.049
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %.not41 = icmp eq i64 %i.o, 0
  br i1 %.not41, label %bb.e, label %._crit_edge52

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i64 %.049, -1                    ; 2 uses
  %.not40 = icmp eq i64 %i.p, 0
  br i1 %.not40, label %._crit_edge52, label %bb.d, !llvm.loop !41

._crit_edge52:                                    ; preds = %bb.e, %bb.d, %._crit_edge
  %.0.lcssa = phi i64 [ 0, %._crit_edge ], [ %.049, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %i.q = or i64 %.0.lcssa, %.035.lcssa
  %or.cond = icmp eq i64 %i.q, 0
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge52
  %i.r = icmp ugt i64 %.035.lcssa, %.0.lcssa
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i16, ptr %i.s, align 8, !tbaa !13
  %i.u = sext i16 %i.t to i32
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.v = icmp ugt i64 %.0.lcssa, %.035.lcssa
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i16, ptr %i.w, align 8, !tbaa !13
  %i.y = sext i16 %i.x to i32
  %i.z = sub nsw i32 0, %i.y
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !13 ; 4 uses
  %i.ac = icmp sgt i16 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = icmp slt i16 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %.preheader.preheader

bb.l:                                             ; preds = %bb.j
  %i.ag = icmp sgt i16 %i.ae, 0
  %i.ah = icmp ne i16 %i.ab, 0
  %or.cond43 = and i1 %i.ah, %i.ag
  br i1 %or.cond43, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.k, %bb.l
  %.not4262 = icmp eq i64 %.035.lcssa, 0
  br i1 %.not4262, label %.loopexit, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %.preheader.preheader
  %i.ai = load ptr, ptr %0, align 8, !tbaa !15
  %i.aj = load ptr, ptr %1, align 8, !tbaa !15
  br label %.lr.ph64

.preheader:                                       ; preds = %bb.n
  %.not42 = icmp eq i64 %i.ak, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph64, !llvm.loop !42

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %.preheader
  %.163 = phi i64 [ %i.ak, %.preheader ], [ %.035.lcssa, %.lr.ph64.preheader ]
  %i.ak = add nsw i64 %.163, -1                   ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !19 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph64
  %i.aq = sext i16 %i.ab to i32
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph64
  %i.ar = icmp ult i64 %i.am, %i.ao
  br i1 %i.ar, label %bb.o, label %.preheader, !llvm.loop !42

bb.o:                                             ; preds = %bb.n
  %i.as = sext i16 %i.ab to i32
  %i.at = sub nsw i32 0, %i.as
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %bb.l, %bb.k, %._crit_edge52, %bb.o, %bb.m, %bb.i, %bb.g
  %.036 = phi i32 [ -1, %bb.l ], [ %i.u, %bb.g ], [ %i.z, %bb.i ], [ 0, %._crit_edge52 ], [ 1, %bb.k ], [ %i.aq, %bb.m ], [ %i.at, %bb.o ], [ 0, %.preheader.preheader ], [ 0, %.preheader ]
  ret i32 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -32768, 32769) i32 @mbedtls_mpi_cmp_int(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.0.i = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %1, i1 false) ; 2 uses
  %i.a = ashr i64 %1, 62                          ; 3 uses
  %i.b = trunc nsw i64 %i.a to i32
  %i.c = or i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !8    ; 2 uses
  %.not44.i = icmp eq i16 %i.e, 0
  br i1 %.not44.i, label %.lr.ph51.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = zext i16 %i.e to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.03545.i = phi i64 [ %i.f, %.lr.ph.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %.03545.i
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %.not39.i = icmp eq i64 %i.j, 0
  br i1 %.not39.i, label %bb.c, label %.lr.ph51.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %.03545.i, -1                ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.lr.ph51.i, label %bb.b, !llvm.loop !35

.lr.ph51.i:                                       ; preds = %bb.b, %bb.c, %bb.a
  %.035.lcssa.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.03545.i, %bb.b ] ; 4 uses
  %.not41.i = icmp ne i64 %1, 0
  %spec.select = zext i1 %.not41.i to i64         ; 3 uses
  %i.l = or i64 %.035.lcssa.i, %spec.select
  %or.cond.i = icmp eq i64 %i.l, 0
  br i1 %or.cond.i, label %mbedtls_mpi_cmp_mpi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph51.i
  %i.m = icmp ugt i64 %.035.lcssa.i, %spec.select
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i16, ptr %i.n, align 8, !tbaa !13
  %i.p = sext i16 %i.o to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.f:                                             ; preds = %bb.d
  %i.q = icmp samesign ult i64 %.035.lcssa.i, %spec.select
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = sub nsw i32 0, %i.c
  br label %mbedtls_mpi_cmp_mpi.exit

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i16, ptr %i.s, align 8, !tbaa !13   ; 4 uses
  %i.u = icmp sgt i16 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = icmp slt i64 %i.a, 0
  br i1 %i.v, label %mbedtls_mpi_cmp_mpi.exit, label %.preheader.preheader.i

bb.j:                                             ; preds = %bb.h
  %i.w = icmp sgt i64 %i.a, -1
  %i.x = icmp ne i16 %i.t, 0
  %or.cond43.i = and i1 %i.w, %i.x
  br i1 %or.cond43.i, label %mbedtls_mpi_cmp_mpi.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.j, %bb.i
  %i.y = icmp eq i64 %.035.lcssa.i, 0
  br i1 %i.y, label %mbedtls_mpi_cmp_mpi.exit, label %bb.k

bb.k:                                             ; preds = %.preheader.preheader.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !15
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, %.0.i
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = sext i16 %i.t to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = icmp ult i64 %i.aa, %.0.i
  br i1 %i.ad, label %bb.n, label %mbedtls_mpi_cmp_mpi.exit, !llvm.loop !42

bb.n:                                             ; preds = %bb.m
  %i.ae = sext i16 %i.t to i32
  %i.af = sub nsw i32 0, %i.ae
  br label %mbedtls_mpi_cmp_mpi.exit

mbedtls_mpi_cmp_mpi.exit:                         ; preds = %.preheader.preheader.i, %bb.m, %.lr.ph51.i, %bb.e, %bb.g, %bb.i, %bb.j, %bb.l, %bb.n
  %.036.i = phi i32 [ -1, %bb.j ], [ %i.p, %bb.e ], [ %i.r, %bb.g ], [ 0, %.lr.ph51.i ], [ 1, %bb.i ], [ %i.ac, %bb.l ], [ %i.af, %bb.n ], [ 0, %bb.m ], [ 0, %.preheader.preheader.i ]
  ret i32 %.036.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_add_abs(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %2                       ; 2 uses
  %spec.select62 = select i1 %i.a, ptr %1, ptr %2 ; 3 uses
  %.not70 = icmp eq ptr %1, %0
  %.not = or i1 %.not70, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not55 = icmp eq i32 %i.b, 0
  br i1 %.not55, label %bb.c, label %mbedtls_mpi_grow.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select62, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !8    ; 2 uses
  %cond73 = icmp eq i16 %i.e, 0
  br i1 %cond73, label %mbedtls_mpi_grow.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = zext i16 %i.e to i64
  %i.g = load ptr, ptr %spec.select62, align 8, !tbaa !15 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.04174 = phi i64 [ %i.f, %.lr.ph ], [ %i.k, %bb.e ] ; 12 uses
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %.04174
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %.not57 = icmp eq i64 %i.j, 0
  br i1 %.not57, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i64 %.04174, -1                  ; 2 uses
  %cond = icmp eq i64 %i.k, 0
  br i1 %cond, label %mbedtls_mpi_grow.exit, label %bb.d, !llvm.loop !43

bb.f:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %.04174, 10000
  br i1 %i.l, label %mbedtls_mpi_grow.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !8
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = icmp samesign ugt i64 %.04174, %i.o
  br i1 %i.p, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noalias ptr @calloc(i64 noundef %.04174, i64 noundef 8) #17 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %mbedtls_mpi_grow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.s, i64 %i.t, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.s, i64 noundef %i.t) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = trunc nuw nsw i64 %.04174 to i16
  store i16 %i.u, ptr %i.m, align 2, !tbaa !8
  store ptr %i.q, ptr %0, align 8, !tbaa !15
  %.pre86 = load ptr, ptr %spec.select62, align 8, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.v = phi ptr [ %i.g, %._crit_edge ], [ %.pre86, %bb.k ]
  %i.w = phi ptr [ %.pre, %._crit_edge ], [ %i.q, %bb.k ] ; 3 uses
  %i.x = tail call i64 @mbedtls_mpi_core_add(ptr noundef %i.w, ptr noundef %i.w, ptr noundef %i.v, i64 noundef %.04174) #16 ; 3 uses
  %.not5975 = icmp eq i64 %i.x, 0
  br i1 %.not5975, label %mbedtls_mpi_grow.exit, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.l
  %.pre87 = load i16, ptr %i.m, align 2, !tbaa !8 ; 3 uses
  %i.y = zext i16 %.pre87 to i64                  ; 3 uses
  %.not60.peel = icmp samesign ult i64 %.04174, %i.y
  %.pre91.peel = add nuw nsw i64 %.04174, 1       ; 3 uses
  br i1 %.not60.peel, label %._crit_edge90.peel, label %bb.m

bb.m:                                             ; preds = %.lr.ph79
  %i.z = icmp eq i64 %.04174, 10000
  br i1 %i.z, label %mbedtls_mpi_grow.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not112 = icmp ult i64 %.04174, %i.y
  br i1 %.not112, label %._crit_edge88.peel, label %bb.o

._crit_edge88.peel:                               ; preds = %bb.n
  %.pre89.peel = load ptr, ptr %0, align 8, !tbaa !15
  br label %._crit_edge90.peel

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call noalias ptr @calloc(i64 noundef %.pre91.peel, i64 noundef 8) #17 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %mbedtls_mpi_grow.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %.not.i64.peel = icmp eq ptr %i.ac, null
  br i1 %.not.i64.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = shl nuw nsw i64 %i.y, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ac, i64 %i.ad, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ac, i64 noundef %i.ad) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = trunc nuw nsw i64 %.pre91.peel to i16   ; 2 uses
  store i16 %i.ae, ptr %i.m, align 2, !tbaa !8
  store ptr %i.aa, ptr %0, align 8, !tbaa !15
  br label %._crit_edge90.peel

._crit_edge90.peel:                               ; preds = %._crit_edge88.peel, %bb.r, %.lr.ph79
  %i.af = phi i16 [ %.pre87, %.lr.ph79 ], [ %i.ae, %bb.r ], [ %.pre87, %._crit_edge88.peel ]
  %.pn = phi ptr [ %i.w, %.lr.ph79 ], [ %i.aa, %bb.r ], [ %.pre89.peel, %._crit_edge88.peel ]
  %.1.peel = getelementptr inbounds nuw [8 x i8], ptr %.pn, i64 %.04174 ; 3 uses
  %i.ag = load i64, ptr %.1.peel, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@mbedtls_mpi_exp_mod_optionally_safe:bb.a
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.073112 = phi i32 [ %.073113, %bb.ac ], [ %.073114, %bb.ad ], [ %.073114, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.c, %bb.a, %mbedtls_mpi_free.exit, %bb.k, %mbedtls_mpi_cmp_int.exit101.thread, %bb.h, %mbedtls_mpi_cmp_int.exit101, %mbedtls_mpi_cmp_int.exit, %bb.d, %bb.j
  %.2 = phi i32 [ -135, %mbedtls_mpi_cmp_int.exit101.thread ], [ -135, %mbedtls_mpi_cmp_int.exit ], [ -135, %mbedtls_mpi_cmp_int.exit101 ], [ %i.ah, %bb.j ], [ -135, %bb.d ], [ -135, %bb.h ], [ %.073112, %mbedtls_mpi_free.exit ], [ -141, %bb.k ], [ -135, %bb.a ], [ -135, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_exp_mod_unsafe(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mbedtls_mpi_exp_mod_optionally_safe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 707406378, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_gcd_modinv_odd(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null                    ; 6 uses
  %i.b = select i1 %.not, i64 4, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !8    ; 2 uses
  %.not44.i.i = icmp eq i16 %i.d, 0
  br i1 %.not44.i.i, label %._crit_edge.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.03545.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %.not39.i.i = icmp eq i64 %i.i, 0
  br i1 %.not39.i.i, label %bb.c, label %mbedtls_mpi_cmp_int.exit

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %.lr.ph.i.preheader, label %bb.b, !llvm.loop !35

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !13
  %i.m = icmp slt i16 %i.l, 0
  br i1 %i.m, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %mbedtls_mpi_cmp_int.exit
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.03545.i = phi i64 [ %i.q, %bb.d ], [ %i.e, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.03545.i
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %.not39.i = icmp eq i64 %i.p, 0
  br i1 %.not39.i, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = add nsw i64 %.03545.i, -1                ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.a
  %.035.lcssa.i = phi i64 [ 0, %bb.a ], [ 0, %bb.d ], [ %.03545.i, %.lr.ph.i ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 6 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !8    ; 8 uses
  %.not4048.i = icmp eq i16 %i.s, 0               ; 2 uses
  br i1 %.not4048.i, label %._crit_edge52.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %._crit_edge.i
  %i.t = zext i16 %i.s to i64
  %i.u = load ptr, ptr %3, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph51.i
  %.049.i = phi i64 [ %i.t, %.lr.ph51.i ], [ %i.y, %bb.f ] ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %.049.i
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %.not41.i = icmp eq i64 %i.x, 0
  br i1 %.not41.i, label %bb.f, label %._crit_edge52.i

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i64 %.049.i, -1                  ; 2 uses
  %.not40.i = icmp eq i64 %i.y, 0
  br i1 %.not40.i, label %._crit_edge52.i, label %bb.e, !llvm.loop !41

._crit_edge52.i:                                  ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge.i ], [ 0, %bb.f ], [ %.049.i, %bb.e ] ; 3 uses
  %i.z = or i64 %.0.lcssa.i, %.035.lcssa.i
  %or.cond.i = icmp eq i64 %i.z, 0
  br i1 %or.cond.i, label %mbedtls_mpi_cmp_mpi.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge52.i
  %i.aa = icmp ugt i64 %.035.lcssa.i, %.0.lcssa.i
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !13
  %i.ad = sext i16 %i.ac to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp ugt i64 %.0.lcssa.i, %.035.lcssa.i
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !13
  %i.ah = sext i16 %i.ag to i32
  %i.ai = sub nsw i32 0, %i.ah
  br label %mbedtls_mpi_cmp_mpi.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !13 ; 4 uses
  %i.al = icmp sgt i16 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i16, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp slt i16 %i.an, 0
  br i1 %i.ao, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.preheader.preheader.i

bb.m:                                             ; preds = %bb.k
  %i.ap = icmp sgt i16 %i.an, 0
  %i.aq = icmp ne i16 %i.ak, 0
  %or.cond43.i = and i1 %i.aq, %i.ap
  %.not42.i210 = icmp eq i64 %.035.lcssa.i, 0
  %or.cond212 = or i1 %or.cond43.i, %.not42.i210
  br i1 %or.cond212, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph.preheader

.preheader.preheader.i:                           ; preds = %bb.l
  %.not42.i210.old = icmp eq i64 %.035.lcssa.i, 0
  br i1 %.not42.i210.old, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.preheader.i, %bb.m
  %i.ar = load ptr, ptr %2, align 8, !tbaa !15
  %i.as = load ptr, ptr %3, align 8, !tbaa !15
  br label %.lr.ph

.preheader.i:                                     ; preds = %bb.o
  %.not42.i = icmp eq i64 %i.at, 0
  br i1 %.not42.i, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph, !llvm.loop !42

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader.i
  %.1.i211 = phi i64 [ %i.at, %.preheader.i ], [ %.035.lcssa.i, %.lr.ph.preheader ]
  %i.at = add nsw i64 %.1.i211, -1                ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !19 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !19 ; 2 uses
  %i.ay = icmp ugt i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.az = sext i16 %i.ak to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.o:                                             ; preds = %.lr.ph
  %i.ba = icmp ult i64 %i.av, %i.ax
  br i1 %i.ba, label %bb.p, label %.preheader.i, !llvm.loop !42

bb.p:                                             ; preds = %bb.o
  %i.bb = sext i16 %i.ak to i32
  %i.bc = sub nsw i32 0, %i.bb
  br label %mbedtls_mpi_cmp_mpi.exit

mbedtls_mpi_cmp_mpi.exit:                         ; preds = %bb.h, %bb.j, %bb.n, %bb.p
  %.036.i = phi i32 [ %i.az, %bb.n ], [ %i.ad, %bb.h ], [ %i.ai, %bb.j ], [ %i.bc, %bb.p ]
  %i.bd = icmp sgt i32 %.036.i, 0
  br i1 %i.bd, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %mbedtls_mpi_cmp_mpi.exit.thread

mbedtls_mpi_cmp_mpi.exit.thread:                  ; preds = %.preheader.i, %.preheader.preheader.i, %._crit_edge52.i, %bb.m, %mbedtls_mpi_cmp_mpi.exit
  %i.be = zext i16 %i.s to i64                    ; 3 uses
  br i1 %.not4048.i, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %mbedtls_mpi_get_bit.exit

mbedtls_mpi_get_bit.exit:                         ; preds = %mbedtls_mpi_cmp_mpi.exit.thread
  %i.bf = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !19 ; 3 uses
  %i.bh = and i64 %i.bg, 1
  %.not76.not = icmp eq i64 %i.bh, 0
  br i1 %.not76.not, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %bb.q

bb.q:                                             ; preds = %mbedtls_mpi_get_bit.exit
  br i1 %.not, label %bb.y, label %.lr.ph.i.i87

.lr.ph.i.i87:                                     ; preds = %bb.q, %bb.r
  %.03545.i.i88 = phi i64 [ %i.bl, %bb.r ], [ %i.be, %bb.q ] ; 4 uses
  %i.bi = getelementptr [8 x i8], ptr %i.bf, i64 %.03545.i.i88
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !19
  %.not39.i.i89 = icmp eq i64 %i.bk, 0
  br i1 %.not39.i.i89, label %bb.r, label %.lr.ph51.i.i90

bb.r:                                             ; preds = %.lr.ph.i.i87
  %i.bl = add nsw i64 %.03545.i.i88, -1           ; 2 uses
  %.not.i.i94 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i94, label %mbedtls_mpi_cmp_int.exit95, label %.lr.ph.i.i87, !llvm.loop !35

.lr.ph51.i.i90:                                   ; preds = %.lr.ph.i.i87
  %4 = icmp ugt i64 %.03545.i.i88, 1
  br i1 %4, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph51.i.i90
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !13
  %5 = sext i16 %i.bn to i32
  br label %mbedtls_mpi_cmp_int.exit95

bb.t:                                             ; preds = %.lr.ph51.i.i90
  %6 = icmp eq i64 %.03545.i.i88, 0
  br i1 %6, label %mbedtls_mpi_cmp_int.exit95, label %bb.u

bb.u:                                             ; preds = %bb.t
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = load i16, ptr %7, align 8, !tbaa !13       ; 3 uses
  %or.cond172 = icmp slt i16 %8, 0
  br i1 %or.cond172, label %mbedtls_mpi_cmp_int.exit95, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.u
  %i.bo = icmp ugt i64 %i.bg, 1
  br i1 %i.bo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.preheader.i.i.preheader
  %i.bp = zext nneg i16 %8 to i32
  br label %mbedtls_mpi_cmp_int.exit95

bb.w:                                             ; preds = %.preheader.i.i.preheader
  %i.bq = icmp eq i64 %i.bg, 0
  br i1 %i.bq, label %bb.x, label %mbedtls_mpi_cmp_mpi.exit.thread133

bb.x:                                             ; preds = %bb.w
  %i.br = zext nneg i16 %8 to i32
  %i.bs = sub nsw i32 0, %i.br
  br label %mbedtls_mpi_cmp_int.exit95

mbedtls_mpi_cmp_int.exit95:                       ; preds = %bb.r, %bb.u, %bb.t, %bb.s, %bb.v, %bb.x
  %.036.i.i93 = phi i32 [ -1, %bb.u ], [ %5, %bb.s ], [ %i.bp, %bb.v ], [ %i.bs, %bb.x ], [ -1, %bb.t ], [ -1, %bb.r ]
  %i.bt = icmp eq i32 %.036.i.i93, 0
  %i.bu = icmp eq ptr %2, %3
  %or.cond84 = or i1 %i.bu, %i.bt
  br i1 %or.cond84, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.thread170

bb.y:                                             ; preds = %bb.q
  %.old = icmp eq ptr %2, %3
  br i1 %.old, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.thread142

.thread170:                                       ; preds = %mbedtls_mpi_cmp_int.exit95
  %i.bv = icmp eq ptr %1, %3
  %i.bw = icmp eq ptr %0, %3
  %or.cond = or i1 %i.bv, %i.bw
  br i1 %or.cond, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.thread142

.thread142:                                       ; preds = %bb.y, %.thread170
  %i.bx = icmp eq ptr %0, null                    ; 4 uses
  %i.by = icmp ugt i16 %i.s, 10000
  br i1 %i.by, label %mbedtls_mpi_free.exit, label %bb.z

bb.z:                                             ; preds = %.thread142
  %.sroa.gep104 = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  br i1 %i.bx, label %.cont, label %.else

.else:                                            ; preds = %bb.z
  %.else.val = load i16, ptr %.sroa.gep104, align 2, !tbaa !8
  %i.bz = zext i16 %.else.val to i64
  br label %.cont

.cont:                                            ; preds = %bb.z, %.else
  %i.ca = phi i64 [ 0, %bb.z ], [ %i.bz, %.else ] ; 2 uses
  %i.cb = icmp samesign ult i64 %i.ca, %i.be
  br i1 %i.cb, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.cont
  %i.cc = tail call noalias ptr @calloc(i64 noundef %i.be, i64 noundef 8) #17 ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %mbedtls_mpi_free.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.bx, label %bb.ad, label %.cont115

.cont115:                                         ; preds = %bb.ab
  %.else.val118 = load ptr, ptr %0, align 8, !tbaa !15 ; 3 uses
  %.not.i97 = icmp eq ptr %.else.val118, null
  br i1 %.not.i97, label %.cont106.else, label %bb.ac

bb.ac:                                            ; preds = %.cont115
  %i.ce = shl nuw nsw i64 %i.ca, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr nonnull align 8 %.else.val118, i64 %i.ce, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.else.val118, i64 noundef %i.ce) #16
  br label %.cont106.else

.cont106.else:                                    ; preds = %bb.ac, %.cont115
  store i16 %i.s, ptr %.sroa.gep104, align 2, !tbaa !8
  store ptr %i.cc, ptr %0, align 8, !tbaa !15
  %.pre179.pre = load i16, ptr %i.r, align 2, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %.cont, %bb.ab, %.cont106.else
  %.pre179 = phi i16 [ %i.s, %bb.ab ], [ %.pre179.pre, %.cont106.else ], [ %i.s, %.cont ] ; 2 uses
  %.sroa.9.0.ph = phi i16 [ %i.s, %bb.ab ], [ 0, %.cont106.else ], [ 0, %.cont ] ; 3 uses
  %.sroa.0.0.ph = phi ptr [ %i.cc, %bb.ab ], [ null, %.cont106.else ], [ null, %.cont ] ; 4 uses
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = zext i16 %.pre179 to i64
  %i.cg = tail call i32 @mbedtls_mpi_grow(ptr noundef nonnull %1, i64 noundef %i.cf) ; 2 uses
  %.not78 = icmp eq i32 %i.cg, 0
  br i1 %.not78, label %._crit_edge178, label %mbedtls_mpi_grow.exit

._crit_edge178:                                   ; preds = %bb.ae
  %.pre = load i16, ptr %i.r, align 2, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge178, %bb.ad
  %i.ch = phi i16 [ %.pre, %._crit_edge178 ], [ %.pre179, %bb.ad ] ; 3 uses
  %i.ci = zext i16 %i.ch to i64                   ; 3 uses
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = tail call noalias ptr @calloc(i64 noundef %i.cj, i64 noundef %i.b) #17 ; 6 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %mbedtls_mpi_grow.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cm = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.cn = phi ptr [ %i.cm, %bb.ah ], [ null, %bb.ag ] ; 2 uses
  %i.co = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %.not79 = icmp eq ptr %i.co, null               ; 2 uses
  %spec.select = select i1 %.not79, ptr %i.a, ptr %i.co ; 2 uses
  %i.cp = load i16, ptr %i.c, align 2, !tbaa !8   ; 2 uses
  %.not80 = icmp ult i16 %i.cp, %i.ch
  %spec.select83 = select i1 %.not79, i16 1, i16 %i.cp
  %spec.select173 = select i1 %.not80, i16 %spec.select83, i16 %i.ch
  %i.cq = zext i16 %spec.select173 to i64         ; 2 uses
  br i1 %i.bx, label %.then113, label %.else114

.then113:                                         ; preds = %bb.ai
  %i.cr = load ptr, ptr %3, align 8, !tbaa !15
  call void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef %.sroa.0.0.ph, ptr noundef %i.cn, ptr noundef nonnull %spec.select, i64 noundef %i.cq, ptr noundef %i.cr, i64 noundef %i.ci, ptr noundef nonnull %i.ck) #16
  br label %.cont112

.else114:                                         ; preds = %bb.ai
  %.else.val126 = load ptr, ptr %0, align 8, !tbaa !15
  %i.cs = load ptr, ptr %3, align 8, !tbaa !15
  call void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef %.else.val126, ptr noundef %i.cn, ptr noundef nonnull %spec.select, i64 noundef %i.cq, ptr noundef %i.cs, i64 noundef %i.ci, ptr noundef nonnull %i.ck) #16
  %.sroa.gep99 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %.sroa.gep99, align 8, !tbaa !13
  br label %.cont112

.cont112:                                         ; preds = %.else114, %.then113
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.cont112
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 1, ptr %i.ct, align 8, !tbaa !13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.cont112
  br i1 %i.bx, label %.cont108, label %.cont108.thread

.cont108:                                         ; preds = %bb.ak
  %i.cu = load i16, ptr %i.r, align 2, !tbaa !8   ; 2 uses
  %i.cv = icmp ugt i16 %.sroa.9.0.ph, %i.cu
  br i1 %i.cv, label %.cont119, label %bb.al

.cont108.thread:                                  ; preds = %bb.ak
  %.else.val111 = load i16, ptr %.sroa.gep104, align 2, !tbaa !8 ; 2 uses
  %i.cw = load i16, ptr %i.r, align 2, !tbaa !8   ; 2 uses
  %i.cx = icmp ugt i16 %.else.val111, %i.cw
  br i1 %i.cx, label %.else121, label %bb.al

.else121:                                         ; preds = %.cont108.thread
  %.else.val122 = load ptr, ptr %0, align 8, !tbaa !15
  br label %.cont119

.cont119:                                         ; preds = %.cont108, %.else121
  %i.cy = phi i16 [ %.else.val111, %.else121 ], [ %.sroa.9.0.ph, %.cont108 ]
  %i.cz = phi i16 [ %i.cw, %.else121 ], [ %i.cu, %.cont108 ] ; 2 uses
  %i.da = phi ptr [ %.else.val122, %.else121 ], [ %.sroa.0.0.ph, %.cont108 ]
  %i.db = zext i16 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.db
  %narrow = sub nuw i16 %i.cy, %i.cz
  %i.dd = zext i16 %narrow to i64
  %i.de = shl nuw nsw i64 %i.dd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dc, i8 0, i64 %i.de, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %.cont108.thread, %.cont119, %.cont108
  br i1 %.not, label %mbedtls_mpi_grow.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !8  ; 2 uses
  %i.dh = load i16, ptr %i.r, align 2, !tbaa !8   ; 3 uses
  %i.di = icmp ugt i16 %i.dg, %i.dh
  br i1 %i.di, label %bb.an, label %mbedtls_mpi_grow.exit

bb.an:                                            ; preds = %bb.am
  %i.dj = load ptr, ptr %1, align 8, !tbaa !15
  %i.dk = zext i16 %i.dh to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dk
  %narrow82 = sub nuw i16 %i.dg, %i.dh
  %i.dm = zext i16 %narrow82 to i64
  %i.dn = shl nuw nsw i64 %i.dm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dl, i8 0, i64 %i.dn, i1 false)
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.af, %bb.al, %bb.am, %bb.an, %bb.ae
  %.058 = phi ptr [ null, %bb.af ], [ null, %bb.ae ], [ %i.ck, %bb.al ], [ %i.ck, %bb.an ], [ %i.ck, %bb.am ] ; 2 uses
  %.1 = phi i32 [ -141, %bb.af ], [ %i.cg, %bb.ae ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %.not.i98 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i98, label %mbedtls_mpi_free.exit, label %bb.ao

bb.ao:                                            ; preds = %mbedtls_mpi_grow.exit
  %i.do = zext nneg i16 %.sroa.9.0.ph to i64
  %i.dp = shl nuw nsw i64 %i.do, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.sroa.0.0.ph, i64 noundef %i.dp) #16
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.aa, %.thread142, %mbedtls_mpi_grow.exit, %bb.ao
  %.1166 = phi i32 [ %.1, %bb.ao ], [ %.1, %mbedtls_mpi_grow.exit ], [ -141, %.thread142 ], [ -141, %bb.aa ]
  %.058165 = phi ptr [ %.058, %bb.ao ], [ %.058, %mbedtls_mpi_grow.exit ], [ null, %.thread142 ], [ null, %bb.aa ]
  call void @free(ptr noundef %.058165) #16
  br label %mbedtls_mpi_cmp_mpi.exit.thread133

mbedtls_mpi_cmp_mpi.exit.thread133:               ; preds = %bb.w, %mbedtls_mpi_cmp_mpi.exit.thread, %bb.l, %bb.y, %.thread170, %mbedtls_mpi_cmp_int.exit, %mbedtls_mpi_cmp_mpi.exit, %mbedtls_mpi_get_bit.exit, %mbedtls_mpi_cmp_int.exit95, %mbedtls_mpi_free.exit
  %.0 = phi i32 [ %.1166, %mbedtls_mpi_free.exit ], [ -135, %mbedtls_mpi_cmp_int.exit ], [ -135, %mbedtls_mpi_cmp_int.exit95 ], [ -135, %mbedtls_mpi_get_bit.exit ], [ -135, %mbedtls_mpi_cmp_mpi.exit ], [ -135, %.thread170 ], [ -135, %bb.y ], [ -135, %mbedtls_mpi_cmp_mpi.exit.thread ], [ -135, %bb.l ], [ -135, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

declare void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
end_hunk_1
begin_hunk_2_@mpi_miller_rabin:bb.a
  br i1 %exitcond.not.i, label %mbedtls_mpi_lsb.exit, label %bb.c, !llvm.loop !28

mbedtls_mpi_lsb.exit:                             ; preds = %bb.e, %bb.b, %bb.d
  %.08.i = phi i64 [ %i.v, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ] ; 4 uses
  %i.x = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %6, ptr noundef nonnull %5) ; 2 uses
  %.not33 = icmp eq i32 %i.x, 0
  br i1 %.not33, label %bb.f, label %mbedtls_mpi_fill_random.exit.thread

bb.f:                                             ; preds = %mbedtls_mpi_lsb.exit
  %i.y = load i16, ptr %i.e, align 2, !tbaa !8    ; 2 uses
  %.not.i40 = icmp eq i16 %i.y, 0
  br i1 %.not.i40, label %mbedtls_mpi_shift_r.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %6, align 8, !tbaa !15
  %i.aa = zext i16 %i.y to i64
  call void @mbedtls_mpi_core_shift_r(ptr noundef %i.z, i64 noundef %i.aa, i64 noundef %.08.i) #16
  br label %mbedtls_mpi_shift_r.exit

mbedtls_mpi_shift_r.exit:                         ; preds = %bb.f, %bb.g
  %.not161 = icmp eq i64 %1, 0
  br i1 %.not161, label %mbedtls_mpi_fill_random.exit.thread, label %.critedge.preheader.lr.ph

.critedge.preheader.lr.ph:                        ; preds = %mbedtls_mpi_shift_r.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = icmp ugt i64 %.08.i, 1
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.lr.ph, %mbedtls_mpi_cmp_mpi.exit65.thread
  %.promoted = phi i16 [ 0, %.critedge.preheader.lr.ph ], [ %.promoted176, %mbedtls_mpi_cmp_mpi.exit65.thread ]
  %.019154 = phi i64 [ 0, %.critedge.preheader.lr.ph ], [ %i.gh, %mbedtls_mpi_cmp_mpi.exit65.thread ]
  %.promoted149 = load ptr, ptr %8, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %i.ad = phi ptr [ %.promoted149, %.critedge.preheader ], [ %i.au, %.critedge.backedge ] ; 6 uses
  %i.ae = phi i16 [ %.promoted, %.critedge.preheader ], [ %i.av, %.critedge.backedge ] ; 4 uses
  %.020 = phi i32 [ 0, %.critedge.preheader ], [ %i.bj, %.critedge.backedge ] ; 2 uses
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !8  ; 5 uses
  %i.ag = zext i16 %i.af to i64                   ; 3 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = icmp eq i16 %i.af, 0
  br i1 %i.ai, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.critedge
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %mbedtls_mpi_fill_random.exit.thread111, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = zext i16 %i.ae to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ad, i64 noundef %i.ak) #16
  br label %mbedtls_mpi_fill_random.exit.thread111

bb.j:                                             ; preds = %.critedge
  %i.al = zext i16 %i.ae to i64                   ; 2 uses
  %i.am = icmp eq i16 %i.af, %i.ae
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %mbedtls_mpi_fill_random.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i11.i.i, label %mbedtls_mpi_free.exit12.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = shl nuw nsw i64 %i.al, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ad, i64 noundef %i.an) #16
  br label %mbedtls_mpi_free.exit12.i.i

mbedtls_mpi_free.exit12.i.i:                      ; preds = %bb.m, %bb.l
  %i.ao = icmp ugt i16 %i.af, 10000
  br i1 %i.ao, label %mbedtls_mpi_fill_random.exit.thread.loopexit139, label %bb.n

bb.n:                                             ; preds = %mbedtls_mpi_free.exit12.i.i
  %i.ap = call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.ag, i64 noundef 8) #17 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %mbedtls_mpi_fill_random.exit.thread.loopexit139, label %mbedtls_mpi_fill_random.exit

mbedtls_mpi_fill_random.exit:                     ; preds = %bb.n, %bb.k
  %.pre-phi = phi i64 [ %i.ag, %bb.n ], [ %i.al, %bb.k ]
  %i.ar = phi ptr [ %i.ap, %bb.n ], [ %i.ad, %bb.k ] ; 3 uses
  %i.as = phi i16 [ %i.af, %bb.n ], [ %i.ae, %bb.k ] ; 2 uses
  %i.at = call i32 @mbedtls_mpi_core_fill_random(ptr noundef %i.ar, i64 noundef %.pre-phi, i64 noundef %i.ah, ptr noundef %2, ptr noundef %3) #16 ; 2 uses
  %.not34 = icmp eq i32 %i.at, 0
  br i1 %.not34, label %mbedtls_mpi_fill_random.exit.thread111, label %mbedtls_mpi_fill_random.exit.thread.loopexit139

mbedtls_mpi_fill_random.exit.thread111:           ; preds = %bb.i, %bb.h, %mbedtls_mpi_fill_random.exit
  %i.au = phi ptr [ %i.ar, %mbedtls_mpi_fill_random.exit ], [ null, %bb.h ], [ null, %bb.i ] ; 9 uses
  %i.av = phi i16 [ %i.as, %mbedtls_mpi_fill_random.exit ], [ 0, %bb.h ], [ 0, %bb.i ] ; 5 uses
  %i.aw = zext i16 %i.av to i64                   ; 4 uses
  %i.ax = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.au, i64 noundef %i.aw) #16
  %i.ay = load ptr, ptr %5, align 8, !tbaa !15    ; 7 uses
  %i.az = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.ay, i64 noundef %i.p) #16 ; 2 uses
  %i.ba = icmp ugt i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mbedtls_mpi_fill_random.exit.thread111
  %i.bb = add nsw i64 %i.aw, -1                   ; 2 uses
  %i.bc = shl nsw i64 %i.bb, 6
  %i.bd = xor i64 %i.bc, -1
  %i.be = add i64 %i.az, %i.bd
  %notmask = shl nsw i64 -1, %i.be
  %i.bf = xor i64 %notmask, -1
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bb ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !19
  %i.bi = and i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %mbedtls_mpi_fill_random.exit.thread111
  %i.bj = add nuw nsw i32 %.020, 1
  %exitcond = icmp eq i32 %.020, 31
  br i1 %exitcond, label %mbedtls_mpi_fill_random.exit.thread.loopexit139, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not44.i = icmp eq i16 %i.av, 0                ; 3 uses
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %bb.q, %bb.r
  %.03545.i = phi i64 [ %i.bn, %bb.r ], [ %i.aw, %bb.q ] ; 3 uses
  %i.bk = getelementptr [8 x i8], ptr %i.au, i64 %.03545.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !19
  %.not39.i = icmp eq i64 %i.bm, 0
  br i1 %.not39.i, label %bb.r, label %._crit_edge.i

bb.r:                                             ; preds = %.lr.ph.i42
  %i.bn = add nsw i64 %.03545.i, -1               ; 2 uses
  %.not.i43 = icmp eq i64 %i.bn, 0
  br i1 %.not.i43, label %._crit_edge.i, label %.lr.ph.i42, !llvm.loop !35

._crit_edge.i:                                    ; preds = %bb.r, %.lr.ph.i42, %bb.q
  %.035.lcssa.i = phi i64 [ 0, %bb.q ], [ 0, %bb.r ], [ %.03545.i, %.lr.ph.i42 ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %._crit_edge.i, %bb.s
  %.049.i = phi i64 [ %i.br, %bb.s ], [ %i.p, %._crit_edge.i ] ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !19
  %.not41.i = icmp eq i64 %i.bq, 0
  br i1 %.not41.i, label %bb.s, label %._crit_edge52.i

bb.s:                                             ; preds = %.lr.ph51.i
  %i.br = add nsw i64 %.049.i, -1                 ; 2 uses
  %.not40.i = icmp eq i64 %i.br, 0
  br i1 %.not40.i, label %._crit_edge52.i, label %.lr.ph51.i, !llvm.loop !41

._crit_edge52.i:                                  ; preds = %bb.s, %.lr.ph51.i, %._crit_edge.i
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge.i ], [ 0, %bb.s ], [ %.049.i, %.lr.ph51.i ] ; 3 uses
  %i.bs = or i64 %.0.lcssa.i, %.035.lcssa.i
  %or.cond.i = icmp eq i64 %i.bs, 0
  %i.bt = icmp ugt i64 %.035.lcssa.i, %.0.lcssa.i
  %or.cond241 = or i1 %or.cond.i, %i.bt
  br i1 %or.cond241, label %.critedge.backedge, label %bb.t

bb.t:                                             ; preds = %._crit_edge52.i
  %i.bu = icmp ugt i64 %.0.lcssa.i, %.035.lcssa.i
  %i.bv = load i16, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  br i1 %i.bu, label %mbedtls_mpi_cmp_mpi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = icmp slt i16 %i.bv, 0
  %.not42.i256 = icmp eq i64 %.035.lcssa.i, 0
  %or.cond266 = or i1 %i.bw, %.not42.i256
  br i1 %or.cond266, label %.critedge.backedge, label %.lr.ph258

.preheader.i:                                     ; preds = %bb.v
  %.not42.i = icmp eq i64 %i.bx, 0
  br i1 %.not42.i, label %.critedge.backedge, label %.lr.ph258, !llvm.loop !42

.lr.ph258:                                        ; preds = %bb.u, %.preheader.i
  %.1.i257 = phi i64 [ %i.bx, %.preheader.i ], [ %.035.lcssa.i, %bb.u ]
  %i.bx = add nsw i64 %.1.i257, -1                ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bx
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !19 ; 2 uses
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %.critedge.backedge, label %bb.v

bb.v:                                             ; preds = %.lr.ph258
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.preheader.i, !llvm.loop !42

mbedtls_mpi_cmp_mpi.exit:                         ; preds = %bb.t
  %i.ce = icmp slt i16 %i.bv, 1
  %brmerge = or i1 %i.ce, %.not44.i
  br i1 %brmerge, label %.critedge.backedge, label %.lr.ph.i.i.preheader

mbedtls_mpi_cmp_mpi.exit.thread:                  ; preds = %bb.v
  br i1 %.not44.i, label %.critedge.backedge, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %mbedtls_mpi_cmp_mpi.exit, %mbedtls_mpi_cmp_mpi.exit.thread
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.w
  %.03545.i.i = phi i64 [ %i.ci, %bb.w ], [ %i.aw, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.cf = getelementptr [8 x i8], ptr %i.au, i64 %.03545.i.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !19
  %.not39.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not39.i.i, label %bb.w, label %.lr.ph51.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.ci = add nsw i64 %.03545.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i, label %.critedge.backedge, label %.lr.ph.i.i, !llvm.loop !35

.lr.ph51.i.i:                                     ; preds = %.lr.ph.i.i
  %i.cj = icmp ugt i64 %.03545.i.i, 1
  br i1 %i.cj, label %mbedtls_mpi_cmp_int.exit, label %10

10:                                               ; preds = %.lr.ph51.i.i
  %11 = icmp eq i64 %.03545.i.i, 0
  br i1 %11, label %.critedge.backedge, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %10
  %i.ck = load i64, ptr %i.au, align 8, !tbaa !19
  %i.cl = icmp ult i64 %i.ck, 2
  br i1 %i.cl, label %.critedge.backedge, label %mbedtls_mpi_cmp_int.exit

.critedge.backedge:                               ; preds = %.preheader.i, %.lr.ph258, %bb.w, %.preheader.i.i.preheader, %mbedtls_mpi_cmp_mpi.exit, %10, %mbedtls_mpi_cmp_mpi.exit.thread, %._crit_edge52.i, %bb.u
  br label %.critedge, !llvm.loop !59

mbedtls_mpi_cmp_int.exit:                         ; preds = %.lr.ph51.i.i, %.preheader.i.i.preheader
  store i16 %i.av, ptr %i.i, align 2
  store ptr %i.au, ptr %8, align 8
  store i16 1, ptr %i.h, align 8
  %i.cm = call fastcc i32 @mbedtls_mpi_exp_mod_optionally_safe(ptr noundef nonnull %8, ptr noundef nonnull readonly %8, ptr noundef nonnull readonly %6, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %9) ; 2 uses
  %.not35 = icmp eq i32 %i.cm, 0
  br i1 %.not35, label %bb.x, label %mbedtls_mpi_fill_random.exit.thread

bb.x:                                             ; preds = %mbedtls_mpi_cmp_int.exit
  %i.cn = load i16, ptr %i.i, align 2, !tbaa !8   ; 9 uses
  %.not44.i44 = icmp eq i16 %i.cn, 0
  br i1 %.not44.i44, label %._crit_edge.i48, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.x
  %i.co = zext i16 %i.cn to i64
  %i.cp = load ptr, ptr %8, align 8, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i45
  %.03545.i46 = phi i64 [ %i.co, %.lr.ph.i45 ], [ %i.ct, %bb.z ] ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %.03545.i46
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !19
  %.not39.i47 = icmp eq i64 %i.cs, 0
  br i1 %.not39.i47, label %bb.z, label %._crit_edge.i48

bb.z:                                             ; preds = %bb.y
  %i.ct = add nsw i64 %.03545.i46, -1             ; 2 uses
  %.not.i64 = icmp eq i64 %i.ct, 0
  br i1 %.not.i64, label %._crit_edge.i48, label %bb.y, !llvm.loop !35

._crit_edge.i48:                                  ; preds = %bb.z, %bb.y, %bb.x
  %.035.lcssa.i49 = phi i64 [ 0, %bb.x ], [ 0, %bb.z ], [ %.03545.i46, %bb.y ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i54, label %.lr.ph51.i51

.lr.ph51.i51:                                     ; preds = %._crit_edge.i48, %bb.aa
  %.049.i52 = phi i64 [ %i.cx, %bb.aa ], [ %i.p, %._crit_edge.i48 ] ; 3 uses
  %i.cu = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i52
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !19
  %.not41.i53 = icmp eq i64 %i.cw, 0
  br i1 %.not41.i53, label %bb.aa, label %._crit_edge52.i54

bb.aa:                                            ; preds = %.lr.ph51.i51
  %i.cx = add nsw i64 %.049.i52, -1               ; 2 uses
  %.not40.i63 = icmp eq i64 %i.cx, 0
  br i1 %.not40.i63, label %._crit_edge52.i54, label %.lr.ph51.i51, !llvm.loop !41

._crit_edge52.i54:                                ; preds = %bb.aa, %.lr.ph51.i51, %._crit_edge.i48
  %.0.lcssa.i55 = phi i64 [ 0, %._crit_edge.i48 ], [ 0, %bb.aa ], [ %.049.i52, %.lr.ph51.i51 ] ; 3 uses
  %i.cy = or i64 %.0.lcssa.i55, %.035.lcssa.i49
  %or.cond.i56 = icmp eq i64 %i.cy, 0
  br i1 %or.cond.i56, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge52.i54
  %i.cz = icmp ugt i64 %.035.lcssa.i49, %.0.lcssa.i55
  br i1 %i.cz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.da = load i16, ptr %i.h, align 8, !tbaa !13
  %i.db = sext i16 %i.da to i32
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.ad:                                            ; preds = %bb.ab
  %i.dc = icmp ugt i64 %.0.lcssa.i55, %.035.lcssa.i49
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load i16, ptr %i.b, align 8, !tbaa !13
  %i.de = sext i16 %i.dd to i32
  %i.df = sub nsw i32 0, %i.de
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.af:                                            ; preds = %bb.ad
  %i.dg = load i16, ptr %i.h, align 8, !tbaa !13  ; 4 uses
  %i.dh = icmp sgt i16 %i.dg, 0
  %i.di = load i16, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  br i1 %i.dh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dj = icmp slt i16 %i.di, 0
  br i1 %i.dj, label %mbedtls_mpi_cmp_mpi.exit65.thread120, label %.preheader.preheader.i58

bb.ah:                                            ; preds = %bb.af
  %i.dk = icmp sgt i16 %i.di, 0
  %i.dl = icmp ne i16 %i.dg, 0
  %or.cond43.i57 = and i1 %i.dl, %i.dk
  br i1 %or.cond43.i57, label %mbedtls_mpi_cmp_mpi.exit65.thread120, label %.preheader.preheader.i58

.preheader.preheader.i58:                         ; preds = %bb.ah, %bb.ag
  %i.dm = load ptr, ptr %8, align 8
  %.not42.i61259 = icmp eq i64 %.035.lcssa.i49, 0
  br i1 %.not42.i61259, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.lr.ph261

.preheader.i59:                                   ; preds = %bb.aj
  %.not42.i61 = icmp eq i64 %i.dn, 0
  br i1 %.not42.i61, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.lr.ph261, !llvm.loop !42

.lr.ph261:                                        ; preds = %.preheader.preheader.i58, %.preheader.i59
  %.1.i60260 = phi i64 [ %i.dn, %.preheader.i59 ], [ %.035.lcssa.i49, %.preheader.preheader.i58 ]
  %i.dn = add nsw i64 %.1.i60260, -1              ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !19 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dn
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !19 ; 2 uses
  %i.ds = icmp ugt i64 %i.dp, %i.dr
  br i1 %i.ds, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph261
  %i.dt = sext i16 %i.dg to i32
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.aj:                                            ; preds = %.lr.ph261
  %i.du = icmp ult i64 %i.dp, %i.dr
  br i1 %i.du, label %bb.ak, label %.preheader.i59, !llvm.loop !42

bb.ak:                                            ; preds = %bb.aj
  %i.dv = sext i16 %i.dg to i32
  %i.dw = sub nsw i32 0, %i.dv
  br label %mbedtls_mpi_cmp_mpi.exit65

mbedtls_mpi_cmp_mpi.exit65:                       ; preds = %bb.ac, %bb.ae, %bb.ai, %bb.ak
  %.036.i62 = phi i32 [ %i.dt, %bb.ai ], [ %i.db, %bb.ac ], [ %i.df, %bb.ae ], [ %i.dw, %bb.ak ]
  %i.dx = icmp eq i32 %.036.i62, 0
  br i1 %i.dx, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %mbedtls_mpi_cmp_mpi.exit65.thread120

mbedtls_mpi_cmp_mpi.exit65.thread120:             ; preds = %bb.ag, %bb.ah, %mbedtls_mpi_cmp_mpi.exit65
  %i.dy = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %8, i64 noundef 1)
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.preheader

.preheader:                                       ; preds = %mbedtls_mpi_cmp_mpi.exit65.thread120
  br i1 %i.ac, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader
  %i.ea = load i16, ptr %i.b, align 8             ; 3 uses
  %i.eb = icmp sgt i16 %i.ea, 0
  %i.ec = icmp slt i16 %i.ea, 0
  %i.ed = sext i16 %i.ea to i32
  %i.ee = sub nsw i32 0, %i.ed
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %i.ef = phi i16 [ %i.cn, %.lr.ph ], [ %i.fl, %.backedge.backedge ] ; 6 uses
  %.0153 = phi i64 [ 1, %.lr.ph ], [ %.0153.be, %.backedge.backedge ] ; 2 uses
  %.not44.i66 = icmp eq i16 %i.ef, 0
  br i1 %.not44.i66, label %._crit_edge.i70, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.backedge
  %i.eg = zext i16 %i.ef to i64
  %i.eh = load ptr, ptr %8, align 8, !tbaa !15
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i67
  %.03545.i68 = phi i64 [ %i.eg, %.lr.ph.i67 ], [ %i.el, %bb.am ] ; 3 uses
  %i.ei = getelementptr [8 x i8], ptr %i.eh, i64 %.03545.i68
  %i.ej = getelementptr i8, ptr %i.ei, i64 -8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !19
  %.not39.i69 = icmp eq i64 %i.ek, 0
  br i1 %.not39.i69, label %bb.am, label %._crit_edge.i70

bb.am:                                            ; preds = %bb.al
  %i.el = add nsw i64 %.03545.i68, -1             ; 2 uses
  %.not.i86 = icmp eq i64 %i.el, 0
  br i1 %.not.i86, label %._crit_edge.i70, label %bb.al, !llvm.loop !35

._crit_edge.i70:                                  ; preds = %bb.am, %bb.al, %.backedge
  %.035.lcssa.i71 = phi i64 [ 0, %.backedge ], [ 0, %bb.am ], [ %.03545.i68, %bb.al ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i76, label %.lr.ph51.i73

.lr.ph51.i73:                                     ; preds = %._crit_edge.i70, %bb.an
  %.049.i74 = phi i64 [ %i.ep, %bb.an ], [ %i.p, %._crit_edge.i70 ] ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i74
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !19
  %.not41.i75 = icmp eq i64 %i.eo, 0
  br i1 %.not41.i75, label %bb.an, label %._crit_edge52.i76

bb.an:                                            ; preds = %.lr.ph51.i73
  %i.ep = add nsw i64 %.049.i74, -1               ; 2 uses
  %.not40.i85 = icmp eq i64 %i.ep, 0
  br i1 %.not40.i85, label %._crit_edge52.i76, label %.lr.ph51.i73, !llvm.loop !41

._crit_edge52.i76:                                ; preds = %bb.an, %.lr.ph51.i73, %._crit_edge.i70
  %.0.lcssa.i77 = phi i64 [ 0, %._crit_edge.i70 ], [ 0, %bb.an ], [ %.049.i74, %.lr.ph51.i73 ] ; 3 uses
  %i.eq = or i64 %.0.lcssa.i77, %.035.lcssa.i71
  %or.cond.i78 = icmp eq i64 %i.eq, 0
  br i1 %or.cond.i78, label %.critedge2, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge52.i76
  %i.er = icmp ugt i64 %.035.lcssa.i71, %.0.lcssa.i77
  br i1 %i.er, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.es = load i16, ptr %i.h, align 8, !tbaa !13
  %i.et = sext i16 %i.es to i32
  br label %mbedtls_mpi_cmp_mpi.exit87

end_hunk_2
