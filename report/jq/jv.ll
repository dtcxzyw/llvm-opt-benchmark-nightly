Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv?download=true
inline.NumInlined: 353
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@jvp_number_cmp:bb.a
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef 770, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_number_cmp) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = trunc i64 %2 to i32                      ; 2 uses
  %i.f = and i32 %i.e, 15
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 771, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_number_cmp) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = and i32 %i.e, 244
  %i.i = icmp eq i32 %i.b, 148
  %i.j = icmp eq i32 %i.h, 148                    ; 2 uses
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.k = and i64 %0, 255
  %i.l = icmp eq i64 %i.k, 148
  br i1 %i.l, label %jvp_dec_number_ptr.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.8, i32 noundef 553, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_dec_number_ptr) #19
  unreachable

jvp_dec_number_ptr.exit:                          ; preds = %bb.f
  %i.m = and i64 %2, 255
  %i.n = icmp eq i64 %i.m, 148
  br i1 %i.n, label %jvp_dec_number_ptr.exit50, label %bb.h

bb.h:                                             ; preds = %jvp_dec_number_ptr.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.8, i32 noundef 553, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_dec_number_ptr) #19
  unreachable

jvp_dec_number_ptr.exit50:                        ; preds = %jvp_dec_number_ptr.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = tail call fastcc ptr @tsd_dec_ctx_get()
  %i.r = call ptr @decNumberCompare(ptr noundef nonnull %4, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef %i.q) #20 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.t = load i16, ptr %i.s, align 2, !tbaa !19
  %i.u = icmp eq i16 %i.t, 0
  %i.v = load i32, ptr %4, align 4
  %i.w = icmp eq i32 %i.v, 1
  %or.cond7 = select i1 %i.u, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !51    ; 2 uses
  %i.z = and i8 %i.y, 112
  %i.aa = icmp eq i8 %i.z, 0
  %or.cond57 = select i1 %or.cond7, i1 %i.aa, i1 false
  %.not = icmp sgt i8 %i.y, -1
  %. = select i1 %.not, i32 1, i32 -1
  %.0 = select i1 %or.cond57, i32 0, i32 %.
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = bitcast i64 %i.ab to double
  %i.ad = and i32 %i.a, 244
  %i.ae = icmp eq i32 %i.ad, 148
  br i1 %i.ae, label %bb.j, label %jv_number_value.exit

bb.j:                                             ; preds = %bb.i
  %i.af = and i64 %0, 255
  %i.ag = icmp eq i64 %i.af, 148
  br i1 %i.ag, label %jvp_literal_number_ptr.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.8, i32 noundef 548, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_literal_number_ptr) #19
  unreachable

jvp_literal_number_ptr.exit.i:                    ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !32 ; 2 uses
  %i.aj = fcmp uno double %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.l, label %jv_number_value.exit

bb.l:                                             ; preds = %jvp_literal_number_ptr.exit.i
  %i.ak = tail call fastcc double @jvp_literal_number_to_double(i64 %0, ptr nonnull %1) ; 2 uses
  store double %i.ak, ptr %i.ah, align 8, !tbaa !32
  br label %jv_number_value.exit

jv_number_value.exit:                             ; preds = %bb.l, %jvp_literal_number_ptr.exit.i, %bb.i
  %.0.i = phi double [ %i.ai, %jvp_literal_number_ptr.exit.i ], [ %i.ak, %bb.l ], [ %i.ac, %bb.i ] ; 2 uses
  %i.al = ptrtoint ptr %3 to i64
  %i.am = bitcast i64 %i.al to double
  br i1 %i.j, label %bb.m, label %jv_number_value.exit53

bb.m:                                             ; preds = %jv_number_value.exit
  %i.an = and i64 %2, 255
  %i.ao = icmp eq i64 %i.an, 148
  br i1 %i.ao, label %jvp_literal_number_ptr.exit.i52, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.8, i32 noundef 548, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_literal_number_ptr) #19
  unreachable

jvp_literal_number_ptr.exit.i52:                  ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %i.ar = fcmp uno double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.o, label %jv_number_value.exit53

bb.o:                                             ; preds = %jvp_literal_number_ptr.exit.i52
  %i.as = tail call fastcc double @jvp_literal_number_to_double(i64 %2, ptr nonnull %3) ; 2 uses
  store double %i.as, ptr %i.ap, align 8, !tbaa !32
  br label %jv_number_value.exit53

jv_number_value.exit53:                           ; preds = %jv_number_value.exit, %jvp_literal_number_ptr.exit.i52, %bb.o
  %.0.i51 = phi double [ %i.aq, %jvp_literal_number_ptr.exit.i52 ], [ %i.as, %bb.o ], [ %i.am, %jv_number_value.exit ] ; 2 uses
  %i.at = fcmp olt double %.0.i, %.0.i51
  %i.au = fcmp une double %.0.i, %.0.i51
  %.49 = zext i1 %i.au to i32
  %.1 = select i1 %i.at, i32 -1, i32 %.49
  br label %bb.p

bb.p:                                             ; preds = %jv_number_value.exit53, %jvp_dec_number_ptr.exit50
  %.2 = phi i32 [ %.0, %jvp_dec_number_ptr.exit50 ], [ %.1, %jv_number_value.exit53 ]
  ret i32 %.2
}

declare ptr @decNumberCompare(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_sized(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = shl nuw nsw i64 %i.a, 4
  %i.c = add nuw nsw i64 %i.b, 16
  %i.d = tail call ptr @jv_mem_alloc(i64 noundef %i.c) #20 ; 4 uses
  store i32 1, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %0, ptr %i.f, align 8, !tbaa !14
  %.fca.1.insert.i = insertvalue { i64, ptr } { i64 134, ptr poison }, ptr %i.d, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @jv_mem_alloc(i64 noundef 272) #20 ; 4 uses
  store i32 1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 16, ptr %i.c, align 8, !tbaa !14
  %.fca.1.insert.i.i = insertvalue { i64, ptr } { i64 134, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jv_array_length(i64 %0, ptr %1) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 6
  br i1 %i.b, label %jvp_array_length.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jvp_array_length.exit:                            ; preds = %bb.a
  %.sroa.21.0.extract.shift.i = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i = trunc nuw i64 %.sroa.21.0.extract.shift.i to i32
  tail call void @jv_free(i64 %0, ptr %1)
  ret i32 %.sroa.21.0.extract.trunc.i
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_get(i64 %0, ptr %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 6
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_get) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %2, -1
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32
  %i.d = icmp slt i32 %2, %.sroa.21.0.extract.trunc.i.i
  %or.cond.i = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond.i, label %jvp_array_offset.exit.i, label %jv_copy.exit

jvp_array_offset.exit.i:                          ; preds = %bb.c
  %i.e = trunc i64 %0 to i32
  %3 = lshr i32 %i.e, 16
  %i.f = add nuw nsw i32 %2, %3                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %jvp_array_offset.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.e:                                             ; preds = %jvp_array_offset.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = zext nneg i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = and i64 %i.m, 128
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %jv_copy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.o, align 4, !tbaa !17
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.019.0 = phi i64 [ 0, %bb.c ], [ %i.m, %bb.e ], [ %i.m, %bb.f ]
  %.sroa.3.0 = phi ptr [ null, %bb.c ], [ %i.o, %bb.e ], [ %i.o, %bb.f ]
  tail call void @jv_free(i64 %0, ptr %1)
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_set(i64 %0, ptr %1, i32 noundef %2, i64 %3, ptr %4) local_unnamed_addr #1 {
bb.a:
  %.sroa.14.0.extract.shift = lshr i64 %0, 32
  %.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.14.0.extract.shift to i32 ; 3 uses
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 6
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 1011, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_set) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.d, label %jvp_array_offset.exit

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %2, %.sroa.14.0.extract.trunc ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %jvp_array_offset.exit

bb.e:                                             ; preds = %bb.d
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %3, ptr %4)
  %i.f = tail call i32 @jvp_utf8_is_valid(ptr noundef nonnull @.str.16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.16, i64 34)) #20, !inline_history !35
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.f, label %jvp_string_new.exit.i

jvp_string_new.exit.i:                            ; preds = %bb.e
  %i.g = tail call noundef ptr @jv_mem_alloc(i64 noundef 51) #20, !inline_history !36 ; 6 uses
  store i32 1, ptr %i.g, align 4, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 34, ptr %i.h, align 4, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 68, ptr %i.i, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(34) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(34) @.str.16, i64 34, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  store i8 0, ptr %i.k, align 2, !tbaa !15
  %i.l = insertvalue { i64, ptr } { i64 133, ptr poison }, ptr %i.g, 1
  br label %jv_string.exit

bb.f:                                             ; preds = %bb.e
  %i.m = tail call fastcc { i64, ptr } @jvp_string_copy_replace_bad(ptr noundef nonnull @.str.16, i32 noundef 34), !inline_history !35
  br label %jv_string.exit

jv_string.exit:                                   ; preds = %jvp_string_new.exit.i, %bb.f
  %.fca.1.insert.i.merged.i = phi { i64, ptr } [ %i.l, %jvp_string_new.exit.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.n = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i, 0
  %i.o = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i, 1
  %i.p = tail call ptr @jv_mem_alloc(i64 noundef 24) #20 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.n, ptr %i.q, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  br label %bb.m

jvp_array_offset.exit:                            ; preds = %bb.d, %bb.c
  %.0175 = phi i32 [ %i.d, %bb.d ], [ %2, %bb.c ] ; 6 uses
  %i.r = trunc i64 %0 to i32
  %5 = lshr i32 %i.r, 16                          ; 3 uses
  %i.s = xor i32 %5, 536870911
  %i.t = icmp samesign ugt i32 %.0175, %i.s
  br i1 %i.t, label %bb.g, label %jvp_array_offset.exit.i

bb.g:                                             ; preds = %jvp_array_offset.exit
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %3, ptr %4)
  %i.u = tail call i32 @jvp_utf8_is_valid(ptr noundef nonnull @.str.17, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.17, i64 21)) #20, !inline_history !35
  %.not.i.i15 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i15, label %bb.h, label %jvp_string_new.exit.i16

jvp_string_new.exit.i16:                          ; preds = %bb.g
  %i.v = tail call noundef ptr @jv_mem_alloc(i64 noundef 38) #20, !inline_history !36 ; 6 uses
  store i32 1, ptr %i.v, align 4, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 21, ptr %i.w, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 42, ptr %i.x, align 4, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(21) @.str.17, i64 21, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 37
  store i8 0, ptr %i.z, align 1, !tbaa !15
  %i.aa = insertvalue { i64, ptr } { i64 133, ptr poison }, ptr %i.v, 1
  br label %jv_string.exit18

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call fastcc { i64, ptr } @jvp_string_copy_replace_bad(ptr noundef nonnull @.str.17, i32 noundef 21), !inline_history !35
  br label %jv_string.exit18

jv_string.exit18:                                 ; preds = %jvp_string_new.exit.i16, %bb.h
  %.fca.1.insert.i.merged.i17 = phi { i64, ptr } [ %i.aa, %jvp_string_new.exit.i16 ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ac = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i17, 0
  %i.ad = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i17, 1
  %i.ae = tail call ptr @jv_mem_alloc(i64 noundef 24) #20 ; 4 uses
  store i32 1, ptr %i.ae, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ac, ptr %i.af, align 8
  %.sroa.2.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ad, ptr %.sroa.2.0..sroa_idx.i19, align 8, !tbaa !15
  br label %bb.m

jvp_array_offset.exit.i:                          ; preds = %jvp_array_offset.exit
  %i.ag = add nuw nsw i32 %.0175, %5              ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !14
  %i.aj = icmp slt i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %jvp_array_length.exit57.lr.ph.i

bb.i:                                             ; preds = %jvp_array_offset.exit.i
  %.val.i = load i32, ptr %1, align 8, !tbaa !17  ; 2 uses
  %i.ak = icmp sgt i32 %.val.i, 0
  br i1 %i.ak, label %jvp_refcnt_unshared.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.8, i32 noundef 73, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_refcnt_unshared) #19
  unreachable

jvp_refcnt_unshared.exit.i:                       ; preds = %bb.i
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %bb.k, label %jvp_array_length.exit57.lr.ph.i

bb.k:                                             ; preds = %jvp_refcnt_unshared.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14 ; 5 uses
  %.not5263.i = icmp sgt i32 %i.am, %i.ag
  br i1 %.not5263.i, label %.._crit_edge67_crit_edge.i, label %.lr.ph66.i

.._crit_edge67_crit_edge.i:                       ; preds = %bb.k
  %.pre78.i = add nuw nsw i32 %i.ag, 1
  br label %._crit_edge67.i

.lr.ph66.i:                                       ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ao = sext i32 %i.am to i64                   ; 2 uses
  %i.ap = add nuw nsw i32 %i.ag, 1                ; 2 uses
  %i.aq = add nuw i32 %.0175, %5                  ; 2 uses
  %i.ar = add i32 %i.aq, 1
  %i.as = sub i32 %i.ar, %i.am
  %i.at = sub i32 %i.aq, %i.am
  %xtraiter185 = and i32 %i.as, 3                 ; 2 uses
  %lcmp.mod186.not = icmp eq i32 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.prol.loopexit184, label %.prol.preheader183

.prol.preheader183:                               ; preds = %.lr.ph66.i, %.prol.preheader183
  %indvars.iv74.i.prol = phi i64 [ %indvars.iv.next75.i.prol, %.prol.preheader183 ], [ %i.ao, %.lr.ph66.i ] ; 2 uses
  %prol.iter187 = phi i32 [ %prol.iter187.next, %.prol.preheader183 ], [ 0, %.lr.ph66.i ]
  %i.au = getelementptr inbounds [16 x i8], ptr %i.an, i64 %indvars.iv74.i.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %indvars.iv.next75.i.prol = add nsw i64 %indvars.iv74.i.prol, 1 ; 2 uses
  %prol.iter187.next = add i32 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i32 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.prol.loopexit184, label %.prol.preheader183, !llvm.loop !52

.prol.loopexit184:                                ; preds = %.prol.preheader183, %.lr.ph66.i
  %indvars.iv74.i.unr = phi i64 [ %i.ao, %.lr.ph66.i ], [ %indvars.iv.next75.i.prol, %.prol.preheader183 ]
  %i.av = icmp ult i32 %i.at, 3
  br i1 %i.av, label %._crit_edge67.loopexit.i, label %.lr.ph66.i.new

._crit_edge67.loopexit.i:                         ; preds = %.lr.ph66.i.new, %.prol.loopexit184
  %.pre.i = load i32, ptr %i.al, align 4, !tbaa !14
  br label %._crit_edge67.i

._crit_edge67.i:                                  ; preds = %._crit_edge67.loopexit.i, %.._crit_edge67_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre78.i, %.._crit_edge67_crit_edge.i ], [ %i.ap, %._crit_edge67.loopexit.i ]
  %i.aw = phi i32 [ %i.am, %.._crit_edge67_crit_edge.i ], [ %.pre.i, %._crit_edge67.loopexit.i ]
  %..i.i = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 range(i32 1, 536936448) %.pre-phi.i, i32 %i.aw)
  store i32 %..i.i, ptr %i.al, align 4, !tbaa !14
  %i.ax = add nuw nsw i32 %.0175, 1
  %..i53.i = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 range(i32 1, 536936448) %i.ax, i32 %.sroa.14.0.extract.trunc)
  %i.ay = and i64 %0, 4294901760
  %i.az = and i64 %0, 65280
  %i.ba = and i64 %0, 246
  br label %jvp_array_write.exit

.lr.ph66.i.new:                                   ; preds = %.prol.loopexit184, %.lr.ph66.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.3, %.lr.ph66.i.new ], [ %indvars.iv74.i.unr, %.prol.loopexit184 ] ; 5 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.an, i64 %indvars.iv74.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.bc = getelementptr [16 x i8], ptr %i.an, i64 %indvars.iv74.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.be = getelementptr [16 x i8], ptr %i.an, i64 %indvars.iv74.i
  %i.bf = getelementptr i8, ptr %i.be, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.bg = getelementptr [16 x i8], ptr %i.an, i64 %indvars.iv74.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %indvars.iv.next75.i.3 = add nsw i64 %indvars.iv74.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next75.i.3 to i32
  %exitcond77.not.i.3 = icmp eq i32 %i.ap, %lftr.wideiv.i.3
  br i1 %exitcond77.not.i.3, label %._crit_edge67.loopexit.i, label %.lr.ph66.i.new, !llvm.loop !53

