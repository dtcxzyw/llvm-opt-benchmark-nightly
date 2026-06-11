inline.NumInlined: 21
inline.NumDeleted: 2
begin_hunk_0_@mbedtls_asn1_write_raw_buffer:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = trunc i64 %3 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.i, %bb.d ], [ -108, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_asn1_write_mpi(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @mbedtls_mpi_size(ptr noundef %2) #11
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1) ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.c = icmp ult ptr %i.b, %1
  br i1 %i.c, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, %spec.store.select
  br i1 %i.g, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 0, %spec.store.select
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !10
  %i.j = tail call i32 @mbedtls_mpi_write_binary(ptr noundef %2, ptr noundef nonnull %i.i, i64 noundef %spec.store.select) #11 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %mbedtls_asn1_write_len_and_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !15
  %i.m = icmp eq i16 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %.not27 = icmp sgt i8 %i.o, -1
  br i1 %.not27, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.p, %i.e
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 -1 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !10
  store i8 0, ptr %i.s, align 1, !tbaa !13
  %i.t = add i64 %spec.store.select, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.0 = phi i64 [ %i.t, %bb.g ], [ %spec.store.select, %bb.e ], [ %spec.store.select, %bb.d ] ; 5 uses
  %i.u = icmp ugt i64 %.0, 4294967295
  br i1 %i.u, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i64 %.0, 127
  br i1 %i.v, label %.preheader23.i.i, label %.loopexit.i.i

.preheader23.i.i:                                 ; preds = %bb.i, %.preheader23.i.i
  %.025.i.i = phi i64 [ %i.x, %.preheader23.i.i ], [ %.0, %bb.i ]
  %.01724.i.i = phi i32 [ %i.w, %.preheader23.i.i ], [ 1, %bb.i ]
  %i.w = add nuw nsw i32 %.01724.i.i, 1           ; 2 uses
  %i.x = lshr i64 %.025.i.i, 8                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader23.i.i, !llvm.loop !8

.loopexit.i.i:                                    ; preds = %.preheader23.i.i, %bb.i
  %.1.i.i = phi i32 [ 1, %bb.i ], [ %i.w, %.preheader23.i.i ] ; 4 uses
  %i.y = zext nneg i32 %.1.i.i to i64
  %i.z = load ptr, ptr %0, align 8, !tbaa !10
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  %i.ac = icmp slt i64 %i.ab, %i.y
  br i1 %i.ac, label %mbedtls_asn1_write_len_and_tag.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.i.i
  %.018.i.i = phi i64 [ %i.ag, %.preheader.i.i ], [ %.0, %.loopexit.i.i ] ; 2 uses
  %i.ad = trunc i64 %.018.i.i to i8
  %i.ae = load ptr, ptr %0, align 8, !tbaa !10
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1 ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !10
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !13
  %i.ag = lshr i64 %.018.i.i, 8                   ; 2 uses
  %.not22.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not22.i.i, label %bb.j, label %.preheader.i.i, !llvm.loop !14

bb.j:                                             ; preds = %.preheader.i.i
  %i.ah = icmp samesign ugt i32 %.1.i.i, 1
  br i1 %i.ah, label %bb.k, label %mbedtls_asn1_write_len.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ai = trunc i32 %.1.i.i to i8
  %i.aj = add i8 %i.ai, 127
  %i.ak = load ptr, ptr %0, align 8, !tbaa !10
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -1 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !10
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i

mbedtls_asn1_write_len.exit.i:                    ; preds = %bb.k, %bb.j
  %i.am = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.l

bb.l:                                             ; preds = %mbedtls_asn1_write_len.exit.i
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -1 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !10
  store i8 2, ptr %i.aq, align 1, !tbaa !13
  %i.ar = trunc nuw i64 %.0 to i32
  %i.as = add i32 %i.ar, 1
  %i.at = add i32 %i.as, %.1.i.i
  br label %mbedtls_asn1_write_len_and_tag.exit

mbedtls_asn1_write_len_and_tag.exit:              ; preds = %bb.l, %mbedtls_asn1_write_len.exit.i, %.loopexit.i.i, %bb.h, %bb.c, %bb.f, %bb.a, %bb.b
  %.023 = phi i32 [ -108, %bb.a ], [ -108, %bb.f ], [ -108, %bb.b ], [ %i.j, %bb.c ], [ %i.at, %bb.l ], [ -100, %bb.h ], [ -108, %.loopexit.i.i ], [ -108, %mbedtls_asn1_write_len.exit.i ]
  ret i32 %.023
}

declare i64 @mbedtls_mpi_size(ptr noundef) local_unnamed_addr #5

declare i32 @mbedtls_mpi_write_binary(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -108, 3) i32 @mbedtls_asn1_write_null(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %mbedtls_asn1_write_len_and_tag.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -1 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !10
  store i8 0, ptr %i.f, align 1, !tbaa !13
  %i.g = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.c
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -1 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !10
  store i8 5, ptr %i.k, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len_and_tag.exit

mbedtls_asn1_write_len_and_tag.exit:              ; preds = %bb.a, %.preheader.i.i, %bb.b
  %.0.i = phi i32 [ 2, %bb.b ], [ -108, %.preheader.i.i ], [ -108, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_oid(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.e, %3
  %or.cond.i = or i1 %i.b, %i.f
  br i1 %or.cond.i, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.loopexit.i.i, label %mbedtls_asn1_write_raw_buffer.exit

mbedtls_asn1_write_raw_buffer.exit:               ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.i = trunc i64 %3 to i32                      ; 6 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.c

bb.c:                                             ; preds = %mbedtls_asn1_write_raw_buffer.exit
  %i.k = and i64 %3, 2147483647                   ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 127
  br i1 %i.l, label %.preheader23.i.i, label %.loopexit.i.i

.preheader23.i.i:                                 ; preds = %bb.c
  %.mask = and i64 %3, 2147483392
  %.not.i.i = icmp eq i64 %.mask, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader23.i.i.1

.preheader23.i.i.1:                               ; preds = %.preheader23.i.i
  %.mask19 = and i64 %3, 2147418112
  %.not.i.i.1 = icmp eq i64 %.mask19, 0
  br i1 %.not.i.i.1, label %.loopexit.i.i, label %.preheader23.i.i.a

.preheader23.i.i.a:                               ; preds = %.preheader23.i.i.1
  %.mask20 = and i64 %3, 2130706432
  %.not.i.i.2 = icmp eq i64 %.mask20, 0
  %spec.select = select i1 %.not.i.i.2, i32 4, i32 5
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader23.i.i.a, %.preheader23.i.i, %.preheader23.i.i.1, %bb.b, %bb.c
  %4 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ %i.k, %.preheader23.i.i ], [ %i.k, %.preheader23.i.i.a ], [ %i.k, %.preheader23.i.i.1 ] ; 4 uses
  %5 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ %i.i, %.preheader23.i.i ], [ %i.i, %.preheader23.i.i.a ], [ %i.i, %.preheader23.i.i.1 ]
  %.1.i.i = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 2, %.preheader23.i.i ], [ 3, %.preheader23.i.i.1 ], [ %spec.select, %.preheader23.i.i.a ] ; 4 uses
  %i.m = zext nneg i32 %.1.i.i to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !10
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.d
  %i.q = icmp slt i64 %i.p, %i.m
  br i1 %i.q, label %mbedtls_asn1_write_len_and_tag.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i
  %6 = trunc i64 %4 to i8
  %7 = load ptr, ptr %0, align 8, !tbaa !10
  %8 = getelementptr inbounds i8, ptr %7, i64 -1  ; 2 uses
  store ptr %8, ptr %0, align 8, !tbaa !10
  store i8 %6, ptr %8, align 1, !tbaa !13
  %9 = lshr i64 %4, 8                             ; 2 uses
  %.not22.i.i = icmp eq i64 %9, 0
  br i1 %.not22.i.i, label %bb.d, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  %10 = trunc i64 %9 to i8
  %11 = load ptr, ptr %0, align 8, !tbaa !10
  %12 = getelementptr inbounds i8, ptr %11, i64 -1 ; 2 uses
  store ptr %12, ptr %0, align 8, !tbaa !10
  store i8 %10, ptr %12, align 1, !tbaa !13
  %13 = lshr i64 %4, 16                           ; 2 uses
  %.not22.i.i.1 = icmp eq i64 %13, 0
  br i1 %.not22.i.i.1, label %bb.d, label %.preheader.i.i.a

.preheader.i.i.a:                                 ; preds = %.preheader.i.i.1
  %i.r = trunc i64 %13 to i8
  %i.s = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !10
  store i8 %i.r, ptr %i.t, align 1, !tbaa !13
  %i.u = lshr i64 %4, 24                          ; 2 uses
  %.not22.i.i.a = icmp eq i64 %i.u, 0
  br i1 %.not22.i.i.a, label %bb.d, label %.preheader.i.i.3

