inline.NumInlined: 89
inline.NumDeleted: 9
begin_hunk_0_@mbedtls_x509_dn_gets:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0125
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @mbedtls_oid_get_attr_short_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_oid_get_numeric_string(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_asn1_write_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_asn1_write_tag(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define i32 @mbedtls_x509_serial_gets(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = icmp ult i64 %i.b, 33
  %spec.select = select i1 %i.c, i64 %i.b, i64 28
  %spec.select.fr = freeze i64 %spec.select       ; 5 uses
  %.not58 = icmp eq i64 %spec.select.fr, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not59 = icmp eq i64 %spec.select.fr, 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = add nsw i64 %spec.select.fr, -1
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11    ; 3 uses
  br i1 %.not59, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.lr.ph.split.peel.next.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.preheader
  %i.i = zext i8 %i.g to i32
  %i.j = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.10, i32 noundef %i.i, ptr noundef nonnull @.str.11) #12 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.j to i64                ; 3 uses
  %.not50.peel = icmp ugt i64 %1, %i.l
  br i1 %.not50.peel, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = sub nuw i64 %1, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  br label %.lr.ph.split.peel.next.preheader

.lr.ph.split.peel.next.preheader:                 ; preds = %.lr.ph.split.preheader, %bb.d
  %.055.ph = phi ptr [ %i.n, %bb.d ], [ %0, %.lr.ph.split.preheader ]
  %.03954.ph = phi i64 [ %i.m, %bb.d ], [ %1, %.lr.ph.split.preheader ]
  br label %.lr.ph.split.peel.next

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.o = zext i8 %i.g to i32
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.10, i32 noundef %i.o, ptr noundef nonnull @.str.12) #12 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.r = zext nneg i32 %i.p to i64                ; 3 uses
  %.not50.us = icmp ugt i64 %1, %i.r
  br i1 %.not50.us, label %._crit_edge.loopexit, label %.loopexit

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.peel.next.preheader, %bb.g
  %.055 = phi ptr [ %i.ab, %bb.g ], [ %.055.ph, %.lr.ph.split.peel.next.preheader ] ; 2 uses
  %.03954 = phi i64 [ %i.aa, %bb.g ], [ %.03954.ph, %.lr.ph.split.peel.next.preheader ] ; 3 uses
  %.04153 = phi i64 [ %i.ac, %bb.g ], [ 1, %.lr.ph.split.peel.next.preheader ] ; 3 uses
  %.pre66 = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %.pre66, i64 %.04153
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11
  %i.u = zext i8 %i.t to i32
  %i.v = icmp ult i64 %.04153, %i.e
  %i.w = select i1 %i.v, ptr @.str.11, ptr @.str.12
  %i.x = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.055, i64 noundef %.03954, ptr noundef nonnull @.str.10, i32 noundef %i.u, ptr noundef nonnull %i.w) #12 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.peel.next
  %i.z = zext nneg i32 %i.x to i64                ; 3 uses
  %.not50 = icmp ugt i64 %.03954, %i.z
  br i1 %.not50, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aa = sub nuw i64 %.03954, %i.z               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.055, i64 %i.z ; 2 uses
  %i.ac = add nuw i64 %.04153, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %spec.select.fr
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.peel.next, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %i.ae = sub nuw i64 %1, %i.r
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %._crit_edge.loopexit, %bb.a
  %.039.lcssa = phi i64 [ %1, %bb.a ], [ %i.ae, %._crit_edge.loopexit ], [ %i.aa, %bb.g ] ; 4 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.ad, %._crit_edge.loopexit ], [ %i.ab, %bb.g ]
  %i.af = load i64, ptr %i.a, align 8, !tbaa !16
  %.not = icmp eq i64 %spec.select.fr, %i.af
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ag = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0.lcssa, i64 noundef %.039.lcssa, ptr noundef nonnull @.str.13) #12 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = zext nneg i32 %i.ag to i64              ; 2 uses
  %.not49 = icmp ugt i64 %.039.lcssa, %i.ai
  br i1 %.not49, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aj = sub nuw i64 %.039.lcssa, %i.ai
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.2 = phi i64 [ %i.aj, %bb.j ], [ %.039.lcssa, %._crit_edge ]
  %i.ak = sub i64 %1, %.2
  %i.al = trunc i64 %i.ak to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.lr.ph.split.peel.next, %bb.b, %bb.c, %bb.e, %.lr.ph.split.us, %bb.h, %bb.i, %bb.k
  %.038 = phi i32 [ %i.al, %bb.k ], [ -10624, %bb.i ], [ -10624, %bb.h ], [ -10624, %bb.e ], [ -10624, %.lr.ph.split.us ], [ -10624, %bb.c ], [ -10624, %bb.b ], [ -10624, %.lr.ph.split.peel.next ], [ -10624, %bb.f ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_x509_sig_alg_gets(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = call i32 @mbedtls_oid_get_sig_alg_desc(ptr noundef %2, ptr noundef nonnull %i.a) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.14) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.9, ptr noundef %i.d) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.036 = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.f = icmp slt i32 %.036, 0
  br i1 %i.f, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = zext nneg i32 %.036 to i64               ; 3 uses
  %.not44 = icmp ugt i64 %1, %i.g
  br i1 %.not44, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.i = icmp eq i32 %3, 6
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %switch.tableidx = add i32 %4, -3               ; 2 uses
  %i.k = icmp ult i32 %switch.tableidx, 9
  br i1 %i.k, label %switch.lookup, label %md_type_to_string.exit

