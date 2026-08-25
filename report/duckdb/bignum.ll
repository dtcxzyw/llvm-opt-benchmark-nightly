Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/bignum?download=true
inline.NumInlined: 162
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mbedtls_mpi_cmp_abs:bb.a
  br i1 %.not3147, label %.loopexit, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.preheader.preheader
  %i.s = load ptr, ptr %0, align 8, !tbaa !15
  %i.t = load ptr, ptr %1, align 8, !tbaa !15
  br label %.lr.ph49

.preheader:                                       ; preds = %bb.g
  %.not31 = icmp eq i64 %i.u, 0
  br i1 %.not31, label %.loopexit, label %.lr.ph49, !llvm.loop !31

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.preheader
  %.148 = phi i64 [ %i.u, %.preheader ], [ %.024.lcssa, %.lr.ph49.preheader ]
  %i.u = add nsw i64 %.148, -1                    ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13   ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13   ; 2 uses
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph49
  %i.aa = icmp ult i64 %i.w, %i.y
  br i1 %i.aa, label %..loopexit.loopexit_crit_edge50, label %.preheader, !llvm.loop !31

..loopexit.loopexit_crit_edge50:                  ; preds = %bb.g
  br label %.loopexit, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph49, %.preheader, %.preheader.preheader, %..loopexit.loopexit_crit_edge50, %bb.f, %._crit_edge40
  %.025 = phi i32 [ -1, %bb.f ], [ 1, %._crit_edge40 ], [ -1, %..loopexit.loopexit_crit_edge50 ], [ 0, %.preheader.preheader ], [ 0, %.preheader ], [ 1, %.lr.ph49 ]
  ret i32 %.025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -32768, 32769) i32 @mbedtls_mpi_cmp_mpi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !7    ; 2 uses
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %.not39 = icmp eq i64 %i.g, 0
  br i1 %.not39, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %.03545, -1                  ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.035.lcssa = phi i64 [ 0, %bb.a ], [ %.03545, %bb.b ], [ 0, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !7    ; 2 uses
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
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %.not41 = icmp eq i64 %i.o, 0
  br i1 %.not41, label %bb.e, label %._crit_edge52

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i64 %.049, -1                    ; 2 uses
  %.not40 = icmp eq i64 %i.p, 0
  br i1 %.not40, label %._crit_edge52, label %bb.d, !llvm.loop !32

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
  %i.t = load i16, ptr %i.s, align 8, !tbaa !12
  %i.u = sext i16 %i.t to i32
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.v = icmp ugt i64 %.0.lcssa, %.035.lcssa
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i16, ptr %i.w, align 8, !tbaa !12
  %i.y = sext i16 %i.x to i32
  %i.z = sub nsw i32 0, %i.y
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !12 ; 4 uses
  %i.ac = icmp sgt i16 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !12 ; 2 uses
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
  br i1 %.not42, label %.loopexit, label %.lr.ph64, !llvm.loop !33

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %.preheader
  %.163 = phi i64 [ %i.ak, %.preheader ], [ %.035.lcssa, %.lr.ph64.preheader ]
  %i.ak = add nsw i64 %.163, -1                   ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !13 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph64
  %i.aq = sext i16 %i.ab to i32
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph64
  %i.ar = icmp ult i64 %i.am, %i.ao
  br i1 %i.ar, label %bb.o, label %.preheader, !llvm.loop !33

bb.o:                                             ; preds = %bb.n
  %i.as = sext i16 %i.ab to i32
  %i.at = sub nsw i32 0, %i.as
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %bb.l, %bb.k, %._crit_edge52, %bb.o, %bb.m, %bb.i, %bb.g
  %.036 = phi i32 [ -1, %bb.l ], [ %i.u, %bb.g ], [ %i.z, %bb.i ], [ 0, %._crit_edge52 ], [ 1, %bb.k ], [ %i.aq, %bb.m ], [ %i.at, %bb.o ], [ 0, %.preheader.preheader ], [ 0, %.preheader ]
  ret i32 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -32768, 32769) i32 @mbedtls_mpi_cmp_int(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.0.i = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %1, i1 false) ; 2 uses
  %i.a = ashr i64 %1, 62                          ; 3 uses
  %i.b = trunc nsw i64 %i.a to i32
  %i.c = or i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !7    ; 2 uses
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
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %.not39.i = icmp eq i64 %i.j, 0
  br i1 %.not39.i, label %bb.c, label %.lr.ph51.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %.03545.i, -1                ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.lr.ph51.i, label %bb.b, !llvm.loop !27

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
  %i.o = load i16, ptr %i.n, align 8, !tbaa !12
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
  %i.t = load i16, ptr %i.s, align 8, !tbaa !12   ; 4 uses
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, %.0.i
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = sext i16 %i.t to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = icmp ult i64 %i.aa, %.0.i
  br i1 %i.ad, label %bb.n, label %mbedtls_mpi_cmp_mpi.exit, !llvm.loop !33