.preheader.i.i.3:                                 ; preds = %.preheader.i.i.a
  %14 = trunc nuw nsw i64 %i.u to i8
  %15 = load ptr, ptr %0, align 8, !tbaa !10
  %16 = getelementptr inbounds i8, ptr %15, i64 -1 ; 2 uses
  store ptr %16, ptr %0, align 8, !tbaa !10
  store i8 %14, ptr %16, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.3, %.preheader.i.i.a, %.preheader.i.i.1, %.preheader.i.i
  %i.v = icmp samesign ugt i32 %.1.i.i, 1
  br i1 %i.v, label %bb.e, label %mbedtls_asn1_write_len.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = trunc i32 %.1.i.i to i8
  %i.x = add i8 %i.w, 127
  %i.y = load ptr, ptr %0, align 8, !tbaa !10
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !10
  store i8 %i.x, ptr %i.z, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i

mbedtls_asn1_write_len.exit.i:                    ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.d
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.f

bb.f:                                             ; preds = %mbedtls_asn1_write_len.exit.i
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !10
  store i8 6, ptr %i.ae, align 1, !tbaa !13
  %i.af = add nuw i32 %5, 1
  %i.ag = add i32 %i.af, %.1.i.i
  br label %mbedtls_asn1_write_len_and_tag.exit

