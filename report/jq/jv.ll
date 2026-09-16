Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv?download=true
inline.NumInlined: 353
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@jv_object:jvp_object_new.exit
  store i32 4, ptr %i.v, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i32 0, ptr %i.x, align 4, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i32 5, ptr %i.z, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 0, ptr %i.ab, align 4, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i32 6, ptr %i.ad, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  store i32 0, ptr %i.af, align 4, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.ah, align 4, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i8 -1, i64 64, i1 false), !tbaa !14
  %.fca.1.insert.i = insertvalue { i64, ptr } { i64 34359738503, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_object_get(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, i32 noundef 1854, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_get) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %2, 15
  %i.d = icmp eq i64 %i.c, 5
  br i1 %i.d, label %jvp_object_read.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8, i32 noundef 1855, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_get) #19
  unreachable

jvp_object_read.exit:                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = ashr i64 %0, 32
  %i.g = getelementptr inbounds [40 x i8], ptr %i.e, i64 %i.f
  %sh.diff.i.i.i = lshr i64 %0, 31
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.h = and i32 %tr.sh.diff.i.i.i, -2
  %i.i = add nsw i32 %i.h, -1
  %i.j = tail call fastcc i32 @jvp_string_hash(i64 %2, ptr %3)
  %i.k = and i32 %i.j, %i.i
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l
  %i.n = tail call fastcc ptr @jvp_object_find_slot(i64 %0, ptr readonly %1, i64 %2, ptr %3, ptr noundef nonnull readonly %i.m) ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %jv_copy.exit, label %bb.e

bb.e:                                             ; preds = %jvp_object_read.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = and i64 %i.q, 128
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %jv_copy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.s, align 4, !tbaa !17
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.f, %bb.e, %jvp_object_read.exit
  %.sroa.034.0 = phi i64 [ 0, %jvp_object_read.exit ], [ %i.q, %bb.e ], [ %i.q, %bb.f ]
  %.sroa.3.0 = phi ptr [ null, %jvp_object_read.exit ], [ %i.s, %bb.e ], [ %i.s, %bb.f ]
  tail call void @jv_free(i64 %0, ptr nonnull %1)
  tail call void @jv_free(i64 %2, ptr %3)
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.034.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @jv_object_has(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, i32 noundef 1869, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_has) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %2, 15
  %i.d = icmp eq i64 %i.c, 5
  br i1 %i.d, label %jvp_object_read.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8, i32 noundef 1870, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_has) #19
  unreachable

jvp_object_read.exit:                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = ashr i64 %0, 32
  %i.g = getelementptr inbounds [40 x i8], ptr %i.e, i64 %i.f
  %sh.diff.i.i.i = lshr i64 %0, 31
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.h = and i32 %tr.sh.diff.i.i.i, -2
  %i.i = add nsw i32 %i.h, -1
  %i.j = tail call fastcc i32 @jvp_string_hash(i64 %2, ptr %3)
  %i.k = and i32 %i.j, %i.i
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l
  %i.n = tail call fastcc ptr @jvp_object_find_slot(i64 %0, ptr readonly %1, i64 %2, ptr %3, ptr noundef nonnull readonly %i.m)
  %i.o = icmp ne ptr %i.n, null
  %i.p = zext i1 %i.o to i32
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %2, ptr %3)
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_object_set(i64 %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr %5) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, i32 noundef 1879, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_set) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %2, 15
  %i.d = icmp eq i64 %i.c, 5
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8, i32 noundef 1880, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_set) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = tail call fastcc { i64, ptr } @jvp_object_unshare(i64 %0, ptr %1) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 9 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 8 uses
  %.sroa.11.0.extract.shift45 = lshr i64 %i.f, 8  ; 2 uses
  %i.h = and i64 %i.f, 15
  %i.i = icmp eq i64 %i.h, 7
  br i1 %i.i, label %jvp_object_find_bucket.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, i32 noundef 1641, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_ptr) #19
  unreachable

