Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/webpki-ce99a4d7babff5cd.webpki.d0e49e753f3852db-cgu.5?download=true
inline.NumInlined: 120
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort4_stableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1f_5sliceSB19_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3i_8BTreeMapB1a_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtB8_4iter4IterNtB1L_19BorrowedRevokedCertENCNvMs2_B1L_NtB1L_26BorrowedCertRevocationList8to_owned0EE0E0EB1P_:bb.a
  %.val19 = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val17, i64 range(i64 0, -9223372036854775808) %.val19)
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val16, ptr nonnull readonly %.val18, i64 %spec.store.select.i.i.i.i), !alias.scope !49 ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i32 %i.e, 0
  %i.h = sub nsw i64 %.val17, %.val19
  %spec.select.i.i.i.i = select i1 %i.g, i64 %i.h, i64 %i.f ; 2 uses
  %i.i = icmp sgt i64 %spec.select.i.i.i.i, -1
  %i.j = getelementptr i8, ptr %0, i64 248
  %.val12 = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr i8, ptr %0, i64 256
  %.val13 = load i64, ptr %i.k, align 8, !noundef !6 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 168
  %.val14 = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr i8, ptr %0, i64 176
  %.val15 = load i64, ptr %i.m, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val13, i64 range(i64 0, -9223372036854775808) %.val15)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val12, ptr nonnull readonly %.val14, i64 %spec.store.select.i.i.i.i20), !alias.scope !53 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub nsw i64 %.val13, %.val15
  %spec.select.i.i.i.i21 = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i.i.i21, 0   ; 2 uses
  %spec.select.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i, 63
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %spec.select.i.i.i.i.lobit ; 4 uses
  %i.t = zext i1 %i.i to i64
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.t ; 5 uses
  %i.v = select i1 %i.r, i64 3, i64 2
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = select i1 %i.r, i64 2, i64 3
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %.val8 = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %.val9 = load i64, ptr %i.aa, align 8, !noundef !6 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 8
  %.val10 = load ptr, ptr %i.ab, align 8, !nonnull !6, !noundef !6
  %i.ac = getelementptr i8, ptr %i.s, i64 16
  %.val11 = load i64, ptr %i.ac, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val9, i64 range(i64 0, -9223372036854775808) %.val11)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.val8, ptr nonnull readonly %.val10, i64 %spec.store.select.i.i.i.i22), !alias.scope !57 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub nsw i64 %.val9, %.val11
  %spec.select.i.i.i.i23 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = icmp slt i64 %spec.select.i.i.i.i23, 0  ; 3 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 8
  %.val4 = load ptr, ptr %i.ai, align 8, !nonnull !6, !noundef !6
  %i.aj = getelementptr i8, ptr %i.y, i64 16
  %.val5 = load i64, ptr %i.aj, align 8, !noundef !6 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 8
  %.val6 = load ptr, ptr %i.ak, align 8, !nonnull !6, !noundef !6
  %i.al = getelementptr i8, ptr %i.u, i64 16
  %.val7 = load i64, ptr %i.al, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val5, i64 range(i64 0, -9223372036854775808) %.val7)
  %i.am = tail call i32 @memcmp(ptr nonnull readonly %.val4, ptr nonnull readonly %.val6, i64 %spec.store.select.i.i.i.i24), !alias.scope !61 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub nsw i64 %.val5, %.val7
  %spec.select.i.i.i.i25 = select i1 %i.ao, i64 %i.ap, i64 %i.an
  %i.aq = icmp slt i64 %spec.select.i.i.i.i25, 0  ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.s, !unpredictable !6
  %i.as = select i1 %i.aq, ptr %i.u, ptr %i.y, !unpredictable !6
  %i.at = select i1 %i.aq, ptr %i.w, ptr %i.u, !unpredictable !6
  %i.au = select i1 %i.ah, ptr %i.s, ptr %i.at, !unpredictable !6 ; 4 uses
  %i.av = select i1 %i.ah, ptr %i.u, ptr %i.w, !unpredictable !6
  %i.aw = select i1 %i.aq, ptr %i.y, ptr %i.av, !unpredictable !6 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val = load ptr, ptr %i.ax, align 8, !nonnull !6, !noundef !6
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  %.val1 = load i64, ptr %i.ay, align 8, !noundef !6 ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 8
  %.val2 = load ptr, ptr %i.az, align 8, !nonnull !6, !noundef !6
  %i.ba = getelementptr i8, ptr %i.au, i64 16
  %.val3 = load i64, ptr %i.ba, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1, i64 range(i64 0, -9223372036854775808) %.val3)
  %i.bb = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i.i.i26), !alias.scope !65 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp eq i32 %i.bb, 0
  %i.be = sub nsw i64 %.val1, %.val3
  %spec.select.i.i.i.i27 = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = icmp slt i64 %spec.select.i.i.i.i27, 0  ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.aw, ptr %i.au, !unpredictable !6
  %i.bh = select i1 %i.bf, ptr %i.au, ptr %i.aw, !unpredictable !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 80, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(80) %i.bg, i64 80, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(80) %i.bh, i64 80, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bk, ptr noundef nonnull align 8 dereferenceable(80) %i.as, i64 80, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1s_5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB1s_11collections5btree3mapINtB3v_8BTreeMapB1n_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4y_8adapters3map3MapINtNtB8_4iter4IterNtB1Y_19BorrowedRevokedCertENCNvMs2_B1Y_NtB1Y_26BorrowedCertRevocationList8to_owned0EE0E0EB22_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [56 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit
  %.sroa.0.05 = phi ptr [ %i.v, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit ], [ %i.c, %.lr.ph.preheader ] ; 11 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 8
  %.val11.i = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 16
  %.val12.i = load i64, ptr %i.e, align 8, !noundef !6 ; 5 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -72
  %.val13.i = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr i8, ptr %.sroa.0.05, i64 -64
  %.val14.i = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i, i64 range(i64 0, -9223372036854775808) %.val14.i)
  %i.h = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !69 ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 0
  %i.k = sub nsw i64 %.val12.i, %.val14.i
  %spec.select.i.i.i.i.i = select i1 %i.j, i64 %i.k, i64 %i.i
  %i.l = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.l, label %bb.d, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.012.0.copyload.i = load i64, ptr %.sroa.0.05, align 8
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.615.0..sroa_idx.i, i64 56, i1 false)
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -80 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.i8, i64 80, i1 false)
  %i.m = icmp eq ptr %.sroa.0.0.i8, %0
  br i1 %i.m, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -80 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.i, i64 80, i1 false)
  %i.n = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.n, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.5.0.i9, i64 -152
  %.val9.i = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  %i.p = getelementptr i8, ptr %.sroa.5.0.i9, i64 -144
  %.val10.i = load i64, ptr %i.p, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i, i64 range(i64 0, -9223372036854775808) %.val10.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i.i.i15.i), !alias.scope !73 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub nsw i64 %.val12.i, %.val10.i
  %spec.select.i.i.i.i16.i = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = icmp slt i64 %spec.select.i.i.i.i16.i, 0
  br i1 %i.u, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ] ; 3 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ]
  store i64 %.sroa.012.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !77
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -72
  store ptr %.val11.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !77
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -64
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !77
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i, i64 56, i1 false), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1y_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB3B_8BTreeMapB1t_B22_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4E_8adapters3map3MapINtNtB8_4iter4IterNtB24_19BorrowedRevokedCertENCNvMs2_B24_NtB24_26BorrowedCertRevocationList8to_owned0EE0E0EB28_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1m_5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB3p_8BTreeMapB1h_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4s_8adapters3map3MapINtNtB8_4iter4IterNtB1S_19BorrowedRevokedCertENCNvMs2_B1S_NtB1S_26BorrowedCertRevocationList8to_owned0EE0E0EB1W_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 7 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort4_stableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1f_5sliceSB19_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3i_8BTreeMapB1a_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtB8_4iter4IterNtB1L_19BorrowedRevokedCertENCNvMs2_B1L_NtB1L_26BorrowedCertRevocationList8to_owned0EE0E0EB1P_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort4_stableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1f_5sliceSB19_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3i_8BTreeMapB1a_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtB8_4iter4IterNtB1L_19BorrowedRevokedCertENCNvMs2_B1L_NtB1L_26BorrowedCertRevocationList8to_owned0EE0E0EB1P_(ptr noundef %i.f, ptr noundef %i.g)
  br label %5

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false)
  br label %5