jvp_array_length.exit57.lr.ph.i:                  ; preds = %jvp_array_offset.exit.i, %jvp_refcnt_unshared.exit.i
  %i.bi = add nuw nsw i32 %.0175, 1
  %..i54.i = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 range(i32 1, 536936448) %i.bi, i32 %.sroa.14.0.extract.trunc) ; 6 uses
  %i.bj = lshr i32 %..i54.i, 1
  %i.bk = add nuw nsw i32 %i.bj, %..i54.i         ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 4
  %i.bn = add nuw nsw i64 %i.bm, 16
  %i.bo = tail call ptr @jv_mem_alloc(i64 noundef %i.bn) #20 ; 5 uses
  store i32 1, ptr %i.bo, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %i.bk, ptr %i.bq, align 8, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 6 uses
  %i.bs = ashr i64 %0, 32                         ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %jvp_array_offset.exit58.i.lr.ph, label %.preheader.i

jvp_array_offset.exit58.i.lr.ph:                  ; preds = %jvp_array_length.exit57.lr.ph.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = lshr i64 %0, 16
  %i.bv = and i64 %6, 65535
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  br label %jvp_array_offset.exit58.i

.preheader.i:                                     ; preds = %jv_copy.exit.i, %jvp_array_length.exit57.lr.ph.i
  %indvars.iv.i.lcssa = phi i64 [ 0, %jvp_array_length.exit57.lr.ph.i ], [ %i.bs, %jv_copy.exit.i ] ; 5 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %i.by = icmp samesign ugt i32 %..i54.i, %i.bx
  br i1 %i.by, label %.lr.ph.i, label %._crit_edge62.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %..i54.i to i64 ; 3 uses
  %i.bz = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.lcssa
  %xtraiter = and i64 %i.bz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv71.i.prol = phi i64 [ %indvars.iv.next72.i.prol, %.prol.preheader ], [ %indvars.iv.i.lcssa, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv71.i.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %indvars.iv.next72.i.prol = add nuw nsw i64 %indvars.iv71.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !54

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv71.i.unr = phi i64 [ %indvars.iv.i.lcssa, %.lr.ph.i ], [ %indvars.iv.next72.i.prol, %.prol.preheader ]
  %i.cb = sub nsw i64 %indvars.iv.i.lcssa, %wide.trip.count.i
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %._crit_edge62.i, label %.lr.ph.i.new

jvp_array_offset.exit58.i:                        ; preds = %jvp_array_offset.exit58.i.lr.ph, %jv_copy.exit.i
  %indvars.iv.i176 = phi i64 [ 0, %jvp_array_offset.exit58.i.lr.ph ], [ %indvars.iv.next.i, %jv_copy.exit.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv.i176 ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv.i176 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %i.ci = and i64 %i.cf, 128
  %.not.i.i21 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i21, label %jv_copy.exit.i, label %bb.l

bb.l:                                             ; preds = %jvp_array_offset.exit58.i
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !17
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !17
  br label %jv_copy.exit.i

jv_copy.exit.i:                                   ; preds = %bb.l, %jvp_array_offset.exit58.i
  store i64 %i.cf, ptr %i.cd, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ch, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i176, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.bs
  br i1 %exitcond.not, label %.preheader.i, label %jvp_array_offset.exit58.i, !llvm.loop !55

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i.3, %.lr.ph.i.new ], [ %indvars.iv71.i.unr, %.prol.loopexit ] ; 5 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv71.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv71.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv71.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv71.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %indvars.iv.next72.i.3 = add nuw nsw i64 %indvars.iv71.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next72.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge62.i, label %.lr.ph.i.new, !llvm.loop !56

._crit_edge62.i:                                  ; preds = %.prol.loopexit, %.lr.ph.i.new, %.preheader.i
  store i32 %..i54.i, ptr %i.bp, align 4, !tbaa !14
  tail call void @jv_free(i64 %0, ptr nonnull %1)
  br label %jvp_array_write.exit

jvp_array_write.exit:                             ; preds = %._crit_edge67.i, %._crit_edge62.i
  %.sroa.17.0 = phi ptr [ %1, %._crit_edge67.i ], [ %i.bo, %._crit_edge62.i ] ; 2 uses
  %.sroa.14.0 = phi i32 [ %..i53.i, %._crit_edge67.i ], [ %..i54.i, %._crit_edge62.i ]
  %.sroa.13.0 = phi i64 [ %i.ay, %._crit_edge67.i ], [ 0, %._crit_edge62.i ]
  %.sroa.12.0 = phi i64 [ %i.az, %._crit_edge67.i ], [ 0, %._crit_edge62.i ]
  %.sroa.0.0 = phi i64 [ %i.ba, %._crit_edge67.i ], [ 134, %._crit_edge62.i ]
  %.sink84.i = phi i32 [ %i.ag, %._crit_edge67.i ], [ %.0175, %._crit_edge62.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 16
  %i.ct = zext nneg i32 %.sink84.i to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.ct ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void @jv_free(i64 %i.cv, ptr %i.cx)
  store i64 %3, ptr %i.cu, align 8
  store ptr %4, ptr %i.cw, align 8, !tbaa !15
  %.sroa.14.0.insert.ext = zext nneg i32 %.sroa.14.0 to i64
  %.sroa.14.0.insert.shift = shl nuw nsw i64 %.sroa.14.0.insert.ext, 32
  %.sroa.13.0.insert.insert = or disjoint i64 %.sroa.14.0.insert.shift, %.sroa.13.0
  %.sroa.12.0.insert.insert = or disjoint i64 %.sroa.13.0.insert.insert, %.sroa.12.0
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.12.0.insert.insert, %.sroa.0.0
  br label %bb.m

bb.m:                                             ; preds = %jvp_array_write.exit, %jv_string.exit18, %jv_string.exit
  %.sroa.011.0 = phi i64 [ 128, %jv_string.exit ], [ 128, %jv_string.exit18 ], [ %.sroa.0.0.insert.insert, %jvp_array_write.exit ]
  %.sroa.412.0 = phi ptr [ %i.p, %jv_string.exit ], [ %i.ae, %jv_string.exit18 ], [ %.sroa.17.0, %jvp_array_write.exit ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.412.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_string(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22 ; 3 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %sext = shl i64 %i.a, 32
  %i.c = ashr exact i64 %sext, 32
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call i32 @jvp_utf8_is_valid(ptr noundef nonnull %0, ptr noundef nonnull %i.d) #20, !inline_history !37
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %jvp_string_new.exit

jvp_string_new.exit:                              ; preds = %bb.a
  %i.f = and i64 %i.a, 4294967295                 ; 3 uses
  %i.g = add nuw nsw i64 %i.f, 17
  %i.h = tail call noundef ptr @jv_mem_alloc(i64 noundef %i.g) #20 ; 5 uses
  store i32 1, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.b, ptr %i.i, align 4, !tbaa !14
  %i.j = shl i32 %i.b, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.j, ptr %i.k, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull readonly align 1 %0, i64 %i.f, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.m, align 1, !tbaa !15
  %i.n = insertvalue { i64, ptr } { i64 133, ptr poison }, ptr %i.h, 1
  br label %jv_string_sized.exit

bb.b:                                             ; preds = %bb.a
  %i.o = tail call fastcc { i64, ptr } @jvp_string_copy_replace_bad(ptr noundef nonnull %0, i32 noundef %i.b), !inline_history !37
  br label %jv_string_sized.exit

jv_string_sized.exit:                             ; preds = %jvp_string_new.exit, %bb.b
  %.fca.1.insert.i.merged = phi { i64, ptr } [ %i.n, %jvp_string_new.exit ], [ %i.o, %bb.b ]
  ret { i64, ptr } %.fca.1.insert.i.merged
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_append(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 128
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %jv_copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !17
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.a, %bb.b
  %i.d = and i64 %0, 15
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %jv_array_length.exit, label %bb.c

bb.c:                                             ; preds = %jv_copy.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_length.exit:                             ; preds = %jv_copy.exit
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32
  tail call void @jv_free(i64 %0, ptr %1)
  %i.f = tail call { i64, ptr } @jv_array_set(i64 %0, ptr %1, i32 noundef %.sroa.21.0.extract.trunc.i.i, i64 %2, ptr %3)
  ret { i64, ptr } %i.f
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_concat(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %.sroa.037.sroa.6.0.extract.shift = lshr i64 %0, 8 ; 2 uses
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 6
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 1038, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_concat) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %2, 15
  %i.d = icmp eq i64 %i.c, 6
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8, i32 noundef 1039, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_concat) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = and i64 %2, 128
  %.not.i = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %jv_array_length.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr %3, align 4, !tbaa !17
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %3, align 4, !tbaa !17
  br label %jv_array_length.exit

jv_array_length.exit:                             ; preds = %bb.f, %bb.e
  %.sroa.21.0.extract.shift.i.i = lshr i64 %2, 32 ; 2 uses
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32
  tail call void @jv_free(i64 %2, ptr %3)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not6488 = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i, 0
  br i1 %.not6488, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %jv_array_length.exit
  %i.j = lshr i64 %2, 16
  %i.k = and i64 %i.j, 65535
  br label %.lr.ph

.lr.ph:                                           ; preds = %jv_array_append.exit, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %jv_array_append.exit ] ; 2 uses
  %.sroa.037.sroa.6.sroa.0.192 = phi i64 [ %.sroa.037.sroa.6.0.extract.shift, %.lr.ph.preheader ], [ %.sroa.037.sroa.6.0.extract.shift52, %jv_array_append.exit ] ; 2 uses
  %.sroa.037.sroa.0.191.in = phi i64 [ %0, %.lr.ph.preheader ], [ %i.ae, %jv_array_append.exit ] ; 3 uses
  %.sroa.6.190 = phi ptr [ %1, %.lr.ph.preheader ], [ %i.af, %jv_array_append.exit ] ; 4 uses
  br i1 %.not.i, label %jvp_array_offset.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.l = load i32, ptr %3, align 4, !tbaa !17
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i

jvp_array_offset.exit.i.i:                        ; preds = %.lr.ph, %bb.g
  %i.n = add nuw nsw i64 %indvars.iv, %i.k        ; 2 uses
  %i.o = load i32, ptr %i.h, align 4, !tbaa !14
  %i.p = trunc nuw i64 %i.n to i32
  %i.q = icmp sgt i32 %i.o, %i.p
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %jvp_array_offset.exit.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.i:                                             ; preds = %jvp_array_offset.exit.i.i
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.n ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = and i64 %i.s, 128
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %i.u, align 4, !tbaa !17
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  %.sroa.037.sroa.6.0.insert.shift = shl nuw i64 %.sroa.037.sroa.6.sroa.0.192, 8
  %.sroa.037.sroa.0.0.insert.ext = and i64 %.sroa.037.sroa.0.191.in, 255
  %.sroa.037.sroa.0.0.insert.insert = or disjoint i64 %.sroa.037.sroa.6.0.insert.shift, %.sroa.037.sroa.0.0.insert.ext ; 2 uses
  %i.y = and i64 %.sroa.037.sroa.0.191.in, 128
  %.not.i.i72 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i72, label %jv_copy.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i32, ptr %.sroa.6.190, align 4, !tbaa !17
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %.sroa.6.190, align 4, !tbaa !17
  br label %jv_copy.exit.i

jv_copy.exit.i:                                   ; preds = %bb.l, %bb.k
  %i.ab = and i64 %.sroa.037.sroa.0.191.in, 15
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %jv_array_append.exit, label %bb.m

bb.m:                                             ; preds = %jv_copy.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_append.exit:                             ; preds = %jv_copy.exit.i
  %.sroa.21.0.extract.shift.i.i.i73 = lshr i64 %.sroa.037.sroa.6.sroa.0.192, 24
  %.sroa.21.0.extract.trunc.i.i.i74 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i73 to i32
  tail call void @jv_free(i64 %.sroa.037.sroa.0.0.insert.insert, ptr %.sroa.6.190)
  %i.ad = tail call { i64, ptr } @jv_array_set(i64 %.sroa.037.sroa.0.0.insert.insert, ptr %.sroa.6.190, i32 noundef %.sroa.21.0.extract.trunc.i.i.i74, i64 %i.s, ptr %i.u) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0      ; 4 uses
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %.sroa.037.sroa.6.0.extract.shift52 = lshr i64 %i.ae, 8 ; 2 uses
  %i.ag = and i64 %i.ae, 15
  %.not79 = icmp eq i64 %i.ag, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.21.0.extract.shift.i.i
  %or.cond = select i1 %.not79, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %jv_array_append.exit, %jv_array_length.exit
  %.sroa.6.2 = phi ptr [ %1, %jv_array_length.exit ], [ %i.af, %jv_array_append.exit ]
  %.sroa.037.sroa.0.2 = phi i64 [ %0, %jv_array_length.exit ], [ %i.ae, %jv_array_append.exit ]
  %.sroa.037.sroa.6.sroa.0.2.in = phi i64 [ %.sroa.037.sroa.6.0.extract.shift, %jv_array_length.exit ], [ %.sroa.037.sroa.6.0.extract.shift52, %jv_array_append.exit ]
  tail call void @jv_free(i64 %2, ptr %3)
  %.sroa.037.sroa.6.0.insert.shift55 = shl nuw i64 %.sroa.037.sroa.6.sroa.0.2.in, 8
  %.sroa.037.sroa.0.0.insert.ext45 = and i64 %.sroa.037.sroa.0.2, 255
  %.sroa.037.sroa.0.0.insert.insert47 = or disjoint i64 %.sroa.037.sroa.6.0.insert.shift55, %.sroa.037.sroa.0.0.insert.ext45
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.037.sroa.0.0.insert.insert47, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.6.2, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_slice(i64 %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 6
  br i1 %i.b, label %jvp_array_length.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 1051, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_slice) #19
  unreachable

jvp_array_length.exit.i:                          ; preds = %bb.a
  %4 = trunc i64 %0 to i32
  %5 = lshr i32 %4, 16                            ; 2 uses
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32 ; 9 uses
  %i.c = icmp slt i32 %2, 0
  %i.d = select i1 %i.c, i32 %.sroa.21.0.extract.trunc.i.i, i32 0
  %spec.select.i = add nsw i32 %i.d, %2           ; 3 uses
  %i.e = icmp slt i32 %3, 0
  %i.f = select i1 %i.e, i32 %.sroa.21.0.extract.trunc.i.i, i32 0
  %.099.i = add nsw i32 %i.f, %3                  ; 2 uses
  %i.g = icmp slt i32 %spec.select.i, 0
  %i.h = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 0) ; 2 uses
  %i.i = icmp sgt i32 %i.h, %.sroa.21.0.extract.trunc.i.i
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %.sroa.21.0.extract.trunc.i.i) ; 2 uses
  %i.k = or i1 %i.g, %i.i
  %.1101.i = select i1 %i.k, i32 %i.j, i32 %spec.select.i ; 7 uses
  %i.l = icmp sgt i32 %.099.i, %.sroa.21.0.extract.trunc.i.i
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.099.i, i32 %.sroa.21.0.extract.trunc.i.i)
  %i.m = select i1 %i.l, i32 %.1101.i, i32 %i.j   ; 2 uses
  %.2.i = tail call i32 @llvm.smax.i32(i32 %.1.i, i32 %i.m) ; 5 uses
  %i.n = icmp sgt i32 %.1101.i, -1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %jvp_array_length.exit.i
  %.not.i = icmp sgt i32 %.1101.i, %.2.i
  %.not85.i = icmp sgt i32 %i.m, %.sroa.21.0.extract.trunc.i.i
  %or.cond.i = or i1 %.not85.i, %.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %jvp_array_length.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.8, i32 noundef 957, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_slice) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %.1101.i, %.2.i
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @jv_free(i64 %0, ptr %1)
  %i.p = tail call ptr @jv_mem_alloc(i64 noundef 272) #20 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 16, ptr %i.r, align 8, !tbaa !14
  br label %jvp_array_slice.exit

bb.g:                                             ; preds = %bb.e
  %i.s = add nuw nsw i32 %.1101.i, %5             ; 2 uses
  %i.t = icmp samesign ugt i32 %i.s, 65535
  %i.u = sub nuw nsw i32 %.2.i, %.1101.i          ; 2 uses
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  br i1 %i.t, label %.lr.ph.i, label %bb.n

.lr.ph.i:                                         ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.w, 16
  %i.y = tail call ptr @jv_mem_alloc(i64 noundef %i.x) #20 ; 5 uses
  store i32 1, ptr %i.y, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.u, ptr %i.aa, align 8, !tbaa !14
  %i.ab = and i64 %0, 128
  %.not.i.i = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = zext nneg i32 %.1101.i to i64           ; 2 uses
  %6 = zext nneg i32 %5 to i64                    ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %jv_array_append.exit.us.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %jv_array_append.exit.us.i ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %.sroa.6.0109.us.i = phi ptr [ %.sroa.6.0.us.i, %jv_array_append.exit.us.i ], [ %i.y, %.lr.ph.i ] ; 4 uses
  %.sroa.080.0108.us.i = phi i64 [ %i.ay, %jv_array_append.exit.us.i ], [ 134, %.lr.ph.i ] ; 5 uses
  %i.af = trunc nuw i64 %indvars.iv120.i to i32
  %i.ag = icmp slt i32 %i.af, %.sroa.21.0.extract.trunc.i.i
  br i1 %i.ag, label %jvp_array_offset.exit.i.i.us.i, label %jv_array_get.exit.us.i