mbedtls_asn1_write_len_and_tag.exit:              ; preds = %bb.a, %bb.f, %mbedtls_asn1_write_len.exit.i, %.loopexit.i.i, %mbedtls_asn1_write_raw_buffer.exit
  %.0 = phi i32 [ -108, %.loopexit.i.i ], [ %i.i, %mbedtls_asn1_write_raw_buffer.exit ], [ %i.ag, %bb.f ], [ -108, %mbedtls_asn1_write_len.exit.i ], [ -108, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_algorithm_identifier(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @mbedtls_asn1_write_algorithm_identifier_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_algorithm_identifier_ext(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %mbedtls_asn1_write_len_and_tag.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !10
  store i8 0, ptr %i.g, align 1, !tbaa !13
  %i.h = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -1 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !10
  store i8 5, ptr %i.l, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.0 = phi i64 [ 2, %bb.d ], [ 0, %bb.a ], [ %4, %bb.b ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.n = icmp ult ptr %i.m, %1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, %3
  %or.cond.i.i = or i1 %i.n, %i.r
  br i1 %or.cond.i.i, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sub i64 0, %3
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit.i.i.i, label %mbedtls_asn1_write_raw_buffer.exit.i

mbedtls_asn1_write_raw_buffer.exit.i:             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.u = trunc i64 %3 to i32                      ; 6 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.g

bb.g:                                             ; preds = %mbedtls_asn1_write_raw_buffer.exit.i
  %i.w = and i64 %3, 2147483647                   ; 5 uses
  %i.x = icmp samesign ugt i64 %i.w, 127
  br i1 %i.x, label %.preheader23.i.i.i, label %.loopexit.i.i.i

.preheader23.i.i.i:                               ; preds = %bb.g
  %.mask = and i64 %3, 2147483392
  %.not.i.i.i = icmp eq i64 %.mask, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.preheader23.i.i.i.1

.preheader23.i.i.i.1:                             ; preds = %.preheader23.i.i.i
  %.mask43 = and i64 %3, 2147418112
  %.not.i.i.i.1 = icmp eq i64 %.mask43, 0
  br i1 %.not.i.i.i.1, label %.loopexit.i.i.i, label %.preheader23.i.i.i.a

.preheader23.i.i.i.a:                             ; preds = %.preheader23.i.i.i.1
  %.mask44 = and i64 %3, 2130706432
  %.not.i.i.i.2 = icmp eq i64 %.mask44, 0
  %spec.select = select i1 %.not.i.i.i.2, i32 4, i32 5
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader23.i.i.i.a, %.preheader23.i.i.i, %.preheader23.i.i.i.1, %bb.g, %bb.f
  %6 = phi i64 [ %i.w, %bb.g ], [ 0, %bb.f ], [ %i.w, %.preheader23.i.i.i ], [ %i.w, %.preheader23.i.i.i.a ], [ %i.w, %.preheader23.i.i.i.1 ] ; 4 uses
  %7 = phi i32 [ %i.u, %bb.g ], [ 0, %bb.f ], [ %i.u, %.preheader23.i.i.i ], [ %i.u, %.preheader23.i.i.i.a ], [ %i.u, %.preheader23.i.i.i.1 ]
  %.1.i.i.i = phi i32 [ 1, %bb.g ], [ 1, %bb.f ], [ 2, %.preheader23.i.i.i ], [ 3, %.preheader23.i.i.i.1 ], [ %spec.select, %.preheader23.i.i.i.a ] ; 4 uses
  %i.y = zext nneg i32 %.1.i.i.i to i64
  %i.z = load ptr, ptr %0, align 8, !tbaa !10
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.p
  %i.ac = icmp slt i64 %i.ab, %i.y
  br i1 %i.ac, label %mbedtls_asn1_write_len_and_tag.exit, label %.preheader.i.i.i24

.preheader.i.i.i24:                               ; preds = %.loopexit.i.i.i
  %8 = trunc i64 %6 to i8
  %9 = load ptr, ptr %0, align 8, !tbaa !10
  %10 = getelementptr inbounds i8, ptr %9, i64 -1 ; 2 uses
  store ptr %10, ptr %0, align 8, !tbaa !10
  store i8 %8, ptr %10, align 1, !tbaa !13
  %11 = lshr i64 %6, 8                            ; 2 uses
  %.not22.i.i.i = icmp eq i64 %11, 0
  br i1 %.not22.i.i.i, label %bb.h, label %.preheader.i.i.i24.1

.preheader.i.i.i24.1:                             ; preds = %.preheader.i.i.i24
  %12 = trunc i64 %11 to i8
  %13 = load ptr, ptr %0, align 8, !tbaa !10
  %14 = getelementptr inbounds i8, ptr %13, i64 -1 ; 2 uses
  store ptr %14, ptr %0, align 8, !tbaa !10
  store i8 %12, ptr %14, align 1, !tbaa !13
  %15 = lshr i64 %6, 16                           ; 2 uses
  %.not22.i.i.i.1 = icmp eq i64 %15, 0
  br i1 %.not22.i.i.i.1, label %bb.h, label %.preheader.i.i.i24.a

.preheader.i.i.i24.a:                             ; preds = %.preheader.i.i.i24.1
  %i.ad = trunc i64 %15 to i8
  %i.ae = load ptr, ptr %0, align 8, !tbaa !10
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1 ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !10
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !13
  %i.ag = lshr i64 %6, 24                         ; 2 uses
  %.not22.i.i.i.a = icmp eq i64 %i.ag, 0
  br i1 %.not22.i.i.i.a, label %bb.h, label %.preheader.i.i.i24.3

.preheader.i.i.i24.3:                             ; preds = %.preheader.i.i.i24.a
  %16 = trunc nuw nsw i64 %i.ag to i8
  %17 = load ptr, ptr %0, align 8, !tbaa !10
  %18 = getelementptr inbounds i8, ptr %17, i64 -1 ; 2 uses
  store ptr %18, ptr %0, align 8, !tbaa !10
  store i8 %16, ptr %18, align 1, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.preheader.i.i.i24.3, %.preheader.i.i.i24.a, %.preheader.i.i.i24.1, %.preheader.i.i.i24
  %i.ah = icmp samesign ugt i32 %.1.i.i.i, 1
  br i1 %i.ah, label %bb.i, label %mbedtls_asn1_write_len.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ai = trunc i32 %.1.i.i.i to i8
  %i.aj = add i8 %i.ai, 127
  %i.ak = load ptr, ptr %0, align 8, !tbaa !10
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -1 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !10
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i.i

mbedtls_asn1_write_len.exit.i.i:                  ; preds = %bb.i, %bb.h
  %i.am = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.p
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %mbedtls_asn1_write_len_and_tag.exit, label %mbedtls_asn1_write_oid.exit

mbedtls_asn1_write_oid.exit:                      ; preds = %mbedtls_asn1_write_len.exit.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -1 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !10
  store i8 6, ptr %i.aq, align 1, !tbaa !13
  %i.ar = add nuw i32 %7, 1
  %i.as = add i32 %i.ar, %.1.i.i.i                ; 3 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.j

bb.j:                                             ; preds = %mbedtls_asn1_write_oid.exit
  %i.au = zext nneg i32 %i.as to i64
  %i.av = add i64 %.0, %i.au                      ; 5 uses
  %i.aw = icmp ugt i64 %i.av, 4294967295
  br i1 %i.aw, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = icmp samesign ugt i64 %i.av, 127
  br i1 %i.ax, label %.preheader23.i.i, label %.loopexit.i.i

.preheader23.i.i:                                 ; preds = %bb.k, %.preheader23.i.i
  %.025.i.i = phi i64 [ %i.az, %.preheader23.i.i ], [ %i.av, %bb.k ]
  %.01724.i.i = phi i32 [ %i.ay, %.preheader23.i.i ], [ 1, %bb.k ]
  %i.ay = add nuw nsw i32 %.01724.i.i, 1          ; 2 uses
  %i.az = lshr i64 %.025.i.i, 8                   ; 2 uses
  %.not.i.i26 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i26, label %.loopexit.i.i, label %.preheader23.i.i, !llvm.loop !8

.loopexit.i.i:                                    ; preds = %.preheader23.i.i, %bb.k
  %.1.i.i = phi i32 [ 1, %bb.k ], [ %i.ay, %.preheader23.i.i ] ; 4 uses
  %i.ba = zext nneg i32 %.1.i.i to i64
  %i.bb = load ptr, ptr %0, align 8, !tbaa !10
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.p
  %i.be = icmp slt i64 %i.bd, %i.ba
  br i1 %i.be, label %mbedtls_asn1_write_len_and_tag.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.i.i
  %.018.i.i = phi i64 [ %i.bi, %.preheader.i.i ], [ %i.av, %.loopexit.i.i ] ; 2 uses
  %i.bf = trunc i64 %.018.i.i to i8
  %i.bg = load ptr, ptr %0, align 8, !tbaa !10
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -1 ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !10
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !13
  %i.bi = lshr i64 %.018.i.i, 8                   ; 2 uses
  %.not22.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not22.i.i, label %bb.l, label %.preheader.i.i, !llvm.loop !14

bb.l:                                             ; preds = %.preheader.i.i
  %i.bj = icmp samesign ugt i32 %.1.i.i, 1
  br i1 %i.bj, label %bb.m, label %mbedtls_asn1_write_len.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bk = trunc i32 %.1.i.i to i8
  %i.bl = add i8 %i.bk, 127
  %i.bm = load ptr, ptr %0, align 8, !tbaa !10
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -1 ; 2 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !10
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i

mbedtls_asn1_write_len.exit.i:                    ; preds = %bb.m, %bb.l
  %i.bo = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.p
  %i.br = icmp slt i64 %i.bq, 1
  br i1 %i.br, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.n

bb.n:                                             ; preds = %mbedtls_asn1_write_len.exit.i
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 2 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !10
  store i8 48, ptr %i.bs, align 1, !tbaa !13
  %i.bt = trunc nuw i64 %i.av to i32
  %i.bu = add i32 %i.bt, 1
  %i.bv = add i32 %i.bu, %.1.i.i
  br label %mbedtls_asn1_write_len_and_tag.exit

mbedtls_asn1_write_len_and_tag.exit:              ; preds = %bb.e, %mbedtls_asn1_write_len.exit.i.i, %mbedtls_asn1_write_raw_buffer.exit.i, %.loopexit.i.i.i, %bb.c, %.preheader.i.i.i, %bb.n, %mbedtls_asn1_write_len.exit.i, %.loopexit.i.i, %bb.j, %mbedtls_asn1_write_oid.exit
  %.019 = phi i32 [ -108, %bb.c ], [ -108, %mbedtls_asn1_write_len.exit.i ], [ %i.as, %mbedtls_asn1_write_oid.exit ], [ %i.bv, %bb.n ], [ -100, %bb.j ], [ -108, %.loopexit.i.i ], [ -108, %.preheader.i.i.i ], [ -108, %bb.e ], [ -108, %mbedtls_asn1_write_len.exit.i.i ], [ %i.u, %mbedtls_asn1_write_raw_buffer.exit.i ], [ -108, %.loopexit.i.i.i ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -108, 4) i32 @mbedtls_asn1_write_bool(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i32 %2, 0
  %i.f = sext i1 %.not to i8
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !10
  store i8 %i.f, ptr %i.g, align 1, !tbaa !13
  %i.h = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.c
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %mbedtls_asn1_write_len_and_tag.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -1 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !10
  store i8 1, ptr %i.l, align 1, !tbaa !13
  %i.m = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.c
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !10
  store i8 1, ptr %i.q, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len_and_tag.exit

mbedtls_asn1_write_len_and_tag.exit:              ; preds = %bb.c, %.preheader.i.i, %bb.b, %bb.a
  %.0 = phi i32 [ -108, %bb.a ], [ 3, %bb.c ], [ -108, %.preheader.i.i ], [ -108, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_int(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.017.i = phi i32 [ %2, %bb.a ], [ %i.i, %bb.c ] ; 2 uses
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.c ]   ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = sub i64 %i.c, %i.a
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %asn1_write_tagged_int.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %.0.i, 1                         ; 2 uses
  %i.g = trunc i32 %.017.i to i8
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  store i8 %i.g, ptr %i.h, align 1, !tbaa !13
  %i.i = ashr i32 %.017.i, 8                      ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !19

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %.not.i = icmp sgt i8 %i.l, -1
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.m, %i.a
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %asn1_write_tagged_int.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -1 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !10
  store i8 0, ptr %i.p, align 1, !tbaa !13
  %i.q = add i64 %.0.i, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.d ] ; 5 uses
  %i.r = icmp ugt i64 %.1.i, 4294967295
  br i1 %i.r, label %asn1_write_tagged_int.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp samesign ugt i64 %.1.i, 127
  br i1 %i.s, label %.preheader23.i.i.i, label %.loopexit.i.i.i

.preheader23.i.i.i:                               ; preds = %bb.h, %.preheader23.i.i.i
  %.025.i.i.i = phi i64 [ %i.u, %.preheader23.i.i.i ], [ %.1.i, %bb.h ]
  %.01724.i.i.i = phi i32 [ %i.t, %.preheader23.i.i.i ], [ 1, %bb.h ]
  %i.t = add nuw nsw i32 %.01724.i.i.i, 1         ; 2 uses
  %i.u = lshr i64 %.025.i.i.i, 8                  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.preheader23.i.i.i, !llvm.loop !8

.loopexit.i.i.i:                                  ; preds = %.preheader23.i.i.i, %bb.h
  %.1.i.i.i = phi i32 [ 1, %bb.h ], [ %i.t, %.preheader23.i.i.i ] ; 4 uses
  %i.v = zext nneg i32 %.1.i.i.i to i64
  %i.w = load ptr, ptr %0, align 8, !tbaa !10
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.a
  %i.z = icmp slt i64 %i.y, %i.v
  br i1 %i.z, label %asn1_write_tagged_int.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit.i.i.i, %.preheader.i.i.i
  %.018.i.i.i = phi i64 [ %i.ad, %.preheader.i.i.i ], [ %.1.i, %.loopexit.i.i.i ] ; 2 uses
  %i.aa = trunc i64 %.018.i.i.i to i8
  %i.ab = load ptr, ptr %0, align 8, !tbaa !10
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1 ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !10
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !13
  %i.ad = lshr i64 %.018.i.i.i, 8                 ; 2 uses
  %.not22.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not22.i.i.i, label %bb.i, label %.preheader.i.i.i, !llvm.loop !14

bb.i:                                             ; preds = %.preheader.i.i.i
  %i.ae = icmp samesign ugt i32 %.1.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %mbedtls_asn1_write_len.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.af = trunc i32 %.1.i.i.i to i8
  %i.ag = add i8 %i.af, 127
  %i.ah = load ptr, ptr %0, align 8, !tbaa !10
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !10
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i.i

mbedtls_asn1_write_len.exit.i.i:                  ; preds = %bb.j, %bb.i
  %i.aj = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.a
  %i.am = icmp slt i64 %i.al, 1
  br i1 %i.am, label %asn1_write_tagged_int.exit, label %bb.k

bb.k:                                             ; preds = %mbedtls_asn1_write_len.exit.i.i
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -1 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !10
  store i8 2, ptr %i.an, align 1, !tbaa !13
  %i.ao = trunc nuw i64 %.1.i to i32
  %i.ap = add i32 %i.ao, 1
  %i.aq = add i32 %i.ap, %.1.i.i.i
  br label %asn1_write_tagged_int.exit

asn1_write_tagged_int.exit:                       ; preds = %bb.b, %bb.e, %bb.g, %.loopexit.i.i.i, %mbedtls_asn1_write_len.exit.i.i, %bb.k
  %.016.i = phi i32 [ -108, %bb.e ], [ -108, %mbedtls_asn1_write_len.exit.i.i ], [ %i.aq, %bb.k ], [ -100, %bb.g ], [ -108, %.loopexit.i.i.i ], [ -108, %bb.b ]
  ret i32 %.016.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_enum(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.017.i = phi i32 [ %2, %bb.a ], [ %i.i, %bb.c ] ; 2 uses
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.c ]   ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = sub i64 %i.c, %i.a
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %asn1_write_tagged_int.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %.0.i, 1                         ; 2 uses
  %i.g = trunc i32 %.017.i to i8
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  store i8 %i.g, ptr %i.h, align 1, !tbaa !13
  %i.i = ashr i32 %.017.i, 8                      ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !19

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %.not.i = icmp sgt i8 %i.l, -1
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.m, %i.a
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %asn1_write_tagged_int.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -1 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !10
  store i8 0, ptr %i.p, align 1, !tbaa !13
  %i.q = add i64 %.0.i, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.d ] ; 5 uses
  %i.r = icmp ugt i64 %.1.i, 4294967295
  br i1 %i.r, label %asn1_write_tagged_int.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp samesign ugt i64 %.1.i, 127
  br i1 %i.s, label %.preheader23.i.i.i, label %.loopexit.i.i.i

.preheader23.i.i.i:                               ; preds = %bb.h, %.preheader23.i.i.i
  %.025.i.i.i = phi i64 [ %i.u, %.preheader23.i.i.i ], [ %.1.i, %bb.h ]
  %.01724.i.i.i = phi i32 [ %i.t, %.preheader23.i.i.i ], [ 1, %bb.h ]
  %i.t = add nuw nsw i32 %.01724.i.i.i, 1         ; 2 uses
  %i.u = lshr i64 %.025.i.i.i, 8                  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.preheader23.i.i.i, !llvm.loop !8

.loopexit.i.i.i:                                  ; preds = %.preheader23.i.i.i, %bb.h
  %.1.i.i.i = phi i32 [ 1, %bb.h ], [ %i.t, %.preheader23.i.i.i ] ; 4 uses
  %i.v = zext nneg i32 %.1.i.i.i to i64
  %i.w = load ptr, ptr %0, align 8, !tbaa !10
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.a
  %i.z = icmp slt i64 %i.y, %i.v
  br i1 %i.z, label %asn1_write_tagged_int.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit.i.i.i, %.preheader.i.i.i
  %.018.i.i.i = phi i64 [ %i.ad, %.preheader.i.i.i ], [ %.1.i, %.loopexit.i.i.i ] ; 2 uses
  %i.aa = trunc i64 %.018.i.i.i to i8
  %i.ab = load ptr, ptr %0, align 8, !tbaa !10
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1 ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !10
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !13
  %i.ad = lshr i64 %.018.i.i.i, 8                 ; 2 uses
  %.not22.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not22.i.i.i, label %bb.i, label %.preheader.i.i.i, !llvm.loop !14

bb.i:                                             ; preds = %.preheader.i.i.i
  %i.ae = icmp samesign ugt i32 %.1.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %mbedtls_asn1_write_len.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.af = trunc i32 %.1.i.i.i to i8
  %i.ag = add i8 %i.af, 127
  %i.ah = load ptr, ptr %0, align 8, !tbaa !10
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !10
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i.i

mbedtls_asn1_write_len.exit.i.i:                  ; preds = %bb.j, %bb.i
  %i.aj = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.a
  %i.am = icmp slt i64 %i.al, 1
  br i1 %i.am, label %asn1_write_tagged_int.exit, label %bb.k

bb.k:                                             ; preds = %mbedtls_asn1_write_len.exit.i.i
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -1 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !10
  store i8 10, ptr %i.an, align 1, !tbaa !13
  %i.ao = trunc nuw i64 %.1.i to i32
  %i.ap = add i32 %i.ao, 1
  %i.aq = add i32 %i.ap, %.1.i.i.i
  br label %asn1_write_tagged_int.exit

asn1_write_tagged_int.exit:                       ; preds = %bb.b, %bb.e, %bb.g, %.loopexit.i.i.i, %mbedtls_asn1_write_len.exit.i.i, %bb.k
  %.016.i = phi i32 [ -108, %bb.e ], [ -108, %mbedtls_asn1_write_len.exit.i.i ], [ %i.aq, %bb.k ], [ -100, %bb.g ], [ -108, %.loopexit.i.i.i ], [ -108, %bb.b ]
  ret i32 %.016.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_tagged_string(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.e, %4
  %or.cond.i = or i1 %i.b, %i.f
  br i1 %or.cond.i, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %4
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %.loopexit.i.i, label %mbedtls_asn1_write_raw_buffer.exit

mbedtls_asn1_write_raw_buffer.exit:               ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %3, i64 %4, i1 false)
  %i.i = trunc i64 %4 to i32                      ; 6 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.c

bb.c:                                             ; preds = %mbedtls_asn1_write_raw_buffer.exit
  %i.k = and i64 %4, 2147483647                   ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 127
  br i1 %i.l, label %.preheader23.i.i, label %.loopexit.i.i

.preheader23.i.i:                                 ; preds = %bb.c
  %.mask = and i64 %4, 2147483392
  %.not.i.i = icmp eq i64 %.mask, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader23.i.i.1

.preheader23.i.i.1:                               ; preds = %.preheader23.i.i
  %.mask20 = and i64 %4, 2147418112
  %.not.i.i.1 = icmp eq i64 %.mask20, 0
  br i1 %.not.i.i.1, label %.loopexit.i.i, label %.preheader23.i.i.a

.preheader23.i.i.a:                               ; preds = %.preheader23.i.i.1
  %.mask21 = and i64 %4, 2130706432
  %.not.i.i.2 = icmp eq i64 %.mask21, 0
  %spec.select = select i1 %.not.i.i.2, i32 4, i32 5
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader23.i.i.a, %.preheader23.i.i, %.preheader23.i.i.1, %bb.b, %bb.c
  %5 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ %i.k, %.preheader23.i.i ], [ %i.k, %.preheader23.i.i.a ], [ %i.k, %.preheader23.i.i.1 ] ; 4 uses
  %6 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ %i.i, %.preheader23.i.i ], [ %i.i, %.preheader23.i.i.a ], [ %i.i, %.preheader23.i.i.1 ]
  %.1.i.i = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 2, %.preheader23.i.i ], [ 3, %.preheader23.i.i.1 ], [ %spec.select, %.preheader23.i.i.a ] ; 4 uses
  %i.m = trunc i32 %2 to i8
  %i.n = zext nneg i32 %.1.i.i to i64
  %i.o = load ptr, ptr %0, align 8, !tbaa !10
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.d
  %i.r = icmp slt i64 %i.q, %i.n
  br i1 %i.r, label %mbedtls_asn1_write_len_and_tag.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i
  %7 = trunc i64 %5 to i8
  %8 = load ptr, ptr %0, align 8, !tbaa !10
  %9 = getelementptr inbounds i8, ptr %8, i64 -1  ; 2 uses
  store ptr %9, ptr %0, align 8, !tbaa !10
  store i8 %7, ptr %9, align 1, !tbaa !13
  %10 = lshr i64 %5, 8                            ; 2 uses
  %.not22.i.i = icmp eq i64 %10, 0
  br i1 %.not22.i.i, label %bb.d, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  %11 = trunc i64 %10 to i8
  %12 = load ptr, ptr %0, align 8, !tbaa !10
  %13 = getelementptr inbounds i8, ptr %12, i64 -1 ; 2 uses
  store ptr %13, ptr %0, align 8, !tbaa !10
  store i8 %11, ptr %13, align 1, !tbaa !13
  %14 = lshr i64 %5, 16                           ; 2 uses
  %.not22.i.i.1 = icmp eq i64 %14, 0
  br i1 %.not22.i.i.1, label %bb.d, label %.preheader.i.i.a

.preheader.i.i.a:                                 ; preds = %.preheader.i.i.1
  %i.s = trunc i64 %14 to i8
  %i.t = load ptr, ptr %0, align 8, !tbaa !10
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !10
  store i8 %i.s, ptr %i.u, align 1, !tbaa !13
  %i.v = lshr i64 %5, 24                          ; 2 uses
  %.not22.i.i.a = icmp eq i64 %i.v, 0
  br i1 %.not22.i.i.a, label %bb.d, label %.preheader.i.i.3

.preheader.i.i.3:                                 ; preds = %.preheader.i.i.a
  %15 = trunc nuw nsw i64 %i.v to i8
  %16 = load ptr, ptr %0, align 8, !tbaa !10
  %17 = getelementptr inbounds i8, ptr %16, i64 -1 ; 2 uses
  store ptr %17, ptr %0, align 8, !tbaa !10
  store i8 %15, ptr %17, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.3, %.preheader.i.i.a, %.preheader.i.i.1, %.preheader.i.i
  %i.w = icmp samesign ugt i32 %.1.i.i, 1
  br i1 %i.w, label %bb.e, label %mbedtls_asn1_write_len.exit.i

bb.e:                                             ; preds = %bb.d
  %i.x = trunc i32 %.1.i.i to i8
  %i.y = add i8 %i.x, 127
  %i.z = load ptr, ptr %0, align 8, !tbaa !10
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !10
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i

mbedtls_asn1_write_len.exit.i:                    ; preds = %bb.e, %bb.d
  %i.ab = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.d
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.f

bb.f:                                             ; preds = %mbedtls_asn1_write_len.exit.i
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -1 ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !10
  store i8 %i.m, ptr %i.af, align 1, !tbaa !13
  %i.ag = add nuw i32 %6, 1
  %i.ah = add i32 %i.ag, %.1.i.i
  br label %mbedtls_asn1_write_len_and_tag.exit

mbedtls_asn1_write_len_and_tag.exit:              ; preds = %bb.a, %bb.f, %mbedtls_asn1_write_len.exit.i, %.loopexit.i.i, %mbedtls_asn1_write_raw_buffer.exit
  %.0 = phi i32 [ -108, %.loopexit.i.i ], [ %i.i, %mbedtls_asn1_write_raw_buffer.exit ], [ %i.ah, %bb.f ], [ -108, %mbedtls_asn1_write_len.exit.i ], [ -108, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_utf8_string(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.e, %3
  %or.cond.i.i = or i1 %i.b, %i.f
  br i1 %or.cond.i.i, label %mbedtls_asn1_write_tagged_string.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit.i.i.i, label %mbedtls_asn1_write_raw_buffer.exit.i

mbedtls_asn1_write_raw_buffer.exit.i:             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.i = trunc i64 %3 to i32                      ; 6 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %mbedtls_asn1_write_tagged_string.exit, label %bb.c

bb.c:                                             ; preds = %mbedtls_asn1_write_raw_buffer.exit.i
  %i.k = and i64 %3, 2147483647                   ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 127
  br i1 %i.l, label %.preheader23.i.i.i, label %.loopexit.i.i.i

.preheader23.i.i.i:                               ; preds = %bb.c
  %.mask = and i64 %3, 2147483392
  %.not.i.i.i = icmp eq i64 %.mask, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.preheader23.i.i.i.1

.preheader23.i.i.i.1:                             ; preds = %.preheader23.i.i.i
  %.mask7 = and i64 %3, 2147418112
  %.not.i.i.i.1 = icmp eq i64 %.mask7, 0
  br i1 %.not.i.i.i.1, label %.loopexit.i.i.i, label %.preheader23.i.i.i.a

.preheader23.i.i.i.a:                             ; preds = %.preheader23.i.i.i.1
  %.mask8 = and i64 %3, 2130706432
  %.not.i.i.i.2 = icmp eq i64 %.mask8, 0
  %spec.select = select i1 %.not.i.i.i.2, i32 4, i32 5
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader23.i.i.i.a, %.preheader23.i.i.i, %.preheader23.i.i.i.1, %bb.c, %bb.b
  %4 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ %i.k, %.preheader23.i.i.i ], [ %i.k, %.preheader23.i.i.i.a ], [ %i.k, %.preheader23.i.i.i.1 ] ; 4 uses
  %5 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ %i.i, %.preheader23.i.i.i ], [ %i.i, %.preheader23.i.i.i.a ], [ %i.i, %.preheader23.i.i.i.1 ]
  %.1.i.i.i = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 2, %.preheader23.i.i.i ], [ 3, %.preheader23.i.i.i.1 ], [ %spec.select, %.preheader23.i.i.i.a ] ; 4 uses
  %i.m = zext nneg i32 %.1.i.i.i to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !10
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.d
  %i.q = icmp slt i64 %i.p, %i.m
  br i1 %i.q, label %mbedtls_asn1_write_tagged_string.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit.i.i.i
  %6 = trunc i64 %4 to i8
  %7 = load ptr, ptr %0, align 8, !tbaa !10
  %8 = getelementptr inbounds i8, ptr %7, i64 -1  ; 2 uses
  store ptr %8, ptr %0, align 8, !tbaa !10
  store i8 %6, ptr %8, align 1, !tbaa !13
  %9 = lshr i64 %4, 8                             ; 2 uses
  %.not22.i.i.i = icmp eq i64 %9, 0
  br i1 %.not22.i.i.i, label %bb.d, label %.preheader.i.i.i.1

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  %10 = trunc i64 %9 to i8
  %11 = load ptr, ptr %0, align 8, !tbaa !10
  %12 = getelementptr inbounds i8, ptr %11, i64 -1 ; 2 uses
  store ptr %12, ptr %0, align 8, !tbaa !10
  store i8 %10, ptr %12, align 1, !tbaa !13
  %13 = lshr i64 %4, 16                           ; 2 uses
  %.not22.i.i.i.1 = icmp eq i64 %13, 0
  br i1 %.not22.i.i.i.1, label %bb.d, label %.preheader.i.i.i.a