switch.lookup:                                    ; preds = %bb.g
  %i.l = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_x509_sig_alg_gets.3, i64 %i.l
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %md_type_to_string.exit

md_type_to_string.exit:                           ; preds = %bb.g, %switch.lookup
  %.not45 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.14, %bb.g ]
  %i.m = load i32, ptr %5, align 4, !tbaa !44
  %switch.tableidx54 = add i32 %i.m, -3           ; 2 uses
  %i.n = icmp ult i32 %switch.tableidx54, 9
  br i1 %i.n, label %switch.lookup55, label %md_type_to_string.exit50

switch.lookup55:                                  ; preds = %md_type_to_string.exit
  %i.o = zext nneg i32 %switch.tableidx54 to i64
  %switch.gep56 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_x509_sig_alg_gets.3, i64 %i.o
  %switch.load57 = load ptr, ptr %switch.gep56, align 8
  br label %md_type_to_string.exit50

md_type_to_string.exit50:                         ; preds = %md_type_to_string.exit, %switch.lookup55
  %.not46 = phi ptr [ %switch.load57, %switch.lookup55 ], [ @.str.14, %md_type_to_string.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !46
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.j, i64 noundef %i.h, ptr noundef nonnull @.str.15, ptr noundef nonnull %.not45, ptr noundef nonnull %.not46, i32 noundef %i.q) #12 ; 2 uses
  %6 = icmp sgt i32 %i.r, -1
  %7 = zext nneg i32 %i.r to i64                  ; 2 uses
  %.not47 = icmp ugt i64 %i.h, %7
  %.not52 = select i1 %6, i1 %.not47, i1 false    ; 2 uses
  %spec.select = select i1 %.not52, i64 %7, i64 0
  %.038 = sub nuw i64 %i.h, %spec.select
  br i1 %.not52, label %bb.h, label %bb.i

bb.h:                                             ; preds = %md_type_to_string.exit50, %bb.f
  %.139 = phi i64 [ %.038, %md_type_to_string.exit50 ], [ %i.h, %bb.f ]
  %i.s = sub i64 %1, %.139
  %i.t = trunc i64 %i.s to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %md_type_to_string.exit50, %bb.h
  %.1 = phi i32 [ -10624, %md_type_to_string.exit50 ], [ %i.t, %bb.h ], [ -10624, %bb.e ], [ -10624, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.1
}