jvp_object_find_bucket.exit.i:                    ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.k = ashr i64 %i.f, 32
  %i.l = getelementptr inbounds [40 x i8], ptr %i.j, i64 %i.k
  %sh.diff.i.i.i = lshr i64 %i.f, 31
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.m = and i32 %tr.sh.diff.i.i.i, -2
  %i.n = add nsw i32 %i.m, -1
  %i.o = tail call fastcc i32 @jvp_string_hash(i64 %2, ptr %3)
  %i.p = and i32 %i.o, %i.n
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.q ; 3 uses
  %i.s = tail call fastcc ptr @jvp_object_find_slot(i64 %i.f, ptr %i.g, i64 %2, ptr %3, ptr noundef nonnull %i.r) ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %jvp_object_size.exit.i.i, label %jvp_string_ptr.exit.i.i

jvp_string_ptr.exit.i.i:                          ; preds = %jvp_object_find_bucket.exit.i
  %i.t = load i32, ptr %3, align 4, !tbaa !17
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %3, align 4, !tbaa !17
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.g, label %jvp_string_free.exit.i

bb.g:                                             ; preds = %jvp_string_ptr.exit.i.i
  tail call void @jv_mem_free(ptr noundef nonnull %3) #20
  br label %jvp_string_free.exit.i

jvp_string_free.exit.i:                           ; preds = %bb.g, %jvp_string_ptr.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %.pre = load i64, ptr %i.v, align 8
  br label %jvp_object_write.exit

jvp_object_size.exit.i.i:                         ; preds = %jvp_object_find_bucket.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14   ; 11 uses
  %.sroa.21.0.extract.shift.i.i.i = lshr i64 %i.f, 32 ; 2 uses
  %.sroa.21.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.y = icmp eq i32 %i.x, %.sroa.21.0.extract.trunc.i.i.i
  br i1 %i.y, label %bb.k, label %bb.h

bb.h:                                             ; preds = %jvp_object_size.exit.i.i
  %i.z = icmp ne i32 %i.x, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp sgt i32 %i.x, -1
  %i.ab = icmp slt i32 %i.x, %.sroa.21.0.extract.trunc.i.i.i
  %or.cond.i.i = and i1 %i.aa, %i.ab
  br i1 %or.cond.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.ac ; 2 uses
  %i.ae = add nuw nsw i32 %i.x, 1
  store i32 %i.ae, ptr %i.w, align 4, !tbaa !14
  %i.af = load i32, ptr %i.r, align 4, !tbaa !14
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !40
  store i32 %i.x, ptr %i.r, align 4, !tbaa !14
  br label %bb.ad

bb.k:                                             ; preds = %jvp_object_size.exit.i.i
  %.sroa.722.0.copyload.val.i.i = load i32, ptr %i.g, align 4, !tbaa !17 ; 2 uses
  %i.ag = icmp sgt i32 %.sroa.722.0.copyload.val.i.i, 0
  br i1 %i.ag, label %jvp_refcnt_unshared.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.8, i32 noundef 73, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_refcnt_unshared) #19
  unreachable

jvp_refcnt_unshared.exit.i.i:                     ; preds = %bb.k
  %.not.i50.i = icmp eq i32 %.sroa.722.0.copyload.val.i.i, 1
  br i1 %.not.i50.i, label %jvp_object_size.exit.i51.i, label %bb.m

bb.m:                                             ; preds = %jvp_refcnt_unshared.exit.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.8, i32 noundef 1709, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_rehash) #19
  unreachable

jvp_object_size.exit.i51.i:                       ; preds = %jvp_refcnt_unshared.exit.i.i
  %i.ah = icmp sgt i32 %i.x, 536870911
  br i1 %i.ah, label %jvp_string_ptr.exit.i54.i, label %bb.n

bb.n:                                             ; preds = %jvp_object_size.exit.i51.i
  %i.ai = shl nsw i32 %i.x, 1                     ; 6 uses
  %i.aj = icmp sgt i32 %i.x, 0
  %i.ak = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.ai)
  %i.al = icmp samesign ult i32 %i.ak, 2
  %or.cond.i.i.i = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.8, i32 noundef 1619, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_new) #19
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.am = zext nneg i32 %i.ai to i64              ; 5 uses
  %i.an = mul nuw nsw i64 %i.am, 40
  %6 = or disjoint i64 %i.an, 8
  %7 = shl nuw nsw i32 %i.x, 2                    ; 3 uses
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %i.ao = add nuw nsw i64 %6, %9
  %i.ap = tail call ptr @jv_mem_alloc(i64 noundef %i.ao) #20 ; 6 uses
  store i32 1, ptr %i.ap, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next.i.i.i, %bb.q ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i ; 4 uses
  %i.as = trunc i64 %indvars.iv.i.i.i to i32
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.am
  br i1 %exitcond.not.i.i.i, label %jvp_object_get_slot.exit.lr.ph.i.i, label %bb.q, !llvm.loop !1