bb.n:                                             ; preds = %bb.m
  %i.ae = sext i16 %i.t to i32
  %i.af = sub nsw i32 0, %i.ae
  br label %mbedtls_mpi_cmp_mpi.exit

mbedtls_mpi_cmp_mpi.exit:                         ; preds = %.preheader.preheader.i, %bb.m, %.lr.ph51.i, %bb.e, %bb.g, %bb.i, %bb.j, %bb.l, %bb.n
  %.036.i = phi i32 [ -1, %bb.j ], [ %i.p, %bb.e ], [ %i.r, %bb.g ], [ 0, %.lr.ph51.i ], [ 1, %bb.i ], [ %i.ac, %bb.l ], [ %i.af, %bb.n ], [ 0, %bb.m ], [ 0, %.preheader.preheader.i ]
  ret i32 %.036.i
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -16, 1) i32 @mbedtls_mpi_add_abs(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
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
  store i16 1, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select62, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !7    ; 2 uses
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
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %.not57 = icmp eq i64 %i.j, 0
  br i1 %.not57, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i64 %.04174, -1                  ; 2 uses
  %cond = icmp eq i64 %i.k, 0
  br i1 %cond, label %mbedtls_mpi_grow.exit, label %bb.d, !llvm.loop !34

bb.f:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %.04174, 10000
  br i1 %i.l, label %mbedtls_mpi_grow.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !7
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = icmp samesign ugt i64 %.04174, %i.o
  br i1 %i.p, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noalias ptr @calloc(i64 noundef %.04174, i64 noundef 8) #13 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %mbedtls_mpi_grow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.s, i64 %i.t, i1 false)
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.s, i64 noundef %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = trunc nuw nsw i64 %.04174 to i16
  store i16 %i.u, ptr %i.m, align 2, !tbaa !7
  store ptr %i.q, ptr %0, align 8, !tbaa !15
  %.pre86 = load ptr, ptr %spec.select62, align 8, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.v = phi ptr [ %i.g, %._crit_edge ], [ %.pre86, %bb.k ]
  %i.w = phi ptr [ %.pre, %._crit_edge ], [ %i.q, %bb.k ] ; 3 uses
  %i.x = tail call noundef i64 @_Z20mbedtls_mpi_core_addPmPKmS1_m(ptr noundef %i.w, ptr noundef %i.w, ptr noundef %i.v, i64 noundef %.04174) ; 3 uses
  %.not5975 = icmp eq i64 %i.x, 0
  br i1 %.not5975, label %mbedtls_mpi_grow.exit, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.l
  %.pre87 = load i16, ptr %i.m, align 2, !tbaa !7 ; 3 uses
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
  %i.aa = tail call noalias ptr @calloc(i64 noundef %.pre91.peel, i64 noundef 8) #13 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %mbedtls_mpi_grow.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %.not.i64.peel = icmp eq ptr %i.ac, null
  br i1 %.not.i64.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = shl nuw nsw i64 %i.y, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ac, i64 %i.ad, i1 false)
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ac, i64 noundef %i.ad)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = trunc nuw nsw i64 %.pre91.peel to i16   ; 2 uses
  store i16 %i.ae, ptr %i.m, align 2, !tbaa !7
  store ptr %i.aa, ptr %0, align 8, !tbaa !15
  br label %._crit_edge90.peel

._crit_edge90.peel:                               ; preds = %._crit_edge88.peel, %bb.r, %.lr.ph79
  %i.af = phi i16 [ %.pre87, %.lr.ph79 ], [ %i.ae, %bb.r ], [ %.pre87, %._crit_edge88.peel ]
  %.pn = phi ptr [ %i.w, %.lr.ph79 ], [ %i.aa, %bb.r ], [ %.pre89.peel, %._crit_edge88.peel ]
  %.1.peel = getelementptr inbounds nuw [8 x i8], ptr %.pn, i64 %.04174 ; 3 uses
  %i.ag = load i64, ptr %.1.peel, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@mbedtls_mpi_inv_mod:bb.a
  br label %bb.w

