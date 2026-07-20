inline.NumInlined: 21
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@mbedtls_asn1_write_printable_string:bb.a
  store i8 %i.x, ptr %i.z, align 1, !tbaa !12
  %i.aa = lshr i64 %i.m, 16                       ; 2 uses
  %.not22.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not22.i.i.i.1, label %bb.d, label %.preheader.i.i.i.2

.preheader.i.i.i.2:                               ; preds = %.preheader.i.i.i.1
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !9
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !12
  %i.ae = lshr i64 %i.m, 24                       ; 2 uses
  %.not22.i.i.i.2 = icmp eq i64 %i.ae, 0
  br i1 %.not22.i.i.i.2, label %bb.d, label %.preheader.i.i.i.3

.preheader.i.i.i.3:                               ; preds = %.preheader.i.i.i.2
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = load ptr, ptr %0, align 8, !tbaa !9
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -1 ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !9
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i.3, %.preheader.i.i.i.2, %.preheader.i.i.i.1, %.preheader.i.i.i
  %i.ai = icmp samesign ugt i32 %.1.i.i.i, 1
  br i1 %i.ai, label %bb.e, label %mbedtls_asn1_write_len.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aj = trunc i32 %.1.i.i.i to i8
  %i.ak = add i8 %i.aj, 127
  %i.al = load ptr, ptr %0, align 8, !tbaa !9
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -1 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !9
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !12
  br label %mbedtls_asn1_write_len.exit.i.i

mbedtls_asn1_write_len.exit.i.i:                  ; preds = %bb.e, %bb.d
  %i.an = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.d
  %i.aq = icmp slt i64 %i.ap, 1
  br i1 %i.aq, label %mbedtls_asn1_write_tagged_string.exit, label %bb.f

bb.f:                                             ; preds = %mbedtls_asn1_write_len.exit.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -1 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !9
  store i8 19, ptr %i.ar, align 1, !tbaa !12
  %i.as = add nuw i32 %i.n, 1
  %i.at = add i32 %i.as, %.1.i.i.i
  br label %mbedtls_asn1_write_tagged_string.exit

mbedtls_asn1_write_tagged_string.exit:            ; preds = %bb.a, %mbedtls_asn1_write_raw_buffer.exit.i, %.loopexit.i.i.i, %mbedtls_asn1_write_len.exit.i.i, %bb.f
  %.0.i = phi i32 [ -108, %.loopexit.i.i.i ], [ %i.i, %mbedtls_asn1_write_raw_buffer.exit.i ], [ %i.at, %bb.f ], [ -108, %mbedtls_asn1_write_len.exit.i.i ], [ -108, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @mbedtls_asn1_write_ia5_string(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 3 uses
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
  store ptr %i.h, ptr %0, align 8, !tbaa !9
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
  br i1 %.not.i.i.i.1, label %.loopexit.i.i.i, label %.preheader23.i.i.i.2

.preheader23.i.i.i.2:                             ; preds = %.preheader23.i.i.i.1
  %.mask8 = and i64 %3, 2130706432
  %.not.i.i.i.2 = icmp eq i64 %.mask8, 0
  %spec.select = select i1 %.not.i.i.i.2, i32 4, i32 5
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader23.i.i.i.2, %.preheader23.i.i.i, %.preheader23.i.i.i.1, %bb.c, %bb.b
  %i.m = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ %i.k, %.preheader23.i.i.i ], [ %i.k, %.preheader23.i.i.i.2 ], [ %i.k, %.preheader23.i.i.i.1 ] ; 4 uses
  %i.n = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ %i.i, %.preheader23.i.i.i ], [ %i.i, %.preheader23.i.i.i.2 ], [ %i.i, %.preheader23.i.i.i.1 ]
  %.1.i.i.i = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 2, %.preheader23.i.i.i ], [ 3, %.preheader23.i.i.i.1 ], [ %spec.select, %.preheader23.i.i.i.2 ] ; 4 uses
  %i.o = zext nneg i32 %.1.i.i.i to i64
  %i.p = load ptr, ptr %0, align 8, !tbaa !9
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.d
  %i.s = icmp slt i64 %i.r, %i.o
  br i1 %i.s, label %mbedtls_asn1_write_tagged_string.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit.i.i.i
  %i.t = trunc i64 %i.m to i8
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -1 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !9
  store i8 %i.t, ptr %i.v, align 1, !tbaa !12
  %i.w = lshr i64 %i.m, 8                         ; 2 uses
  %.not22.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not22.i.i.i, label %bb.d, label %.preheader.i.i.i.1

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  %i.x = trunc i64 %i.w to i8
  %i.y = load ptr, ptr %0, align 8, !tbaa !9
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !9
  store i8 %i.x, ptr %i.z, align 1, !tbaa !12
  %i.aa = lshr i64 %i.m, 16                       ; 2 uses
  %.not22.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not22.i.i.i.1, label %bb.d, label %.preheader.i.i.i.2