.preheader.i.i.i.a:                               ; preds = %.preheader.i.i.i.1
  %i.r = trunc i64 %13 to i8
  %i.s = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !10
  store i8 %i.r, ptr %i.t, align 1, !tbaa !13
  %i.u = lshr i64 %4, 24                          ; 2 uses
  %.not22.i.i.i.a = icmp eq i64 %i.u, 0
  br i1 %.not22.i.i.i.a, label %bb.d, label %.preheader.i.i.i.3

.preheader.i.i.i.3:                               ; preds = %.preheader.i.i.i.a
  %14 = trunc nuw nsw i64 %i.u to i8
  %15 = load ptr, ptr %0, align 8, !tbaa !10
  %16 = getelementptr inbounds i8, ptr %15, i64 -1 ; 2 uses
  store ptr %16, ptr %0, align 8, !tbaa !10
  store i8 %14, ptr %16, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i.3, %.preheader.i.i.i.a, %.preheader.i.i.i.1, %.preheader.i.i.i
  %i.v = icmp samesign ugt i32 %.1.i.i.i, 1
  br i1 %i.v, label %bb.e, label %mbedtls_asn1_write_len.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = trunc i32 %.1.i.i.i to i8
  %i.x = add i8 %i.w, 127
  %i.y = load ptr, ptr %0, align 8, !tbaa !10
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !10
  store i8 %i.x, ptr %i.z, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i.i

