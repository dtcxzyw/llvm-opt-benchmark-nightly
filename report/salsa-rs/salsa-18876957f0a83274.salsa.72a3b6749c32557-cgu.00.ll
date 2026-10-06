Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.00?download=true
inline.NumInlined: 639
inline.NumDeleted: 186
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_:bb.a
  %i.j = getelementptr inbounds [80 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBV_EEE9next_implKb0_EBZ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE9next_implKb0_EB1G_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -256 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE9next_implKb0_EB1K_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1219 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1219, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1221, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1221, !noundef !3 ; 5 uses
  %i.h = add i64 %.val1.i, 1
  %i.i = mul nuw i64 %i.e, %i.h                   ; 2 uses
  %i.j = add i64 %i.g, -1
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub i64 0, %i.g
  %i.n = and i64 %i.k, %i.m                       ; 3 uses
  %i.o = add i64 %.val1.i, 17
  %i.p = add i64 %i.o, %i.n                       ; 4 uses
  %i.q = icmp uge i64 %i.p, %i.n
  %i.r = sub nuw i64 -9223372036854775808, %i.g
  %i.s = icmp ule i64 %i.p, %i.r
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.v = sub nsw i64 0, %i.n
  %i.w = getelementptr inbounds i8, ptr %.val.i, i64 %i.v
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.g) #29, !noalias !1221
  br label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit

_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1225
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1225
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !1225, !nonnull !3, !align !10, !noundef !3 ; 10 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1225, !noundef !3 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !noalias !1225
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %1 = phi ptr [ %3, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ] ; 2 uses
  %.sroa.04.03.us.i.i = phi i64 [ %2, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %2 = add nuw i64 %.sroa.04.03.us.i.i, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.03.us.i.i ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noalias !1225, !noundef !3
  %i.h = icmp eq i8 %i.g, -128
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.i = add i64 %.sroa.04.03.us.i.i, -16
  %i.j = load i64, ptr %i.c, align 8, !noalias !1225, !noundef !3
  %i.k = and i64 %i.j, %i.i
  store i8 -1, ptr %i.f, align 1, !noalias !1225
  %i.l = load ptr, ptr %.val2.i, align 8, !noalias !1225, !nonnull !3, !noundef !3
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store i8 -1, ptr %i.n, align 1, !noalias !1225
  %i.o = load i64, ptr %i.e, align 8, !noalias !1225, !noundef !3
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.e, align 8, !noalias !1225
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !noalias !1225
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %3 = phi ptr [ %.pre.i.i, %bb.b ], [ %1, %.lr.ph.split.us.i.i ]
  %exitcond6.not.i.i = icmp eq i64 %.sroa.04.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.04.03.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.q = add nuw i64 %.sroa.04.03.i.i, 1
  %i.r = load ptr, ptr %.val2.i, align 8, !noalias !1225, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.04.03.i.i ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !noalias !1225, !noundef !3
  %i.u = icmp eq i8 %i.t, -128
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.v = add i64 %.sroa.04.03.i.i, -16
  %i.w = load i64, ptr %i.c, align 8, !noalias !1225, !noundef !3
  %i.x = and i64 %i.w, %i.v
  store i8 -1, ptr %i.s, align 1, !noalias !1225
  %i.y = load ptr, ptr %.val2.i, align 8, !noalias !1225, !nonnull !3, !noundef !3
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store i8 -1, ptr %i.aa, align 1, !noalias !1225
  %i.ab = load ptr, ptr %.val2.i, align 8, !noalias !1225, !nonnull !3, !noundef !3
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.neg6.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ac), !noalias !1225, !inline_history !1224
  %i.ad = load i64, ptr %i.e, align 8, !noalias !1225, !noundef !3
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.e, align 8, !noalias !1225
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.split.i.i

_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %bb.c, %bb.a
  %i.af = load i64, ptr %i.c, align 8, !noalias !1225, !noundef !3 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 8
  %i.ah = add i64 %i.af, 1
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = mul nuw i64 %i.ai, 7
  %.sroa.01.0.i.i = select i1 %i.ag, i64 %i.af, i64 %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noalias !1225, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.an = sub i64 %.sroa.01.0.i.i, %i.al
  store i64 %i.an, ptr %i.am, align 8, !noalias !1225
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1228 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !1228 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !1228, !noundef !3 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !1228
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #29, !noalias !1228
  br label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit

_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1232
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !1232, !nonnull !3, !align !10, !noundef !3 ; 10 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1232, !noundef !3 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !noalias !1232
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %1 = phi ptr [ %3, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ] ; 2 uses
  %.sroa.0.03.us.i.i = phi i64 [ %2, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %2 = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noalias !1232, !noundef !3
  %i.h = icmp eq i8 %i.g, -128
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.i = add i64 %.sroa.0.03.us.i.i, -16
  %i.j = load i64, ptr %i.c, align 8, !noalias !1232, !noundef !3
  %i.k = and i64 %i.j, %i.i
  store i8 -1, ptr %i.f, align 1, !noalias !1232
  %i.l = load ptr, ptr %.val2.i, align 8, !noalias !1232, !nonnull !3, !noundef !3
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store i8 -1, ptr %i.n, align 1, !noalias !1232
  %i.o = load i64, ptr %i.e, align 8, !noalias !1232, !noundef !3
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.e, align 8, !noalias !1232
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !noalias !1232
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %3 = phi ptr [ %.pre.i.i, %bb.b ], [ %1, %.lr.ph.split.us.i.i ]
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.0.03.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.q = add nuw i64 %.sroa.0.03.i.i, 1
  %i.r = load ptr, ptr %.val2.i, align 8, !noalias !1232, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.03.i.i ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !noalias !1232, !noundef !3
  %i.u = icmp eq i8 %i.t, -128
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.v = add i64 %.sroa.0.03.i.i, -16
  %i.w = load i64, ptr %i.c, align 8, !noalias !1232, !noundef !3
  %i.x = and i64 %i.w, %i.v
  store i8 -1, ptr %i.s, align 1, !noalias !1232
  %i.y = load ptr, ptr %.val2.i, align 8, !noalias !1232, !nonnull !3, !noundef !3
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store i8 -1, ptr %i.aa, align 1, !noalias !1232
  %i.ab = load ptr, ptr %.val2.i, align 8, !noalias !1232, !nonnull !3, !noundef !3
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ac), !noalias !1232, !inline_history !1231
  %i.ad = load i64, ptr %i.e, align 8, !noalias !1232, !noundef !3
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.e, align 8, !noalias !1232
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.split.i.i

_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %bb.c, %bb.a
  %i.af = load i64, ptr %i.c, align 8, !noalias !1232, !noundef !3 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 8
  %i.ah = add i64 %i.af, 1
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = mul nuw i64 %i.ai, 7
  %.sroa.04.0.i.i = select i1 %i.ag, i64 %i.af, i64 %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noalias !1232, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.an = sub i64 %.sroa.04.0.i.i, %i.al
  store i64 %i.an, ptr %i.am, align 8, !noalias !1232
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -12
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa2id2IdEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [80 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -80
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -40
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -12
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBW_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -72
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1D_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1H_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
end_hunk_0