5:                                                ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 3 uses
  %6 = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %6, label %bb.g, label %.loopexit.1

bb.g:                                             ; preds = %5, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.us
  %.sroa.0.0.a = phi i64 [ %29, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.us ], [ %.sroa.0.0, %5 ] ; 4 uses
  %7 = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.0.a ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.0.0.a, 80
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 10 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 80, i1 false)
  %9 = getelementptr i8, ptr %8, i64 8
  %.val11.i.us = load ptr, ptr %9, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %10 = getelementptr i8, ptr %8, i64 16
  %.val12.i.us = load i64, ptr %10, align 8, !noundef !6 ; 5 uses
  %11 = getelementptr i8, ptr %8, i64 -72
  %.val13.i.us = load ptr, ptr %11, align 8, !nonnull !6, !noundef !6
  %12 = getelementptr i8, ptr %8, i64 -64
  %.val14.i.us = load i64, ptr %12, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i30.us = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.us, i64 range(i64 0, -9223372036854775808) %.val14.i.us)
  %13 = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.us, ptr nonnull readonly %.val13.i.us, i64 %spec.store.select.i.i.i.i.i30.us), !alias.scope !82 ; 2 uses
  %14 = sext i32 %13 to i64
  %15 = icmp eq i32 %13, 0
  %i.h = sub nsw i64 %.val12.i.us, %.val14.i.us
  %spec.select.i.i.i.i.i31.us = select i1 %15, i64 %i.h, i64 %14
  %16 = icmp slt i64 %spec.select.i.i.i.i.i31.us, 0
  br i1 %16, label %17, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.us