.preheader121:                                    ; preds = %mbedtls_mpi_shift_r.exit81, %.preheader125
  %i.bn = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !13
  %i.bp = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph133, label %._crit_edge

.lr.ph133:                                        ; preds = %.preheader121
  %i.br = load i16, ptr %i.ad, align 2, !tbaa !7  ; 2 uses
  %.not.i82 = icmp eq i16 %i.br, 0
  %i.bs = zext i16 %i.br to i64
  br label %bb.ae

bb.w:                                             ; preds = %.lr.ph, %mbedtls_mpi_shift_r.exit81
  br i1 %.not.i, label %mbedtls_mpi_shift_r.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef nonnull %i.bh, i64 noundef %i.bm, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit

mbedtls_mpi_shift_r.exit:                         ; preds = %bb.w, %bb.x
  %i.bt = load ptr, ptr %6, align 8, !tbaa !15
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !13
  %i.bv = and i64 %i.bu, 1
  %.not62 = icmp eq i64 %i.bv, 0
  br i1 %.not62, label %bb.y, label %bb.z

bb.y:                                             ; preds = %mbedtls_mpi_shift_r.exit
  %i.bw = load ptr, ptr %7, align 8, !tbaa !15
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !13
  %i.by = and i64 %i.bx, 1
  %.not63 = icmp eq i64 %i.by, 0
  br i1 %.not63, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %mbedtls_mpi_shift_r.exit, %bb.y
  %i.bz = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %6, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %8, i32 noundef 1) ; 2 uses
  %.not64 = icmp eq i32 %i.bz, 0
  br i1 %.not64, label %bb.aa, label %mbedtls_mpi_cmp_int.exit77.thread

bb.aa:                                            ; preds = %bb.z
  %i.ca = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %7, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly %4, i32 noundef -1) ; 2 uses
  %.not65 = icmp eq i32 %i.ca, 0
  br i1 %.not65, label %bb.ab, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %i.cb = load i16, ptr %i.v, align 2, !tbaa !7   ; 2 uses
  %.not.i78 = icmp eq i16 %i.cb, 0
  br i1 %.not.i78, label %mbedtls_mpi_shift_r.exit79, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load ptr, ptr %6, align 8, !tbaa !15
  %i.cd = zext i16 %i.cb to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.cc, i64 noundef %i.cd, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit79

mbedtls_mpi_shift_r.exit79:                       ; preds = %bb.ab, %bb.ac
  %i.ce = load i16, ptr %i.x, align 2, !tbaa !7   ; 2 uses
  %.not.i80 = icmp eq i16 %i.ce, 0
  br i1 %.not.i80, label %mbedtls_mpi_shift_r.exit81, label %bb.ad

bb.ad:                                            ; preds = %mbedtls_mpi_shift_r.exit79
  %i.cf = load ptr, ptr %7, align 8, !tbaa !15
  %i.cg = zext i16 %i.ce to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.cf, i64 noundef %i.cg, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit81

mbedtls_mpi_shift_r.exit81:                       ; preds = %mbedtls_mpi_shift_r.exit79, %bb.ad
  %i.ch = load i64, ptr %i.bh, align 8, !tbaa !13
  %i.ci = and i64 %i.ch, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %.preheader121

bb.ae:                                            ; preds = %.lr.ph133, %mbedtls_mpi_shift_r.exit87
  br i1 %.not.i82, label %mbedtls_mpi_shift_r.exit83, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef nonnull %i.bn, i64 noundef %i.bs, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit83

