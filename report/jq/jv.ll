Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv?download=true
inline.NumInlined: 353
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@jvp_number_cmp:bb.a
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
  %i.f = lshr i32 %i.e, 16
  %i.g = add nuw nsw i32 %2, %i.f                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = icmp slt i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %jvp_array_offset.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.e:                                             ; preds = %jvp_array_offset.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = zext nneg i32 %i.g to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = and i64 %i.n, 128
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %jv_copy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !17
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.019.0 = phi i64 [ 0, %bb.c ], [ %i.n, %bb.e ], [ %i.n, %bb.f ]
  %.sroa.3.0 = phi ptr [ null, %bb.c ], [ %i.p, %bb.e ], [ %i.p, %bb.f ]
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
  %.0175 = phi i32 [ %i.d, %bb.d ], [ %2, %bb.c ] ; 5 uses
  %i.r = trunc i64 %0 to i32
  %i.s = lshr i32 %i.r, 16                        ; 2 uses
  %i.t = xor i32 %i.s, 536870911
  %i.u = icmp samesign ugt i32 %.0175, %i.t
  br i1 %i.u, label %bb.g, label %jvp_array_offset.exit.i

bb.g:                                             ; preds = %jvp_array_offset.exit
  tail call void @jv_free(i64 %0, ptr %1)
  tail call void @jv_free(i64 %3, ptr %4)
  %i.v = tail call i32 @jvp_utf8_is_valid(ptr noundef nonnull @.str.17, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.17, i64 21)) #20, !inline_history !35
  %.not.i.i15 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i15, label %bb.h, label %jvp_string_new.exit.i16

jvp_string_new.exit.i16:                          ; preds = %bb.g
  %i.w = tail call noundef ptr @jv_mem_alloc(i64 noundef 38) #20, !inline_history !36 ; 6 uses
  store i32 1, ptr %i.w, align 4, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 21, ptr %i.x, align 4, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 42, ptr %i.y, align 4, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.z, ptr noundef nonnull readonly align 1 dereferenceable(21) @.str.17, i64 21, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 37
  store i8 0, ptr %i.aa, align 1, !tbaa !15
  %i.ab = insertvalue { i64, ptr } { i64 133, ptr poison }, ptr %i.w, 1
  br label %jv_string.exit18

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call fastcc { i64, ptr } @jvp_string_copy_replace_bad(ptr noundef nonnull @.str.17, i32 noundef 21), !inline_history !35
  br label %jv_string.exit18

jv_string.exit18:                                 ; preds = %jvp_string_new.exit.i16, %bb.h
  %.fca.1.insert.i.merged.i17 = phi { i64, ptr } [ %i.ab, %jvp_string_new.exit.i16 ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ad = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i17, 0
  %i.ae = extractvalue { i64, ptr } %.fca.1.insert.i.merged.i17, 1
  %i.af = tail call ptr @jv_mem_alloc(i64 noundef 24) #20 ; 4 uses
  store i32 1, ptr %i.af, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ad, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ae, ptr %.sroa.2.0..sroa_idx.i19, align 8, !tbaa !15
  br label %bb.m

jvp_array_offset.exit.i:                          ; preds = %jvp_array_offset.exit
  %i.ah = add nuw nsw i32 %.0175, %i.s            ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !14
  %i.ak = icmp slt i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %jvp_array_length.exit57.lr.ph.i

bb.i:                                             ; preds = %jvp_array_offset.exit.i
  %.val.i = load i32, ptr %1, align 8, !tbaa !17  ; 2 uses
  %i.al = icmp sgt i32 %.val.i, 0
  br i1 %i.al, label %jvp_refcnt_unshared.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.8, i32 noundef 73, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_refcnt_unshared) #19
  unreachable

jvp_refcnt_unshared.exit.i:                       ; preds = %bb.i
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %bb.k, label %jvp_array_length.exit57.lr.ph.i