jvp_array_offset.exit.i.i.us.i:                   ; preds = %.lr.ph.split.us.i
  %i.ah = add nuw nsw i64 %indvars.iv120.i, %6    ; 2 uses
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.aj = trunc nuw i64 %i.ah to i32
  %i.ak = icmp sgt i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %.split.us.i

bb.h:                                             ; preds = %jvp_array_offset.exit.i.i.us.i
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %i.ap = and i64 %i.am, 128
  %.not.i.i.us.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.us.i, label %jv_array_get.exit.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !17
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !17
  br label %jv_array_get.exit.us.i

jv_array_get.exit.us.i:                           ; preds = %bb.i, %bb.h, %.lr.ph.split.us.i
  %.sroa.019.0.i.us.i = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.am, %bb.h ], [ %i.am, %bb.i ]
  %.sroa.3.0.i.us.i = phi ptr [ null, %.lr.ph.split.us.i ], [ %i.ao, %bb.h ], [ %i.ao, %bb.i ]
  tail call void @jv_free(i64 %0, ptr %1)
  %i.as = and i64 %.sroa.080.0108.us.i, 128
  %.not.i.i88.us.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i88.us.i, label %jv_copy.exit.i.us.i, label %bb.j

bb.j:                                             ; preds = %jv_array_get.exit.us.i
  %i.at = load i32, ptr %.sroa.6.0109.us.i, align 4, !tbaa !17
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %.sroa.6.0109.us.i, align 4, !tbaa !17
  br label %jv_copy.exit.i.us.i

jv_copy.exit.i.us.i:                              ; preds = %bb.j, %jv_array_get.exit.us.i
  %i.av = and i64 %.sroa.080.0108.us.i, 15
  %i.aw = icmp eq i64 %i.av, 6
  br i1 %i.aw, label %jv_array_append.exit.us.i, label %.split112.us.i

jv_array_append.exit.us.i:                        ; preds = %jv_copy.exit.i.us.i
  %.sroa.21.0.extract.shift.i.i.i89.us.i = lshr i64 %.sroa.080.0108.us.i, 32
  %.sroa.21.0.extract.trunc.i.i.i90.us.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i89.us.i to i32
  tail call void @jv_free(i64 %.sroa.080.0108.us.i, ptr %.sroa.6.0109.us.i)
  %i.ax = tail call { i64, ptr } @jv_array_set(i64 %.sroa.080.0108.us.i, ptr %.sroa.6.0109.us.i, i32 noundef %.sroa.21.0.extract.trunc.i.i.i90.us.i, i64 %.sroa.019.0.i.us.i, ptr %.sroa.3.0.i.us.i) ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.ax, 0      ; 2 uses
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %.sroa.6.0.us.i = extractvalue { i64, ptr } %i.ax, 1 ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.next121.i to i32
  %i.ba = icmp sgt i32 %.2.i, %i.az
  br i1 %i.ba, label %.lr.ph.split.us.i, label %._crit_edge.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %jv_array_append.exit.i, %jv_array_append.exit.us.i
  %.sroa.080.0.lcssa.i = phi i64 [ %i.ay, %jv_array_append.exit.us.i ], [ %i.bw, %jv_array_append.exit.i ]
  %.sroa.6.0.lcssa.i = phi ptr [ %.sroa.6.0.us.i, %jv_array_append.exit.us.i ], [ %.sroa.6.0.i, %jv_array_append.exit.i ]
  tail call void @jv_free(i64 %0, ptr %1)
  br label %jvp_array_slice.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %jv_array_append.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %jv_array_append.exit.i ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %.sroa.6.0109.i = phi ptr [ %.sroa.6.0.i, %jv_array_append.exit.i ], [ %i.y, %.lr.ph.i ] ; 4 uses
  %.sroa.080.0108.i = phi i64 [ %i.bw, %jv_array_append.exit.i ], [ 134, %.lr.ph.i ] ; 5 uses
  %i.bb = load i32, ptr %1, align 4, !tbaa !17
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %1, align 4, !tbaa !17
  %i.bd = trunc nuw i64 %indvars.iv.i to i32
  %i.be = icmp slt i32 %i.bd, %.sroa.21.0.extract.trunc.i.i
  br i1 %i.be, label %jvp_array_offset.exit.i.i.i, label %jv_array_get.exit.i

jvp_array_offset.exit.i.i.i:                      ; preds = %.lr.ph.split.i
  %i.bf = add nuw nsw i64 %indvars.iv.i, %6       ; 2 uses
  %i.bg = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.bh = trunc nuw i64 %i.bf to i32
  %i.bi = icmp sgt i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.k, label %.split.us.i

.split.us.i:                                      ; preds = %jvp_array_offset.exit.i.i.i, %jvp_array_offset.exit.i.i.us.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.k:                                             ; preds = %jvp_array_offset.exit.i.i.i
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bf ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 4 uses
  %i.bn = and i64 %i.bk, 128
  %.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i, label %jv_array_get.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !17
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !17
  br label %jv_array_get.exit.i

jv_array_get.exit.i:                              ; preds = %bb.l, %bb.k, %.lr.ph.split.i
  %.sroa.019.0.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.bk, %bb.k ], [ %i.bk, %bb.l ]
  %.sroa.3.0.i.i = phi ptr [ null, %.lr.ph.split.i ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  tail call void @jv_free(i64 %0, ptr nonnull %1)
  %i.bq = and i64 %.sroa.080.0108.i, 128
  %.not.i.i88.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i88.i, label %jv_copy.exit.i.i, label %bb.m

bb.m:                                             ; preds = %jv_array_get.exit.i
  %i.br = load i32, ptr %.sroa.6.0109.i, align 4, !tbaa !17
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %.sroa.6.0109.i, align 4, !tbaa !17
  br label %jv_copy.exit.i.i

jv_copy.exit.i.i:                                 ; preds = %bb.m, %jv_array_get.exit.i
  %i.bt = and i64 %.sroa.080.0108.i, 15
  %i.bu = icmp eq i64 %i.bt, 6
  br i1 %i.bu, label %jv_array_append.exit.i, label %.split112.us.i

.split112.us.i:                                   ; preds = %jv_copy.exit.i.i, %jv_copy.exit.i.us.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_append.exit.i:                           ; preds = %jv_copy.exit.i.i
  %.sroa.21.0.extract.shift.i.i.i89.i = lshr i64 %.sroa.080.0108.i, 32
  %.sroa.21.0.extract.trunc.i.i.i90.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i89.i to i32
  tail call void @jv_free(i64 %.sroa.080.0108.i, ptr %.sroa.6.0109.i)
  %i.bv = tail call { i64, ptr } @jv_array_set(i64 %.sroa.080.0108.i, ptr %.sroa.6.0109.i, i32 noundef %.sroa.21.0.extract.trunc.i.i.i90.i, i64 %.sroa.019.0.i.i, ptr %.sroa.3.0.i.i) ; 2 uses
  %i.bw = extractvalue { i64, ptr } %i.bv, 0      ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.sroa.6.0.i = extractvalue { i64, ptr } %i.bv, 1 ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv.next.i to i32
  %i.by = icmp sgt i32 %.2.i, %i.bx
  br i1 %i.by, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !59

bb.n:                                             ; preds = %bb.g
  %.sroa.08.sroa.10.0.insert.shift77.i = shl nuw nsw i64 %i.v, 32
  %i.bz = shl nuw i32 %i.s, 16
  %.sroa.08.sroa.747.0.insert.shift61.i = zext i32 %i.bz to i64
  %.sroa.08.sroa.747.0.insert.insert63.i = or disjoint i64 %.sroa.08.sroa.10.0.insert.shift77.i, %.sroa.08.sroa.747.0.insert.shift61.i
  %i.ca = and i64 %0, 65526
  %.sroa.08.sroa.0.0.insert.insert30.i = or disjoint i64 %.sroa.08.sroa.747.0.insert.insert63.i, %i.ca
  br label %jvp_array_slice.exit

jvp_array_slice.exit:                             ; preds = %bb.f, %._crit_edge.i, %bb.n
  %.sroa.080.1.i = phi i64 [ 134, %bb.f ], [ %.sroa.080.0.lcssa.i, %._crit_edge.i ], [ %.sroa.08.sroa.0.0.insert.insert30.i, %bb.n ]
  %.sroa.6.1.i = phi ptr [ %i.p, %bb.f ], [ %.sroa.6.0.lcssa.i, %._crit_edge.i ], [ %1, %bb.n ]
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %.sroa.080.1.i, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %.sroa.6.1.i, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_indexes(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @jv_mem_alloc(i64 noundef 272) #20 ; 5 uses
  store i32 1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 16, ptr %i.c, align 8, !tbaa !14
  %i.d = and i64 %0, 128
  %.not.i = icmp eq i64 %i.d, 0                   ; 3 uses
  br i1 %.not.i, label %jv_copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !17
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.a, %bb.b
  %i.g = and i64 %0, 15
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %jv_array_length.exit, label %bb.c

bb.c:                                             ; preds = %jv_copy.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_length.exit:                             ; preds = %jv_copy.exit
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32 ; 2 uses
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32 ; 2 uses
  tail call void @jv_free(i64 %0, ptr %1)
  %.not72150 = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i, 0
  br i1 %.not72150, label %.lr.ph154, label %.thread123

.lr.ph154:                                        ; preds = %jv_array_length.exit
  %i.i = and i64 %2, 128
  %.not.i73 = icmp eq i64 %i.i, 0                 ; 3 uses
  %i.j = and i64 %2, 15
  %i.k = icmp eq i64 %i.j, 6
  %.sroa.21.0.extract.shift.i.i77 = lshr i64 %2, 32 ; 3 uses
  %i.l = trunc i64 %2 to i32
  %4 = lshr i32 %i.l, 16                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.k, label %.lr.ph154.split.us.preheader, label %.lr.ph154.split

.lr.ph154.split.us.preheader:                     ; preds = %.lr.ph154
  %.sroa.21.0.extract.trunc.i.i78 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i77 to i32 ; 2 uses
  %i.q = lshr i64 %0, 16
  %5 = zext nneg i32 %4 to i64                    ; 2 uses
  %i.r = and i64 %i.q, 65535                      ; 2 uses
  %.not70.not144.us187 = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i78, 0
  %.not70.not144.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i78, 0
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %exitcond.peel.not = icmp eq i64 %.sroa.21.0.extract.shift.i.i77, 1
  br label %.lr.ph154.split.us

.lr.ph154.split.us:                               ; preds = %.lr.ph154.split.us.preheader, %.loopexit.us.thread
  %indvars.iv181 = phi i64 [ 0, %.lr.ph154.split.us.preheader ], [ %indvars.iv.next182, %.loopexit.us.thread ] ; 4 uses
  %.sroa.7.0153.us = phi ptr [ %i.a, %.lr.ph154.split.us.preheader ], [ %.sroa.7.1.us, %.loopexit.us.thread ] ; 8 uses
  %.sroa.042.0152.us = phi i64 [ 134, %.lr.ph154.split.us.preheader ], [ %.sroa.042.1.us, %.loopexit.us.thread ] ; 9 uses
  br i1 %.not.i73, label %jv_copy.exit76.us, label %jv_copy.exit76.us.thread

jv_copy.exit76.us:                                ; preds = %.lr.ph154.split.us
  tail call void @jv_free(i64 %2, ptr %3)
  br i1 %.not70.not144.us, label %jvp_array_offset.exit.i.i.us.peel, label %.loopexit.us.thread

jv_copy.exit76.us.thread:                         ; preds = %.lr.ph154.split.us
  %i.u = load i32, ptr %3, align 4, !tbaa !17
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %3, align 4, !tbaa !17
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  br i1 %.not70.not144.us187, label %bb.d, label %.loopexit.us.thread

bb.d:                                             ; preds = %jv_copy.exit76.us.thread
  %i.w = load i32, ptr %3, align 4, !tbaa !17
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i.us.peel

jvp_array_offset.exit.i.i.us.peel:                ; preds = %bb.d, %jv_copy.exit76.us
  %i.y = load i32, ptr %i.m, align 4, !tbaa !14
  %i.z = icmp slt i32 %4, %i.y
  br i1 %i.z, label %bb.e, label %.split.us

bb.e:                                             ; preds = %jvp_array_offset.exit.i.i.us.peel
  %i.aa = load i64, ptr %i.s, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.ac = and i64 %i.aa, 128
  %.not.i.i.us.peel = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.us.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !17
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  br i1 %.not.i, label %jvp_array_offset.exit.i.i97.us.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %1, align 4, !tbaa !17
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %1, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i97.us.peel

jvp_array_offset.exit.i.i97.us.peel:              ; preds = %bb.g, %bb.h
  %i.ah = add nuw nsw i64 %indvars.iv181, %i.r    ; 2 uses
  %i.ai = load i32, ptr %i.o, align 4, !tbaa !14
  %i.aj = trunc nuw i64 %i.ah to i32
  %i.ak = icmp sgt i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %.split158.us

bb.i:                                             ; preds = %jvp_array_offset.exit.i.i97.us.peel
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ah ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i64 %i.am, 128
  %.not.i.i98.us.peel = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i98.us.peel, label %jv_array_get.exit99.us.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !17
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !17
  br label %jv_array_get.exit99.us.peel

jv_array_get.exit99.us.peel:                      ; preds = %bb.j, %bb.i
  tail call void @jv_free(i64 %0, ptr nonnull %1)
  %i.as = tail call fastcc i32 @jvp_equal(i64 %i.am, ptr %i.ao, i64 %i.aa, ptr %i.ab, i32 noundef 0) ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.k, label %.split160.us

bb.k:                                             ; preds = %jv_array_get.exit99.us.peel
  %.not71.us.peel = icmp eq i32 %i.as, 0
  %i.au = trunc nuw nsw i64 %indvars.iv181 to i32
  %.4.ph.us.peel = select i1 %.not71.us.peel, i32 -1, i32 %i.au ; 2 uses
  br i1 %exitcond.peel.not, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.k, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 1, %bb.k ] ; 3 uses
  %.2146.us = phi i32 [ %.4.ph.us, %bb.t ], [ %.4.ph.us.peel, %bb.k ]
  br i1 %.not.i73, label %jvp_array_offset.exit.i.i.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph.us
  %i.av = load i32, ptr %3, align 4, !tbaa !17
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i.us

jvp_array_offset.exit.i.i.us:                     ; preds = %.lr.ph.us, %bb.l
  %i.ax = add nuw nsw i64 %indvars.iv, %5         ; 2 uses
  %i.ay = load i32, ptr %i.m, align 4, !tbaa !14
  %i.az = trunc nuw i64 %i.ax to i32
  %i.ba = icmp sgt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.m, label %.split.us

bb.m:                                             ; preds = %jvp_array_offset.exit.i.i.us
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ax ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = and i64 %i.bc, 128
  %.not.i.i.us = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !17
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %1, align 4, !tbaa !17
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %1, align 4, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = add nuw nsw i64 %indvars.iv, %indvars.iv181 ; 2 uses
  %i.bl = trunc nuw i64 %i.bk to i32
  %i.bm = icmp slt i32 %i.bl, %.sroa.21.0.extract.trunc.i.i
  br i1 %i.bm, label %jvp_array_offset.exit.i.i97.us, label %jv_array_get.exit99.us

jvp_array_offset.exit.i.i97.us:                   ; preds = %bb.q
  %i.bn = add nuw nsw i64 %i.bk, %i.r             ; 2 uses
  %i.bo = load i32, ptr %i.o, align 4, !tbaa !14
  %i.bp = trunc nuw i64 %i.bn to i32
  %i.bq = icmp sgt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.r, label %.split158.us

bb.r:                                             ; preds = %jvp_array_offset.exit.i.i97.us
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bn ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 4 uses
  %i.bv = and i64 %i.bs, 128
  %.not.i.i98.us = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i98.us, label %jv_array_get.exit99.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !17
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !17
  br label %jv_array_get.exit99.us

jv_array_get.exit99.us:                           ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.019.0.i93.us = phi i64 [ 0, %bb.q ], [ %i.bs, %bb.r ], [ %i.bs, %bb.s ]
  %.sroa.3.0.i94.us = phi ptr [ null, %bb.q ], [ %i.bu, %bb.r ], [ %i.bu, %bb.s ]
  tail call void @jv_free(i64 %0, ptr %1)
  %i.by = tail call fastcc i32 @jvp_equal(i64 %.sroa.019.0.i93.us, ptr %.sroa.3.0.i94.us, i64 %i.bc, ptr %i.be, i32 noundef 0) ; 2 uses
  %i.bz = icmp sgt i32 %i.by, -1
  br i1 %i.bz, label %bb.t, label %.split160.us

bb.t:                                             ; preds = %jv_array_get.exit99.us
  %.not71.us = icmp eq i32 %i.by, 0
  %.4.ph.us = select i1 %.not71.us, i32 -1, i32 %.2146.us ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.21.0.extract.shift.i.i77
  br i1 %exitcond.not, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !60

bb.u:                                             ; preds = %.loopexit.us
  %i.ca = uitofp nneg i32 %.2.lcssa.us to double
  %i.cb = bitcast double %i.ca to i64
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = and i64 %.sroa.042.0152.us, 128
  %.not.i.i103.us = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i103.us, label %jv_copy.exit.i.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = load i32, ptr %.sroa.7.0153.us, align 4, !tbaa !17
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %.sroa.7.0153.us, align 4, !tbaa !17
  br label %jv_copy.exit.i.us

jv_copy.exit.i.us:                                ; preds = %bb.v, %bb.u
  %i.cg = and i64 %.sroa.042.0152.us, 15
  %i.ch = icmp eq i64 %i.cg, 6
  br i1 %i.ch, label %jv_array_append.exit.us, label %.split163.us

jv_array_append.exit.us:                          ; preds = %jv_copy.exit.i.us
  %.sroa.21.0.extract.shift.i.i.i104.us = lshr i64 %.sroa.042.0152.us, 32
  %.sroa.21.0.extract.trunc.i.i.i105.us = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i104.us to i32
  tail call void @jv_free(i64 %.sroa.042.0152.us, ptr %.sroa.7.0153.us)
  %i.ci = tail call { i64, ptr } @jv_array_set(i64 %.sroa.042.0152.us, ptr %.sroa.7.0153.us, i32 noundef %.sroa.21.0.extract.trunc.i.i.i105.us, i64 4, ptr %i.cc) ; 2 uses
  %i.cj = extractvalue { i64, ptr } %i.ci, 0
  %i.ck = extractvalue { i64, ptr } %i.ci, 1
  br label %.loopexit.us.thread

.loopexit.us.thread:                              ; preds = %jv_copy.exit76.us.thread, %jv_copy.exit76.us, %jv_array_append.exit.us, %.loopexit.us
  %.sroa.042.1.us = phi i64 [ %i.cj, %jv_array_append.exit.us ], [ %.sroa.042.0152.us, %.loopexit.us ], [ %.sroa.042.0152.us, %jv_copy.exit76.us ], [ %.sroa.042.0152.us, %jv_copy.exit76.us.thread ] ; 2 uses
  %.sroa.7.1.us = phi ptr [ %i.ck, %jv_array_append.exit.us ], [ %.sroa.7.0153.us, %.loopexit.us ], [ %.sroa.7.0153.us, %jv_copy.exit76.us ], [ %.sroa.7.0153.us, %jv_copy.exit76.us.thread ] ; 2 uses
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %.sroa.21.0.extract.shift.i.i
  br i1 %exitcond185.not, label %.thread123, label %.lr.ph154.split.us, !llvm.loop !61

.loopexit.us:                                     ; preds = %bb.t, %bb.k
  %.2.lcssa.us = phi i32 [ %.4.ph.us.peel, %bb.k ], [ %.4.ph.us, %bb.t ] ; 2 uses
  %i.cl = icmp sgt i32 %.2.lcssa.us, -1
  br i1 %i.cl, label %bb.u, label %.loopexit.us.thread

.lr.ph154.split:                                  ; preds = %.lr.ph154
  br i1 %.not.i73, label %jv_copy.exit76, label %bb.w

bb.w:                                             ; preds = %.lr.ph154.split
  %i.cm = load i32, ptr %3, align 4, !tbaa !17
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %3, align 4, !tbaa !17
  br label %jv_copy.exit76

jv_copy.exit76:                                   ; preds = %bb.w, %.lr.ph154.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

.split.us:                                        ; preds = %jvp_array_offset.exit.i.i.us.peel, %jvp_array_offset.exit.i.i.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

.split158.us:                                     ; preds = %jvp_array_offset.exit.i.i97.us.peel, %jvp_array_offset.exit.i.i97.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

.split160.us:                                     ; preds = %jv_array_get.exit99.us.peel, %jv_array_get.exit99.us
  tail call void @jv_free(i64 %.sroa.042.0152.us, ptr %.sroa.7.0153.us)
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %2, ptr %3)
  %i.co = tail call i32 @jvp_utf8_is_valid(ptr noundef nonnull @.str.20, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.20, i64 23)) #20, !inline_history !35
  %.not.i.i100 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i100, label %bb.x, label %jvp_string_new.exit.i