mbedtls_mpi_shift_r.exit83:                       ; preds = %bb.ae, %bb.af
  %i.ck = load ptr, ptr %10, align 8, !tbaa !15
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !13
  %i.cm = and i64 %i.cl, 1
  %.not58 = icmp eq i64 %i.cm, 0
  br i1 %.not58, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %mbedtls_mpi_shift_r.exit83
  %i.cn = load ptr, ptr %11, align 8, !tbaa !15
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !13
  %i.cp = and i64 %i.co, 1
  %.not59 = icmp eq i64 %i.cp, 0
  br i1 %.not59, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %mbedtls_mpi_shift_r.exit83, %bb.ag
  %i.cq = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %8, i32 noundef 1) ; 2 uses
  %.not60 = icmp eq i32 %i.cq, 0
  br i1 %.not60, label %bb.ai, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cr = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %11, ptr noundef nonnull readonly %11, ptr noundef nonnull readonly %4, i32 noundef -1) ; 2 uses
  %.not61 = icmp eq i32 %i.cr, 0
  br i1 %.not61, label %bb.aj, label %mbedtls_mpi_cmp_int.exit77.thread

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %i.cs = load i16, ptr %i.af, align 2, !tbaa !7  ; 2 uses
  %.not.i84 = icmp eq i16 %i.cs, 0
  br i1 %.not.i84, label %mbedtls_mpi_shift_r.exit85, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = load ptr, ptr %10, align 8, !tbaa !15
  %i.cu = zext i16 %i.cs to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.ct, i64 noundef %i.cu, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit85

mbedtls_mpi_shift_r.exit85:                       ; preds = %bb.aj, %bb.ak
  %i.cv = load i16, ptr %i.ah, align 2, !tbaa !7  ; 2 uses
  %.not.i86 = icmp eq i16 %i.cv, 0
  br i1 %.not.i86, label %mbedtls_mpi_shift_r.exit87, label %bb.al

bb.al:                                            ; preds = %mbedtls_mpi_shift_r.exit85
  %i.cw = load ptr, ptr %11, align 8, !tbaa !15
  %i.cx = zext i16 %i.cv to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.cw, i64 noundef %i.cx, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit87

mbedtls_mpi_shift_r.exit87:                       ; preds = %mbedtls_mpi_shift_r.exit85, %bb.al
  %i.cy = load i64, ptr %i.bn, align 8, !tbaa !13
  %i.cz = and i64 %i.cy, 1
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.ae, label %._crit_edge

._crit_edge:                                      ; preds = %mbedtls_mpi_shift_r.exit87, %.preheader121
  %i.db = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %5, ptr noundef nonnull %9)
  %i.dc = icmp sgt i32 %i.db, -1
  br i1 %i.dc, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %._crit_edge
  %i.dd = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %5, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %9, i32 noundef -1) ; 2 uses
  %.not52 = icmp eq i32 %i.dd, 0
  %.pre = load ptr, ptr %5, align 8, !tbaa !15
  br i1 %.not52, label %bb.an, label %mbedtls_mpi_cmp_int.exit77.thread

bb.an:                                            ; preds = %bb.am
  %i.de = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %6, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %10, i32 noundef -1) ; 2 uses
  %.not53 = icmp eq i32 %i.de, 0
  br i1 %.not53, label %bb.ao, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ao:                                            ; preds = %bb.an
  %i.df = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %7, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly %11, i32 noundef -1) ; 2 uses
  %.not54 = icmp eq i32 %i.df, 0
  br i1 %.not54, label %bb.as, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ap:                                            ; preds = %._crit_edge
  %i.dg = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %9, ptr noundef nonnull readonly %9, ptr noundef nonnull readonly %5, i32 noundef -1) ; 2 uses
  %.not49 = icmp eq i32 %i.dg, 0
  br i1 %.not49, label %bb.aq, label %mbedtls_mpi_cmp_int.exit77.thread

bb.aq:                                            ; preds = %bb.ap
  %i.dh = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %6, i32 noundef -1) ; 2 uses
  %.not50 = icmp eq i32 %i.dh, 0
  br i1 %.not50, label %bb.ar, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ar:                                            ; preds = %bb.aq
  %i.di = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %11, ptr noundef nonnull readonly %11, ptr noundef nonnull readonly %7, i32 noundef -1) ; 2 uses
  %.not51 = icmp eq i32 %i.di, 0
  br i1 %.not51, label %bb.as, label %mbedtls_mpi_cmp_int.exit77.thread

bb.as:                                            ; preds = %bb.ao, %bb.ar
  %i.dj = phi ptr [ %.pre, %bb.ao ], [ %i.bh, %bb.ar ]
  %i.dk = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %5, i64 noundef 0)
  %.not55 = icmp eq i32 %i.dk, 0
  br i1 %.not55, label %.preheader119, label %.preheader125, !llvm.loop !49

.preheader119:                                    ; preds = %bb.as, %bb.at
  %i.dl = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %10, i64 noundef 0)
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.at, label %.preheader