mbedtls_asn1_write_len.exit.i.i:                  ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.d
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %mbedtls_asn1_write_tagged_string.exit, label %bb.f

bb.f:                                             ; preds = %mbedtls_asn1_write_len.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !10
  store i8 12, ptr %i.ae, align 1, !tbaa !13
  %i.af = add nuw i32 %5, 1
  %i.ag = add i32 %i.af, %.1.i.i.i
  br label %mbedtls_asn1_write_tagged_string.exit

mbedtls_asn1_write_tagged_string.exit:            ; preds = %bb.a, %mbedtls_asn1_write_raw_buffer.exit.i, %.loopexit.i.i.i, %mbedtls_asn1_write_len.exit.i.i, %bb.f
  %.0.i = phi i32 [ -108, %.loopexit.i.i.i ], [ %i.i, %mbedtls_asn1_write_raw_buffer.exit.i ], [ %i.ag, %bb.f ], [ -108, %mbedtls_asn1_write_len.exit.i.i ], [ -108, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_printable_string(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.e, %3
  %or.cond.i.i = or i1 %i.b, %i.f
  br i1 %or.cond.i.i, label %mbedtls_asn1_write_tagged_string.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit.i.i.i, label %mbedtls_asn1_write_raw_buffer.exit.i

mbedtls_asn1_write_raw_buffer.exit.i:             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.i = trunc i64 %3 to i32                      ; 6 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %mbedtls_asn1_write_tagged_string.exit, label %bb.c

bb.c:                                             ; preds = %mbedtls_asn1_write_raw_buffer.exit.i
  %i.k = and i64 %3, 2147483647                   ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 127
  br i1 %i.l, label %.preheader23.i.i.i, label %.loopexit.i.i.i

.preheader23.i.i.i:                               ; preds = %bb.c
  %.mask = and i64 %3, 2147483392
  %.not.i.i.i = icmp eq i64 %.mask, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.preheader23.i.i.i.1

.preheader23.i.i.i.1:                             ; preds = %.preheader23.i.i.i
  %.mask7 = and i64 %3, 2147418112
  %.not.i.i.i.1 = icmp eq i64 %.mask7, 0
  br i1 %.not.i.i.i.1, label %.loopexit.i.i.i, label %.preheader23.i.i.i.a

.preheader23.i.i.i.a:                             ; preds = %.preheader23.i.i.i.1
  %.mask8 = and i64 %3, 2130706432
  %.not.i.i.i.2 = icmp eq i64 %.mask8, 0
  %spec.select = select i1 %.not.i.i.i.2, i32 4, i32 5
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader23.i.i.i.a, %.preheader23.i.i.i, %.preheader23.i.i.i.1, %bb.c, %bb.b
  %4 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ %i.k, %.preheader23.i.i.i ], [ %i.k, %.preheader23.i.i.i.a ], [ %i.k, %.preheader23.i.i.i.1 ] ; 4 uses
  %5 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ %i.i, %.preheader23.i.i.i ], [ %i.i, %.preheader23.i.i.i.a ], [ %i.i, %.preheader23.i.i.i.1 ]
  %.1.i.i.i = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 2, %.preheader23.i.i.i ], [ 3, %.preheader23.i.i.i.1 ], [ %spec.select, %.preheader23.i.i.i.a ] ; 4 uses
  %i.m = zext nneg i32 %.1.i.i.i to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !10
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.d
  %i.q = icmp slt i64 %i.p, %i.m
  br i1 %i.q, label %mbedtls_asn1_write_tagged_string.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit.i.i.i
  %6 = trunc i64 %4 to i8
  %7 = load ptr, ptr %0, align 8, !tbaa !10
  %8 = getelementptr inbounds i8, ptr %7, i64 -1  ; 2 uses
  store ptr %8, ptr %0, align 8, !tbaa !10
  store i8 %6, ptr %8, align 1, !tbaa !13
  %9 = lshr i64 %4, 8                             ; 2 uses
  %.not22.i.i.i = icmp eq i64 %9, 0
  br i1 %.not22.i.i.i, label %bb.d, label %.preheader.i.i.i.1

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  %10 = trunc i64 %9 to i8
  %11 = load ptr, ptr %0, align 8, !tbaa !10
  %12 = getelementptr inbounds i8, ptr %11, i64 -1 ; 2 uses
  store ptr %12, ptr %0, align 8, !tbaa !10
  store i8 %10, ptr %12, align 1, !tbaa !13
  %13 = lshr i64 %4, 16                           ; 2 uses
  %.not22.i.i.i.1 = icmp eq i64 %13, 0
  br i1 %.not22.i.i.i.1, label %bb.d, label %.preheader.i.i.i.a