declare i32 @mbedtls_oid_get_sig_alg_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define range(i32 -10624, 1) i32 @mbedtls_x509_key_size_helper(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.16, ptr noundef %2) #12 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = zext nneg i32 %i.a to i64
  %.not = icmp ugt i64 %1, %i.c
  %or.cond = select i1 %i.b, i1 %.not, i1 false
  %.0 = select i1 %or.cond, i32 0, i32 -10624
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @mbedtls_x509_time_cmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22
  %i.b = shl i32 %i.a, 9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24
  %i.e = shl i32 %i.d, 5
  %i.f = or i32 %i.e, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !25
  %i.i = or i32 %i.f, %i.h
  %i.j = load i32, ptr %1, align 4, !tbaa !22
  %i.k = shl i32 %i.j, 9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %i.n = shl i32 %i.m, 5
  %i.o = or i32 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !25
  %i.r = or i32 %i.o, %i.q
  %i.s = sub nsw i32 %i.i, %i.r                   ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26
  %i.v = shl i32 %i.u, 12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  %i.y = shl i32 %i.x, 6
  %i.z = or i32 %i.y, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ac = or i32 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = shl i32 %i.ae, 12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !27
  %i.ai = shl i32 %i.ah, 6
  %i.aj = or i32 %i.ai, %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.am = or i32 %i.aj, %i.al
  %i.an = sub nsw i32 %i.ac, %i.am
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.an, %bb.b ], [ %i.s, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mbedtls_x509_time_gmtime(i64 noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %struct.tm, align 8                 ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.b = call ptr @mbedtls_platform_gmtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #12
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load <4 x i32>, ptr %i.d, align 8, !tbaa !4
  %i.f = add nsw <4 x i32> %i.e, <i32 0, i32 0, i32 1, i32 1900>
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.g, ptr %1, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x i32>, ptr %2, align 8, !tbaa !4
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.j, ptr %i.h, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0
}

declare ptr @mbedtls_platform_gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mbedtls_x509_time_is_past(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.tm, align 8                 ; 10 uses
  %i.b = tail call i64 @time(ptr noundef null) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.c = call ptr @mbedtls_platform_gmtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #12
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %x509_get_current_time.exit, label %bb.b

x509_get_current_time.exit:                       ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %i.o = load i32, ptr %1, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load i32, ptr %0, align 4, !tbaa !22
  %i.q = shl i32 %i.p, 9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !24
  %i.t = shl i32 %i.s, 5
  %i.u = or i32 %i.t, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25
  %i.x = or i32 %i.u, %i.w
  %i.y = shl i32 %i.f, 9
  %i.z = add i32 %i.y, 972800
  %i.aa = shl i32 %i.h, 5
  %i.ab = add i32 %i.aa, 32
  %i.ac = or i32 %i.j, %i.z
  %i.ad = or i32 %i.ac, %i.ab
  %i.ae = sub nsw i32 %i.x, %i.ad                 ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.c, label %mbedtls_x509_time_cmp.exit

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26
  %i.ah = shl i32 %i.ag, 12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27
  %i.ak = shl i32 %i.aj, 6
  %i.al = or i32 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ao = or i32 %i.al, %i.an
  %i.ap = shl i32 %i.l, 12
  %i.aq = shl i32 %i.n, 6
  %i.ar = or i32 %i.aq, %i.ap
  %i.as = or i32 %i.ar, %i.o
  %i.at = sub nsw i32 %i.ao, %i.as
  br label %mbedtls_x509_time_cmp.exit

mbedtls_x509_time_cmp.exit:                       ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.at, %bb.c ], [ %i.ae, %bb.b ]
  %.lobit = lshr i32 %.0.i, 31
  br label %bb.d

bb.d:                                             ; preds = %x509_get_current_time.exit, %mbedtls_x509_time_cmp.exit
  %.0 = phi i32 [ %.lobit, %mbedtls_x509_time_cmp.exit ], [ 1, %x509_get_current_time.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mbedtls_x509_time_is_future(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.tm, align 8                 ; 10 uses
  %i.b = tail call i64 @time(ptr noundef null) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.c = call ptr @mbedtls_platform_gmtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #12
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %x509_get_current_time.exit, label %bb.b

x509_get_current_time.exit:                       ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

end_hunk_0
