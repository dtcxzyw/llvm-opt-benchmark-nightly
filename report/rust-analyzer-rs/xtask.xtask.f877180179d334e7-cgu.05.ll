inline.NumInlined: 685
inline.NumDeleted: 283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE12contains_keyBO_ECslkzCjlEuW1f_5xtask:bb.a

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapRNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE12contains_keyBP_ECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBR_BQ_uE0ECslkzCjlEuW1f_5xtask.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !46, !noalias !47, !noundef !5 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !46, !noalias !47, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.m, align 1, !noalias !50 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = tail call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsbSS6DM8SDEO_5alloc6string6StringINtB2_10EquivalentRBq_E10equivalentCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v), !noalias !53
  br i1 %i.w, label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBR_BQ_uE0ECslkzCjlEuW1f_5xtask.exit, label %bb.d, !prof !22

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBR_BQ_uE0ECslkzCjlEuW1f_5xtask.exit, !prof !23

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i31.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i31.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBR_BQ_uE0ECslkzCjlEuW1f_5xtask.exit: ; preds = %._crit_edge.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataE12get_index_ofBO_ECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  switch i64 %i.b, label %bb.c [
    i64 0, label %_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit.thread
    i64 1, label %bb.b
  ]

_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit.thread: ; preds = %._crit_edge.i.i, %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.i.i, %_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit, %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ 0, %_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit ], [ undef, %bb.a ], [ 0, %bb.b ], [ %.val.i.i.i, %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.i.i ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0 = phi i64 [ %spec.select, %_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit ], [ %i.b, %bb.a ], [ 0, %bb.b ], [ 1, %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.i.i ], [ 0, %._crit_edge.i.i ]
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 216
  %.val4 = load i64, ptr %i.h, align 8, !noundef !5
  %i.i = icmp eq i64 %.val2, %.val4
  br i1 %i.i, label %_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit, label %_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit.thread

_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val3, i64 %.val2), !alias.scope !56
  %bcmp.i.i.i.fr = freeze i32 %bcmp.i.i.i
  %i.k = icmp eq i32 %bcmp.i.i.i.fr, 0
  %spec.select = zext i1 %i.k to i64
  br label %_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = tail call noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !60, !noalias !63, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.q = lshr i64 %i.m, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !71, !noalias !72, !noundef !5 ; 2 uses
  %i.u = load ptr, ptr %i.p, align 8, !alias.scope !71, !noalias !72, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !63, !noalias !60 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !63, !noalias !60, !nonnull !5
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.at, %bb.g ]
  %.pn.i.i = phi i64 [ %i.m, %bb.c ], [ %i.au, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.t      ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i25.i.i = load <16 x i8>, ptr %i.y, align 1, !noalias !75 ; 2 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, %i.w
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.not37.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.not37.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.thread.i.i
  %.sroa.05.0.i38.i.i = phi i16 [ %i.as, %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.thread.i.i ], [ %i.aa, %bb.d ] ; 3 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i38.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.t
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.val.i.i.i = load i64, ptr %i.ah, align 8, !noalias !78, !noundef !5 ; 4 uses
  %i.ai = icmp ult i64 %.val.i.i.i, %i.b
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw [232 x i8], ptr %i.o, i64 %.val.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 216
  %.val4.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !81, !noundef !5
  %i.al = icmp eq i64 %.val2.i.i.i.i, %.val4.i.i.i.i
  br i1 %i.al, label %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.i.i, label %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.thread.i.i, !prof !84

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !noalias !81
  unreachable

_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  %.val3.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !81, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i, i64 %.val2.i.i.i.i), !alias.scope !85, !noalias !81
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit.thread, label %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.thread.i.i, !prof !89

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.thread.i.i, %bb.d
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, splat (i8 -1)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %_RNvXCslbz2dGnOj3d_10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB2_10EquivalentBs_E10equivalentCslkzCjlEuW1f_5xtask.exit.thread, !prof !23