jvp_string_new.exit.i:                            ; preds = %.split160.us
  %i.cp = tail call noundef ptr @jv_mem_alloc(i64 noundef 40) #20, !inline_history !36 ; 6 uses
  store i32 1, ptr %i.cp, align 4, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 23, ptr %i.cq, align 4, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 46, ptr %i.cr, align 4, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(23) %i.cs, ptr noundef nonnull readonly align 1 dereferenceable(23) @.str.20, i64 23, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 39
  store i8 0, ptr %i.ct, align 1, !tbaa !15
  %i.cu = insertvalue { i64, ptr } { i64 133, ptr poison }, ptr %i.cp, 1
  br label %bb.y

bb.x:                                             ; preds = %.split160.us
  %i.cv = tail call fastcc { i64, ptr } @jvp_string_copy_replace_bad(ptr noundef nonnull @.str.20, i32 noundef 23), !inline_history !35
  br label %bb.y

bb.y:                                             ; preds = %jvp_string_new.exit.i, %bb.x
  %.fca.1.insert.i.merged.i = phi { i64, ptr } [ %i.cu, %jvp_string_new.exit.i ], [ %i.cv, %bb.x ] ; 2 uses
  %i.cw = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i, 0
  %i.cx = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i, 1
  %i.cy = tail call ptr @jv_mem_alloc(i64 noundef 24) #20 ; 4 uses
  store i32 1, ptr %i.cy, align 8, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %i.cw, ptr %i.cz, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.cx, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  br label %bb.z

.split163.us:                                     ; preds = %jv_copy.exit.i.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

