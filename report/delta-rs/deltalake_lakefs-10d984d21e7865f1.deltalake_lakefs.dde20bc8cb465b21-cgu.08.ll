inline.NumInlined: 308
inline.NumDeleted: 157
begin_hunk_0_@_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ac, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ad = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 40) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !9
end_hunk_0
begin_hunk_1_@_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = add nuw i64 %i.af, 8
  %i.ah = and i64 %i.ag, -16                      ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.aj = add i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = icmp ugt i64 %i.aj, 9223372036854775792
  %or.cond.i.i = or i1 %i.ak, %i.al
end_hunk_1
begin_hunk_2_@_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.03.0.i.i = select i1 %i.ar, i64 %i.as, i64 %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.av, i8 -1, i64 %i.ai, i1 false), !noalias !22
  store ptr %i.e, ptr %i.d, align 8, !noalias !14
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 40, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !14
end_hunk_2
begin_hunk_3_@_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.bu = icmp uge i64 %i.bt, %i.bs
  call void @llvm.assume(i1 %i.bu)
  %i.bv = and i64 %i.bt, -16                      ; 3 uses
  %i.bw = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bx = add i64 %i.bw, %i.bv                    ; 3 uses
  %i.by = icmp uge i64 %i.bx, %i.bv
  %4 = icmp ult i64 %i.bx, 9223372036854775793
  call void @llvm.assume(i1 %i.by)
  call void @llvm.assume(i1 %4)
  %i.bz = sub nsw i64 0, %i.bv
  %i.ca = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bz
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !49
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !122
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
end_hunk_4
begin_hunk_5_@_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 40) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !9
end_hunk_5
begin_hunk_6_@_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
end_hunk_6
begin_hunk_7_@_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.03.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.p, i1 false), !noalias !373
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.i
end_hunk_7
begin_hunk_8_@_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 48                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  tail call void @llvm.assume(i1 %i.ah)
  %1 = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %1)
  %i.ai = sub i64 -48, %i.ad
  %i.aj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ai
end_hunk_8
begin_hunk_9_@_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = and i64 %i.am, -16                      ; 2 uses
  %i.ap = add i64 %i.ao, 112                      ; 2 uses
  %i.aq = add nsw i64 %i.b, 17
  %i.ar = add i64 %i.aq, %i.ap                    ; 3 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  tail call void @llvm.assume(i1 %i.as)
  %1 = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %1)
  %i.at = load ptr, ptr %0, align 8, !alias.scope !550, !nonnull !8, !noundef !8
  %i.au = sub i64 -112, %i.ao
end_hunk_9