_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataB1K_E0E0CslkzCjlEuW1f_5xtask.exit.i.i, %bb.e
  %i.ar = add i16 %.sroa.05.0.i38.i.i, -1
  %i.as = and i16 %i.ar, %.sroa.05.0.i38.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.au = add i64 %.sroa.01.0.i.i.i, %i.at
  br label %bb.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0EB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !90, !noalias !93, !noundef !5 ; 2 uses
  %2 = add i64 %i.g, 1                            ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !90, !noalias !93, !noundef !5 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !96
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %3, i64 range(i64 1, 0) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100
  call fastcc void @_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 8, 129) 104, i64 noundef range(i64 1, 0) %..i) #25
  %i.r = load ptr, ptr %i.a, align 8, !noalias !100, !noundef !5 ; 9 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !100 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !100 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !100
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

bb.f:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #26, !noalias !103
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  store ptr %i.e, ptr %i.b, align 8, !noalias !100
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !100
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !100
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.r, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !100
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.u, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !100
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !100
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !100
  %i.y = load i64, ptr %i.f, align 8, !alias.scope !104, !noalias !105, !noundef !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !104, !noalias !105, !nonnull !5, !noundef !5 ; 2 uses
  %.val516 = load <16 x i8>, ptr %i.aa, align 16
  %i.ab = icmp sgt <16 x i8> %.val516, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.025 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.y, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.023 = phi i16 [ %i.ac, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.ad, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.ag, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val417 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.af, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27.loopexit:                           ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !104, !noalias !105
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %bb.g
  %i.ah = phi i64 [ %.pre, %._crit_edge27.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ai = sub i64 %i.w, %i.ah
  store i64 %i.ai, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !100
  store i64 %i.ah, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !100
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit unwind label %bb.h, !noalias !103

bb.h:                                             ; preds = %._crit_edge27
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #27, !noalias !103
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit: ; preds = %._crit_edge27
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !109), !noalias !103
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !112, !noalias !103 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !112, !noalias !103 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !112, !noalias !103, !noundef !5 ; 3 uses
  %i.ak = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !112, !noalias !103
  %i.al = add i64 %.val3.i.i, 1
  %i.am = mul nuw i64 %.val.i.i, %i.al            ; 2 uses
  %i.an = add i64 %.val1.i.i, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !103
  %i.aq = sub i64 0, %.val1.i.i
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val3.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !103
  call void @llvm.assume(i1 %i.aw), !noalias !103
  %i.ax = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ax), !noalias !103
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !103
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.az
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #28, !noalias !113
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !100
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.af, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.ag, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.ad, %.noexc2 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.024, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !114, !noalias !117, !nonnull !5, !noundef !5
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [104 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -104
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !119, !nonnull !5, !align !120, !noundef !5
  %i.bl = invoke noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bk)
          to label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.u, %i.bl             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !121
  %i.bn = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !124

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bo, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit ], [ %i.cf, %.lr.ph.i ]
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.0.0.lcssa.i, %i.bq
  %i.bs = and i64 %i.br, %i.u                     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !5
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.j, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !23

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.r, align 16
  %i.bw = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bx, 0
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bx, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit ]
  %i.ca = phi i64 [ %i.cb, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit ]
  %i.cb = add i64 %i.ca, 16                       ; 2 uses
  %i.cc = add i64 %i.cb, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cc, %i.u             ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !121
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !125

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bz, %bb.j ], [ %i.bs, %._crit_edge.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i5.i
  %i.ch = lshr i64 %i.bl, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0EB1y_:bb.a
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !136
  %i.aa = load i64, ptr %i.f, align 8, !alias.scope !140, !noalias !141, !noundef !5 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !140, !noalias !141, !nonnull !5, !noundef !5 ; 2 uses
  %.val516 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val516, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.025 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.aa, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.023 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.af, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.ai, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val417 = load <16 x i8>, ptr %i.af, align 16
  %i.ag = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %i.ai = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ah, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27.loopexit:                           ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !140, !noalias !141
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %bb.g
  %i.aj = phi i64 [ %.pre, %._crit_edge27.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ak = sub i64 %i.y, %i.aj
  store i64 %i.ak, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !136
  store i64 %i.aj, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !136
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit unwind label %bb.h, !noalias !139

bb.h:                                             ; preds = %._crit_edge27
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #27, !noalias !139
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit: ; preds = %._crit_edge27
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !145), !noalias !139
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !148, !noalias !139 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !148, !noalias !139 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !148, !noalias !139, !noundef !5 ; 3 uses
  %i.am = icmp eq i64 %.val3.i.i, 0
  br i1 %i.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !148, !noalias !139
  %i.an = add i64 %.val3.i.i, 1
  %i.ao = mul nuw i64 %.val.i.i, %i.an            ; 2 uses
  %i.ap = add i64 %.val1.i.i, -1
  %i.aq = add i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  call void @llvm.assume(i1 %i.ar), !noalias !139
  %i.as = sub i64 0, %.val1.i.i
  %i.at = and i64 %i.aq, %i.as                    ; 3 uses
  %i.au = add i64 %.val3.i.i, 17
  %i.av = add i64 %i.au, %i.at                    ; 4 uses
  %i.aw = icmp uge i64 %i.av, %i.at
  %i.ax = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ay = icmp ule i64 %i.av, %i.ax
  call void @llvm.assume(i1 %i.aw), !noalias !139
  call void @llvm.assume(i1 %i.ay), !noalias !139
  %i.az = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.az), !noalias !139
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !139
  %i.ba = icmp eq i64 %i.av, 0
  br i1 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bb = sub nsw i64 0, %i.at
  %i.bc = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bb
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #28, !noalias !149
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.ah, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.ai, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.af, %.noexc2 ]
  %i.bd = add i16 %.sroa.13.1.lcssa, -1
  %i.be = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = and i16 %i.bd, %.sroa.13.1.lcssa
  %i.bh = add i64 %.sroa.5.1.lcssa, %i.bf         ; 2 uses
  %i.bi = add i64 %.sroa.9.024, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.bj = load ptr, ptr %0, align 8, !alias.scope !150, !noalias !153, !nonnull !5, !noundef !5
  %i.bk = sub nsw i64 0, %i.bh
  %i.bl = getelementptr inbounds [56 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -56
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !155, !nonnull !5, !align !120, !noundef !5
  %i.bn = invoke noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bm)
          to label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.w, %i.bn             ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bo, align 1, !noalias !156
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !124

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bq, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit ], [ %i.ch, %.lr.ph.i ]
  %i.br = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add i64 %.sroa.0.0.lcssa.i, %i.bs
  %i.bu = and i64 %i.bt, %i.w                     ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !5
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.j, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !23

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.t, align 16
  %i.by = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bz, 0
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit ]
  %i.cc = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_.exit ]
  %i.cd = add i64 %i.cc, 16                       ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.ce, %i.w             ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !156
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !125

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cb, %bb.j ], [ %i.bu, %._crit_edge.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i5.i
  %i.cj = lshr i64 %i.bn, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16
  %i.cm = and i64 %i.cl, %i.w
  store i8 %i.ck, ptr %i.ci, align 1, !noalias !139
  %i.cn = getelementptr i8, ptr %i.t, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  store i8 %i.ck, ptr %i.co, align 1, !noalias !139
  %i.cp = load ptr, ptr %0, align 8, !alias.scope !140, !noalias !141, !nonnull !5, !noundef !5
  %.neg.i.i = xor i64 %i.bh, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 56
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 56
  %i.cr = getelementptr inbounds i8, ptr %i.t, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.cr, ptr noundef nonnull align 1 dereferenceable(56) %i.cq, i64 range(i64 8, 129) 56, i1 false), !noalias !139
  %i.cs = icmp eq i64 %i.bi, 0
  br i1 %i.cs, label %._crit_edge27.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1A_, i64 noundef 56, ptr noundef nonnull @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceB1D_) #25
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, %bb.c, %bb.k
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.w, %bb.e ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtCscAsMj0W7j8b_3std4path7PathBufNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtB1x_4hash6random11RandomStateE0EB28_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !159, !noalias !162, !noundef !5 ; 2 uses
  %2 = add i64 %i.g, 1                            ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !159, !noalias !162, !noundef !5 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !165
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %3, i64 range(i64 1, 0) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !169
  call fastcc void @_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 8, 129) 128, i64 noundef range(i64 1, 0) %..i) #25
  %i.r = load ptr, ptr %i.a, align 8, !noalias !169, !noundef !5 ; 9 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !169 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !169 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !169
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