.thread123:                                       ; preds = %.loopexit.us.thread, %jv_array_length.exit
  %.sroa.042.0.lcssa = phi i64 [ 134, %jv_array_length.exit ], [ %.sroa.042.1.us, %.loopexit.us.thread ]
  %.sroa.7.0.lcssa = phi ptr [ %i.a, %jv_array_length.exit ], [ %.sroa.7.1.us, %.loopexit.us.thread ]
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %2, ptr %3)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread123
  %.sroa.060.7 = phi i64 [ %.sroa.042.0.lcssa, %.thread123 ], [ 128, %bb.y ]
  %.sroa.3.7 = phi ptr [ %.sroa.7.0.lcssa, %.thread123 ], [ %i.cy, %bb.y ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.060.7, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.7, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jv_equal(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @jvp_equal(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_string_sized(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = tail call i32 @jvp_utf8_is_valid(ptr noundef %0, ptr noundef %i.b) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %1 to i64                       ; 3 uses
  %i.e = add nuw nsw i64 %i.d, 17
  %i.f = tail call noundef ptr @jv_mem_alloc(i64 noundef %i.e) #20 ; 6 uses
  store i32 1, ptr %i.f, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %1, ptr %i.g, align 4, !tbaa !14
  %i.h = shl i32 %1, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.h, ptr %i.i, align 4, !tbaa !14
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %jvp_string_new.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull readonly align 1 %0, i64 %i.d, i1 false)
  br label %jvp_string_new.exit

jvp_string_new.exit:                              ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.d
  store i8 0, ptr %i.l, align 1, !tbaa !15
  %i.m = insertvalue { i64, ptr } { i64 133, ptr poison }, ptr %i.f, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = tail call fastcc { i64, ptr } @jvp_string_copy_replace_bad(ptr noundef %0, i32 noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %jvp_string_new.exit
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.m, %jvp_string_new.exit ], [ %i.n, %bb.d ]
end_hunk_0
begin_hunk_1_@jv_string_split:bb.a
  br i1 %i.cn, label %jv_array_append.exit140, label %bb.x

bb.x:                                             ; preds = %jv_copy.exit.i137
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_append.exit140:                          ; preds = %jv_copy.exit.i137
  %.sroa.21.0.extract.shift.i.i.i138 = lshr i64 %i.by, 32
  %.sroa.21.0.extract.trunc.i.i.i139 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i138 to i32
  tail call void @jv_free(i64 %i.by, ptr %i.bz)
  %i.co = tail call { i64, ptr } @jv_array_set(i64 %i.by, ptr %i.bz, i32 noundef %.sroa.21.0.extract.trunc.i.i.i139, i64 %i.ci, ptr %i.cj) ; 2 uses
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  %i.cq = extractvalue { i64, ptr } %i.co, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %jv_array_append.exit140
  %.sroa.095.3 = phi i64 [ %i.cp, %jv_array_append.exit140 ], [ %i.by, %bb.t ] ; 2 uses
  %.sroa.11.3 = phi ptr [ %i.cq, %jv_array_append.exit140 ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cr = icmp ult ptr %i.cb, %i.n
  br i1 %i.cr, label %bb.o, label %.loopexit, !llvm.loop !70

.loopexit:                                        ; preds = %jv_array_append.exit130, %bb.y, %.preheader, %bb.n
  %.sroa.095.4 = phi i64 [ %.sroa.095.1, %bb.n ], [ 134, %.preheader ], [ %i.by, %jv_array_append.exit130 ], [ %.sroa.095.3, %bb.y ]
  %.sroa.11.4 = phi ptr [ %.sroa.11.1, %bb.n ], [ %i.u, %.preheader ], [ %i.bz, %jv_array_append.exit130 ], [ %.sroa.11.3, %bb.y ]
  call void @jv_free(i64 %0, ptr %1)
  call void @jv_free(i64 %2, ptr %3)
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.095.4, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.11.4, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @jv_get_refcnt(i64 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = and i64 %0, 128
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_string_append_codepoint(i64 %0, ptr %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call i32 @jvp_utf8_encode(i32 noundef %2, ptr noundef nonnull %i.a) #20
  %i.c = call fastcc { i64, ptr } @jvp_string_append(i64 %0, ptr %1, ptr noundef nonnull %i.a, i32 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret { i64, ptr } %i.c
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_string_explode(i64 %0, ptr %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = and i64 %0, 15
  %i.c = icmp eq i64 %i.b, 5
  br i1 %i.c, label %jv_string_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 1436, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_explode) #19
  unreachable

jv_string_value.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = and i64 %0, 128
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %jv_string_length_bytes.exit, label %bb.c

bb.c:                                             ; preds = %jv_string_value.exit
  %i.f = load i32, ptr %1, align 4, !tbaa !17
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %1, align 4, !tbaa !17
  br label %jv_string_length_bytes.exit

jv_string_length_bytes.exit:                      ; preds = %bb.c, %jv_string_value.exit
  %i.h = getelementptr i8, ptr %1, i64 8
  %.val.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.i = lshr i32 %.val.i, 1                      ; 2 uses
  tail call void @jv_free(i64 %0, ptr %1)
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.l = shl nuw nsw i64 %i.j, 4
  %i.m = add nuw nsw i64 %i.l, 16
  %i.n = tail call ptr @jv_mem_alloc(i64 noundef %i.m) #20 ; 4 uses
  store i32 1, ptr %i.n, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.i, ptr %i.p, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %jv_array_append.exit, %jv_string_length_bytes.exit
  %.0 = phi ptr [ %i.d, %jv_string_length_bytes.exit ], [ %i.q, %jv_array_append.exit ]
  %.sroa.032.0 = phi i64 [ 134, %jv_string_length_bytes.exit ], [ %i.ab, %jv_array_append.exit ] ; 6 uses
  %.sroa.5.0 = phi ptr [ %i.n, %jv_string_length_bytes.exit ], [ %i.ac, %jv_array_append.exit ] ; 5 uses
  %i.q = call ptr @jvp_utf8_next(ptr noundef nonnull %.0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.a, align 4, !tbaa !14
  %i.s = sitofp i32 %i.r to double
  %i.t = bitcast double %i.s to i64
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = and i64 %.sroa.032.0, 128
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %jv_copy.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %.sroa.5.0, align 4, !tbaa !17
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %.sroa.5.0, align 4, !tbaa !17
  br label %jv_copy.exit.i

jv_copy.exit.i:                                   ; preds = %bb.f, %bb.e
  %i.y = and i64 %.sroa.032.0, 15
  %i.z = icmp eq i64 %i.y, 6
  br i1 %i.z, label %jv_array_append.exit, label %bb.g

bb.g:                                             ; preds = %jv_copy.exit.i
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_append.exit:                             ; preds = %jv_copy.exit.i
  %.sroa.21.0.extract.shift.i.i.i = lshr i64 %.sroa.032.0, 32
  %.sroa.21.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i to i32
  call void @jv_free(i64 %.sroa.032.0, ptr %.sroa.5.0)
  %i.aa = call { i64, ptr } @jv_array_set(i64 %.sroa.032.0, ptr %.sroa.5.0, i32 noundef %.sroa.21.0.extract.trunc.i.i.i, i64 4, ptr %i.u) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 3 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 2 uses
  %i.ad = and i64 %i.ab, 15
  %.not39 = icmp eq i64 %i.ad, 0
  br i1 %.not39, label %bb.h, label %bb.d, !llvm.loop !71

bb.h:                                             ; preds = %jv_array_append.exit, %bb.d
  %.sroa.032.1 = phi i64 [ %i.ab, %jv_array_append.exit ], [ %.sroa.032.0, %bb.d ]
  %.sroa.5.1 = phi ptr [ %i.ac, %jv_array_append.exit ], [ %.sroa.5.0, %bb.d ]
  call void @jv_free(i64 %0, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.032.1, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.5.1, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_string_implode(i64 %0, ptr %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 4 uses
  %i.b = and i64 %0, 15
  %i.c = icmp eq i64 %i.b, 6
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 1451, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_implode) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = and i64 %0, 128
  %.not.i = icmp eq i64 %i.d, 0                   ; 2 uses
  br i1 %.not.i, label %jv_array_length.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %1, align 4, !tbaa !17
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %1, align 4, !tbaa !17
  br label %jv_array_length.exit

jv_array_length.exit:                             ; preds = %bb.d, %bb.c
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32 ; 5 uses
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32 ; 2 uses
  tail call void @jv_free(i64 %0, ptr %1)
  %i.g = add nuw nsw i64 %.sroa.21.0.extract.shift.i.i, 17
  %i.h = tail call noundef ptr @jv_mem_alloc(i64 noundef %i.g) #20 ; 6 uses
  store i32 1, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %.sroa.21.0.extract.trunc.i.i, ptr %i.i, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.j, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %.sroa.21.0.extract.shift.i.i, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.21.0.extract.shift.i.i
  store i8 0, ptr %i.l, align 1, !tbaa !15
  %i.m = icmp sgt i64 %0, -1
  br i1 %i.m, label %.preheader, label %bb.e

.preheader:                                       ; preds = %jv_array_length.exit
  %i.n = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i, 0
  br i1 %i.n, label %.lr.ph, label %jv_number_value.exit._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.o = lshr i64 %0, 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %2 = and i64 %i.o, 65535
  br label %bb.f

bb.e:                                             ; preds = %jv_array_length.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.8, i32 noundef 1456, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_implode) #19
  unreachable

bb.f:                                             ; preds = %jv_number_value.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %jv_number_value.exit ] ; 2 uses
  %.sroa.5.065 = phi ptr [ %i.h, %.lr.ph ], [ %i.at, %jv_number_value.exit ]
  %.sroa.047.064 = phi i64 [ 133, %.lr.ph ], [ %i.as, %jv_number_value.exit ]
  br i1 %.not.i, label %jvp_array_offset.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %1, align 4, !tbaa !17
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %1, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i

jvp_array_offset.exit.i.i:                        ; preds = %bb.f, %bb.g
  %i.t = add nuw nsw i64 %indvars.iv, %2          ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !tbaa !14
  %i.v = trunc nuw i64 %i.t to i32
  %i.w = icmp sgt i32 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %jvp_array_offset.exit.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.i:                                             ; preds = %jvp_array_offset.exit.i.i
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 6 uses
  %i.ab = and i64 %i.y, 128
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %jv_array_get.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !17
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !17
  br label %jv_array_get.exit

jv_array_get.exit:                                ; preds = %bb.i, %bb.j
  call void @jv_free(i64 %0, ptr nonnull %1)
  %i.ae = and i64 %i.y, 15
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %jv_array_get.exit
  call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 1460, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_implode) #19
  unreachable

bb.l:                                             ; preds = %jv_array_get.exit
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = bitcast i64 %i.ag to double
  %i.ai = and i64 %i.y, 244
  %i.aj = icmp eq i64 %i.ai, 148
  br i1 %i.aj, label %jvp_literal_number_ptr.exit.i, label %jv_number_value.exit

jvp_literal_number_ptr.exit.i:                    ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %i.am = fcmp uno double %i.al, 0.000000e+00
  br i1 %i.am, label %bb.m, label %jv_number_value.exit

bb.m:                                             ; preds = %jvp_literal_number_ptr.exit.i
  %i.an = call fastcc double @jvp_literal_number_to_double(i64 %i.y, ptr nonnull %i.aa) ; 2 uses
  store double %i.an, ptr %i.ak, align 8, !tbaa !32
  br label %jv_number_value.exit

jv_number_value.exit:                             ; preds = %bb.l, %jvp_literal_number_ptr.exit.i, %bb.m
  %.0.i = phi double [ %i.al, %jvp_literal_number_ptr.exit.i ], [ %i.an, %bb.m ], [ %i.ah, %bb.l ]
  %i.ao = fptosi double %.0.i to i32              ; 3 uses
  call void @jv_free(i64 %i.y, ptr %i.aa)
  %or.cond = icmp ugt i32 %i.ao, 1114111
  %i.ap = and i32 %i.ao, 2095104
  %or.cond3 = icmp eq i32 %i.ap, 55296
  %or.cond55 = or i1 %or.cond, %or.cond3
  %.051 = select i1 %or.cond55, i32 65533, i32 %i.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.aq = call i32 @jvp_utf8_encode(i32 noundef %.051, ptr noundef nonnull %i.a) #20
  %i.ar = call fastcc { i64, ptr } @jvp_string_append(i64 %.sroa.047.064, ptr %.sroa.5.065, ptr noundef nonnull %i.a, i32 noundef %i.aq) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.as = extractvalue { i64, ptr } %i.ar, 0      ; 3 uses
  %i.at = extractvalue { i64, ptr } %i.ar, 1      ; 2 uses
  %i.au = and i64 %i.as, 15
  %.not62 = icmp eq i64 %i.au, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.21.0.extract.shift.i.i
  %or.cond73 = select i1 %.not62, i1 true, i1 %exitcond.not
  br i1 %or.cond73, label %jv_number_value.exit._crit_edge, label %bb.f, !llvm.loop !72

jv_number_value.exit._crit_edge:                  ; preds = %jv_number_value.exit, %.preheader
  %.sroa.047.1 = phi i64 [ 133, %.preheader ], [ %i.as, %jv_number_value.exit ]
  %.sroa.5.1 = phi ptr [ %i.h, %.preheader ], [ %i.at, %jv_number_value.exit ]
  call void @jv_free(i64 %0, ptr %1)
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.047.1, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.5.1, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @jv_string_hash(i64 %0, ptr %1) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 5
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 1475, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_hash) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @jvp_string_hash(i64 %0, ptr %1)
  tail call void @jv_free(i64 %0, ptr %1)
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jvp_string_hash(i64 %0, ptr nofree captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 5
  br i1 %i.b, label %jvp_string_ptr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.8, i32 noundef 1100, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_string_ptr) #19
  unreachable

jvp_string_ptr.exit:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 5 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %jvp_string_ptr.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  br label %bb.i

bb.d:                                             ; preds = %jvp_string_ptr.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = lshr exact i32 %i.d, 1                   ; 3 uses
  %i.j = lshr i32 %i.d, 3                         ; 2 uses
  %i.k = tail call i32 @pthread_once(ptr noundef nonnull @hash_seed_once, ptr noundef nonnull @jvp_hash_seed_init) #20 ; 0 uses
  %i.l = load i32, ptr @hash_seed, align 4, !tbaa !14 ; 3 uses
  %i.m = and i32 %i.i, 2147483644
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n ; 6 uses
  %.not5152 = icmp eq i32 %i.j, 0
  br i1 %.not5152, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.p = sub nsw i32 0, %i.j
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = and i32 %i.d, 8
  %lcmp.mod.not = icmp eq i32 %i.r, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = mul i32 %i.t, -862048943                 ; 2 uses
  %i.v = tail call i32 @llvm.fshl.i32(i32 %i.u, i32 %i.u, i32 15)
  %i.w = mul i32 %i.v, 461845907
  %i.x = xor i32 %i.w, %i.l                       ; 2 uses
  %i.y = tail call i32 @llvm.fshl.i32(i32 %i.x, i32 %i.x, i32 13)
  %i.z = mul i32 %i.y, 5
  %i.aa = add i32 %i.z, -430675100                ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.q, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.04953.unr = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %.mask = and i32 %i.d, -8
  %i.ab = icmp eq i32 %.mask, 8
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.049.lcssa = phi i32 [ %i.l, %bb.d ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.av, %.lr.ph ] ; 2 uses
  %i.ac = and i32 %i.i, 3
  switch i32 %i.ac, label %default.unreachable56 [
    i32 3, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
    i32 0, label %bb.h
  ]

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.04953 = phi i32 [ %i.av, %.lr.ph ], [ %.04953.unr, %.lr.ph.prol.loopexit ]
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = mul i32 %i.ae, -862048943               ; 2 uses
end_hunk_1
begin_hunk_2_@jvp_object_merge_recursive:bb.a
  ]

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.04953.i = phi i32 [ %i.cy, %.lr.ph.i ], [ %.04953.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !14
  %i.ci = mul i32 %i.ch, -862048943               ; 2 uses
  %i.cj = tail call i32 @llvm.fshl.i32(i32 %i.ci, i32 %i.ci, i32 15)
  %i.ck = mul i32 %i.cj, 461845907
  %i.cl = xor i32 %i.ck, %.04953.i                ; 2 uses
  %i.cm = tail call i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cl, i32 13)
  %i.cn = mul i32 %i.cm, 5
  %i.co = add i32 %i.cn, -430675100
  %i.cp = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !14
  %i.cs = mul i32 %i.cr, -862048943               ; 2 uses
  %i.ct = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 15)
  %i.cu = mul i32 %i.ct, 461845907
  %i.cv = xor i32 %i.cu, %i.co                    ; 2 uses
  %i.cw = tail call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 13)
  %i.cx = mul i32 %i.cw, 5
  %i.cy = add i32 %i.cx, -430675100               ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cz = icmp eq i64 %indvars.iv.next.i.1, 0
  br i1 %i.cz, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

bb.u:                                             ; preds = %._crit_edge.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !15
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %.0.i226 = phi i32 [ %i.dd, %bb.u ], [ 0, %._crit_edge.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 8
  %i.di = or disjoint i32 %i.dh, %.0.i226
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i
  %.1.i = phi i32 [ %i.di, %bb.v ], [ 0, %._crit_edge.i ]
  %i.dj = load i8, ptr %i.br, align 1, !tbaa !15
  %i.dk = zext i8 %i.dj to i32
  %i.dl = xor i32 %.1.i, %i.dk
  %i.dm = mul i32 %i.dl, -862048943               ; 2 uses
  %i.dn = tail call i32 @llvm.fshl.i32(i32 %i.dm, i32 %i.dm, i32 15)
  %i.do = mul i32 %i.dn, 461845907
  %i.dp = xor i32 %i.do, %.049.lcssa.i
  br label %bb.x

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.x:                                             ; preds = %bb.w, %._crit_edge.i
  %.150.i = phi i32 [ %i.dp, %bb.w ], [ %.049.lcssa.i, %._crit_edge.i ]
  %i.dq = xor i32 %.150.i, %i.bl                  ; 2 uses
  %i.dr = lshr i32 %i.dq, 16
  %i.ds = xor i32 %i.dr, %i.dq
  %i.dt = mul i32 %i.ds, -2048144789              ; 2 uses
  %i.du = lshr i32 %i.dt, 13
  %i.dv = xor i32 %i.du, %i.dt
  %i.dw = mul i32 %i.dv, -1028477387              ; 2 uses
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = xor i32 %i.dx, %i.dw                    ; 2 uses
  %i.dz = load i32, ptr %i.bf, align 4, !tbaa !14
  %i.ea = or i32 %i.dz, 1
  store i32 %i.ea, ptr %i.bf, align 4, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 4
  store i32 %i.dy, ptr %i.eb, align 4, !tbaa !14
  br label %jvp_string_hash.exit

jvp_string_hash.exit:                             ; preds = %bb.s, %bb.x
  %.047.i = phi i32 [ %i.bj, %bb.s ], [ %i.dy, %bb.x ]
  %i.ec = and i32 %.047.i, %i.be
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ed
  %i.ef = tail call fastcc ptr @jvp_object_find_slot(i64 %.sroa.0120.sroa.0.0.insert.insert134, ptr readonly %.sroa.11.1308, i64 %.sroa.0.0.copyload.i, ptr nonnull %.sroa.5.0.copyload.i, ptr noundef nonnull readonly %i.ee) ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %jv_object_get.exit, label %bb.y

bb.y:                                             ; preds = %jvp_string_hash.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.ei = load i64, ptr %i.eh, align 8            ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8            ; 4 uses
  %i.el = and i64 %i.ei, 128
  %.not.i.i221 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i221, label %jv_object_get.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !17
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !17
  br label %jv_object_get.exit

jv_object_get.exit:                               ; preds = %jvp_string_hash.exit, %bb.y, %bb.z
  %.sroa.034.0.i = phi i64 [ 0, %jvp_string_hash.exit ], [ %i.ei, %bb.y ], [ %i.ei, %bb.z ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ null, %jvp_string_hash.exit ], [ %i.ek, %bb.y ], [ %i.ek, %bb.z ] ; 2 uses
  tail call void @jv_free(i64 %.sroa.0120.sroa.0.0.insert.insert134, ptr nonnull %.sroa.11.1308)
  tail call void @jv_free(i64 %.sroa.0.0.copyload.i, ptr nonnull %.sroa.5.0.copyload.i)
  %i.eo = and i64 %.sroa.034.0.i, 15
  %i.ep = icmp eq i64 %i.eo, 7
  %i.eq = and i64 %i.an, 15
  %i.er = icmp eq i64 %i.eq, 7
  %or.cond203 = and i1 %i.er, %i.ep
  br i1 %or.cond203, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %jv_object_get.exit
  %i.es = tail call fastcc { i64, ptr } @jvp_object_merge_recursive(i64 %.sroa.034.0.i, ptr %.sroa.3.0.i, i64 %i.an, ptr %i.ap, i32 noundef %i.aa) ; 3 uses
  %i.et = extractvalue { i64, ptr } %i.es, 0      ; 2 uses
  %i.eu = and i64 %i.et, 15
  %.not259 = icmp eq i64 %i.eu, 0
  br i1 %.not259, label %.thread243, label %bb.ab

.thread243:                                       ; preds = %bb.aa
  tail call void @jv_free(i64 %.sroa.0.0.copyload.i, ptr nonnull %.sroa.5.0.copyload.i)
  tail call void @jv_free(i64 %.sroa.0120.sroa.0.0.insert.insert134, ptr nonnull %.sroa.11.1308)
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  br label %.thread251

bb.ab:                                            ; preds = %bb.aa
  %i.ev = extractvalue { i64, ptr } %i.es, 1
  %i.ew = tail call { i64, ptr } @jv_object_set(i64 %.sroa.0120.sroa.0.0.insert.insert134, ptr nonnull %.sroa.11.1308, i64 %.sroa.0.0.copyload.i, ptr nonnull %.sroa.5.0.copyload.i, i64 %i.et, ptr %i.ev)
  br label %bb.ad

bb.ac:                                            ; preds = %jv_object_get.exit
  tail call void @jv_free(i64 %.sroa.034.0.i, ptr %.sroa.3.0.i)
  %i.ex = tail call { i64, ptr } @jv_object_set(i64 %.sroa.0120.sroa.0.0.insert.insert134, ptr nonnull %.sroa.11.1308, i64 %.sroa.0.0.copyload.i, ptr nonnull %.sroa.5.0.copyload.i, i64 %i.an, ptr %i.ap)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.pn = phi { i64, ptr } [ %i.ew, %bb.ab ], [ %i.ex, %bb.ac ] ; 2 uses
  %.sroa.0120.sroa.0.2.in = extractvalue { i64, ptr } %.pn, 0 ; 6 uses
  %.sroa.0120.sroa.11.sroa.0.2.in = lshr i64 %.sroa.0120.sroa.0.2.in, 8 ; 4 uses
  %.sroa.11.2 = extractvalue { i64, ptr } %.pn, 1 ; 4 uses
  %i.ey = and i64 %.sroa.0120.sroa.0.2.in, 15
  %.not260.not = icmp ne i64 %i.ey, 0
  %indvars.iv.next491 = add nuw nsw i64 %i.ae, 1  ; 2 uses
  %i.ez = trunc nuw i64 %indvars.iv.next491 to i32 ; 2 uses
  %.not34.i492 = icmp slt i32 %i.ez, %.sroa.21.0.extract.trunc.i.i.i
  %or.cond504 = select i1 %.not260.not, i1 %.not34.i492, i1 false
  br i1 %or.cond504, label %jvp_object_get_slot.exit.i, label %.thread

jvp_object_size.exit.i:                           ; preds = %jvp_object_get_slot.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next493, 1 ; 2 uses
  %i.fa = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %.not34.i = icmp slt i32 %i.fa, %.sroa.21.0.extract.trunc.i.i.i
  br i1 %.not34.i, label %jvp_object_get_slot.exit.i, label %.thread

jvp_object_get_slot.exit.i:                       ; preds = %bb.ad, %jvp_object_size.exit.i
  %i.fb = phi i32 [ %i.fa, %jvp_object_size.exit.i ], [ %i.ez, %bb.ad ]
  %indvars.iv.next493 = phi i64 [ %indvars.iv.next, %jvp_object_size.exit.i ], [ %indvars.iv.next491, %bb.ad ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.next493
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = and i64 %i.fe, 15
  switch i64 %i.ff, label %bb.ae [
    i64 1, label %jvp_object_size.exit.i
    i64 5, label %jv_object_iter_next.exit
  ]

bb.ae:                                            ; preds = %jvp_object_get_slot.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, i32 noundef 1985, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

jv_object_iter_next.exit:                         ; preds = %jvp_object_get_slot.exit.i
  %.not258 = icmp eq i64 %indvars.iv.next493, 4294967294
  br i1 %.not258, label %.thread, label %.lr.ph, !llvm.loop !79

.thread:                                          ; preds = %jv_object_iter_next.exit, %bb.ad, %jvp_object_size.exit.i, %jv_object_iter.exit
  %.sroa.11.4 = phi ptr [ %1, %jv_object_iter.exit ], [ %.sroa.11.2, %jvp_object_size.exit.i ], [ %.sroa.11.2, %bb.ad ], [ %.sroa.11.2, %jv_object_iter_next.exit ]
  %.sroa.0120.sroa.0.4 = phi i64 [ %0, %jv_object_iter.exit ], [ %.sroa.0120.sroa.0.2.in, %jvp_object_size.exit.i ], [ %.sroa.0120.sroa.0.2.in, %bb.ad ], [ %.sroa.0120.sroa.0.2.in, %jv_object_iter_next.exit ]
  %.sroa.0120.sroa.11.sroa.0.4.in = phi i64 [ %.sroa.0120.sroa.11.0.extract.shift, %jv_object_iter.exit ], [ %.sroa.0120.sroa.11.sroa.0.2.in, %jvp_object_size.exit.i ], [ %.sroa.0120.sroa.11.sroa.0.2.in, %bb.ad ], [ %.sroa.0120.sroa.11.sroa.0.2.in, %jv_object_iter_next.exit ]
  tail call void @jv_free(i64 %2, ptr %3)
  %.sroa.0120.sroa.11.0.insert.shift177 = shl nuw i64 %.sroa.0120.sroa.11.sroa.0.4.in, 8
  %.sroa.0120.sroa.0.0.insert.ext149 = and i64 %.sroa.0120.sroa.0.4, 255
  %.sroa.0120.sroa.0.0.insert.insert151 = or disjoint i64 %.sroa.0120.sroa.11.0.insert.shift177, %.sroa.0120.sroa.0.0.insert.ext149
  %i.fg = insertvalue { i64, ptr } poison, i64 %.sroa.0120.sroa.0.0.insert.insert151, 0
  %i.fh = insertvalue { i64, ptr } %i.fg, ptr %.sroa.11.4, 1
  br label %.thread251

.thread251:                                       ; preds = %.thread243, %.thread, %jv_string.exit
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.r, %jv_string.exit ], [ %i.fh, %.thread ], [ %i.es, %.thread243 ]
  ret { i64, ptr } %.fca.1.insert.merged
}

declare ptr @jv_mem_realloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jvp_equal(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 10000
  br i1 %i.a, label %jvp_array_equal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32 ; 3 uses
  %i.b = and i32 %.sroa.0.0.extract.trunc.i, 15   ; 2 uses
  %.sroa.0.0.extract.trunc.i228 = trunc i64 %2 to i32 ; 3 uses
  %i.c = and i32 %.sroa.0.0.extract.trunc.i228, 15
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.c, label %jvp_array_equal.exit

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %0, 128
  %i.e = and i64 %i.d, %2
  %or.cond278.not.not = icmp eq i64 %i.e, 0
  br i1 %or.cond278.not.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = xor i32 %.sroa.0.0.extract.trunc.i228, %.sroa.0.0.extract.trunc.i
  %i.g = and i32 %i.f, 127
  %i.h = icmp eq i32 %i.g, 0
  %.unshifted = xor i64 %2, %0
  %i.i = icmp ult i64 %.unshifted, 4294967296
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  %i.j = icmp eq ptr %1, %3
  %or.cond227 = select i1 %or.cond, i1 %i.j, i1 false
  br i1 %or.cond227, label %jvp_array_equal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  switch i32 %i.b, label %jvp_array_equal.exit [
    i32 4, label %bb.f
    i32 6, label %bb.g
    i32 5, label %bb.n
    i32 7, label %bb.s
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @jvp_number_cmp(i64 %0, ptr %1, i64 %2, ptr %3)
  %i.l = icmp eq i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  br label %jvp_array_equal.exit

bb.g:                                             ; preds = %bb.e
  %i.n = add nsw i32 %4, 1
  %i.o = and i64 %0, 15
  %i.p = icmp eq i64 %i.o, 6
  br i1 %i.p, label %jvp_array_length.exit254, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 846, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_length) #19
  unreachable

jvp_array_length.exit254:                         ; preds = %bb.g
  %.sroa.21.0.extract.shift.i252 = lshr i64 %0, 32 ; 3 uses
  %.sroa.21.0.extract.trunc.i253 = trunc nuw i64 %.sroa.21.0.extract.shift.i252 to i32
  %i.q = and i64 %2, 15
  %i.r = icmp eq i64 %i.q, 6
  br i1 %i.r, label %jvp_array_length.exit251, label %bb.i

bb.i:                                             ; preds = %jvp_array_length.exit254
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 846, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_length) #19
  unreachable

jvp_array_length.exit251:                         ; preds = %jvp_array_length.exit254
  %.sroa.21.0.extract.shift.i249 = lshr i64 %2, 32
  %.not.i = icmp eq i64 %.sroa.21.0.extract.shift.i252, %.sroa.21.0.extract.shift.i249
  br i1 %.not.i, label %jvp_array_ptr.exit.a, label %jvp_array_equal.exit

jvp_array_ptr.exit.a:                             ; preds = %jvp_array_length.exit251
  %5 = icmp ne ptr %1, %3
  %.unshifted279 = xor i32 %.sroa.0.0.extract.trunc.i228, %.sroa.0.0.extract.trunc.i
  %6 = icmp ugt i32 %.unshifted279, 65535
  %or.cond280.not291 = or i1 %5, %6
  %i.s = icmp sgt i32 %.sroa.21.0.extract.trunc.i253, 0
  %or.cond288 = select i1 %or.cond280.not291, i1 %i.s, i1 false
  br i1 %or.cond288, label %jvp_array_offset.exit.i244.lr.ph, label %jvp_array_equal.exit

jvp_array_offset.exit.i244.lr.ph:                 ; preds = %jvp_array_ptr.exit.a
  %i.t = lshr i64 %0, 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = lshr i64 %2, 16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = and i64 %i.t, 65535
  %8 = and i64 %i.w, 65535
  %i.z = ashr i64 %2, 32
  br label %jvp_array_offset.exit.i244

jvp_array_length.exit:                            ; preds = %jv_copy.exit
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next298, %.sroa.21.0.extract.shift.i252
  br i1 %exitcond301.not, label %jvp_array_equal.exit, label %jvp_array_offset.exit.i244, !llvm.loop !80

jvp_array_offset.exit.i244:                       ; preds = %jvp_array_offset.exit.i244.lr.ph, %jvp_array_length.exit
  %indvars.iv297 = phi i64 [ 0, %jvp_array_offset.exit.i244.lr.ph ], [ %indvars.iv.next298, %jvp_array_length.exit ] ; 4 uses
  %i.aa = add nuw nsw i64 %indvars.iv297, %7      ; 2 uses
  %i.ab = load i32, ptr %i.u, align 4, !tbaa !14
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %i.aa, %i.ac
  br i1 %i.ad, label %jvp_array_read.exit246, label %bb.j

bb.j:                                             ; preds = %jvp_array_offset.exit.i244
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

jvp_array_read.exit246:                           ; preds = %jvp_array_offset.exit.i244
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.aa ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = and i64 %i.af, 128
  %.not.i237 = icmp eq i64 %i.ai, 0
  br i1 %.not.i237, label %jvp_array_offset.exit.i, label %bb.k

bb.k:                                             ; preds = %jvp_array_read.exit246
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i

jvp_array_offset.exit.i:                          ; preds = %bb.k, %jvp_array_read.exit246
  %i.al = icmp slt i64 %indvars.iv297, %i.z
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %indvars.iv297, %8      ; 2 uses
  %i.an = load i32, ptr %i.x, align 4, !tbaa !14
  %i.ao = trunc nuw i64 %i.am to i32
  %i.ap = icmp sgt i32 %i.an, %i.ao
  br i1 %i.ap, label %jvp_array_offset.exit42.i, label %bb.l

bb.l:                                             ; preds = %jvp_array_offset.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

jvp_array_offset.exit42.i:                        ; preds = %jvp_array_offset.exit.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.am ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = and i64 %i.ar, 128
  %.not.i235 = icmp eq i64 %i.au, 0
  br i1 %.not.i235, label %jv_copy.exit, label %bb.m

bb.m:                                             ; preds = %jvp_array_offset.exit42.i
  %i.av = load i32, ptr %i.at, align 4, !tbaa !17
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %jvp_array_offset.exit42.i, %bb.m
  %i.ax = tail call fastcc i32 @jvp_equal(i64 %i.af, ptr %i.ah, i64 %i.ar, ptr %i.at, i32 noundef %i.n), !inline_history !81 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %jvp_array_length.exit, label %jvp_array_equal.exit

bb.n:                                             ; preds = %bb.e
  %i.az = and i64 %0, 15
  %i.ba = icmp eq i64 %i.az, 5
  br i1 %i.ba, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.8, i32 noundef 1300, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_string_equal) #19
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bb = and i64 %2, 15
  %i.bc = icmp eq i64 %i.bb, 5
  br i1 %i.bc, label %jvp_string_ptr.exit19.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.8, i32 noundef 1301, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_string_equal) #19
  unreachable