jvp_object_get_slot.exit.lr.ph.i.i:               ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 5 uses
  store i32 0, ptr %i.ax, align 4, !tbaa !14
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.am ; 3 uses
  %10 = add nsw i32 %7, -2
  %11 = zext nneg i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  %13 = add nuw nsw i64 %12, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ay, i8 -1, i64 %13, i1 false), !tbaa !14
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %i.am, 32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, 135 ; 2 uses
  %i.az = add nsw i32 %7, -1                      ; 2 uses
  br label %jvp_object_get_slot.exit.i.i

jvp_object_get_slot.exit.i.i:                     ; preds = %bb.w, %jvp_object_get_slot.exit.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %jvp_object_get_slot.exit.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.w ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv.i.i ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.be = and i64 %i.bc, 15
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.w, label %jvp_object_find_bucket.exit.i.i

jvp_object_find_bucket.exit.i.i:                  ; preds = %jvp_object_get_slot.exit.i.i
  %i.bg = load ptr, ptr %i.bd, align 8
  %i.bh = tail call fastcc i32 @jvp_string_hash(i64 %i.bc, ptr %i.bg)
  %i.bi = and i32 %i.bh, %i.az
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bj ; 3 uses
  %i.bl = load i64, ptr %i.bb, align 8
  %i.bm = load ptr, ptr %i.bd, align 8
  %i.bn = tail call fastcc ptr @jvp_object_find_slot(i64 %.sroa.0.0.insert.insert.i.i.i, ptr nonnull %i.ap, i64 %i.bl, ptr %i.bm, ptr noundef nonnull %i.bk)
  %.not48.i.i = icmp eq ptr %i.bn, null
  br i1 %.not48.i.i, label %jvp_object_size.exit.i50.i.i, label %bb.r

bb.r:                                             ; preds = %jvp_object_find_bucket.exit.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.8, i32 noundef 1718, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_rehash) #19
  unreachable

jvp_object_size.exit.i50.i.i:                     ; preds = %jvp_object_find_bucket.exit.i.i
  %i.bo = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bq = load i32, ptr %i.ax, align 4, !tbaa !14 ; 6 uses
  %i.br = icmp eq i32 %i.bq, %i.ai
  br i1 %i.br, label %bb.u, label %bb.s

bb.s:                                             ; preds = %jvp_object_size.exit.i50.i.i
  %i.bs = icmp ne i32 %i.bq, -1
  tail call void @llvm.assume(i1 %i.bs)
  %or.cond.i53.i.i = icmp ult i32 %i.bq, %i.ai
  br i1 %or.cond.i53.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

bb.u:                                             ; preds = %jvp_object_size.exit.i50.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.8, i32 noundef 1720, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_rehash) #19
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bt = zext nneg i32 %i.bq to i64
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.bt ; 5 uses
  %i.bv = add nuw nsw i32 %i.bq, 1
  store i32 %i.bv, ptr %i.ax, align 4, !tbaa !14
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !14
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !40
  store i32 %i.bq, ptr %i.bk, align 4, !tbaa !14
  %i.bx = tail call fastcc i32 @jvp_string_hash(i64 %i.bo, ptr %i.bp)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.bo, ptr %i.bz, align 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bp, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %jvp_object_get_slot.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.sroa.21.0.extract.shift.i.i.i
  br i1 %exitcond.not.i.i, label %jvp_object_find_bucket.exit59.i, label %jvp_object_get_slot.exit.i.i, !llvm.loop !75

jvp_string_ptr.exit.i54.i:                        ; preds = %jvp_object_size.exit.i51.i
  %i.cc = load i32, ptr %3, align 4, !tbaa !17
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %3, align 4, !tbaa !17
  %.not.i55.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i55.i, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %jvp_string_ptr.exit.i54.i
  tail call void @jv_mem_free(ptr noundef nonnull %3) #20
  br label %bb.ae