17:                                               ; preds = %bb.g
  %.sroa.012.0.copyload.i.us = load i64, ptr %8, align 8
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.0.0.i32.us65 = getelementptr inbounds i8, ptr %8, i64 -80 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.i32.us65, i64 80, i1 false)
  %19 = icmp eq i64 %.sroa.0.0.a, 1
  br i1 %19, label %._crit_edge, label %.loopexit

20:                                               ; preds = %.loopexit
  %.sroa.0.0.i32.us = getelementptr inbounds i8, ptr %.sroa.0.0.i32.us67, i64 -80 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.i32.us67, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.i32.us, i64 80, i1 false)
  %21 = icmp eq ptr %.sroa.0.0.i32.us, %2
  br i1 %21, label %._crit_edge, label %.loopexit

.loopexit:                                        ; preds = %17, %20
  %.sroa.0.0.i32.us67 = phi ptr [ %.sroa.0.0.i32.us, %20 ], [ %.sroa.0.0.i32.us65, %17 ] ; 5 uses
  %.sroa.5.0.i.us66 = phi ptr [ %.sroa.0.0.i32.us67, %20 ], [ %8, %17 ] ; 3 uses
  %22 = getelementptr i8, ptr %.sroa.5.0.i.us66, i64 -152
  %.val9.i.us = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %23 = getelementptr i8, ptr %.sroa.5.0.i.us66, i64 -144
  %.val10.i.us = load i64, ptr %23, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i15.i.us = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.us, i64 range(i64 0, -9223372036854775808) %.val10.i.us)
  %24 = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.us, ptr nonnull readonly %.val9.i.us, i64 %spec.store.select.i.i.i.i15.i.us), !alias.scope !86 ; 2 uses
  %25 = sext i32 %24 to i64
  %26 = icmp eq i32 %24, 0
  %27 = sub nsw i64 %.val12.i.us, %.val10.i.us
  %spec.select.i.i.i.i16.i.us = select i1 %26, i64 %27, i64 %25
  %28 = icmp slt i64 %spec.select.i.i.i.i16.i.us, 0
  br i1 %28, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %20, %.loopexit, %17
  %.sroa.5.0.i.us.lcssa = phi ptr [ %8, %17 ], [ %.sroa.0.0.i32.us67, %20 ], [ %.sroa.5.0.i.us66, %.loopexit ] ; 3 uses
  %.sroa.0.0.i32.us.lcssa = phi ptr [ %2, %17 ], [ %2, %20 ], [ %.sroa.0.0.i32.us67, %.loopexit ]
  store i64 %.sroa.012.0.copyload.i.us, ptr %.sroa.0.0.i32.us.lcssa, align 8, !noalias !90
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.us = getelementptr inbounds i8, ptr %.sroa.5.0.i.us.lcssa, i64 -72
  store ptr %.val11.i.us, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.us, align 8, !noalias !90
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.us = getelementptr inbounds i8, ptr %.sroa.5.0.i.us.lcssa, i64 -64
  store i64 %.val12.i.us, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.us, align 8, !noalias !90
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.us = getelementptr inbounds i8, ptr %.sroa.5.0.i.us.lcssa, i64 -56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.us, ptr noundef nonnull align 8 dereferenceable(56) %18, i64 56, i1 false)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.us

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.us: ; preds = %._crit_edge, %bb.g
  %29 = add nuw nsw i64 %.sroa.0.0.a, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %29, %i.d
  br i1 %exitcond.not, label %.lr.ph.1, label %bb.g