.preheader.i.i.i.2:                               ; preds = %.preheader.i.i.i.1
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !9
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !12
  %i.ae = lshr i64 %i.m, 24                       ; 2 uses
  %.not22.i.i.i.2 = icmp eq i64 %i.ae, 0
  br i1 %.not22.i.i.i.2, label %bb.d, label %.preheader.i.i.i.3

.preheader.i.i.i.3:                               ; preds = %.preheader.i.i.i.2
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = load ptr, ptr %0, align 8, !tbaa !9
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -1 ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !9
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i.3, %.preheader.i.i.i.2, %.preheader.i.i.i.1, %.preheader.i.i.i
  %i.ai = icmp samesign ugt i32 %.1.i.i.i, 1
  br i1 %i.ai, label %bb.e, label %mbedtls_asn1_write_len.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aj = trunc i32 %.1.i.i.i to i8
  %i.ak = add i8 %i.aj, 127
  %i.al = load ptr, ptr %0, align 8, !tbaa !9
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -1 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !9
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !12
  br label %mbedtls_asn1_write_len.exit.i.i

mbedtls_asn1_write_len.exit.i.i:                  ; preds = %bb.e, %bb.d
  %i.an = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.d
  %i.aq = icmp slt i64 %i.ap, 1
  br i1 %i.aq, label %mbedtls_asn1_write_tagged_string.exit, label %bb.f

bb.f:                                             ; preds = %mbedtls_asn1_write_len.exit.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -1 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !9
  store i8 22, ptr %i.ar, align 1, !tbaa !12
  %i.as = add nuw i32 %i.n, 1
  %i.at = add i32 %i.as, %.1.i.i.i
  br label %mbedtls_asn1_write_tagged_string.exit