jvp_object_find_bucket.exit59.i:                  ; preds = %bb.w
  tail call void @jv_mem_free(ptr noundef nonnull %i.g) #20
  %.sroa.11.0.extract.shift57 = shl nuw nsw i64 %i.am, 24
  %i.ce = tail call fastcc i32 @jvp_string_hash(i64 %2, ptr %3)
  %i.cf = and i32 %i.ce, %i.az
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.cg ; 3 uses
  %i.ci = tail call fastcc ptr @jvp_object_find_slot(i64 %.sroa.0.0.insert.insert.i.i.i, ptr nonnull %i.ap, i64 %2, ptr %3, ptr noundef nonnull %i.ch)
  %.not48.i = icmp eq ptr %i.ci, null
  br i1 %.not48.i, label %jvp_object_size.exit.i60.i, label %bb.y

bb.y:                                             ; preds = %jvp_object_find_bucket.exit59.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.8, i32 noundef 1775, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_write) #19
  unreachable

jvp_object_size.exit.i60.i:                       ; preds = %jvp_object_find_bucket.exit59.i
  %i.cj = load i32, ptr %i.ax, align 4, !tbaa !14 ; 6 uses
  %i.ck = icmp eq i32 %i.cj, %i.ai
  br i1 %i.ck, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %jvp_object_size.exit.i60.i
  %i.cl = icmp ne i32 %i.cj, -1
  tail call void @llvm.assume(i1 %i.cl)
  %or.cond.i63.i = icmp ult i32 %i.cj, %i.ai
  br i1 %or.cond.i63.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

bb.ab:                                            ; preds = %jvp_object_size.exit.i60.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.8, i32 noundef 1777, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_write) #19
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.cm = zext nneg i32 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.cm ; 2 uses
  %i.co = add nuw nsw i32 %i.cj, 1
  store i32 %i.co, ptr %i.ax, align 4, !tbaa !14
  %i.cp = load i32, ptr %i.ch, align 4, !tbaa !14
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !40
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.j
  %.sroa.11.sroa.0.0 = phi i64 [ %.sroa.11.0.extract.shift57, %bb.ac ], [ %.sroa.11.0.extract.shift45, %bb.j ]
  %.sroa.1169.0 = phi ptr [ %i.ap, %bb.ac ], [ %i.g, %bb.j ]
  %.sroa.0.0 = phi i64 [ 135, %bb.ac ], [ %i.f, %bb.j ]
  %.sink87.i = phi ptr [ %i.cn, %bb.ac ], [ %i.ad, %bb.j ] ; 4 uses
  %i.cq = tail call fastcc i32 @jvp_string_hash(i64 %2, ptr %3)
  %i.cr = getelementptr inbounds nuw i8, ptr %.sink87.i, i64 4
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink87.i, i64 8
  store i64 %2, ptr %i.cs, align 8
  %.sroa.3.0..sroa_idx.i65.i = getelementptr inbounds nuw i8, ptr %.sink87.i, i64 16
  store ptr %3, ptr %.sroa.3.0..sroa_idx.i65.i, align 8, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %.sink87.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  br label %jvp_object_write.exit

bb.ae:                                            ; preds = %jvp_string_ptr.exit.i54.i, %bb.x
  tail call void @jv_free(i64 %i.f, ptr nonnull %i.g)
  tail call void @jv_free(i64 %4, ptr %5)
  %i.cu = tail call i32 @jvp_utf8_is_valid(ptr noundef nonnull @.str.32, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 14)) #20, !inline_history !35
  %.not.i.i8 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i8, label %bb.af, label %jvp_string_new.exit.i

jvp_string_new.exit.i:                            ; preds = %bb.ae
  %i.cv = tail call noundef ptr @jv_mem_alloc(i64 noundef 31) #20, !inline_history !36 ; 6 uses
  store i32 1, ptr %i.cv, align 4, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 14, ptr %i.cw, align 4, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 28, ptr %i.cx, align 4, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.cy, ptr noundef nonnull readonly align 1 dereferenceable(14) @.str.32, i64 14, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 30
  store i8 0, ptr %i.cz, align 2, !tbaa !15
  %i.da = insertvalue { i64, ptr } { i64 133, ptr poison }, ptr %i.cv, 1
  br label %jv_string.exit