bb.f:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #26, !noalias !172
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  store ptr %i.e, ptr %i.b, align 8, !noalias !169
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 128, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !169
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !169
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.r, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !169
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.u, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  %i.y = load i64, ptr %i.f, align 8, !alias.scope !173, !noalias !174, !noundef !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !173, !noalias !174, !nonnull !5, !noundef !5 ; 2 uses
  %.val516 = load <16 x i8>, ptr %i.aa, align 16
  %i.ab = icmp sgt <16 x i8> %.val516, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.025 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.y, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.023 = phi i16 [ %i.ac, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.ad, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.ag, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val417 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.af, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27.loopexit:                           ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !173, !noalias !174
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %bb.g
  %i.ah = phi i64 [ %.pre, %._crit_edge27.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ai = sub i64 %i.w, %i.ah
  store i64 %i.ai, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  store i64 %i.ah, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit unwind label %bb.h, !noalias !172

bb.h:                                             ; preds = %._crit_edge27
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #27, !noalias !172
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit: ; preds = %._crit_edge27
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.experimental.noalias.scope.decl(metadata !178), !noalias !172
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !181, !noalias !172 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !181, !noalias !172 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !181, !noalias !172, !noundef !5 ; 3 uses
  %i.ak = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !181, !noalias !172
  %i.al = add i64 %.val3.i.i, 1
  %i.am = mul nuw i64 %.val.i.i, %i.al            ; 2 uses
  %i.an = add i64 %.val1.i.i, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !172
  %i.aq = sub i64 0, %.val1.i.i
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val3.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !172
  call void @llvm.assume(i1 %i.aw), !noalias !172
  %i.ax = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ax), !noalias !172
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !172
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.az
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #28, !noalias !182
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !169
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.af, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.ag, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.ad, %.noexc2 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.024, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !183, !noalias !186, !nonnull !5, !noundef !5
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -128
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !188, !nonnull !5, !align !120, !noundef !5
  %i.bl = invoke noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bk)
          to label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtCscAsMj0W7j8b_3std4path7PathBufNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1z_4hash6random11RandomStateE0E0B2a_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtCscAsMj0W7j8b_3std4path7PathBufNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1z_4hash6random11RandomStateE0E0B2a_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.u, %i.bl             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !189
  %i.bn = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !124

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtCscAsMj0W7j8b_3std4path7PathBufNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1z_4hash6random11RandomStateE0E0B2a_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtCscAsMj0W7j8b_3std4path7PathBufNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1z_4hash6random11RandomStateE0E0B2a_.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bo, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtCscAsMj0W7j8b_3std4path7PathBufNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1z_4hash6random11RandomStateE0E0B2a_.exit ], [ %i.cf, %.lr.ph.i ]
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.0.0.lcssa.i, %i.bq
  %i.bs = and i64 %i.br, %i.u                     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !5
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.j, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !23

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.r, align 16
  %i.bw = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bx, 0
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bx, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtCscAsMj0W7j8b_3std4path7PathBufNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1z_4hash6random11RandomStateE0E0B2a_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtCscAsMj0W7j8b_3std4path7PathBufNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1z_4hash6random11RandomStateE0E0B2a_.exit ]
  %i.ca = phi i64 [ %i.cb, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtCscAsMj0W7j8b_3std4path7PathBufNtNtNtCslkzCjlEuW1f_5xtask7codegen19parser_inline_tests4TestEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1z_4hash6random11RandomStateE0E0B2a_.exit ]
  %i.cb = add i64 %i.ca, 16                       ; 2 uses
  %i.cc = add i64 %i.cb, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cc, %i.u             ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !189
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !125

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bz, %bb.j ], [ %i.bs, %._crit_edge.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i5.i
  %i.ch = lshr i64 %i.bl, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBU_3vec3VecBQ_EEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0EB1z_:bb.a
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !202
  %i.aa = load i64, ptr %i.f, align 8, !alias.scope !206, !noalias !207, !noundef !5 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !206, !noalias !207, !nonnull !5, !noundef !5 ; 2 uses
  %.val516 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val516, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.025 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.aa, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.023 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.af, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.ai, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val417 = load <16 x i8>, ptr %i.af, align 16
  %i.ag = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %i.ai = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ah, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27.loopexit:                           ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !206, !noalias !207
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %bb.g
  %i.aj = phi i64 [ %.pre, %._crit_edge27.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ak = sub i64 %i.y, %i.aj
  store i64 %i.ak, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !202
  store i64 %i.aj, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !202
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit unwind label %bb.h, !noalias !205

bb.h:                                             ; preds = %._crit_edge27
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #27, !noalias !205
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit: ; preds = %._crit_edge27
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !211), !noalias !205
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !214, !noalias !205 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !214, !noalias !205 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !214, !noalias !205, !noundef !5 ; 3 uses
  %i.am = icmp eq i64 %.val3.i.i, 0
  br i1 %i.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !214, !noalias !205
  %i.an = add i64 %.val3.i.i, 1
  %i.ao = mul nuw i64 %.val.i.i, %i.an            ; 2 uses
  %i.ap = add i64 %.val1.i.i, -1
  %i.aq = add i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  call void @llvm.assume(i1 %i.ar), !noalias !205
  %i.as = sub i64 0, %.val1.i.i
  %i.at = and i64 %i.aq, %i.as                    ; 3 uses
  %i.au = add i64 %.val3.i.i, 17
  %i.av = add i64 %i.au, %i.at                    ; 4 uses
  %i.aw = icmp uge i64 %i.av, %i.at
  %i.ax = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ay = icmp ule i64 %i.av, %i.ax
  call void @llvm.assume(i1 %i.aw), !noalias !205
  call void @llvm.assume(i1 %i.ay), !noalias !205
  %i.az = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.az), !noalias !205
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !205
  %i.ba = icmp eq i64 %i.av, 0
  br i1 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bb = sub nsw i64 0, %i.at
  %i.bc = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bb
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #28, !noalias !215
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !202
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.ah, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.ai, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.af, %.noexc2 ]
  %i.bd = add i16 %.sroa.13.1.lcssa, -1
  %i.be = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = and i16 %i.bd, %.sroa.13.1.lcssa
  %i.bh = add i64 %.sroa.5.1.lcssa, %i.bf         ; 2 uses
  %i.bi = add i64 %.sroa.9.024, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bj = load ptr, ptr %0, align 8, !alias.scope !216, !noalias !219, !nonnull !5, !noundef !5
  %i.bk = sub nsw i64 0, %i.bh
  %i.bl = getelementptr inbounds [80 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -80
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !221, !nonnull !5, !align !120, !noundef !5
  %i.bn = invoke noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bm)
          to label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBW_3vec3VecBS_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1B_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBW_3vec3VecBS_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1B_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.w, %i.bn             ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bo, align 1, !noalias !222
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !124

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBW_3vec3VecBS_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1B_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBW_3vec3VecBS_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1B_.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bq, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBW_3vec3VecBS_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1B_.exit ], [ %i.ch, %.lr.ph.i ]
  %i.br = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add i64 %.sroa.0.0.lcssa.i, %i.bs
  %i.bu = and i64 %i.bt, %i.w                     ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !5
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.j, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !23

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.t, align 16
  %i.by = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bz, 0
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBW_3vec3VecBS_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1B_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBW_3vec3VecBS_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1B_.exit ]
  %i.cc = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBW_3vec3VecBS_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1B_.exit ]
  %i.cd = add i64 %i.cc, 16                       ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.ce, %i.w             ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !222
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !125

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cb, %bb.j ], [ %i.bu, %._crit_edge.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i5.i
  %i.cj = lshr i64 %i.bn, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16
  %i.cm = and i64 %i.cl, %i.w
  store i8 %i.ck, ptr %i.ci, align 1, !noalias !205
  %i.cn = getelementptr i8, ptr %i.t, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  store i8 %i.ck, ptr %i.co, align 1, !noalias !205
  %i.cp = load ptr, ptr %0, align 8, !alias.scope !206, !noalias !207, !nonnull !5, !noundef !5
  %.neg.i.i = xor i64 %i.bh, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 80
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 80
  %i.cr = getelementptr inbounds i8, ptr %i.t, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.cr, ptr noundef nonnull align 1 dereferenceable(80) %i.cq, i64 range(i64 8, 129) 80, i1 false), !noalias !205
  %i.cs = icmp eq i64 %i.bi, 0
  br i1 %i.cs, label %._crit_edge27.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBW_3vec3VecBS_EEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1B_, i64 noundef 80, ptr noundef nonnull @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBZ_3vec3VecBV_EEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceB1E_) #25
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, %bb.c, %bb.k
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.w, %bb.e ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0ECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !225, !noalias !228, !noundef !5 ; 2 uses
  %2 = add i64 %i.g, 1                            ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !225, !noalias !228, !noundef !5 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !231
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %3, i64 range(i64 1, 0) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !235
  call fastcc void @_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 8, 129) 24, i64 noundef range(i64 1, 0) %..i) #25
  %i.r = load ptr, ptr %i.a, align 8, !noalias !235, !noundef !5 ; 9 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !235 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !235 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !235
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