.lr.ph.1:                                         ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.us, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.1
  %.sroa.05.040.1 = phi i64 [ %i.ad, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.1 ], [ %.sroa.0.0, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.us ] ; 4 uses
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.05.040.1 ; 2 uses
  %.idx80 = mul nuw nsw i64 %.sroa.05.040.1, 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.idx80 ; 10 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val11.i.1 = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.l = getelementptr i8, ptr %i.j, i64 16
  %.val12.i.1 = load i64, ptr %i.l, align 8, !noundef !6 ; 5 uses
  %i.m = getelementptr i8, ptr %i.j, i64 -72
  %.val13.i.1 = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr i8, ptr %i.j, i64 -64
  %.val14.i.1 = load i64, ptr %i.n, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i30.1 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.1, i64 range(i64 0, -9223372036854775808) %.val14.i.1)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.1, ptr nonnull readonly %.val13.i.1, i64 %spec.store.select.i.i.i.i.i30.1), !alias.scope !82 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub nsw i64 %.val12.i.1, %.val14.i.1
  %spec.select.i.i.i.i.i31.1 = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp slt i64 %spec.select.i.i.i.i.i31.1, 0
  br i1 %i.s, label %bb.h, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  %.sroa.012.0.copyload.i.1 = load i64, ptr %i.j, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.0.0.i32.169 = getelementptr inbounds i8, ptr %i.j, i64 -80 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.i32.169, i64 80, i1 false)
  %i.u = icmp eq i64 %.sroa.05.040.1, 1
  br i1 %i.u, label %._crit_edge74, label %.lr.ph73