.preheader.i.i.i.a:                               ; preds = %.preheader.i.i.i.1
  %i.r = trunc i64 %13 to i8
  %i.s = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !10
  store i8 %i.r, ptr %i.t, align 1, !tbaa !13
  %i.u = lshr i64 %4, 24                          ; 2 uses
  %.not22.i.i.i.a = icmp eq i64 %i.u, 0
  br i1 %.not22.i.i.i.a, label %bb.d, label %.preheader.i.i.i.3

.preheader.i.i.i.3:                               ; preds = %.preheader.i.i.i.a
  %14 = trunc nuw nsw i64 %i.u to i8
  %15 = load ptr, ptr %0, align 8, !tbaa !10
  %16 = getelementptr inbounds i8, ptr %15, i64 -1 ; 2 uses
  store ptr %16, ptr %0, align 8, !tbaa !10
  store i8 %14, ptr %16, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i.3, %.preheader.i.i.i.a, %.preheader.i.i.i.1, %.preheader.i.i.i
  %i.v = icmp samesign ugt i32 %.1.i.i.i, 1
  br i1 %i.v, label %bb.e, label %mbedtls_asn1_write_len.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = trunc i32 %.1.i.i.i to i8
  %i.x = add i8 %i.w, 127
  %i.y = load ptr, ptr %0, align 8, !tbaa !10
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !10
  store i8 %i.x, ptr %i.z, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i.i

mbedtls_asn1_write_len.exit.i.i:                  ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.d
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %mbedtls_asn1_write_tagged_string.exit, label %bb.f

bb.f:                                             ; preds = %mbedtls_asn1_write_len.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !10
  store i8 19, ptr %i.ae, align 1, !tbaa !13
  %i.af = add nuw i32 %5, 1
  %i.ag = add i32 %i.af, %.1.i.i.i
  br label %mbedtls_asn1_write_tagged_string.exit

mbedtls_asn1_write_tagged_string.exit:            ; preds = %bb.a, %mbedtls_asn1_write_raw_buffer.exit.i, %.loopexit.i.i.i, %mbedtls_asn1_write_len.exit.i.i, %bb.f
  %.0.i = phi i32 [ -108, %.loopexit.i.i.i ], [ %i.i, %mbedtls_asn1_write_raw_buffer.exit.i ], [ %i.ag, %bb.f ], [ -108, %mbedtls_asn1_write_len.exit.i.i ], [ -108, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_ia5_string(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.e, %3
  %or.cond.i.i = or i1 %i.b, %i.f
  br i1 %or.cond.i.i, label %mbedtls_asn1_write_tagged_string.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.loopexit.i.i.i, label %mbedtls_asn1_write_raw_buffer.exit.i

mbedtls_asn1_write_raw_buffer.exit.i:             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.i = trunc i64 %3 to i32                      ; 6 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %mbedtls_asn1_write_tagged_string.exit, label %bb.c

bb.c:                                             ; preds = %mbedtls_asn1_write_raw_buffer.exit.i
  %i.k = and i64 %3, 2147483647                   ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 127
  br i1 %i.l, label %.preheader23.i.i.i, label %.loopexit.i.i.i

.preheader23.i.i.i:                               ; preds = %bb.c
  %.mask = and i64 %3, 2147483392
  %.not.i.i.i = icmp eq i64 %.mask, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.preheader23.i.i.i.1

.preheader23.i.i.i.1:                             ; preds = %.preheader23.i.i.i
  %.mask7 = and i64 %3, 2147418112
  %.not.i.i.i.1 = icmp eq i64 %.mask7, 0
  br i1 %.not.i.i.i.1, label %.loopexit.i.i.i, label %.preheader23.i.i.i.a

.preheader23.i.i.i.a:                             ; preds = %.preheader23.i.i.i.1
  %.mask8 = and i64 %3, 2130706432
  %.not.i.i.i.2 = icmp eq i64 %.mask8, 0
  %spec.select = select i1 %.not.i.i.i.2, i32 4, i32 5
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader23.i.i.i.a, %.preheader23.i.i.i, %.preheader23.i.i.i.1, %bb.c, %bb.b
  %4 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ %i.k, %.preheader23.i.i.i ], [ %i.k, %.preheader23.i.i.i.a ], [ %i.k, %.preheader23.i.i.i.1 ] ; 4 uses
  %5 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ %i.i, %.preheader23.i.i.i ], [ %i.i, %.preheader23.i.i.i.a ], [ %i.i, %.preheader23.i.i.i.1 ]
  %.1.i.i.i = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 2, %.preheader23.i.i.i ], [ 3, %.preheader23.i.i.i.1 ], [ %spec.select, %.preheader23.i.i.i.a ] ; 4 uses
  %i.m = zext nneg i32 %.1.i.i.i to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !10
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.d
  %i.q = icmp slt i64 %i.p, %i.m
  br i1 %i.q, label %mbedtls_asn1_write_tagged_string.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit.i.i.i
  %6 = trunc i64 %4 to i8
  %7 = load ptr, ptr %0, align 8, !tbaa !10
  %8 = getelementptr inbounds i8, ptr %7, i64 -1  ; 2 uses
  store ptr %8, ptr %0, align 8, !tbaa !10
  store i8 %6, ptr %8, align 1, !tbaa !13
  %9 = lshr i64 %4, 8                             ; 2 uses
  %.not22.i.i.i = icmp eq i64 %9, 0
  br i1 %.not22.i.i.i, label %bb.d, label %.preheader.i.i.i.1

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  %10 = trunc i64 %9 to i8
  %11 = load ptr, ptr %0, align 8, !tbaa !10
  %12 = getelementptr inbounds i8, ptr %11, i64 -1 ; 2 uses
  store ptr %12, ptr %0, align 8, !tbaa !10
  store i8 %10, ptr %12, align 1, !tbaa !13
  %13 = lshr i64 %4, 16                           ; 2 uses
  %.not22.i.i.i.1 = icmp eq i64 %13, 0
  br i1 %.not22.i.i.i.1, label %bb.d, label %.preheader.i.i.i.a