bb.f:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #26, !noalias !238
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !235
  store ptr %i.e, ptr %i.b, align 8, !noalias !235
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !235
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !235
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.r, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !235
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.u, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !235
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !235
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !235
  %i.y = load i64, ptr %i.f, align 8, !alias.scope !239, !noalias !240, !noundef !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !239, !noalias !240, !nonnull !5, !noundef !5 ; 2 uses
  %.val516 = load <16 x i8>, ptr %i.aa, align 16
  %i.ab = icmp sgt <16 x i8> %.val516, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.025 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.y, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.023 = phi i16 [ %i.ac, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.ad, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.ag, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val417 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.af, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27.loopexit:                           ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !239, !noalias !240
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %bb.g
  %i.ah = phi i64 [ %.pre, %._crit_edge27.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ai = sub i64 %i.w, %i.ah
  store i64 %i.ai, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !235
  store i64 %i.ah, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !235
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit unwind label %bb.h, !noalias !238

bb.h:                                             ; preds = %._crit_edge27
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #27, !noalias !238
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit: ; preds = %._crit_edge27
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !244), !noalias !238
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !247, !noalias !238 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !247, !noalias !238 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !247, !noalias !238, !noundef !5 ; 3 uses
  %i.ak = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !247, !noalias !238
  %i.al = add i64 %.val3.i.i, 1
  %i.am = mul nuw i64 %.val.i.i, %i.al            ; 2 uses
  %i.an = add i64 %.val1.i.i, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !238
  %i.aq = sub i64 0, %.val1.i.i
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val3.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !238
  call void @llvm.assume(i1 %i.aw), !noalias !238
  %i.ax = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ax), !noalias !238
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !238
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.az
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #28, !noalias !248
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !235
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.af, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.ag, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.ad, %.noexc2 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.024, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !249, !noalias !252, !nonnull !5, !noundef !5
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -24
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !254, !nonnull !5, !align !120, !noundef !5
  %i.bl = invoke noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
          to label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CslkzCjlEuW1f_5xtask.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CslkzCjlEuW1f_5xtask.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.u, %i.bl             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !255
  %i.bn = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !124

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CslkzCjlEuW1f_5xtask.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CslkzCjlEuW1f_5xtask.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bo, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CslkzCjlEuW1f_5xtask.exit ], [ %i.cf, %.lr.ph.i ]
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.0.0.lcssa.i, %i.bq
  %i.bs = and i64 %i.br, %i.u                     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !5
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.j, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !23

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.r, align 16
  %i.bw = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bx, 0
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bx, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CslkzCjlEuW1f_5xtask.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CslkzCjlEuW1f_5xtask.exit ]
  %i.ca = phi i64 [ %i.cb, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CslkzCjlEuW1f_5xtask.exit ]
  %i.cb = add i64 %i.ca, 16                       ; 2 uses
  %i.cc = add i64 %i.cb, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cc, %i.u             ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !255
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !125

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bz, %bb.j ], [ %i.bs, %._crit_edge.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i5.i
  %i.ch = lshr i64 %i.bl, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
  %i.ck = and i64 %i.cj, %i.u
  store i8 %i.ci, ptr %i.cg, align 1, !noalias !238
  %i.cl = getelementptr i8, ptr %i.r, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store i8 %i.ci, ptr %i.cm, align 1, !noalias !238
  %i.cn = load ptr, ptr %0, align 8, !alias.scope !239, !noalias !240, !nonnull !5, !noundef !5
  %.neg.i.i = xor i64 %i.bf, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.cp = getelementptr inbounds i8, ptr %i.r, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cp, ptr noundef nonnull align 1 dereferenceable(24) %i.co, i64 range(i64 8, 129) 24, i1 false), !noalias !238
  %i.cq = icmp eq i64 %i.bg, 0
  br i1 %i.cq, label %._crit_edge27.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0CslkzCjlEuW1f_5xtask, i64 noundef 24, ptr noundef nonnull @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceCslkzCjlEuW1f_5xtask) #25
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, %bb.c, %bb.k
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.k ], [ %i.u, %bb.e ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBV_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1t_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0EB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !258, !noalias !261, !noundef !5 ; 2 uses
  %2 = add i64 %i.g, 1                            ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !258, !noalias !261, !noundef !5 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !264
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %3, i64 range(i64 1, 0) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !268
  call fastcc void @_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 8, 129) 32, i64 noundef range(i64 1, 0) %..i) #25
  %i.r = load ptr, ptr %i.a, align 8, !noalias !268, !noundef !5 ; 9 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !268 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !268 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !268
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

