inline.NumInlined: 260
inline.NumDeleted: 121
begin_hunk_0_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !noalias !41
  %i.ao = add nsw i64 %.sroa.4.0.i.ph16.i, -1     ; 2 uses
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph16.i, 9
  %i.aq = lshr i64 %.sroa.4.0.i.ph16.i, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !32
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !32
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store i64 %i.ao, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a

._crit_edge48.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre61 = load i64, ptr %i.d, align 8, !alias.scope !42, !noalias !43
  %.pre60 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %._crit_edge48.loopexit, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit
  %4 = phi i64 [ %.pre60, %._crit_edge48.loopexit ], [ %.sroa.07.0.i.i, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %i.be = phi i64 [ %.pre61, %._crit_edge48.loopexit ], [ 0, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit ] ; 2 uses
  %i.bf = sub i64 %4, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %.sroa.619.0..sroa_idx.i.i.val4 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !7 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val4, %i.ci ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !62
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.lcssa.i = phi i16 [ %i.cl, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add i64 %.sroa.0.0.lcssa.i, %i.cn
  %i.cp = and i64 %i.co, %.sroa.619.0..sroa_idx.i.i.val4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !7
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.n, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !22

bb.n:                                             ; preds = %._crit_edge.i
  %i.ct = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16, !noalias !66
  %i.cu = icmp slt <16 x i8> %i.ct, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
end_hunk_4
begin_hunk_5_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.da, %.sroa.619.0..sroa_idx.i.i.val4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !62
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
end_hunk_5
begin_hunk_6_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.n ], [ %i.cp, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.ci, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %.sroa.619.0..sroa_idx.i.i.val4
  store i8 %i.dg, ptr %i.de, align 1
  %i.dj = getelementptr i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1
  %i.dl = load ptr, ptr %0, align 8, !alias.scope !42, !noalias !43, !nonnull !7, !noundef !7
end_hunk_6
begin_hunk_7_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.dn
  %i.dp = shl i64 %.sroa.0.0.i5.i, 5
  %i.dq = sub nuw nsw i64 -32, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dr, ptr noundef nonnull align 1 dereferenceable(32) %i.do, i64 32, i1 false)
  %i.ds = icmp eq i64 %i.cd, 0
  br i1 %i.ds, label %._crit_edge48.loopexit, label %.preheader

end_hunk_7