.preheader.i.i.i.a:                               ; preds = %.preheader.i.i.i.1
  %i.r = trunc i64 %13 to i8
  %i.s = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !10
  store i8 %i.r, ptr %i.t, align 1, !tbaa !13
  %i.u = lshr i64 %4, 24                          ; 2 uses
  %.not22.i.i.i.a = icmp eq i64 %i.u, 0
  br i1 %.not22.i.i.i.a, label %bb.d, label %.preheader.i.i.i.3

.preheader.i.i.i.3:                               ; preds = %.preheader.i.i.i.a
  %14 = trunc nuw nsw i64 %i.u to i8
  %15 = load ptr, ptr %0, align 8, !tbaa !10
  %16 = getelementptr inbounds i8, ptr %15, i64 -1 ; 2 uses
  store ptr %16, ptr %0, align 8, !tbaa !10
  store i8 %14, ptr %16, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i.3, %.preheader.i.i.i.a, %.preheader.i.i.i.1, %.preheader.i.i.i
  %i.v = icmp samesign ugt i32 %.1.i.i.i, 1
  br i1 %i.v, label %bb.e, label %mbedtls_asn1_write_len.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = trunc i32 %.1.i.i.i to i8
  %i.x = add i8 %i.w, 127
  %i.y = load ptr, ptr %0, align 8, !tbaa !10
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !10
  store i8 %i.x, ptr %i.z, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i.i

mbedtls_asn1_write_len.exit.i.i:                  ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.d
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %mbedtls_asn1_write_tagged_string.exit, label %bb.f

bb.f:                                             ; preds = %mbedtls_asn1_write_len.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !10
  store i8 22, ptr %i.ae, align 1, !tbaa !13
  %i.af = add nuw i32 %5, 1
  %i.ag = add i32 %i.af, %.1.i.i.i
  br label %mbedtls_asn1_write_tagged_string.exit