bb.af:                                            ; preds = %bb.ae
  %i.db = tail call fastcc { i64, ptr } @jvp_string_copy_replace_bad(ptr noundef nonnull @.str.32, i32 noundef 14), !inline_history !35
  br label %jv_string.exit

jv_string.exit:                                   ; preds = %jvp_string_new.exit.i, %bb.af
  %.fca.1.insert.i.merged.i = phi { i64, ptr } [ %i.da, %jvp_string_new.exit.i ], [ %i.db, %bb.af ] ; 2 uses
  %i.dc = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i, 0
  %i.dd = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i, 1
  %i.de = tail call ptr @jv_mem_alloc(i64 noundef 24) #20 ; 4 uses
  store i32 1, ptr %i.de, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.dc, ptr %i.df, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.dd, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  br label %bb.ag

jvp_object_write.exit:                            ; preds = %bb.ad, %jvp_string_free.exit.i
  %i.dg = phi i64 [ 0, %bb.ad ], [ %.pre, %jvp_string_free.exit.i ]
  %.sroa.11.sroa.0.1 = phi i64 [ %.sroa.11.sroa.0.0, %bb.ad ], [ %.sroa.11.0.extract.shift45, %jvp_string_free.exit.i ]
  %.sroa.1169.1 = phi ptr [ %.sroa.1169.0, %bb.ad ], [ %i.g, %jvp_string_free.exit.i ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.ad ], [ %i.f, %jvp_string_free.exit.i ]
  %.sink88.i = phi ptr [ %i.ct, %bb.ad ], [ %i.v, %jvp_string_free.exit.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink88.i, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void @jv_free(i64 %i.dg, ptr %i.di)
  store i64 %4, ptr %.sink88.i, align 8
  store ptr %5, ptr %i.dh, align 8, !tbaa !15
  %.sroa.11.0.insert.shift = shl nuw i64 %.sroa.11.sroa.0.1, 8
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.1, 255
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.11.0.insert.shift
  br label %bb.ag

bb.ag:                                            ; preds = %jvp_object_write.exit, %jv_string.exit
  %.sroa.06.0 = phi i64 [ %.sroa.0.0.insert.insert, %jvp_object_write.exit ], [ 128, %jv_string.exit ]
end_hunk_0
begin_hunk_1_@jvp_contains:bb.a
  tail call void @jv_free(i64 %2, ptr %3)
  ret i32 %.0
}