jvp_string_ptr.exit19.i:                          ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %1, i64 8
  %.val18.i = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.be = lshr i32 %.val18.i, 1                   ; 2 uses
  %i.bf = getelementptr i8, ptr %3, i64 8
  %.val17.i = load i32, ptr %i.bf, align 4, !tbaa !14
  %i.bg = lshr i32 %.val17.i, 1
  %.not.i230 = icmp eq i32 %i.be, %i.bg
  br i1 %.not.i230, label %bb.r, label %jvp_array_equal.exit

bb.r:                                             ; preds = %jvp_string_ptr.exit19.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = zext nneg i32 %i.be to i64
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.bh, ptr nonnull readonly %i.bi, i64 %i.bj)
  %i.bk = icmp eq i32 %bcmp.i, 0
  %i.bl = zext i1 %i.bk to i32
  br label %jvp_array_equal.exit

bb.s:                                             ; preds = %bb.e
  %i.bm = add nsw i32 %4, 1
  %i.bn = and i64 %2, 15
  %i.bo = icmp eq i64 %i.bn, 7
  br i1 %i.bo, label %jvp_object_size.exit.lr.ph.i, label %bb.t

jvp_object_size.exit.lr.ph.i:                     ; preds = %bb.s
  %.sroa.21.0.extract.shift.i.i270 = lshr i64 %2, 32 ; 4 uses
  %.sroa.21.0.extract.trunc.i.i271 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i270 to i32
  %i.bp = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i271, 0
  br i1 %i.bp, label %jvp_object_get_slot.exit.us.i.preheader, label %jvp_object_length.exit

jvp_object_get_slot.exit.us.i.preheader:          ; preds = %jvp_object_size.exit.lr.ph.i
  %i.bq = icmp eq i64 %.sroa.21.0.extract.shift.i.i270, 1
  br i1 %i.bq, label %jvp_object_get_slot.exit.us.i.epil.preheader, label %jvp_object_get_slot.exit.us.i.preheader.new

jvp_object_get_slot.exit.us.i.preheader.new:      ; preds = %jvp_object_get_slot.exit.us.i.preheader
  %unroll_iter = and i64 %.sroa.21.0.extract.shift.i.i270, 2147483646
  br label %jvp_object_get_slot.exit.us.i

jvp_object_get_slot.exit.us.i:                    ; preds = %jvp_object_get_slot.exit.us.i, %jvp_object_get_slot.exit.us.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %jvp_object_get_slot.exit.us.i.preheader.new ], [ %indvars.iv.next.i.1, %jvp_object_get_slot.exit.us.i ] ; 3 uses
  %.079.us12.i = phi i32 [ 0, %jvp_object_get_slot.exit.us.i.preheader.new ], [ %spec.select.us.i.1, %jvp_object_get_slot.exit.us.i ]
  %niter = phi i64 [ 0, %jvp_object_get_slot.exit.us.i.preheader.new ], [ %niter.next.1, %jvp_object_get_slot.exit.us.i ]
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 15
  %.not.us.i = icmp ne i64 %i.bu, 1
  %i.bv = zext i1 %.not.us.i to i32
  %spec.select.us.i = add nuw nsw i32 %.079.us12.i, %i.bv
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = and i64 %i.by, 15
  %.not.us.i.1 = icmp ne i64 %i.bz, 1
  %i.ca = zext i1 %.not.us.i.1 to i32
  %spec.select.us.i.1 = add nuw nsw i32 %spec.select.us.i, %i.ca ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %jvp_object_length.exit.loopexit.unr-lcssa, label %jvp_object_get_slot.exit.us.i

bb.t:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, i32 noundef 1651, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_size) #19
  unreachable

jvp_object_length.exit.loopexit.unr-lcssa:        ; preds = %jvp_object_get_slot.exit.us.i
  %i.cb = and i64 %2, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.cb, 0
  br i1 %lcmp.mod.not, label %jvp_object_length.exit, label %jvp_object_get_slot.exit.us.i.epil.preheader

jvp_object_get_slot.exit.us.i.epil.preheader:     ; preds = %jvp_object_length.exit.loopexit.unr-lcssa, %jvp_object_get_slot.exit.us.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %jvp_object_get_slot.exit.us.i.preheader ], [ %indvars.iv.next.i.1, %jvp_object_length.exit.loopexit.unr-lcssa ]
  %.079.us12.i.epil.init = phi i32 [ 0, %jvp_object_get_slot.exit.us.i.preheader ], [ %spec.select.us.i.1, %jvp_object_length.exit.loopexit.unr-lcssa ]
  %lcmp.mod326 = trunc i64 %.sroa.21.0.extract.shift.i.i270 to i1
  tail call void @llvm.assume(i1 %lcmp.mod326)
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.i.epil.init
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = and i64 %i.ce, 15
  %.not.us.i.epil = icmp ne i64 %i.cf, 1
  %i.cg = zext i1 %.not.us.i.epil to i32
  %spec.select.us.i.epil = add nuw nsw i32 %.079.us12.i.epil.init, %i.cg
  br label %jvp_object_length.exit

jvp_object_length.exit:                           ; preds = %jvp_object_get_slot.exit.us.i.epil.preheader, %jvp_object_length.exit.loopexit.unr-lcssa, %jvp_object_size.exit.lr.ph.i
  %.us-phi.i = phi i32 [ 0, %jvp_object_size.exit.lr.ph.i ], [ %spec.select.us.i.1, %jvp_object_length.exit.loopexit.unr-lcssa ], [ %spec.select.us.i.epil, %jvp_object_get_slot.exit.us.i.epil.preheader ]
  %i.ch = and i64 %0, 15
  %i.ci = icmp eq i64 %i.ch, 7
  br i1 %i.ci, label %jvp_object_size.exit.lr.ph, label %._crit_edge

jvp_object_size.exit.lr.ph:                       ; preds = %jvp_object_length.exit
  %.sroa.21.0.extract.shift.i268 = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i269 = trunc nuw i64 %.sroa.21.0.extract.shift.i268 to i32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = ashr i64 %2, 32
  %i.cm = getelementptr inbounds [40 x i8], ptr %i.ck, i64 %i.cl
  %sh.diff.i.i.i = lshr i64 %2, 31
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.cn = and i32 %tr.sh.diff.i.i.i, -2
  %i.co = add nsw i32 %i.cn, -1
  %i.cp = ashr i64 %0, 32
  %smax = tail call i32 @llvm.smax.i32(i32 %.sroa.21.0.extract.trunc.i269, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not314 = icmp slt i32 %.sroa.21.0.extract.trunc.i269, 1
  br i1 %exitcond.not314, label %jvp_object_equal.exit, label %jvp_object_get_slot.exit

._crit_edge:                                      ; preds = %jvp_object_length.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, i32 noundef 1651, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_size) #19
  unreachable

jvp_object_get_slot.exit:                         ; preds = %jvp_object_size.exit.lr.ph, %jvp_object_size.exit
  %.025.i285316 = phi i32 [ %.328.i, %jvp_object_size.exit ], [ 0, %jvp_object_size.exit.lr.ph ] ; 4 uses
  %indvars.iv315 = phi i64 [ %indvars.iv.next, %jvp_object_size.exit ], [ 0, %jvp_object_size.exit.lr.ph ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cj, i64 %indvars.iv315 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8            ; 3 uses
  %i.ct = and i64 %i.cs, 15
  switch i64 %i.ct, label %bb.u [
    i64 1, label %jvp_object_size.exit
    i64 5, label %jvp_object_read.exit
  ]

bb.u:                                             ; preds = %jvp_object_get_slot.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8, i32 noundef 1699, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_read) #19
  unreachable

jvp_object_read.exit:                             ; preds = %jvp_object_get_slot.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = tail call fastcc i32 @jvp_string_hash(i64 %i.cs, ptr %i.cv)
  %i.cx = and i32 %i.cw, %i.co
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cy
  %i.da = tail call fastcc ptr @jvp_object_find_slot(i64 %2, ptr readonly %3, i64 %i.cs, ptr %i.cv, ptr noundef nonnull readonly %i.cz) ; 3 uses
  %i.db = icmp eq ptr %i.da, null
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  br i1 %i.db, label %jvp_object_equal.exit, label %bb.v

bb.v:                                             ; preds = %jvp_object_read.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.dg = load ptr, ptr %i.df, align 8            ; 3 uses
  %i.dh = and i64 %i.de, 128
  %.not.i259 = icmp eq i64 %i.dh, 0
  br i1 %.not.i259, label %jv_copy.exit262, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !17
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !17
  br label %jv_copy.exit262

jv_copy.exit262:                                  ; preds = %bb.v, %bb.w
  %i.dk = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %i.dn = and i64 %i.dk, 128
  %.not.i255 = icmp eq i64 %i.dn, 0
  br i1 %.not.i255, label %jv_copy.exit258, label %bb.x

bb.x:                                             ; preds = %jv_copy.exit262
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !17
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !17
  br label %jv_copy.exit258

jv_copy.exit258:                                  ; preds = %jv_copy.exit262, %bb.x
  %i.dq = tail call fastcc i32 @jvp_equal(i64 %i.de, ptr %i.dg, i64 %i.dk, ptr %i.dm, i32 noundef range(i32 -2147483647, 10002) %i.bm), !inline_history !82 ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 1
  %i.ds = add nsw i32 %.025.i285316, 1
  br i1 %i.dr, label %jvp_object_equal.exit, label %jvp_object_size.exit