bb.at:                                            ; preds = %.preheader119
  %i.dn = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %2, i32 noundef 1) ; 2 uses
  %.not57 = icmp eq i32 %i.dn, 0
  br i1 %.not57, label %.preheader119, label %mbedtls_mpi_cmp_int.exit77.thread, !llvm.loop !50

.preheader:                                       ; preds = %.preheader119, %bb.au
  %i.do = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %10, ptr noundef nonnull %2)
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.preheader
  %i.dq = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %2, i32 noundef -1) ; 2 uses
  %.not56 = icmp eq i32 %i.dq, 0
  br i1 %.not56, label %.preheader, label %mbedtls_mpi_cmp_int.exit77.thread, !llvm.loop !51

bb.av:                                            ; preds = %.preheader
  %i.dr = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef nonnull %10)
  br label %mbedtls_mpi_cmp_int.exit77.thread

mbedtls_mpi_cmp_int.exit77.thread:                ; preds = %bb.j, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.aa, %bb.z, %bb.ai, %bb.ah, %bb.at, %bb.au, %bb.l, %bb.h, %mbedtls_mpi_cmp_int.exit77, %bb.av, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %mbedtls_mpi_cmp_int.exit77.thread115, %bb.g
  %.0 = phi i32 [ %i.ai, %bb.g ], [ %i.bz, %bb.z ], [ %i.az, %mbedtls_mpi_cmp_int.exit77.thread115 ], [ %i.ba, %bb.p ], [ %i.bb, %bb.q ], [ %i.bc, %bb.r ], [ %i.bd, %bb.s ], [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bg, %bb.v ], [ -14, %bb.l ], [ %i.dq, %bb.au ], [ -14, %bb.h ], [ %i.di, %bb.ar ], [ -14, %mbedtls_mpi_cmp_int.exit77 ], [ %i.dr, %bb.av ], [ %i.dn, %bb.at ], [ %i.cq, %bb.ah ], [ %i.cr, %bb.ai ], [ %i.ca, %bb.aa ], [ %i.de, %bb.an ], [ %i.dd, %bb.am ], [ %i.dg, %bb.ap ], [ %i.df, %bb.ao ], [ %i.dh, %bb.aq ], [ -14, %bb.j ] ; 2 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %.not.i88 = icmp eq ptr %i.ds, null
  br i1 %.not.i88, label %mbedtls_mpi_free.exit, label %bb.aw

bb.aw:                                            ; preds = %mbedtls_mpi_cmp_int.exit77.thread
  %i.dt = load i16, ptr %i.r, align 2, !tbaa !7
  %i.du = zext i16 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ds, i64 noundef %i.dv)
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_cmp_int.exit77.thread, %bb.aw
  %i.dw = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %.not.i89 = icmp eq ptr %i.dw, null
  br i1 %.not.i89, label %mbedtls_mpi_free.exit90, label %bb.ax

bb.ax:                                            ; preds = %mbedtls_mpi_free.exit
  %i.dx = load i16, ptr %i.t, align 2, !tbaa !7
  %i.dy = zext i16 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.dw, i64 noundef %i.dz)
  br label %mbedtls_mpi_free.exit90

mbedtls_mpi_free.exit90:                          ; preds = %mbedtls_mpi_free.exit, %bb.ax
  %i.ea = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %.not.i91 = icmp eq ptr %i.ea, null
  br i1 %.not.i91, label %mbedtls_mpi_free.exit92, label %bb.ay

bb.ay:                                            ; preds = %mbedtls_mpi_free.exit90
  %i.eb = load i16, ptr %i.v, align 2, !tbaa !7
  %i.ec = zext i16 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ea, i64 noundef %i.ed)
  br label %mbedtls_mpi_free.exit92

mbedtls_mpi_free.exit92:                          ; preds = %mbedtls_mpi_free.exit90, %bb.ay
  %i.ee = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %.not.i93 = icmp eq ptr %i.ee, null
  br i1 %.not.i93, label %mbedtls_mpi_free.exit94, label %bb.az

bb.az:                                            ; preds = %mbedtls_mpi_free.exit92
  %i.ef = load i16, ptr %i.x, align 2, !tbaa !7
  %i.eg = zext i16 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ee, i64 noundef %i.eh)
  br label %mbedtls_mpi_free.exit94