declare ptr @decNumberToString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @decContextClearStatus(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @decNumberFromString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @decContextDefault(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @decNumberReduce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @jvp_strtod(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @tsd_dtoa_context_get() local_unnamed_addr #4

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal void @jvp_hash_seed_init() #1 {
bb.a:
  %i.a = tail call i32 @arc4random() #20
  store i32 %i.a, ptr @hash_seed, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind
declare i32 @arc4random() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @jvp_object_find_slot(i64 %0, ptr nofree readonly captures(ret: address, provenance) %1, i64 %2, ptr nofree captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %.fr56 = freeze i64 %0                          ; 3 uses
  %.fr = freeze i64 %2                            ; 2 uses
  %i.a = tail call fastcc i32 @jvp_string_hash(i64 %.fr, ptr %3) ; 3 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !14     ; 4 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %jvp_string_equal.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, -1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %.fr56, 15
  %i.f = icmp eq i64 %i.e, 7
  br i1 %i.f, label %jvp_object_size.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, i32 noundef 1651, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_size) #19
  unreachable

jvp_object_size.exit.i:                           ; preds = %bb.c
  %.sroa.21.0.extract.shift.i.i = lshr i64 %.fr56, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32
  %i.g = icmp slt i32 %i.b, %.sroa.21.0.extract.trunc.i.i
  br i1 %i.g, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %jvp_object_size.exit.i, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

.lr.ph:                                           ; preds = %jvp_object_size.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = zext nneg i32 %i.b to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = and i64 %.fr, 15
  %i.l = icmp eq i64 %i.k, 5
  %i.m = getelementptr i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.21.0.extract.shift.i.i.i = lshr i64 %.fr56, 32
  %.sroa.21.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us.split.us, label %.lr.ph.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph, %jvp_object_next_slot.exit.us.us
  %.01426.us.us = phi ptr [ %i.ah, %jvp_object_next_slot.exit.us.us ], [ %i.j, %.lr.ph ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01426.us.us, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %bb.f, label %jvp_string_equal.exit.thread.us.us

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %.01426.us.us, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01426.us.us, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 15
  %i.x = icmp eq i64 %i.w, 5
  br i1 %i.x, label %jvp_string_ptr.exit19.i.us.us, label %.split.us

jvp_string_ptr.exit19.i.us.us:                    ; preds = %bb.f
  %.val18.i.us.us = load i32, ptr %i.m, align 4, !tbaa !14
  %i.y = lshr i32 %.val18.i.us.us, 1              ; 2 uses
  %i.z = getelementptr i8, ptr %i.t, i64 8
  %.val17.i.us.us = load i32, ptr %i.z, align 4, !tbaa !14
  %i.aa = lshr i32 %.val17.i.us.us, 1
  %.not.i.us.us = icmp eq i32 %i.y, %i.aa
  br i1 %.not.i.us.us, label %jvp_string_equal.exit.us.us, label %jvp_string_equal.exit.thread.us.us

jvp_string_equal.exit.us.us:                      ; preds = %jvp_string_ptr.exit19.i.us.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ac = zext nneg i32 %i.y to i64
  %bcmp.i.us.us = tail call i32 @bcmp(ptr nonnull readonly %i.n, ptr nonnull readonly %i.ab, i64 %i.ac)
  %.not20.us.us = icmp eq i32 %bcmp.i.us.us, 0
  br i1 %.not20.us.us, label %jvp_string_equal.exit._crit_edge, label %jvp_string_equal.exit.thread.us.us

jvp_string_equal.exit.thread.us.us:               ; preds = %jvp_string_equal.exit.us.us, %jvp_string_ptr.exit19.i.us.us, %.lr.ph.split.us.split.us
  %.014.val.us.us = load i32, ptr %.01426.us.us, align 8, !tbaa !40 ; 4 uses
  %i.ad = icmp eq i32 %.014.val.us.us, -1
  br i1 %i.ad, label %jvp_string_equal.exit._crit_edge, label %bb.g

bb.g:                                             ; preds = %jvp_string_equal.exit.thread.us.us
  %i.ae = icmp sgt i32 %.014.val.us.us, -1
  %i.af = icmp slt i32 %.014.val.us.us, %.sroa.21.0.extract.trunc.i.i.i
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %jvp_object_next_slot.exit.us.us, label %.split29.us

jvp_object_next_slot.exit.us.us:                  ; preds = %bb.g
  %i.ag = zext nneg i32 %.014.val.us.us to i64
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ag
  br label %.lr.ph.split.us.split.us, !llvm.loop !88

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = icmp eq i32 %i.aj, %i.a
  br i1 %i.ak, label %.split.us44, label %jvp_string_equal.exit.thread.us37

jvp_string_equal.exit.thread.us37:                ; preds = %.lr.ph.split, %jvp_object_next_slot.exit.us41
  %.01426.us3671 = phi ptr [ %i.ap, %jvp_object_next_slot.exit.us41 ], [ %i.j, %.lr.ph.split ]
  %.014.val.us38 = load i32, ptr %.01426.us3671, align 8, !tbaa !40 ; 4 uses
  %i.al = icmp eq i32 %.014.val.us38, -1
  br i1 %i.al, label %jvp_string_equal.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %jvp_string_equal.exit.thread.us37
  %i.am = icmp sgt i32 %.014.val.us38, -1
  %i.an = icmp slt i32 %.014.val.us38, %.sroa.21.0.extract.trunc.i.i.i
  %or.cond53 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond53, label %jvp_object_next_slot.exit.us41, label %.split29.us

jvp_object_next_slot.exit.us41:                   ; preds = %bb.h
  %i.ao = zext nneg i32 %.014.val.us38 to i64
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !41
  %i.as = icmp eq i32 %i.ar, %i.a
  br i1 %i.as, label %.split.us44, label %jvp_string_equal.exit.thread.us37, !llvm.loop !88

.split.us44:                                      ; preds = %jvp_object_next_slot.exit.us41, %.lr.ph.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.8, i32 noundef 1300, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_string_equal) #19
  unreachable

.split.us:                                        ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.8, i32 noundef 1301, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_string_equal) #19
  unreachable

.split29.us:                                      ; preds = %bb.h, %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

jvp_string_equal.exit._crit_edge:                 ; preds = %jvp_string_equal.exit.thread.us37, %jvp_string_equal.exit.thread.us.us, %jvp_string_equal.exit.us.us, %bb.a
  %.014.lcssa = phi ptr [ null, %bb.a ], [ %.01426.us.us, %jvp_string_equal.exit.us.us ], [ null, %jvp_string_equal.exit.thread.us.us ], [ null, %jvp_string_equal.exit.thread.us37 ]
  ret ptr %.014.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, ptr } @jvp_object_unshare(i64 %0, ptr %1) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, i32 noundef 1730, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_unshare) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val79 = load i32, ptr %1, align 4, !tbaa !17  ; 2 uses
  %i.c = icmp sgt i32 %.val79, 0
  br i1 %i.c, label %jvp_refcnt_unshared.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.8, i32 noundef 73, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_refcnt_unshared) #19
  unreachable