bb.k:                                             ; preds = %jvp_refcnt_unshared.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !14 ; 5 uses
  %.not5263.i = icmp sgt i32 %i.an, %i.ah
  br i1 %.not5263.i, label %.._crit_edge67_crit_edge.i, label %.lr.ph66.i

.._crit_edge67_crit_edge.i:                       ; preds = %bb.k
  %.pre78.i = add nuw nsw i32 %i.ah, 1
  br label %._crit_edge67.i

.lr.ph66.i:                                       ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ap = sext i32 %i.an to i64                   ; 2 uses
  %i.aq = add nuw nsw i32 %i.ah, 1                ; 3 uses
  %i.ar = sub i32 %i.aq, %i.an
  %i.as = sub i32 %i.ah, %i.an
  %xtraiter185 = and i32 %i.ar, 3                 ; 2 uses
  %lcmp.mod186.not = icmp eq i32 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.prol.loopexit184, label %.prol.preheader183

.prol.preheader183:                               ; preds = %.lr.ph66.i, %.prol.preheader183
  %indvars.iv74.i.prol = phi i64 [ %indvars.iv.next75.i.prol, %.prol.preheader183 ], [ %i.ap, %.lr.ph66.i ] ; 2 uses
  %prol.iter187 = phi i32 [ %prol.iter187.next, %.prol.preheader183 ], [ 0, %.lr.ph66.i ]
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ao, i64 %indvars.iv74.i.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %indvars.iv.next75.i.prol = add nsw i64 %indvars.iv74.i.prol, 1 ; 2 uses
  %prol.iter187.next = add i32 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i32 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.prol.loopexit184, label %.prol.preheader183, !llvm.loop !52

.prol.loopexit184:                                ; preds = %.prol.preheader183, %.lr.ph66.i
  %indvars.iv74.i.unr = phi i64 [ %i.ap, %.lr.ph66.i ], [ %indvars.iv.next75.i.prol, %.prol.preheader183 ]
  %i.au = icmp ult i32 %i.as, 3
  br i1 %i.au, label %._crit_edge67.loopexit.i, label %.lr.ph66.i.new

._crit_edge67.loopexit.i:                         ; preds = %.lr.ph66.i.new, %.prol.loopexit184
  %.pre.i = load i32, ptr %i.am, align 4, !tbaa !14
  br label %._crit_edge67.i

._crit_edge67.i:                                  ; preds = %._crit_edge67.loopexit.i, %.._crit_edge67_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre78.i, %.._crit_edge67_crit_edge.i ], [ %i.aq, %._crit_edge67.loopexit.i ]
  %i.av = phi i32 [ %i.an, %.._crit_edge67_crit_edge.i ], [ %.pre.i, %._crit_edge67.loopexit.i ]
  %..i.i = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 range(i32 1, 536936448) %.pre-phi.i, i32 %i.av)
  store i32 %..i.i, ptr %i.am, align 4, !tbaa !14
  %i.aw = add nuw nsw i32 %.0175, 1
  %..i53.i = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 range(i32 1, 536936448) %i.aw, i32 %.sroa.14.0.extract.trunc)
  %i.ax = and i64 %0, 4294901760
  %i.ay = and i64 %0, 65280
  %i.az = and i64 %0, 246
  br label %jvp_array_write.exit

.lr.ph66.i.new:                                   ; preds = %.prol.loopexit184, %.lr.ph66.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.3, %.lr.ph66.i.new ], [ %indvars.iv74.i.unr, %.prol.loopexit184 ] ; 5 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.ao, i64 %indvars.iv74.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.bb = getelementptr [16 x i8], ptr %i.ao, i64 %indvars.iv74.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.bd = getelementptr [16 x i8], ptr %i.ao, i64 %indvars.iv74.i
  %i.be = getelementptr i8, ptr %i.bd, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.bf = getelementptr [16 x i8], ptr %i.ao, i64 %indvars.iv74.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %indvars.iv.next75.i.3 = add nsw i64 %indvars.iv74.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next75.i.3 to i32
  %exitcond77.not.i.3 = icmp eq i32 %i.aq, %lftr.wideiv.i.3
  br i1 %exitcond77.not.i.3, label %._crit_edge67.loopexit.i, label %.lr.ph66.i.new, !llvm.loop !53