jvp_object_size.exit:                             ; preds = %jvp_object_get_slot.exit, %jv_copy.exit258
  %.328.i = phi i32 [ %.025.i285316, %jvp_object_get_slot.exit ], [ %i.ds, %jv_copy.exit258 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv315, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %jvp_object_equal.exit, label %jvp_object_get_slot.exit

jvp_object_equal.exit:                            ; preds = %jvp_object_size.exit, %jvp_object_read.exit, %jv_copy.exit258, %jvp_object_size.exit.lr.ph
  %indvars.iv.lcssa = phi i64 [ 0, %jvp_object_size.exit.lr.ph ], [ %indvars.iv.next, %jvp_object_size.exit ], [ %indvars.iv315, %jvp_object_read.exit ], [ %indvars.iv315, %jv_copy.exit258 ]
  %.025.i285.lcssa = phi i32 [ 0, %jvp_object_size.exit.lr.ph ], [ %.328.i, %jvp_object_size.exit ], [ %.025.i285316, %jvp_object_read.exit ], [ %.025.i285316, %jv_copy.exit258 ]
  %.4.i = phi i32 [ undef, %jvp_object_size.exit.lr.ph ], [ undef, %jvp_object_size.exit ], [ 0, %jvp_object_read.exit ], [ %i.dq, %jv_copy.exit258 ]
  %.not37.i.le = icmp slt i64 %indvars.iv.lcssa, %i.cp
  %i.dt = icmp eq i32 %.025.i285.lcssa, %.us-phi.i
  %i.du = zext i1 %i.dt to i32
  %.5.i = select i1 %.not37.i.le, i32 %.4.i, i32 %i.du
  br label %jvp_array_equal.exit

jvp_array_equal.exit:                             ; preds = %jvp_array_length.exit, %jv_copy.exit, %bb.f, %jvp_object_equal.exit, %bb.b, %bb.d, %bb.e, %jvp_array_length.exit251, %jvp_string_ptr.exit19.i, %bb.r, %jvp_array_ptr.exit.a, %bb.a
  %.0223 = phi i32 [ -1, %bb.a ], [ %.5.i, %jvp_object_equal.exit ], [ 0, %bb.b ], [ 1, %bb.d ], [ %i.m, %bb.f ], [ 1, %bb.e ], [ %i.bl, %bb.r ], [ 1, %jvp_array_ptr.exit.a ], [ 0, %jvp_array_length.exit251 ], [ 0, %jvp_string_ptr.exit19.i ], [ 1, %jvp_array_length.exit ], [ %i.ax, %jv_copy.exit ]
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %2, ptr %3)
  ret i32 %.0223
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @jv_identical(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %.sroa.08.0.extract.trunc = trunc i64 %0 to i8
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i8
  %.not = icmp eq i8 %.sroa.08.0.extract.trunc, %.sroa.0.0.extract.trunc
  %.unshifted = xor i64 %2, %0
  %i.a = icmp ult i64 %.unshifted, 65536
  %or.cond15 = and i1 %.not, %i.a
  %.not5 = icmp eq ptr %1, %3
  %.0.shrunk = select i1 %or.cond15, i1 %.not5, i1 false
  %.0 = zext i1 %.0.shrunk to i32
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %2, ptr %3)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jv_contains(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @jvp_contains(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jvp_contains(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %.fr = freeze i64 %0                            ; 19 uses
  %i.a = icmp sgt i32 %4, 10000
  br i1 %i.a, label %jvp_object_contains.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i = trunc i64 %.fr to i32 ; 2 uses
  %i.b = and i32 %.sroa.0.0.extract.trunc.i, 15   ; 2 uses
  %.sroa.0.0.extract.trunc.i115 = trunc i64 %2 to i32 ; 2 uses
  %i.c = and i32 %.sroa.0.0.extract.trunc.i115, 15
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.c, label %jvp_object_contains.exit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.b, label %bb.az [
    i32 7, label %bb.d
    i32 6, label %bb.r
    i32 5, label %bb.at
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %4, 1
  %i.e = and i64 %.fr, 15
  %i.f = icmp eq i64 %i.e, 7
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.8, i32 noundef 1831, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_contains) #19, !inline_history !83
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = and i64 %2, 15
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.8, i32 noundef 1832, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_contains) #19, !inline_history !83
  unreachable

bb.h:                                             ; preds = %bb.f
  %.sroa.21.0.extract.shift.i.i.i148 = lshr i64 %2, 32
  %.sroa.21.0.extract.trunc.i.i.i149 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i148 to i32 ; 5 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.sroa.21.0.extract.trunc.i.i.i149, i32 0)
  %exitcond.not.i521 = icmp slt i32 %.sroa.21.0.extract.trunc.i.i.i149, 1
  br i1 %exitcond.not.i521, label %jvp_object_contains.exit, label %.lr.ph523.preheader

.lr.ph523.preheader:                              ; preds = %bb.h
  %i.i = add nsw i32 %smax.i, -2
  br label %.lr.ph523

jvp_object_size.exit.i.i150:                      ; preds = %.lr.ph523
  %exitcond.not.i = icmp eq i32 %.0.i.i522, %i.i
  br i1 %exitcond.not.i, label %jvp_object_contains.exit, label %.lr.ph523

.lr.ph523:                                        ; preds = %.lr.ph523.preheader, %jvp_object_size.exit.i.i150
  %.0.i.i522 = phi i32 [ %i.j, %jvp_object_size.exit.i.i150 ], [ -1, %.lr.ph523.preheader ] ; 2 uses
  %i.j = add nsw i32 %.0.i.i522, 1                ; 4 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 15
  switch i64 %i.o, label %bb.i [
    i64 1, label %jvp_object_size.exit.i.i150
    i64 5, label %jv_object_iter.exit
  ]

bb.i:                                             ; preds = %.lr.ph523
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, i32 noundef 1985, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

jv_object_iter.exit:                              ; preds = %.lr.ph523
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = and i64 %.fr, 128
  %.not.i137 = icmp eq i64 %i.q, 0
  %.not206345 = icmp eq i32 %i.j, -2
  br i1 %.not206345, label %jvp_object_contains.exit, label %.lr.ph

.lr.ph:                                           ; preds = %jv_object_iter.exit, %jv_object_iter_next.exit
  %.169.i346 = phi i32 [ %i.aq, %jv_object_iter_next.exit ], [ %i.j, %jv_object_iter.exit ] ; 3 uses
  %i.r = icmp ne i32 %.169.i346, -1
  tail call void @llvm.assume(i1 %i.r)
  %or.cond = icmp ult i32 %.169.i346, %.sroa.21.0.extract.trunc.i.i.i149
  br i1 %or.cond, label %jvp_object_ptr.exit.i.i144, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

jvp_object_ptr.exit.i.i144:                       ; preds = %.lr.ph
  %i.s = zext nneg i32 %.169.i346 to i64          ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8 ; 3 uses
  %i.v = and i64 %.sroa.0.0.copyload.i, 15
  %i.w = icmp eq i64 %i.v, 5
  br i1 %i.w, label %bb.l, label %bb.k

bb.k:                                             ; preds = %jvp_object_ptr.exit.i.i144
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, i32 noundef 1991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_key) #19
  unreachable

bb.l:                                             ; preds = %jvp_object_ptr.exit.i.i144
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15 ; 3 uses
  %i.x = and i64 %.sroa.0.0.copyload.i, 128
  %.not.i.i145 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i145, label %jvp_object_ptr.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load i32, ptr %.sroa.5.0.copyload.i, align 4, !tbaa !17
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %.sroa.5.0.copyload.i, align 4, !tbaa !17
  br label %jvp_object_ptr.exit.i.i

jvp_object_ptr.exit.i.i:                          ; preds = %bb.m, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = and i64 %i.ab, 128
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %jvp_object_ptr.exit.i.i
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !17
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %jvp_object_ptr.exit.i.i, %bb.n
  br i1 %.not.i137, label %jv_copy.exit140, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load i32, ptr %1, align 4, !tbaa !17
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit140

jv_copy.exit140:                                  ; preds = %bb.o, %bb.p
  %i.aj = tail call { i64, ptr } @jv_object_get(i64 %.fr, ptr %1, i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0.copyload.i), !inline_history !83 ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = extractvalue { i64, ptr } %i.aj, 1
  %i.am = tail call fastcc i32 @jvp_contains(i64 %i.ak, ptr %i.al, i64 %i.ab, ptr %i.ad, i32 noundef %i.d), !inline_history !83 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  %indvars.iv.next394524 = add nuw nsw i64 %i.s, 1 ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv.next394524 to i32 ; 2 uses
  %.not34.i525 = icmp slt i32 %i.ao, %.sroa.21.0.extract.trunc.i.i.i149
  %or.cond528 = select i1 %i.an, i1 %.not34.i525, i1 false
  br i1 %or.cond528, label %jvp_object_get_slot.exit.i, label %jvp_object_contains.exit

jvp_object_size.exit.i:                           ; preds = %jvp_object_get_slot.exit.i
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv.next394526, 1 ; 2 uses
  %i.ap = trunc nuw i64 %indvars.iv.next394 to i32 ; 2 uses
  %.not34.i = icmp slt i32 %i.ap, %.sroa.21.0.extract.trunc.i.i.i149
  br i1 %.not34.i, label %jvp_object_get_slot.exit.i, label %jvp_object_contains.exit

jvp_object_get_slot.exit.i:                       ; preds = %jv_copy.exit140, %jvp_object_size.exit.i
  %i.aq = phi i32 [ %i.ap, %jvp_object_size.exit.i ], [ %i.ao, %jv_copy.exit140 ]
  %indvars.iv.next394526 = phi i64 [ %indvars.iv.next394, %jvp_object_size.exit.i ], [ %indvars.iv.next394524, %jv_copy.exit140 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.next394526
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = and i64 %i.at, 15
  switch i64 %i.au, label %bb.q [
    i64 1, label %jvp_object_size.exit.i
    i64 5, label %jv_object_iter_next.exit
  ]

bb.q:                                             ; preds = %jvp_object_get_slot.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, i32 noundef 1985, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

jv_object_iter_next.exit:                         ; preds = %jvp_object_get_slot.exit.i
  %.not206 = icmp eq i64 %indvars.iv.next394526, 4294967294
  br i1 %.not206, label %jvp_object_contains.exit, label %.lr.ph, !llvm.loop !84

bb.r:                                             ; preds = %bb.c
  %i.av = add nsw i32 %4, 1                       ; 4 uses
  %i.aw = and i64 %2, 128
  %.not.i188 = icmp eq i64 %i.aw, 0               ; 4 uses
  br i1 %.not.i188, label %jv_copy.exit191, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load i32, ptr %3, align 4, !tbaa !17
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %3, align 4, !tbaa !17
  br label %jv_copy.exit191

jv_copy.exit191:                                  ; preds = %bb.r, %bb.s
  %i.az = and i64 %2, 15
  %i.ba = icmp eq i64 %i.az, 6
  br i1 %i.ba, label %jv_array_length.exit187, label %bb.t

bb.t:                                             ; preds = %jv_copy.exit191
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_length.exit187:                          ; preds = %jv_copy.exit191
  %.sroa.21.0.extract.shift.i.i185 = lshr i64 %2, 32 ; 3 uses
  %.sroa.21.0.extract.trunc.i.i186 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i185 to i32
  tail call void @jv_free(i64 %2, ptr %3)
  %5 = lshr i32 %.sroa.0.0.extract.trunc.i115, 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bd = and i64 %.fr, 128
  %.not.i167 = icmp eq i64 %i.bd, 0               ; 2 uses
  %i.be = and i64 %.fr, 15
  %i.bf = icmp eq i64 %i.be, 6
  %.sroa.21.0.extract.shift.i.i165 = lshr i64 %.fr, 32 ; 5 uses
  %.sroa.21.0.extract.trunc.i.i166 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i165 to i32 ; 4 uses
  %6 = lshr i32 %.sroa.0.0.extract.trunc.i, 16    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not52.i240.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i186, 0 ; 3 uses
  br i1 %i.bf, label %jv_array_length.exit187.split.us, label %jv_array_length.exit187.split

jv_array_length.exit187.split.us:                 ; preds = %jv_array_length.exit187
  br i1 %.not.i167, label %.preheader208.us.us, label %.preheader208.us

.preheader208.us.us:                              ; preds = %jv_array_length.exit187.split.us
  br i1 %.not52.i240.us.us, label %.lr.ph242.us.us.preheader, label %jvp_object_contains.exit

.lr.ph242.us.us.preheader:                        ; preds = %.preheader208.us.us
  %7 = zext nneg i32 %6 to i64                    ; 2 uses
  %8 = zext nneg i32 %5 to i64
  %.not55.i224.us.us262.us.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  %.not55.i224.us.us.us.us.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  br label %.lr.ph242.us.us

.lr.ph242.us.us:                                  ; preds = %.lr.ph242.us.us.preheader, %bb.ad
  %indvars.iv388 = phi i64 [ 0, %.lr.ph242.us.us.preheader ], [ %indvars.iv.next389, %bb.ad ] ; 2 uses
  br i1 %.not.i188, label %jvp_array_offset.exit.i.i178.us.us.us.us, label %bb.u

bb.u:                                             ; preds = %.lr.ph242.us.us
  %i.bi = load i32, ptr %3, align 4, !tbaa !17
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i178.us.us.us.us

jvp_array_offset.exit.i.i178.us.us.us.us:         ; preds = %.lr.ph242.us.us, %bb.u
  %i.bk = add nuw nsw i64 %indvars.iv388, %8      ; 2 uses
  %i.bl = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bm = trunc nuw i64 %i.bk to i32
  %i.bn = icmp sgt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.v, label %.split269.us

bb.v:                                             ; preds = %jvp_array_offset.exit.i.i178.us.us.us.us
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bk ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %.sroa.019.0.i174.us.us.us.us.fr = freeze i64 %i.bp ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8            ; 8 uses
  %i.bs = and i64 %.sroa.019.0.i174.us.us.us.us.fr, 128
  %.not.i.i179.us.us.us.us = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i179.us.us.us.us, label %jv_copy.exit170.us.us.us.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !17
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !17
  br label %jv_copy.exit170.us.us.us.us

jv_copy.exit170.us.us.us.us:                      ; preds = %bb.w, %bb.v
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  tail call void @jv_free(i64 %.fr, ptr %1)
  %i.bv = and i64 %.sroa.019.0.i174.us.us.us.us.fr, 128
  %.not.i151.us.us.us.us = icmp eq i64 %i.bv, 0
  br i1 %.not.i151.us.us.us.us, label %.preheader207.us.us.us.us.us.us, label %.preheader207.us.us259.us.us.us

.preheader207.us.us259.us.us.us:                  ; preds = %jv_copy.exit170.us.us.us.us
  br i1 %.not55.i224.us.us262.us.us.us, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us, label %.split235.us.us.us.us.us.thread

jvp_array_offset.exit.i.i.us.us.us.us.us.us:      ; preds = %.preheader207.us.us259.us.us.us, %bb.z
  %indvars.iv378 = phi i64 [ %indvars.iv.next379, %bb.z ], [ 0, %.preheader207.us.us259.us.us.us ] ; 2 uses
  %i.bw = add nuw nsw i64 %indvars.iv378, %7      ; 2 uses
  %i.bx = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.by = trunc nuw i64 %i.bw to i32
  %i.bz = icmp sgt i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.x, label %.split.us

bb.x:                                             ; preds = %jvp_array_offset.exit.i.i.us.us.us.us.us.us
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bw ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = and i64 %i.cb, 128
  %.not.i.i160.us.us.us.us.us.us = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i160.us.us.us.us.us.us, label %jv_copy.exit154.us.us.us.us.us.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !17
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us.us.us.us.us

jv_copy.exit154.us.us.us.us.us.us:                ; preds = %bb.y, %bb.x
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.ch = load i32, ptr %i.br, align 4, !tbaa !17
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.br, align 4, !tbaa !17
  %i.cj = tail call fastcc i32 @jvp_contains(i64 %i.cb, ptr %i.cd, i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr nonnull %i.br, i32 noundef range(i32 -2147483647, 10002) %i.av), !inline_history !85 ; 2 uses
  %.not56.i.us.us.us.us.us.us = icmp eq i32 %i.cj, 0
  br i1 %.not56.i.us.us.us.us.us.us, label %bb.z, label %.split235.us.us.us.us.us

bb.z:                                             ; preds = %jv_copy.exit154.us.us.us.us.us.us
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next379, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond382.not, label %.split235.us.us.us.us.us.thread, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us, !llvm.loop !86

.preheader207.us.us.us.us.us.us:                  ; preds = %jv_copy.exit170.us.us.us.us
  br i1 %.not55.i224.us.us.us.us.us.us, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us, label %.split235.us.us.us.us.us.thread

jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us: ; preds = %.preheader207.us.us.us.us.us.us, %bb.ac
  %indvars.iv383 = phi i64 [ %indvars.iv.next384, %bb.ac ], [ 0, %.preheader207.us.us.us.us.us.us ] ; 2 uses
  %i.ck = add nuw nsw i64 %indvars.iv383, %7      ; 2 uses
  %i.cl = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.cm = trunc nuw i64 %i.ck to i32
  %i.cn = icmp sgt i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.aa, label %.split.us

bb.aa:                                            ; preds = %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.ck ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 3 uses
  %i.cs = and i64 %i.cp, 128
  %.not.i.i160.us.us.us.us.us.us.us.us = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i160.us.us.us.us.us.us.us.us, label %jv_copy.exit154.us.us.us.us.us.us.us.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !17
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us.us.us.us.us.us.us

jv_copy.exit154.us.us.us.us.us.us.us.us:          ; preds = %bb.ab, %bb.aa
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.cv = tail call fastcc i32 @jvp_contains(i64 %i.cp, ptr %i.cr, i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr %i.br, i32 noundef range(i32 -2147483647, 10002) %i.av), !inline_history !85 ; 2 uses
  %.not56.i.us.us.us.us.us.us.us.us = icmp eq i32 %i.cv, 0
  br i1 %.not56.i.us.us.us.us.us.us.us.us, label %bb.ac, label %.split235.us.us.us.us.us

bb.ac:                                            ; preds = %jv_copy.exit154.us.us.us.us.us.us.us.us
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %exitcond387.not = icmp eq i64 %indvars.iv.next384, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond387.not, label %.split235.us.us.us.us.us.thread, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us, !llvm.loop !86

.split235.us.us.us.us.us.thread:                  ; preds = %.preheader207.us.us.us.us.us.us, %.preheader207.us.us259.us.us.us, %bb.z, %bb.ac
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr %i.br), !inline_history !85
  br label %jvp_object_contains.exit