mbedtls_asn1_write_tagged_string.exit:            ; preds = %bb.a, %mbedtls_asn1_write_raw_buffer.exit.i, %.loopexit.i.i.i, %mbedtls_asn1_write_len.exit.i.i, %bb.f
  %.0.i = phi i32 [ -108, %.loopexit.i.i.i ], [ %i.i, %mbedtls_asn1_write_raw_buffer.exit.i ], [ %i.ag, %bb.f ], [ -108, %mbedtls_asn1_write_len.exit.i.i ], [ -108, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_named_bitstring(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %3, 7                            ; 2 uses
  %i.b = and i64 %i.a, 4294967288
  %i.c = sub i64 %i.b, %3
  %i.d = lshr i64 %i.a, 3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = zext i8 %i.g to i32
  %i.i = trunc i64 %i.c to i32
  %i.j = lshr i32 %i.h, %i.i
  %i.k = trunc nuw i32 %i.j to i8                 ; 2 uses
  %i.l = and i8 %i.k, 1
  %.not2627 = icmp eq i8 %i.l, 0
  br i1 %.not2627, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = add i64 %3, -1                           ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph35

.lr.ph:                                           ; preds = %bb.d
  %i.o = add i64 %i.q, -1                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit, label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.q = phi i64 [ %i.o, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %.0202834 = phi ptr [ %.121, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.in33 = phi i8 [ %.119, %.lr.ph ], [ %i.k, %.lr.ph.preheader ]
  %i.r = lshr i8 %.in33, 1
  %i.s = and i64 %i.q, 7
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph35
  %i.u = getelementptr inbounds i8, ptr %.0202834, i64 -1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph35
  %.121 = phi ptr [ %i.u, %bb.c ], [ %.0202834, %.lr.ph35 ]
  %.119 = phi i8 [ %i.v, %bb.c ], [ %i.r, %.lr.ph35 ] ; 2 uses
  %i.w = and i8 %.119, 1
  %.not26 = icmp eq i8 %i.w, 0
  br i1 %.not26, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.lr.ph, %.lr.ph.preheader, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %3, %bb.b ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ], [ %i.q, %bb.d ]
  %i.x = tail call i32 @mbedtls_asn1_write_bitstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.1)
  ret i32 %i.x
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_bitstring(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %3, 7                            ; 4 uses
  %i.b = lshr i64 %i.a, 3                         ; 5 uses
  %i.c = and i64 %i.a, -8
  %i.d = sub i64 %i.c, %3                         ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.f = icmp ult ptr %i.e, %1
  br i1 %i.f, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = add nuw nsw i64 %i.b, 1                  ; 3 uses
  %.not = icmp ugt i64 %i.i, %i.b
  br i1 %.not, label %bb.c, label %mbedtls_asn1_write_len_and_tag.exit

bb.c:                                             ; preds = %bb.b
  %.not29 = icmp eq i64 %i.b, 0
  br i1 %.not29, label %.thread30, label %bb.d

.thread30:                                        ; preds = %bb.c
  %i.k = trunc i64 %i.d to i8
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 -1 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !10
  store i8 %i.k, ptr %i.l, align 1, !tbaa !13
  br label %.loopexit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i64 %i.b, -1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = trunc i64 %i.d to i32
  %notmask = shl nsw i32 -1, %i.p
  %i.q = trunc i32 %notmask to i8
  %i.r = and i8 %i.o, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -1 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !10
  store i8 %i.r, ptr %i.s, align 1, !tbaa !13
  %i.t = load ptr, ptr %0, align 8, !tbaa !10
  %i.u = sub nsw i64 1, %i.b
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %2, i64 %i.m, i1 false)
  %i.w = trunc i64 %i.d to i8
  %i.x = load ptr, ptr %0, align 8, !tbaa !10
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1 ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !10
  store i8 %i.w, ptr %i.y, align 1, !tbaa !13
  %i.z = icmp ugt i64 %i.a, 34359738359
  br i1 %i.z, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp samesign ugt i64 %i.a, 1015
  br i1 %i.aa, label %.preheader23.i.i, label %.loopexit.i.i

.preheader23.i.i:                                 ; preds = %bb.e, %.preheader23.i.i
  %.025.i.i = phi i64 [ %i.ac, %.preheader23.i.i ], [ %i.j, %bb.e ]
  %.01724.i.i = phi i32 [ %i.ab, %.preheader23.i.i ], [ 1, %bb.e ]
  %i.ab = add nuw nsw i32 %.01724.i.i, 1          ; 2 uses
  %i.ac = lshr i64 %.025.i.i, 8                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader23.i.i, !llvm.loop !8

.loopexit.i.i:                                    ; preds = %.preheader23.i.i, %.thread30, %bb.e
  %.1.i.i = phi i32 [ 1, %bb.e ], [ 1, %.thread30 ], [ %i.ab, %.preheader23.i.i ] ; 4 uses
  %i.ad = zext nneg i32 %.1.i.i to i64
  %i.ae = load ptr, ptr %0, align 8, !tbaa !10
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.h
  %i.ah = icmp slt i64 %i.ag, %i.ad
  br i1 %i.ah, label %mbedtls_asn1_write_len_and_tag.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.i.i
  %.018.i.i = phi i64 [ %i.al, %.preheader.i.i ], [ %i.j, %.loopexit.i.i ] ; 2 uses
  %i.ai = trunc i64 %.018.i.i to i8
  %i.aj = load ptr, ptr %0, align 8, !tbaa !10
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !10
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !13
  %i.al = lshr i64 %.018.i.i, 8                   ; 2 uses
  %.not22.i.i = icmp eq i64 %i.al, 0
  br i1 %.not22.i.i, label %bb.f, label %.preheader.i.i, !llvm.loop !14

bb.f:                                             ; preds = %.preheader.i.i
  %i.am = icmp samesign ugt i32 %.1.i.i, 1
  br i1 %i.am, label %bb.g, label %mbedtls_asn1_write_len.exit.i

bb.g:                                             ; preds = %bb.f
  %i.an = trunc i32 %.1.i.i to i8
  %i.ao = add i8 %i.an, 127
  %i.ap = load ptr, ptr %0, align 8, !tbaa !10
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !10
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i

mbedtls_asn1_write_len.exit.i:                    ; preds = %bb.g, %bb.f
  %i.ar = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.h
  %i.au = icmp slt i64 %i.at, 1
  br i1 %i.au, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.h

bb.h:                                             ; preds = %mbedtls_asn1_write_len.exit.i
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -1 ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !10
  store i8 3, ptr %i.av, align 1, !tbaa !13
  %i.aw = trunc nuw i64 %i.j to i32
  %i.ax = add i32 %i.aw, 1
  %i.ay = add i32 %i.ax, %.1.i.i
  br label %mbedtls_asn1_write_len_and_tag.exit

mbedtls_asn1_write_len_and_tag.exit:              ; preds = %bb.h, %mbedtls_asn1_write_len.exit.i, %.loopexit.i.i, %bb.d, %bb.a, %bb.b
  %.0 = phi i32 [ -108, %bb.a ], [ -108, %bb.b ], [ %i.ay, %bb.h ], [ -100, %bb.d ], [ -108, %.loopexit.i.i ], [ -108, %mbedtls_asn1_write_len.exit.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_asn1_write_octet_string(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.e, %3
  %or.cond.i = or i1 %i.b, %i.f
  br i1 %or.cond.i, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.loopexit.i.i, label %mbedtls_asn1_write_raw_buffer.exit

mbedtls_asn1_write_raw_buffer.exit:               ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.i = trunc i64 %3 to i32                      ; 6 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.c

bb.c:                                             ; preds = %mbedtls_asn1_write_raw_buffer.exit
  %i.k = and i64 %3, 2147483647                   ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 127
  br i1 %i.l, label %.preheader23.i.i, label %.loopexit.i.i

.preheader23.i.i:                                 ; preds = %bb.c
  %.mask = and i64 %3, 2147483392
  %.not.i.i = icmp eq i64 %.mask, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader23.i.i.1

.preheader23.i.i.1:                               ; preds = %.preheader23.i.i
  %.mask19 = and i64 %3, 2147418112
  %.not.i.i.1 = icmp eq i64 %.mask19, 0
  br i1 %.not.i.i.1, label %.loopexit.i.i, label %.preheader23.i.i.a

.preheader23.i.i.a:                               ; preds = %.preheader23.i.i.1
  %.mask20 = and i64 %3, 2130706432
  %.not.i.i.2 = icmp eq i64 %.mask20, 0
  %spec.select = select i1 %.not.i.i.2, i32 4, i32 5
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader23.i.i.a, %.preheader23.i.i, %.preheader23.i.i.1, %bb.b, %bb.c
  %4 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ %i.k, %.preheader23.i.i ], [ %i.k, %.preheader23.i.i.a ], [ %i.k, %.preheader23.i.i.1 ] ; 4 uses
  %5 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ %i.i, %.preheader23.i.i ], [ %i.i, %.preheader23.i.i.a ], [ %i.i, %.preheader23.i.i.1 ]
  %.1.i.i = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 2, %.preheader23.i.i ], [ 3, %.preheader23.i.i.1 ], [ %spec.select, %.preheader23.i.i.a ] ; 4 uses
  %i.m = zext nneg i32 %.1.i.i to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !10
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.d
  %i.q = icmp slt i64 %i.p, %i.m
  br i1 %i.q, label %mbedtls_asn1_write_len_and_tag.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i
  %6 = trunc i64 %4 to i8
  %7 = load ptr, ptr %0, align 8, !tbaa !10
  %8 = getelementptr inbounds i8, ptr %7, i64 -1  ; 2 uses
  store ptr %8, ptr %0, align 8, !tbaa !10
  store i8 %6, ptr %8, align 1, !tbaa !13
  %9 = lshr i64 %4, 8                             ; 2 uses
  %.not22.i.i = icmp eq i64 %9, 0
  br i1 %.not22.i.i, label %bb.d, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  %10 = trunc i64 %9 to i8
  %11 = load ptr, ptr %0, align 8, !tbaa !10
  %12 = getelementptr inbounds i8, ptr %11, i64 -1 ; 2 uses
  store ptr %12, ptr %0, align 8, !tbaa !10
  store i8 %10, ptr %12, align 1, !tbaa !13
  %13 = lshr i64 %4, 16                           ; 2 uses
  %.not22.i.i.1 = icmp eq i64 %13, 0
  br i1 %.not22.i.i.1, label %bb.d, label %.preheader.i.i.a

.preheader.i.i.a:                                 ; preds = %.preheader.i.i.1
  %i.r = trunc i64 %13 to i8
  %i.s = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !10
  store i8 %i.r, ptr %i.t, align 1, !tbaa !13
  %i.u = lshr i64 %4, 24                          ; 2 uses
  %.not22.i.i.a = icmp eq i64 %i.u, 0
  br i1 %.not22.i.i.a, label %bb.d, label %.preheader.i.i.3

.preheader.i.i.3:                                 ; preds = %.preheader.i.i.a
  %14 = trunc nuw nsw i64 %i.u to i8
  %15 = load ptr, ptr %0, align 8, !tbaa !10
  %16 = getelementptr inbounds i8, ptr %15, i64 -1 ; 2 uses
  store ptr %16, ptr %0, align 8, !tbaa !10
  store i8 %14, ptr %16, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.3, %.preheader.i.i.a, %.preheader.i.i.1, %.preheader.i.i
  %i.v = icmp samesign ugt i32 %.1.i.i, 1
  br i1 %i.v, label %bb.e, label %mbedtls_asn1_write_len.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = trunc i32 %.1.i.i to i8
  %i.x = add i8 %i.w, 127
  %i.y = load ptr, ptr %0, align 8, !tbaa !10
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !10
  store i8 %i.x, ptr %i.z, align 1, !tbaa !13
  br label %mbedtls_asn1_write_len.exit.i

mbedtls_asn1_write_len.exit.i:                    ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.d
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %mbedtls_asn1_write_len_and_tag.exit, label %bb.f

bb.f:                                             ; preds = %mbedtls_asn1_write_len.exit.i
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !10
  store i8 4, ptr %i.ae, align 1, !tbaa !13
  %i.af = add nuw i32 %5, 1
  %i.ag = add i32 %i.af, %.1.i.i
  br label %mbedtls_asn1_write_len_and_tag.exit

mbedtls_asn1_write_len_and_tag.exit:              ; preds = %bb.a, %bb.f, %mbedtls_asn1_write_len.exit.i, %.loopexit.i.i, %mbedtls_asn1_write_raw_buffer.exit
  %.0 = phi i32 [ -108, %.loopexit.i.i ], [ %i.i, %mbedtls_asn1_write_raw_buffer.exit ], [ %i.ag, %bb.f ], [ -108, %mbedtls_asn1_write_len.exit.i ], [ -108, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @mbedtls_asn1_store_named_data(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = tail call ptr @mbedtls_asn1_find_named_data(ptr noundef %i.a, ptr noundef %1, i64 noundef %2) #11 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #12 ; 10 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.f, align 8, !tbaa !22
  %i.g = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %2) #12 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #11
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %4, ptr %i.j, align 8, !tbaa !27
  %.not55 = icmp eq i64 %4, 0
  br i1 %.not55, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %4) #12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.k, ptr %i.l, align 8, !tbaa !28
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.g) #11
  tail call void @free(ptr noundef nonnull %i.d) #11
  br label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = load ptr, ptr %0, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.n, ptr %i.o, align 8, !tbaa !29
  store ptr %i.d, ptr %0, align 8, !tbaa !20
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %4, 0
  br i1 %i.p, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.r) #11
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  %.not = icmp eq i64 %i.u, %4
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %4) #12 ; 2 uses
  %.not54 = icmp eq ptr %i.v, null
  br i1 %.not54, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.x) #11
  store ptr %i.v, ptr %i.w, align 8, !tbaa !28
  store i64 %4, ptr %i.t, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h
  %.047 = phi ptr [ %i.d, %bb.h ], [ %i.b, %bb.j ], [ %i.b, %bb.l ] ; 3 uses
  %i.y = icmp ne ptr %3, null
  %i.z = icmp ne i64 %4, 0
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.047, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.k, %bb.m, %bb.n, %bb.b, %bb.g, %bb.d
  %.1 = phi ptr [ null, %bb.k ], [ null, %bb.d ], [ null, %bb.g ], [ %.047, %bb.m ], [ null, %bb.b ], [ %.047, %bb.n ], [ %i.b, %.thread ]
  ret ptr %.1
}

declare ptr @mbedtls_asn1_find_named_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !9}
!15 = !{!16, !18, i64 8}
!16 = !{!"mbedtls_mpi", !17, i64 0, !18, i64 8, !18, i64 10}
!17 = !{!"p1 long", !12, i64 0}
!18 = !{!"short", !6, i64 0}
!19 = distinct !{!19, !9}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS23mbedtls_asn1_named_data", !12, i64 0}
!22 = !{!23, !25, i64 8}
!23 = !{!"mbedtls_asn1_named_data", !24, i64 0, !24, i64 24, !21, i64 48, !6, i64 56}
!24 = !{!"mbedtls_asn1_buf", !5, i64 0, !25, i64 8, !11, i64 16}
!25 = !{!"long", !6, i64 0}
!26 = !{!23, !11, i64 16}
!27 = !{!23, !25, i64 32}
!28 = !{!23, !11, i64 40}
!29 = !{!23, !21, i64 48}
end_hunk_0