mbedtls_mpi_free.exit94:                          ; preds = %mbedtls_mpi_free.exit92, %bb.az
  %i.ei = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %.not.i95 = icmp eq ptr %i.ei, null
  br i1 %.not.i95, label %mbedtls_mpi_free.exit96, label %bb.ba

bb.ba:                                            ; preds = %mbedtls_mpi_free.exit94
  %i.ej = load i16, ptr %i.z, align 2, !tbaa !7
  %i.ek = zext i16 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ei, i64 noundef %i.el)
  br label %mbedtls_mpi_free.exit96

mbedtls_mpi_free.exit96:                          ; preds = %mbedtls_mpi_free.exit94, %bb.ba
  %i.em = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %.not.i97 = icmp eq ptr %i.em, null
  br i1 %.not.i97, label %mbedtls_mpi_free.exit98, label %bb.bb

bb.bb:                                            ; preds = %mbedtls_mpi_free.exit96
  %i.en = load i16, ptr %i.ab, align 2, !tbaa !7
  %i.eo = zext i16 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.em, i64 noundef %i.ep)
  br label %mbedtls_mpi_free.exit98

mbedtls_mpi_free.exit98:                          ; preds = %mbedtls_mpi_free.exit96, %bb.bb
  %i.eq = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %.not.i99 = icmp eq ptr %i.eq, null
  br i1 %.not.i99, label %mbedtls_mpi_free.exit100, label %bb.bc

bb.bc:                                            ; preds = %mbedtls_mpi_free.exit98
  %i.er = load i16, ptr %i.ad, align 2, !tbaa !7
  %i.es = zext i16 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.eq, i64 noundef %i.et)
  br label %mbedtls_mpi_free.exit100

mbedtls_mpi_free.exit100:                         ; preds = %mbedtls_mpi_free.exit98, %bb.bc
  %i.eu = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %.not.i101 = icmp eq ptr %i.eu, null
  br i1 %.not.i101, label %mbedtls_mpi_free.exit102, label %bb.bd

bb.bd:                                            ; preds = %mbedtls_mpi_free.exit100
  %i.ev = load i16, ptr %i.af, align 2, !tbaa !7
  %i.ew = zext i16 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.eu, i64 noundef %i.ex)
  br label %mbedtls_mpi_free.exit102

mbedtls_mpi_free.exit102:                         ; preds = %mbedtls_mpi_free.exit100, %bb.bd
  %i.ey = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %.not.i103 = icmp eq ptr %i.ey, null
  br i1 %.not.i103, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.be

bb.be:                                            ; preds = %mbedtls_mpi_free.exit102
  %i.ez = load i16, ptr %i.ah, align 2, !tbaa !7
  %i.fa = zext i16 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ey, i64 noundef %i.fb)
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.c, %bb.be, %mbedtls_mpi_free.exit102, %.preheader.i.i.preheader, %bb.e, %bb.a, %mbedtls_mpi_cmp_int.exit
  %.012 = phi i32 [ -4, %.preheader.i.i.preheader ], [ -4, %mbedtls_mpi_cmp_int.exit ], [ -4, %bb.e ], [ -4, %bb.a ], [ %.0, %bb.be ], [ %.0, %mbedtls_mpi_free.exit102 ], [ -4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef i64 @_Z38mbedtls_mpi_core_exp_mod_working_limbsmm(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_Z35mbedtls_mpi_core_get_mont_r2_unsafeP11mbedtls_mpiPKS_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i64 @_Z29mbedtls_mpi_core_montmul_initPKm(ptr noundef) local_unnamed_addr #2

declare void @_Z28mbedtls_mpi_core_to_mont_repPmPKmS1_mmS1_S_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z31mbedtls_mpi_core_exp_mod_unsafePmPKmS1_mS1_mS1_S_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z24mbedtls_mpi_core_exp_modPmPKmS1_mS1_mS1_S_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z30mbedtls_mpi_core_from_mont_repPmPKmS1_mmS_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i64 @_Z30mbedtls_mpi_core_check_zero_ctPKmm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !11, i64 10}
!8 = !{!"_ZTS11mbedtls_mpi", !9, i64 0, !11, i64 8, !11, i64 10}
!9 = !{!"p1 long", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!8, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!8, !9, i64 0}
!16 = !{!10, !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = !{!5, !5, i64 0}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
end_hunk_1