.split235.us.us.us.us.us:                         ; preds = %jv_copy.exit154.us.us.us.us.us.us, %jv_copy.exit154.us.us.us.us.us.us.us.us
  %.us-phi239.us.us.us.us = phi i32 [ %i.cv, %jv_copy.exit154.us.us.us.us.us.us.us.us ], [ %i.cj, %jv_copy.exit154.us.us.us.us.us.us ] ; 2 uses
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr %i.br), !inline_history !85
  %i.cw = icmp sgt i32 %.us-phi239.us.us.us.us, 0
  br i1 %i.cw, label %bb.ad, label %jvp_object_contains.exit

bb.ad:                                            ; preds = %.split235.us.us.us.us.us
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %exitcond392.not = icmp eq i64 %indvars.iv.next389, %.sroa.21.0.extract.shift.i.i185
  br i1 %exitcond392.not, label %jvp_object_contains.exit, label %.lr.ph242.us.us, !llvm.loop !87

.preheader208.us:                                 ; preds = %jv_array_length.exit187.split.us
  br i1 %.not52.i240.us.us, label %.lr.ph242.us.preheader, label %jvp_object_contains.exit

.lr.ph242.us.preheader:                           ; preds = %.preheader208.us
  %9 = zext nneg i32 %6 to i64                    ; 2 uses
  %10 = zext nneg i32 %5 to i64
  %.not55.i224.us252.us331 = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  %.not55.i224.us252.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  br label %.lr.ph242.us

.lr.ph242.us:                                     ; preds = %.lr.ph242.us.preheader, %bb.an
  %indvars.iv373 = phi i64 [ 0, %.lr.ph242.us.preheader ], [ %indvars.iv.next374, %bb.an ] ; 2 uses
  br i1 %.not.i188, label %jvp_array_offset.exit.i.i178.us.us321, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph242.us
  %i.cx = load i32, ptr %3, align 4, !tbaa !17
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i178.us.us321

jvp_array_offset.exit.i.i178.us.us321:            ; preds = %.lr.ph242.us, %bb.ae
  %i.cz = add nuw nsw i64 %indvars.iv373, %10     ; 2 uses
  %i.da = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.db = trunc nuw i64 %i.cz to i32
  %i.dc = icmp sgt i32 %i.da, %i.db
  br i1 %i.dc, label %bb.af, label %.split269.us

bb.af:                                            ; preds = %jvp_array_offset.exit.i.i178.us.us321
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.cz ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8
  %.sroa.019.0.i174.us.us324.fr = freeze i64 %i.de ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load ptr, ptr %i.df, align 8            ; 8 uses
  %i.dh = and i64 %.sroa.019.0.i174.us.us324.fr, 128
  %.not.i.i179.us.us322 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i179.us.us322, label %jv_copy.exit170.us.us323, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !17
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !17
  br label %jv_copy.exit170.us.us323

jv_copy.exit170.us.us323:                         ; preds = %bb.ag, %bb.af
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  %i.dk = load i32, ptr %1, align 4, !tbaa !17
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %1, align 4, !tbaa !17
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.dm = and i64 %.sroa.019.0.i174.us.us324.fr, 128
  %.not.i151.us.us326 = icmp eq i64 %i.dm, 0
  br i1 %.not.i151.us.us326, label %.preheader207.us249.us.us, label %.preheader207.us249.us328

.preheader207.us249.us328:                        ; preds = %jv_copy.exit170.us.us323
  br i1 %.not55.i224.us252.us331, label %jvp_array_offset.exit.i.i.us.us, label %.split235.us256.us.thread

jvp_array_offset.exit.i.i.us.us:                  ; preds = %.preheader207.us249.us328, %bb.aj
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aj ], [ 0, %.preheader207.us249.us328 ] ; 2 uses
  %i.dn = load i32, ptr %1, align 4, !tbaa !17
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %1, align 4, !tbaa !17
  %i.dp = add nuw nsw i64 %indvars.iv, %9         ; 2 uses
  %i.dq = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.dr = trunc nuw i64 %i.dp to i32
  %i.ds = icmp sgt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.ah, label %.split.us

bb.ah:                                            ; preds = %jvp_array_offset.exit.i.i.us.us
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.dp ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8            ; 3 uses
  %i.dx = and i64 %i.du, 128
  %.not.i.i160.us.us = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i160.us.us, label %jv_copy.exit154.us.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !17
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us

jv_copy.exit154.us.us:                            ; preds = %bb.ai, %bb.ah
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.ea = load i32, ptr %i.dg, align 4, !tbaa !17
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dg, align 4, !tbaa !17
  %i.ec = tail call fastcc i32 @jvp_contains(i64 %i.du, ptr %i.dw, i64 %.sroa.019.0.i174.us.us324.fr, ptr nonnull %i.dg, i32 noundef range(i32 -2147483647, 10002) %i.av), !inline_history !85 ; 2 uses
  %.not56.i.us.us = icmp eq i32 %i.ec, 0
  br i1 %.not56.i.us.us, label %bb.aj, label %.split235.us256.us

bb.aj:                                            ; preds = %jv_copy.exit154.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond.not, label %.split235.us256.us.thread, label %jvp_array_offset.exit.i.i.us.us, !llvm.loop !86

.preheader207.us249.us.us:                        ; preds = %jv_copy.exit170.us.us323
  br i1 %.not55.i224.us252.us.us, label %jvp_array_offset.exit.i.i.us.us.us302.us, label %.split235.us256.us.thread

jvp_array_offset.exit.i.i.us.us.us302.us:         ; preds = %.preheader207.us249.us.us, %bb.am
  %indvars.iv368 = phi i64 [ %indvars.iv.next369, %bb.am ], [ 0, %.preheader207.us249.us.us ] ; 2 uses
  %i.ed = load i32, ptr %1, align 4, !tbaa !17
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %1, align 4, !tbaa !17
  %i.ef = add nuw nsw i64 %indvars.iv368, %9      ; 2 uses
  %i.eg = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.eh = trunc nuw i64 %i.ef to i32
  %i.ei = icmp sgt i32 %i.eg, %i.eh
  br i1 %i.ei, label %bb.ak, label %.split.us

bb.ak:                                            ; preds = %jvp_array_offset.exit.i.i.us.us.us302.us
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.ef ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8            ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load ptr, ptr %i.el, align 8            ; 3 uses
  %i.en = and i64 %i.ek, 128
  %.not.i.i160.us.us.us303.us = icmp eq i64 %i.en, 0
  br i1 %.not.i.i160.us.us.us303.us, label %jv_copy.exit154.us.us.us304.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !17
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.em, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us.us304.us

jv_copy.exit154.us.us.us304.us:                   ; preds = %bb.al, %bb.ak
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.eq = tail call fastcc i32 @jvp_contains(i64 %i.ek, ptr %i.em, i64 %.sroa.019.0.i174.us.us324.fr, ptr %i.dg, i32 noundef range(i32 -2147483647, 10002) %i.av), !inline_history !85 ; 2 uses
  %.not56.i.us.us.us307.us = icmp eq i32 %i.eq, 0
  br i1 %.not56.i.us.us.us307.us, label %bb.am, label %.split235.us256.us

bb.am:                                            ; preds = %jv_copy.exit154.us.us.us304.us
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %exitcond372.not = icmp eq i64 %indvars.iv.next369, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond372.not, label %.split235.us256.us.thread, label %jvp_array_offset.exit.i.i.us.us.us302.us, !llvm.loop !86

.split235.us256.us.thread:                        ; preds = %.preheader207.us249.us.us, %.preheader207.us249.us328, %bb.aj, %bb.am
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us324.fr, ptr %i.dg), !inline_history !85
  br label %jvp_object_contains.exit

.split235.us256.us:                               ; preds = %jv_copy.exit154.us.us, %jv_copy.exit154.us.us.us304.us
  %.us-phi312.us = phi i32 [ %i.eq, %jv_copy.exit154.us.us.us304.us ], [ %i.ec, %jv_copy.exit154.us.us ] ; 2 uses
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us324.fr, ptr %i.dg), !inline_history !85
  %i.er = icmp sgt i32 %.us-phi312.us, 0
  br i1 %i.er, label %bb.an, label %jvp_object_contains.exit

bb.an:                                            ; preds = %.split235.us256.us
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %.sroa.21.0.extract.shift.i.i185
  br i1 %exitcond377.not, label %jvp_object_contains.exit, label %.lr.ph242.us, !llvm.loop !87

jv_array_length.exit187.split:                    ; preds = %jv_array_length.exit187
  br i1 %.not52.i240.us.us, label %.lr.ph242.split, label %jvp_object_contains.exit

.lr.ph242.split:                                  ; preds = %jv_array_length.exit187.split
  br i1 %.not.i188, label %jvp_array_offset.exit.i.i178, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph242.split
  %i.es = load i32, ptr %3, align 4, !tbaa !17
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i178

jvp_array_offset.exit.i.i178:                     ; preds = %.lr.ph242.split, %bb.ao
  %i.eu = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.ev = icmp slt i32 %5, %i.eu
  br i1 %i.ev, label %bb.ap, label %.split269.us

.split269.us:                                     ; preds = %jvp_array_offset.exit.i.i178.us.us321, %jvp_array_offset.exit.i.i178.us.us.us.us, %jvp_array_offset.exit.i.i178
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.ap:                                            ; preds = %jvp_array_offset.exit.i.i178
  %11 = zext nneg i32 %5 to i64
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %11 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = and i64 %i.ex, 128
  %.not.i.i179 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i179, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !17
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  br i1 %.not.i167, label %jv_copy.exit170, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fd = load i32, ptr %1, align 4, !tbaa !17
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit170

jv_copy.exit170:                                  ; preds = %bb.as, %bb.ar
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

.split.us:                                        ; preds = %jvp_array_offset.exit.i.i.us.us, %jvp_array_offset.exit.i.i.us.us.us302.us, %jvp_array_offset.exit.i.i.us.us.us.us.us.us, %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.at:                                            ; preds = %bb.c
  %i.ff = and i64 %2, 128
  %.not.i119 = icmp eq i64 %i.ff, 0
  br i1 %.not.i119, label %jv_copy.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fg = load i32, ptr %3, align 4, !tbaa !17
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %3, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.at, %bb.au
  %i.fi = and i64 %2, 15
  %i.fj = icmp eq i64 %i.fi, 5
  br i1 %i.fj, label %jv_string_length_bytes.exit, label %bb.av

bb.av:                                            ; preds = %jv_copy.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 1328, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_length_bytes) #19
  unreachable

jv_string_length_bytes.exit:                      ; preds = %jv_copy.exit
  %i.fk = getelementptr i8, ptr %3, i64 8
  %.val.i = load i32, ptr %i.fk, align 4, !tbaa !14
  %i.fl = lshr i32 %.val.i, 1                     ; 2 uses
  tail call void @jv_free(i64 %2, ptr %3)
  %.not114 = icmp eq i32 %i.fl, 0
  br i1 %.not114, label %jvp_object_contains.exit, label %bb.aw

bb.aw:                                            ; preds = %jv_string_length_bytes.exit
  %i.fm = and i64 %.fr, 15
  %i.fn = icmp eq i64 %i.fm, 5
  br i1 %i.fn, label %jv_string_value.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 1482, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_value) #19
  unreachable

jv_string_value.exit:                             ; preds = %bb.aw
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fp = and i64 %.fr, 128
  %.not.i120 = icmp eq i64 %i.fp, 0
  br i1 %.not.i120, label %jv_string_value.exit126, label %bb.ay

bb.ay:                                            ; preds = %jv_string_value.exit
  %i.fq = load i32, ptr %1, align 4, !tbaa !17
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %1, align 4, !tbaa !17
  br label %jv_string_value.exit126

jv_string_value.exit126:                          ; preds = %jv_string_value.exit, %bb.ay
  %i.fs = getelementptr i8, ptr %1, i64 8
  %.val.i124 = load i32, ptr %i.fs, align 4, !tbaa !14
  %i.ft = lshr i32 %.val.i124, 1
  tail call void @jv_free(i64 %.fr, ptr %1)
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fw = zext nneg i32 %i.fl to i64
  %i.fx = tail call ptr @_jq_memmem(ptr noundef nonnull %i.fo, i64 noundef %i.fu, ptr noundef nonnull %i.fv, i64 noundef %i.fw) #20
  %i.fy = icmp ne ptr %i.fx, null
  %i.fz = zext i1 %i.fy to i32
  br label %jvp_object_contains.exit

bb.az:                                            ; preds = %bb.c
  %i.ga = and i64 %.fr, 128
  %.not.i127 = icmp eq i64 %i.ga, 0
  br i1 %.not.i127, label %jv_copy.exit130, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gb = load i32, ptr %1, align 4, !tbaa !17
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit130

jv_copy.exit130:                                  ; preds = %bb.az, %bb.ba
  %i.gd = and i64 %2, 128
  %.not.i131 = icmp eq i64 %i.gd, 0
  br i1 %.not.i131, label %jv_copy.exit134, label %bb.bb

bb.bb:                                            ; preds = %jv_copy.exit130
  %i.ge = load i32, ptr %3, align 4, !tbaa !17
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %3, align 4, !tbaa !17
  br label %jv_copy.exit134

jv_copy.exit134:                                  ; preds = %jv_copy.exit130, %bb.bb
  %i.gg = tail call fastcc i32 @jvp_equal(i64 %.fr, ptr %1, i64 %2, ptr %3, i32 noundef 0)
  br label %jvp_object_contains.exit

jvp_object_contains.exit:                         ; preds = %bb.an, %.split235.us256.us, %bb.ad, %.split235.us.us.us.us.us, %jvp_object_size.exit.i.i150, %jv_copy.exit140, %jv_object_iter_next.exit, %jvp_object_size.exit.i, %bb.h, %jv_copy.exit134, %bb.b, %jv_string_length_bytes.exit, %jv_string_value.exit126, %jv_array_length.exit187.split, %jv_object_iter.exit, %.preheader208.us.us, %.preheader208.us, %.split235.us.us.us.us.us.thread, %.split235.us256.us.thread, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.gg, %jv_copy.exit134 ], [ 1, %jv_string_length_bytes.exit ], [ 1, %jv_array_length.exit187.split ], [ 0, %bb.b ], [ %i.fz, %jv_string_value.exit126 ], [ 0, %.split235.us256.us.thread ], [ 1, %.preheader208.us ], [ %i.am, %jvp_object_size.exit.i ], [ 1, %jv_object_iter.exit ], [ 1, %.preheader208.us.us ], [ 0, %.split235.us.us.us.us.us.thread ], [ 1, %bb.h ], [ %i.am, %jv_copy.exit140 ], [ %.us-phi239.us.us.us.us, %.split235.us.us.us.us.us ], [ 1, %jvp_object_size.exit.i.i150 ], [ %i.am, %jv_object_iter_next.exit ], [ 1, %bb.ad ], [ %.us-phi312.us, %.split235.us256.us ], [ 1, %bb.an ]
  tail call void @jv_free(i64 %.fr, ptr %1)
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
end_hunk_2