jvp_refcnt_unshared.exit:                         ; preds = %bb.c
  %.not = icmp eq i32 %.val79, 1
  br i1 %.not, label %bb.m, label %jvp_object_size.exit

jvp_object_size.exit:                             ; preds = %jvp_refcnt_unshared.exit
  %.sroa.21.0.extract.shift.i = lshr i64 %0, 32   ; 6 uses
  %.sroa.21.0.extract.trunc.i = trunc nuw i64 %.sroa.21.0.extract.shift.i to i32 ; 3 uses
  %i.d = icmp sgt i32 %.sroa.21.0.extract.trunc.i, 0
  %i.e = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %.sroa.21.0.extract.trunc.i)
  %i.f = icmp samesign ult i32 %i.e, 2
  %or.cond.i = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %jvp_object_size.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.8, i32 noundef 1619, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_new) #19
  unreachable

bb.f:                                             ; preds = %jvp_object_size.exit
  %i.g = mul nuw nsw i64 %.sroa.21.0.extract.shift.i, 40
  %i.h = add nuw nsw i64 %i.g, 8
  %2 = shl nuw nsw i32 %.sroa.21.0.extract.trunc.i, 1 ; 2 uses
  %3 = zext nneg i32 %2 to i64
  %i.i = shl nuw nsw i64 %3, 2
  %i.j = add nuw nsw i64 %i.h, %i.i
  %i.k = tail call ptr @jv_mem_alloc(i64 noundef %i.j) #20 ; 5 uses
  store i32 1, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv.i ; 4 uses
  %i.n = trunc i64 %indvars.iv.i to i32
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.21.0.extract.shift.i
  br i1 %exitcond.not.i, label %jvp_object_get_slot.exit92.lr.ph, label %bb.g, !llvm.loop !1

jvp_object_get_slot.exit92.lr.ph:                 ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !14
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.sroa.21.0.extract.shift.i
  %4 = add nsw i32 %2, -2
  %5 = zext nneg i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = add nuw nsw i64 %6, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.t, i8 -1, i64 %7, i1 false), !tbaa !14
  %.sroa.4.0.insert.shift.i = and i64 %0, -4294967296
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, 135
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14
  store i32 %i.v, ptr %i.s, align 4, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %jvp_object_get_slot.exit92

jvp_object_size.exit87:                           ; preds = %jvp_object_size.exit83
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = ashr i64 %0, 32                          ; 2 uses
  %i.z = getelementptr inbounds [40 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds [40 x i8], ptr %i.l, i64 %i.y
  %8 = shl nuw nsw i64 %.sroa.21.0.extract.shift.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr nonnull align 4 %i.z, i64 %8, i1 false)
  tail call void @jv_free(i64 %0, ptr nonnull %1)
  %.val = load i32, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %i.ab = icmp sgt i32 %.val, 0
  br i1 %i.ab, label %jvp_refcnt_unshared.exit88, label %bb.h

bb.h:                                             ; preds = %jvp_object_size.exit87
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.8, i32 noundef 73, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_refcnt_unshared) #19
  unreachable

jvp_refcnt_unshared.exit88:                       ; preds = %jvp_object_size.exit87
  %.not99 = icmp eq i32 %.val, 1
  br i1 %.not99, label %bb.m, label %bb.l