bb.i:                                             ; preds = %.lr.ph73
  %.sroa.0.0.i32.1 = getelementptr inbounds i8, ptr %.sroa.0.0.i32.171, i64 -80 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.i32.171, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.i32.1, i64 80, i1 false)
  %i.v = icmp eq ptr %.sroa.0.0.i32.1, %2
  br i1 %i.v, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i32.171 = phi ptr [ %.sroa.0.0.i32.1, %bb.i ], [ %.sroa.0.0.i32.169, %bb.h ] ; 5 uses
  %.sroa.5.0.i.170 = phi ptr [ %.sroa.0.0.i32.171, %bb.i ], [ %i.j, %bb.h ] ; 3 uses
  %i.w = getelementptr i8, ptr %.sroa.5.0.i.170, i64 -152
  %.val9.i.1 = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6
  %i.x = getelementptr i8, ptr %.sroa.5.0.i.170, i64 -144
  %.val10.i.1 = load i64, ptr %i.x, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i15.i.1 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.1, i64 range(i64 0, -9223372036854775808) %.val10.i.1)
  %i.y = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.1, ptr nonnull readonly %.val9.i.1, i64 %spec.store.select.i.i.i.i15.i.1), !alias.scope !86 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub nsw i64 %.val12.i.1, %.val10.i.1
  %spec.select.i.i.i.i16.i.1 = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i.i16.i.1, 0
  br i1 %i.ac, label %bb.i, label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.i, %.lr.ph73, %bb.h
  %.sroa.5.0.i.1.lcssa = phi ptr [ %i.j, %bb.h ], [ %.sroa.0.0.i32.171, %bb.i ], [ %.sroa.5.0.i.170, %.lr.ph73 ] ; 3 uses
  %.sroa.0.0.i32.lcssa.1 = phi ptr [ %2, %bb.h ], [ %2, %bb.i ], [ %.sroa.0.0.i32.171, %.lr.ph73 ]
  store i64 %.sroa.012.0.copyload.i.1, ptr %.sroa.0.0.i32.lcssa.1, align 8, !noalias !90
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -72
  store ptr %.val11.i.1, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !90
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -64
  store i64 %.val12.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !90
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.1

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.1: ; preds = %._crit_edge74, %.lr.ph.1
  %i.ad = add nuw nsw i64 %.sroa.05.040.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ad, %i.d
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3h_8BTreeMapB19_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtB8_4iter4IterNtB1K_19BorrowedRevokedCertENCNvMs2_B1K_NtB1K_26BorrowedCertRevocationList8to_owned0EE0E0EB1O_.exit.1, %5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.ae = add nsw i64 %1, -1                      ; 2 uses
  %30 = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.ae
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.ae
  %i.ag = getelementptr [80 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -80
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ai = getelementptr i8, ptr %i.bk, i64 80     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.bj, i64 80
  %i.ak = and i64 %1, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.az, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.am, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.ag, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.ah, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.af, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %30, %.loopexit.1 ] ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.011.07.i, i64 8
  %.sroa.011.0.val.i = load ptr, ptr %i.an, align 8, !alias.scope !95, !nonnull !6, !noundef !6
  %i.ao = getelementptr i8, ptr %.sroa.011.07.i, i64 16
  %.sroa.011.0.val22.i = load i64, ptr %i.ao, align 8, !alias.scope !95, !noundef !6 ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.06.08.i, i64 8
  %.sroa.06.0.val.i = load ptr, ptr %i.ap, align 8, !alias.scope !95, !nonnull !6, !noundef !6
  %i.aq = getelementptr i8, ptr %.sroa.06.08.i, i64 16
  %.sroa.06.0.val23.i = load i64, ptr %i.aq, align 8, !alias.scope !95, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.011.0.val22.i, i64 range(i64 0, -9223372036854775808) %.sroa.06.0.val23.i)
  %i.ar = tail call i32 @memcmp(ptr nonnull readonly %.sroa.011.0.val.i, ptr nonnull readonly %.sroa.06.0.val.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !98, !noalias !95 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = sub nsw i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %spec.select.i.i.i.i.i = select i1 %i.at, i64 %i.au, i64 %i.as ; 2 uses
  %i.av = icmp sgt i64 %spec.select.i.i.i.i.i, -1 ; 2 uses
  %..i21.i = select i1 %i.av, ptr %.sroa.06.08.i, ptr %.sroa.011.07.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(80) %..i21.i, i64 80, i1 false), !noalias !102
  %spec.select.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.aw = getelementptr inbounds nuw [80 x i8], ptr %.sroa.011.07.i, i64 %spec.select.i.i.i.i.lobit.i ; 4 uses
  %i.ax = zext i1 %i.av to i64
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.08.i, i64 %i.ax ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 80 ; 2 uses
  %i.ba = getelementptr i8, ptr %.sroa.017.05.i, i64 8
  %.sroa.017.0.val.i = load ptr, ptr %i.ba, align 8, !alias.scope !95, !nonnull !6, !noundef !6
  %i.bb = getelementptr i8, ptr %.sroa.017.05.i, i64 16
  %.sroa.017.0.val24.i = load i64, ptr %i.bb, align 8, !alias.scope !95, !noundef !6 ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.015.06.i, i64 8
  %.sroa.015.0.val.i = load ptr, ptr %i.bc, align 8, !alias.scope !95, !nonnull !6, !noundef !6
  %i.bd = getelementptr i8, ptr %.sroa.015.06.i, i64 16
  %.sroa.015.0.val25.i = load i64, ptr %i.bd, align 8, !alias.scope !95, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i26.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.017.0.val24.i, i64 range(i64 0, -9223372036854775808) %.sroa.015.0.val25.i)
  %i.be = tail call i32 @memcmp(ptr nonnull readonly %.sroa.017.0.val.i, ptr nonnull readonly %.sroa.015.0.val.i, i64 %spec.store.select.i.i.i.i26.i), !alias.scope !106, !noalias !95 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %i.bh = sub nsw i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %spec.select.i.i.i.i27.i = select i1 %i.bg, i64 %i.bh, i64 %i.bf ; 2 uses
  %i.bi = icmp sgt i64 %spec.select.i.i.i.i27.i, -1 ; 2 uses
  %..i.i = select i1 %i.bi, ptr %.sroa.017.05.i, ptr %.sroa.015.06.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(80) %..i.i, i64 80, i1 false), !noalias !110
  %.neg.i.i = sext i1 %i.bi to i64
  %i.bj = getelementptr [80 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %spec.select.i.i.i.i27.lobit.i = ashr i64 %spec.select.i.i.i.i27.i, 63
  %i.bk = getelementptr [80 x i8], ptr %.sroa.015.06.i, i64 %spec.select.i.i.i.i27.lobit.i ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -80
  %exitcond.not.i = icmp eq i64 %i.am, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bm = icmp ult ptr %i.ay, %i.ai               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.bm, ptr %i.ay, ptr %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.06.0..sroa.011.0.i, i64 80, i1 false)
  %i.bn = zext i1 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [80 x i8], ptr %i.ay, i64 %i.bn
  %i.bp = xor i1 %i.bm, true
  %i.bq = zext i1 %i.bp to i64
  %i.br = getelementptr inbounds nuw [80 x i8], ptr %i.aw, i64 %i.bq
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.aw, %._crit_edge.i ], [ %i.br, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.ay, %._crit_edge.i ], [ %i.bo, %bb.j ]
  %i.bs = icmp ne ptr %.sroa.06.1.i, %i.ai
  %i.bt = icmp ne ptr %.sroa.011.1.i, %i.aj
  %or.cond.i = select i1 %i.bs, i1 true, i1 %i.bt, !prof !114
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1m_5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB3p_8BTreeMapB1h_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4s_8adapters3map3MapINtNtB8_4iter4IterNtB1S_19BorrowedRevokedCertENCNvMs2_B1S_NtB1S_26BorrowedCertRevocationList8to_owned0EE0E0EB1W_.exit, !prof !114

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #17
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = mul nuw nsw i64 %1, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.bv, i1 false), !noalias !115
  resume { ptr, i32 } %i.bu

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB1m_5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB3p_8BTreeMapB1h_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4s_8adapters3map3MapINtNtB8_4iter4IterNtB1S_19BorrowedRevokedCertENCNvMs2_B1S_NtB1S_26BorrowedCertRevocationList8to_owned0EE0E0EB1W_.exit: ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB35_8BTreeMapBY_B1x_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB47_8adapters3map3MapINtNtB8_4iter4IterNtB1z_19BorrowedRevokedCertENCNvMs2_B1z_NtB1z_26BorrowedCertRevocationList8to_owned0EE0E0EB1D_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %..i, 80                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.y, %.preheader ], [ %i.h, %.critedge ] ; 3 uses
  %i.j = phi ptr [ %i.x, %.preheader ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -80 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -80 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -80 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -72
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !120, !nonnull !6, !noundef !6
  %i.o = getelementptr i8, ptr %i.i, i64 -64
  %.val12.i = load i64, ptr %i.o, align 8, !noalias !120, !noundef !6 ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 -72
  %.val13.i = load ptr, ptr %i.p, align 8, !noalias !120, !nonnull !6, !noundef !6
  %i.q = getelementptr i8, ptr %i.j, i64 -64
  %.val14.i = load i64, ptr %i.q, align 8, !noalias !120, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i, i64 range(i64 0, -9223372036854775808) %.val14.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !123, !noalias !120 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val12.i, %.val14.i
  %spec.select.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = icmp sgt i64 %spec.select.i.i.i.i.i, -1  ; 2 uses
  %..i17 = select i1 %i.v, ptr %i.l, ptr %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(80) %..i17, i64 80, i1 false), !noalias !120
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %i.w ; 3 uses
  %spec.select.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.l, i64 %spec.select.i.i.i.i.lobit.i ; 3 uses
  %i.z = icmp eq ptr %i.x, %0
  %i.aa = icmp eq ptr %i.y, %2
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3w_8BTreeMapB1b_B1K_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtB9_4iter4IterNtB1M_19BorrowedRevokedCertENCNvMs2_B1M_NtB1M_26BorrowedCertRevocationList8to_owned0EE0E0EB1Q_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.ab = phi ptr [ %i.ap, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ac = phi ptr [ %i.an, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %i.ad = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val.i = load ptr, ptr %i.ad, align 8, !noalias !127, !nonnull !6, !noundef !6
  %i.ae = getelementptr i8, ptr %.sroa.0.02.i, i64 16
  %.sroa.0.0.val6.i = load i64, ptr %i.ae, align 8, !noalias !127, !noundef !6 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val.i19 = load ptr, ptr %i.af, align 8, !noalias !127, !nonnull !6, !noundef !6
  %i.ag = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ag, align 8, !noalias !127, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i, i64 range(i64 0, -9223372036854775808) %.val7.i)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i19, i64 %spec.store.select.i.i.i.i.i20), !alias.scope !130, !noalias !127 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub nsw i64 %.sroa.0.0.val6.i, %.val7.i
  %spec.select.i.i.i.i.i21 = select i1 %i.aj, i64 %i.ak, i64 %i.ai ; 2 uses
  %i.al = icmp sgt i64 %spec.select.i.i.i.i.i21, -1 ; 2 uses
  %.sroa.05.0.i = select i1 %i.al, ptr %i.ac, ptr %.sroa.0.02.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.05.0.i, i64 80, i1 false), !noalias !127
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.ac, i64 %i.am ; 3 uses
  %spec.select.i.i.i.i.lobit.i22 = lshr i64 %spec.select.i.i.i.i.i21, 63
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.02.i, i64 %spec.select.i.i.i.i.lobit.i22 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 80 ; 2 uses
  %i.aq = icmp ne ptr %i.an, %i.h
  %i.ar = icmp ne ptr %i.ao, %i.f
  %or.cond.i23 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond.i23, label %.lr.ph.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3w_8BTreeMapB1b_B1K_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtB9_4iter4IterNtB1M_19BorrowedRevokedCertENCNvMs2_B1M_NtB1M_26BorrowedCertRevocationList8to_owned0EE0E0EB1Q_.exit

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3w_8BTreeMapB1b_B1K_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtB9_4iter4IterNtB1M_19BorrowedRevokedCertENCNvMs2_B1M_NtB1M_26BorrowedCertRevocationList8to_owned0EE0E0EB1Q_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.x, %.preheader ], [ %i.ap, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.y, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %i.as = ptrtoint ptr %.sroa.7.0 to i64
  %i.at = ptrtoint ptr %.sroa.0.0 to i64
  %i.au = sub nuw i64 %i.as, %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.au, i1 false), !noalias !134
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3w_8BTreeMapB1b_B1K_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtB9_4iter4IterNtB1M_19BorrowedRevokedCertENCNvMs2_B1M_NtB1M_26BorrowedCertRevocationList8to_owned0EE0E0EB1Q_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshVVPy9isBpn_6webpki3crl5types19BorrowedRevokedCertENCNvMs2_B1p_NtB1p_26BorrowedCertRevocationList8to_owned0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callTINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB1p_16OwnedRevokedCertENCINvMsk_B4m_IB4k_B4i_E14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCshVVPy9isBpn_6webpki3crl5types19BorrowedRevokedCertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_TINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtBS_16OwnedRevokedCertEuNCNvMs2_BS_NtBS_26BorrowedCertRevocationList8to_owned0NCINvNvB1N_8for_each4callB3b_NCINvMsk_B3f_IB3d_B3b_E14extend_trustedINtB2D_3MapBF_B4a_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.c

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.c:                                             ; preds = %bb.j, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ac, %bb.j ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.j ] ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !145
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !150, !noalias !151, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !150, !noalias !151, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !145
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshVVPy9isBpn_6webpki(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.s, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !152

.noexc.i:                                         ; preds = %bb.c
  %i.t = load i64, ptr %i.a, align 8, !range !153, !noalias !145, !noundef !6
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = load i64, ptr %i.j, align 8, !range !154, !noalias !145, !noundef !6 ; 3 uses
  br i1 %i.u, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %.noexc.i
  %i.w = load i64, ptr %i.k, align 8, !noalias !145
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.w) #18
          to label %.noexc15.i unwind label %.loopexit.split-lp.i, !noalias !152

.noexc15.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.x = load ptr, ptr %i.k, align 8, !noalias !145, !nonnull !6, !noundef !6 ; 2 uses
  %i.y = icmp ule i64 %i.s, %i.v
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !145
  store i64 %i.v, ptr %i.c, align 8, !noalias !145
  store ptr %i.x, ptr %i.l, align 8, !noalias !145
  store i64 0, ptr %i.m, align 8, !noalias !145
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !145
  invoke void @_RNvMs7_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB5_19BorrowedRevokedCert8to_owned(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
          to label %bb.j unwind label %bb.h, !noalias !151

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.q, i64 %i.s, i1 false), !noalias !145
  store i64 %i.s, ptr %i.m, align 8, !noalias !145
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECshVVPy9isBpn_6webpki(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #16
          to label %bb.k unwind label %bb.i, !noalias !151

bb.i:                                             ; preds = %bb.h
end_hunk_0