jvp_array_length.exit57.lr.ph.i:                  ; preds = %jvp_array_offset.exit.i, %jvp_refcnt_unshared.exit.i
  %i.bh = add nuw nsw i32 %.0175, 1
  %..i54.i = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 range(i32 1, 536936448) %i.bh, i32 %.sroa.14.0.extract.trunc) ; 6 uses
  %i.bi = lshr i32 %..i54.i, 1
  %i.bj = add nuw nsw i32 %i.bi, %..i54.i         ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 4
  %i.bm = add nuw nsw i64 %i.bl, 16
  %i.bn = tail call ptr @jv_mem_alloc(i64 noundef %i.bm) #20 ; 5 uses
  store i32 1, ptr %i.bn, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.bj, ptr %i.bp, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 6 uses
  %i.br = ashr i64 %0, 32                         ; 3 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %jvp_array_offset.exit58.i.lr.ph, label %.preheader.i

jvp_array_offset.exit58.i.lr.ph:                  ; preds = %jvp_array_length.exit57.lr.ph.i
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = lshr i64 %0, 16
  %i.bv = and i64 %i.bu, 65535
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bv
  br label %jvp_array_offset.exit58.i

.preheader.i:                                     ; preds = %jv_copy.exit.i, %jvp_array_length.exit57.lr.ph.i
  %indvars.iv.i.lcssa = phi i64 [ 0, %jvp_array_length.exit57.lr.ph.i ], [ %i.br, %jv_copy.exit.i ] ; 5 uses
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
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv71.i.prol
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
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv.i176 ; 2 uses
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
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.br
  br i1 %exitcond.not, label %.preheader.i, label %jvp_array_offset.exit58.i, !llvm.loop !55

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i.3, %.lr.ph.i.new ], [ %indvars.iv71.i.unr, %.prol.loopexit ] ; 5 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv71.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv71.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv71.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv71.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) @JV_NULL, i64 16, i1 false), !tbaa.struct !20
  %indvars.iv.next72.i.3 = add nuw nsw i64 %indvars.iv71.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next72.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge62.i, label %.lr.ph.i.new, !llvm.loop !56

._crit_edge62.i:                                  ; preds = %.prol.loopexit, %.lr.ph.i.new, %.preheader.i
  store i32 %..i54.i, ptr %i.bo, align 4, !tbaa !14
  tail call void @jv_free(i64 %0, ptr nonnull %1)
  br label %jvp_array_write.exit

jvp_array_write.exit:                             ; preds = %._crit_edge67.i, %._crit_edge62.i
  %.sroa.17.0 = phi ptr [ %1, %._crit_edge67.i ], [ %i.bn, %._crit_edge62.i ] ; 2 uses
  %.sroa.14.0 = phi i32 [ %..i53.i, %._crit_edge67.i ], [ %..i54.i, %._crit_edge62.i ]
  %.sroa.13.0 = phi i64 [ %i.ax, %._crit_edge67.i ], [ 0, %._crit_edge62.i ]
  %.sroa.12.0 = phi i64 [ %i.ay, %._crit_edge67.i ], [ 0, %._crit_edge62.i ]
  %.sroa.0.0 = phi i64 [ %i.az, %._crit_edge67.i ], [ 134, %._crit_edge62.i ]
  %.sink84.i = phi i32 [ %i.ah, %._crit_edge67.i ], [ %.0175, %._crit_edge62.i ]
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
  %.sroa.412.0 = phi ptr [ %i.p, %jv_string.exit ], [ %i.af, %jv_string.exit18 ], [ %.sroa.17.0, %jvp_array_write.exit ]
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
end_hunk_0