jvp_object_get_slot.exit92:                       ; preds = %jvp_object_get_slot.exit92.lr.ph, %jvp_object_size.exit83
  %indvars.iv = phi i64 [ 0, %jvp_object_get_slot.exit92.lr.ph ], [ %indvars.iv.next, %jvp_object_size.exit83 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %indvars.iv ; 5 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %indvars.iv ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !tbaa.struct !90
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = and i64 %i.af, 15
  %.not78 = icmp eq i64 %i.ag, 1
  br i1 %.not78, label %jvp_object_size.exit83, label %bb.i

bb.i:                                             ; preds = %jvp_object_get_slot.exit92
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aj = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.ak = and i64 %i.af, 128
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %jv_copy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !17
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.i, %bb.j
  store i64 %i.af, ptr %i.ai, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.aj, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = and i64 %i.ap, 128
  %.not.i95 = icmp eq i64 %i.as, 0
  br i1 %.not.i95, label %jv_copy.exit98, label %bb.k

bb.k:                                             ; preds = %jv_copy.exit
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !17
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !17
  br label %jv_copy.exit98

jv_copy.exit98:                                   ; preds = %jv_copy.exit, %bb.k
  store i64 %i.ap, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !15
  br label %jvp_object_size.exit83

jvp_object_size.exit83:                           ; preds = %jv_copy.exit98, %jvp_object_get_slot.exit92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.21.0.extract.shift.i
  br i1 %exitcond.not, label %jvp_object_size.exit87, label %jvp_object_get_slot.exit92, !llvm.loop !89

bb.l:                                             ; preds = %jvp_refcnt_unshared.exit88
  tail call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.8, i32 noundef 1751, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_unshare) #19
  unreachable

bb.m:                                             ; preds = %jvp_refcnt_unshared.exit, %jvp_refcnt_unshared.exit88
  %.pn102 = phi i64 [ %.sroa.0.0.insert.insert.i, %jvp_refcnt_unshared.exit88 ], [ %0, %jvp_refcnt_unshared.exit ]
  %.pn100 = phi ptr [ %i.k, %jvp_refcnt_unshared.exit88 ], [ %1, %jvp_refcnt_unshared.exit ]
  %.pn = insertvalue { i64, ptr } poison, i64 %.pn102, 0
  %.fca.1.insert.merged = insertvalue { i64, ptr } %.pn, ptr %.pn100, 1
  ret { i64, ptr } %.fca.1.insert.merged
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!"jv_refcnt", !11, i64 0}
!17 = !{!16, !11, i64 0}
!18 = !{!"short", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{i64 0, i64 1, !15, i64 1, i64 1, !15, i64 2, i64 2, !19, i64 4, i64 4, !14, i64 8, i64 8, !15}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"double", !10, i64 0}
!23 = !{!"any pointer", !10, i64 0}
!24 = !{!"p1 omnipotent char", !23, i64 0}
!25 = !{!"", !11, i64 0, !11, i64 4, !10, i64 8, !10, i64 10}
!26 = !{!"", !16, i64 0, !22, i64 8, !24, i64 16, !25, i64 24}
!27 = !{!26, !24, i64 16}
!28 = !{!"p1 _ZTS8_IO_FILE", !23, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!25, !10, i64 8}
!31 = !{!25, !11, i64 0}
!32 = !{!26, !22, i64 8}
!33 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !10, i64 24}
!34 = !{!33, !11, i64 0}
!35 = !{ptr @jv_string, ptr @jv_string_sized}
!36 = !{ptr @jv_string}
!37 = !{ptr @jv_string_sized}
!38 = !{!"", !10, i64 0, !10, i64 1, !18, i64 2, !11, i64 4, !10, i64 8}
!39 = !{!"object_slot", !11, i64 0, !11, i64 4, !38, i64 8, !38, i64 24}
!40 = !{!39, !11, i64 0}
!41 = !{!39, !11, i64 4}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = !{!33, !11, i64 20}
!45 = !{!26, !10, i64 32}
!46 = !{!26, !11, i64 24}
!47 = !{!33, !11, i64 4}
!48 = !{!33, !11, i64 8}
!49 = !{!33, !11, i64 16}
!50 = !{!"", !25, i64 0, !10, i64 12}
!51 = !{!50, !10, i64 8}
!52 = distinct !{!52, !57}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !57}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21, !62}
end_hunk_1