mbedtls_asn1_write_tagged_string.exit:            ; preds = %bb.a, %mbedtls_asn1_write_raw_buffer.exit.i, %.loopexit.i.i.i, %mbedtls_asn1_write_len.exit.i.i, %bb.f
  %.0.i = phi i32 [ -108, %.loopexit.i.i.i ], [ %i.i, %mbedtls_asn1_write_raw_buffer.exit.i ], [ %i.at, %bb.f ], [ -108, %mbedtls_asn1_write_len.exit.i.i ], [ -108, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @mbedtls_asn1_write_named_bitstring(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
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
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %i.h = zext i8 %i.g to i32
  %i.i = trunc i64 %i.c to i32
  %i.j = lshr i32 %i.h, %i.i
  %4 = trunc nuw i32 %i.j to i8                   ; 2 uses
  %5 = and i8 %4, 1
  %.not2627 = icmp eq i8 %5, 0
  br i1 %.not2627, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = add i64 %3, -1                           ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph35.a

.lr.ph:                                           ; preds = %bb.d
  %i.m = add i64 %i.o, -1                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph35.a, !llvm.loop !19

.lr.ph35.a:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %i.o = phi i64 [ %i.m, %.lr.ph ], [ %i.k, %.lr.ph.preheader ] ; 3 uses
  %.0202834 = phi ptr [ %.121, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.in33 = phi i8 [ %.119, %.lr.ph ], [ %4, %.lr.ph.preheader ]
  %i.p = lshr i8 %.in33, 1
  %i.q = and i64 %i.o, 7
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph35.a
  %i.s = getelementptr inbounds i8, ptr %.0202834, i64 -1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph35.a
  %.121 = phi ptr [ %i.s, %bb.c ], [ %.0202834, %.lr.ph35.a ]
  %.119 = phi i8 [ %i.t, %bb.c ], [ %i.p, %.lr.ph35.a ] ; 2 uses
  %6 = and i8 %.119, 1
  %.not26 = icmp eq i8 %6, 0
  br i1 %.not26, label %.lr.ph, label %..loopexit.loopexit_crit_edge, !llvm.loop !19

..loopexit.loopexit_crit_edge:                    ; preds = %bb.d
  br label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..loopexit.loopexit_crit_edge, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %3, %bb.b ], [ %i.o, %..loopexit.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ]
  %i.u = tail call i32 @mbedtls_asn1_write_bitstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.1)
  ret i32 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @mbedtls_asn1_write_bitstring(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %3, 7                            ; 4 uses
  %i.b = lshr i64 %i.a, 3                         ; 5 uses
  %i.c = and i64 %i.a, -8
  %i.d = sub i64 %i.c, %3                         ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !9      ; 4 uses
  %i.f = icmp ult ptr %i.e, %1
  br i1 %i.f, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = add nuw nsw i64 %i.b, 1                  ; 3 uses
  %.not = icmp ugt i64 %i.i, %i.b
  br i1 %.not, label %bb.c, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit

bb.c:                                             ; preds = %bb.b
  %.not29 = icmp eq i64 %i.b, 0
  br i1 %.not29, label %.thread30, label %bb.d

.thread30:                                        ; preds = %bb.c
  %i.k = trunc i64 %i.d to i8
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 -1 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !9
  store i8 %i.k, ptr %i.l, align 1, !tbaa !12
  br label %.loopexit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i64 %i.b, -1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %i.p = trunc i64 %i.d to i32
  %notmask = shl nsw i32 -1, %i.p
  %i.q = trunc i32 %notmask to i8
  %i.r = and i8 %i.o, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -1 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !9
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12
  %i.t = load ptr, ptr %0, align 8, !tbaa !9
  %i.u = sub nsw i64 1, %i.b
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %2, i64 %i.m, i1 false)
  %i.w = trunc i64 %i.d to i8
  %i.x = load ptr, ptr %0, align 8, !tbaa !9
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1 ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !9
  store i8 %i.w, ptr %i.y, align 1, !tbaa !12
  %i.z = icmp ugt i64 %i.a, 34359738359
  br i1 %i.z, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp samesign ugt i64 %i.a, 1015
  br i1 %i.aa, label %.preheader23.i.i, label %.loopexit.i.i

.preheader23.i.i:                                 ; preds = %bb.e, %.preheader23.i.i
  %.025.i.i = phi i64 [ %i.ac, %.preheader23.i.i ], [ %i.j, %bb.e ]
  %.01724.i.i = phi i32 [ %i.ab, %.preheader23.i.i ], [ 1, %bb.e ]
  %i.ab = add nuw nsw i32 %.01724.i.i, 1          ; 2 uses
  %i.ac = lshr i64 %.025.i.i, 8                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader23.i.i, !llvm.loop !7

.loopexit.i.i:                                    ; preds = %.preheader23.i.i, %.thread30, %bb.e
  %.1.i.i = phi i32 [ 1, %bb.e ], [ 1, %.thread30 ], [ %i.ab, %.preheader23.i.i ] ; 4 uses
  %i.ad = zext nneg i32 %.1.i.i to i64
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.h
  %i.ah = icmp slt i64 %i.ag, %i.ad
  br i1 %i.ah, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.i.i
  %.018.i.i = phi i64 [ %i.al, %.preheader.i.i ], [ %i.j, %.loopexit.i.i ] ; 2 uses
  %i.ai = trunc i64 %.018.i.i to i8
  %i.aj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !9
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !12
  %i.al = lshr i64 %.018.i.i, 8                   ; 2 uses
  %.not22.i.i = icmp eq i64 %i.al, 0
  br i1 %.not22.i.i, label %bb.f, label %.preheader.i.i, !llvm.loop !13

bb.f:                                             ; preds = %.preheader.i.i
  %i.am = icmp samesign ugt i32 %.1.i.i, 1
  br i1 %i.am, label %bb.g, label %mbedtls_asn1_write_len.exit.i

bb.g:                                             ; preds = %bb.f
  %i.an = trunc i32 %.1.i.i to i8
  %i.ao = add i8 %i.an, 127
  %i.ap = load ptr, ptr %0, align 8, !tbaa !9
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !9
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !12
  br label %mbedtls_asn1_write_len.exit.i

mbedtls_asn1_write_len.exit.i:                    ; preds = %bb.g, %bb.f
  %i.ar = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.h
  %i.au = icmp slt i64 %i.at, 1
  br i1 %i.au, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %bb.h

bb.h:                                             ; preds = %mbedtls_asn1_write_len.exit.i
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -1 ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !9
  store i8 3, ptr %i.av, align 1, !tbaa !12
  %i.aw = trunc nuw i64 %i.j to i32
  %i.ax = add i32 %i.aw, 1
  %i.ay = add i32 %i.ax, %.1.i.i
  br label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit

_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit: ; preds = %bb.h, %mbedtls_asn1_write_len.exit.i, %.loopexit.i.i, %bb.d, %bb.a, %bb.b
  %.0 = phi i32 [ -108, %bb.a ], [ -108, %bb.b ], [ %i.ay, %bb.h ], [ -100, %bb.d ], [ -108, %.loopexit.i.i ], [ -108, %mbedtls_asn1_write_len.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @mbedtls_asn1_write_octet_string(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.e, %3
  %or.cond.i = or i1 %i.b, %i.f
  br i1 %or.cond.i, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !9
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.loopexit.i.i, label %mbedtls_asn1_write_raw_buffer.exit

mbedtls_asn1_write_raw_buffer.exit:               ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.i = trunc i64 %3 to i32                      ; 6 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %bb.c

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
  br i1 %.not.i.i.1, label %.loopexit.i.i, label %.preheader23.i.i.2

.preheader23.i.i.2:                               ; preds = %.preheader23.i.i.1
  %.mask20 = and i64 %3, 2130706432
  %.not.i.i.2 = icmp eq i64 %.mask20, 0
  %spec.select = select i1 %.not.i.i.2, i32 4, i32 5
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader23.i.i.2, %.preheader23.i.i, %.preheader23.i.i.1, %bb.b, %bb.c
  %i.m = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ %i.k, %.preheader23.i.i ], [ %i.k, %.preheader23.i.i.2 ], [ %i.k, %.preheader23.i.i.1 ] ; 4 uses
  %i.n = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ %i.i, %.preheader23.i.i ], [ %i.i, %.preheader23.i.i.2 ], [ %i.i, %.preheader23.i.i.1 ]
  %.1.i.i = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 2, %.preheader23.i.i ], [ 3, %.preheader23.i.i.1 ], [ %spec.select, %.preheader23.i.i.2 ] ; 4 uses
  %i.o = zext nneg i32 %.1.i.i to i64
  %i.p = load ptr, ptr %0, align 8, !tbaa !9
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.d
  %i.s = icmp slt i64 %i.r, %i.o
  br i1 %i.s, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i
  %i.t = trunc i64 %i.m to i8
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -1 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !9
  store i8 %i.t, ptr %i.v, align 1, !tbaa !12
  %i.w = lshr i64 %i.m, 8                         ; 2 uses
  %.not22.i.i = icmp eq i64 %i.w, 0
  br i1 %.not22.i.i, label %bb.d, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  %i.x = trunc i64 %i.w to i8
  %i.y = load ptr, ptr %0, align 8, !tbaa !9
end_hunk_0