bb.f:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #26, !noalias !271
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  store ptr %i.e, ptr %i.b, align 8, !noalias !268
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !268
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !268
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.r, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !268
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.u, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !268
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !268
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !268
  %i.y = load i64, ptr %i.f, align 8, !alias.scope !272, !noalias !273, !noundef !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !272, !noalias !273, !nonnull !5, !noundef !5 ; 2 uses
  %.val516 = load <16 x i8>, ptr %i.aa, align 16
  %i.ab = icmp sgt <16 x i8> %.val516, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.025 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.y, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.023 = phi i16 [ %i.ac, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.ad, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.ag, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val417 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.af, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27.loopexit:                           ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !272, !noalias !273
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %bb.g
  %i.ah = phi i64 [ %.pre, %._crit_edge27.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ai = sub i64 %i.w, %i.ah
  store i64 %i.ai, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !268
  store i64 %i.ah, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !268
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslkzCjlEuW1f_5xtask(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit unwind label %bb.h, !noalias !271

bb.h:                                             ; preds = %._crit_edge27
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #27, !noalias !271
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit: ; preds = %._crit_edge27
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  call void @llvm.experimental.noalias.scope.decl(metadata !277), !noalias !271
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !280, !noalias !271 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !280, !noalias !271 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !280, !noalias !271, !noundef !5 ; 3 uses
  %i.ak = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !280, !noalias !271
  %i.al = add i64 %.val3.i.i, 1
  %i.am = mul nuw i64 %.val.i.i, %i.al            ; 2 uses
  %i.an = add i64 %.val1.i.i, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !271
  %i.aq = sub i64 0, %.val1.i.i
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val3.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !271
  call void @llvm.assume(i1 %i.aw), !noalias !271
  %i.ax = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ax), !noalias !271
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !271
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.az
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #28, !noalias !281
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalE0EECslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfjX3T6UU9IB_9hashbrown3raw13RawTableInnerECslkzCjlEuW1f_5xtask.exit, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !268
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.af, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.ag, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.ad, %.noexc2 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.024, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !282, !noalias !285, !nonnull !5, !noundef !5
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [32 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -32
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !287, !nonnull !5, !align !120, !noundef !5
  %i.bl = invoke noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
          to label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1U_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1U_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.u, %i.bl             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !288
  %i.bn = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !124

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1U_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1U_.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bo, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1U_.exit ], [ %i.cf, %.lr.ph.i ]
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.0.0.lcssa.i, %i.bq
  %i.bs = and i64 %i.br, %i.u                     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !5
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.j, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !23

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.r, align 16
  %i.bw = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bx, 0
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bx, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1U_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1U_.exit ]
  %i.ca = phi i64 [ %i.cb, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBX_3vec3VecRNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1v_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE0E0B1U_.exit ]
  %i.cb = add i64 %i.ca, 16                       ; 2 uses
  %i.cc = add i64 %i.cb, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cc, %i.u             ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !288
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !125

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bz, %bb.j ], [ %i.bs, %._crit_edge.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i5.i
  %i.ch = lshr i64 %i.bl, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
end_hunk_2
