inline.NumInlined: 188
inline.NumDeleted: 95
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1M_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EBU_:bb.a
  %i.ay = icmp sgt <16 x i8> %.val438, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.7.034 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.035 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount.exit

bb.m:                                             ; preds = %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(56) %i.b) #20
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.020.054 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.020.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.053 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.052 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.051 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i246 = icmp eq i16 %.sroa.13.051, 0
  br i1 %.not.i246, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.020.148 = phi ptr [ %i.bb, %.noexc3 ], [ %.sroa.020.054, %.preheader ] ; 2 uses
  %.sroa.5.147 = phi i64 [ %i.be, %.noexc3 ], [ %.sroa.5.053, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.148) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.020.148, i64 16 ; 3 uses
  %.val39 = load <16 x i8>, ptr %i.bb, align 16
  %i.bc = icmp sgt <16 x i8> %.val39, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.147, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bd, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge55.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre68 = load i64, ptr %i.d, align 8, !alias.scope !23, !noalias !24
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %._crit_edge55.loopexit, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount.exit
  %i.bf = phi i64 [ %.pre68, %._crit_edge55.loopexit ], [ 0, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount.exit ] ; 2 uses
  %i.bg = sub i64 %.sroa.07.0.i.i, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.n

bb.n:                                             ; preds = %._crit_edge55
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #21
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %._crit_edge55
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !31 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !31 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31, !noundef !8 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7JU2D1aBbVY_15deltalake_mount.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7JU2D1aBbVY_15deltalake_mount.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !31
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn)
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 4 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bw = icmp eq i64 %i.br, 0
  br i1 %i.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bx = sub nsw i64 0, %i.bp
  %i.by = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bx
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #19, !noalias !31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7JU2D1aBbVY_15deltalake_mount.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7JU2D1aBbVY_15deltalake_mount.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.051, %.preheader ], [ %i.bd, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.053, %.preheader ], [ %i.be, %.noexc3 ] ; 2 uses
  %.sroa.020.1.lcssa = phi ptr [ %.sroa.020.054, %.preheader ], [ %i.bb, %.noexc3 ]
  %i.bz = add i16 %.sroa.13.1.lcssa, -1
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = and i16 %i.bz, %.sroa.13.1.lcssa
  %i.cd = add i64 %.sroa.5.1.lcssa, %i.cb         ; 2 uses
  %i.ce = add i64 %.sroa.9.052, -1                ; 2 uses
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !32, !noalias !35, !nonnull !8, !noundef !8
  %i.cg = sub nsw i64 0, %i.cd
  %i.ch = getelementptr inbounds [24 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -24
  %i.cj = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyEB1J_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit unwind label %bb.m ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.ar, %i.cj            ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !37
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !40

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.co
  %i.cq = and i64 %i.cp, %i.ar                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !8
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.p, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !9

bb.p:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %i.aq, align 16
  %i.cu = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.da, %i.ar           ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !37
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !41

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.p ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.cj, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %i.ar
  store i8 %i.dg, ptr %i.de, align 1
  %i.dj = getelementptr i8, ptr %i.aq, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1
  %i.dl = load ptr, ptr %0, align 8, !alias.scope !23, !noalias !24, !nonnull !8, !noundef !8
  %.neg.i.i = mul i64 %i.cd, -24
  %i.dm = getelementptr i8, ptr %i.dl, i64 %.neg.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %.neg61.i.i = mul i64 %.sroa.0.0.i5.i, -24
  %i.do = getelementptr i8, ptr %i.aq, i64 %.neg61.i.i
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 1 dereferenceable(24) %i.dn, i64 24, i1 false)
  %i.dq = icmp eq i64 %i.ce, 0
  br i1 %i.dq, label %._crit_edge55.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.t, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.eq, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %.val14.i = load ptr, ptr %0, align 8, !alias.scope !42 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  br label %bb.ab

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.dr = lshr i64 %i.k, 4
  %i.ds = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.ds, 0
  %i.dt = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dr, %i.dt ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  %i.du = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.du, label %._crit_edge.i.i, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.r

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.r
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.eb, %bb.r ]
  %4 = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %4, align 16, !noalias !42
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %5 = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %6 = or <2 x i64> %5, splat (i64 -9187201950435737472)
  store <2 x i64> %6, ptr %4, align 16, !noalias !42
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %.val14.i, i64 %.27.i, i1 false), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  store ptr @_RNvYNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtBb_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0Es_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTOhEE9call_onceBZ_, ptr %i.dv, align 8, !noalias !42
  store i64 24, ptr %i.dw, align 8, !noalias !42
  store ptr %0, ptr %i.a, align 8, !noalias !42
  br label %.lr.ph.i14

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.eb, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.r ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dy, align 16, !noalias !42
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dz = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ea = or <2 x i64> %i.dz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ea, ptr %i.dy, align 16, !noalias !42
  %i.eb = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ed, align 16, !noalias !42
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ee = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ef = or <2 x i64> %i.ee, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ef, ptr %i.ed, align 16, !noalias !42
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i, label %bb.r

.lr.ph.i14:                                       ; preds = %bb.y, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.eg, %bb.y ], [ 0, %._crit_edge.i.i ] ; 9 uses
  %i.eg = add nuw i64 %.sroa.0.06.i, 1            ; 2 uses
  %i.eh = load ptr, ptr %0, align 8, !alias.scope !42, !nonnull !8, !noundef !8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.0.06.i
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !8
  %.not.i15 = icmp eq i8 %i.ej, -128
  br i1 %.not.i15, label %bb.s, label %bb.y

bb.s:                                             ; preds = %.lr.ph.i14
  %.neg.i = mul i64 %i.eg, -24
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 %.neg.i ; 2 uses
  %i.el = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.z, %bb.s
  %i.em = load ptr, ptr %0, align 8, !alias.scope !45, !noalias !48, !nonnull !8, !noundef !8
  %i.en = getelementptr inbounds [24 x i8], ptr %i.em, i64 %i.el
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -24
  %i.ep = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyEB1J_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eo)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit.i unwind label %bb.t ; 3 uses

bb.t:                                             ; preds = %bb.z, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.a) #20
          to label %common.resume unwind label %bb.aa

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit.i: ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i18 = load ptr, ptr %0, align 8, !alias.scope !42, !nonnull !8, !noundef !8 ; 7 uses
  %.val13.i = load i64, ptr %i.h, align 8, !alias.scope !42, !noundef !8 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val13.i, %i.ep      ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.er, align 1, !noalias !50
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.et, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i17.i, label %._crit_edge.i16.i, !prof !40

._crit_edge.i16.i:                                ; preds = %.lr.ph.i17.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit.i ], [ %.sroa.0.0.i.i19, %.lr.ph.i17.i ]
  %.lcssa.i.i = phi i16 [ %i.et, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit.i ], [ %i.fk, %.lr.ph.i17.i ]
  %i.eu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  %i.ew = add i64 %.sroa.0.0.lcssa.i.i, %i.ev
  %i.ex = and i64 %i.ew, %.val13.i                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noundef !8
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %bb.u, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !9

bb.u:                                             ; preds = %._crit_edge.i16.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i18, align 16
  %i.fb = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fc = bitcast <16 x i1> %i.fb to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fc, 0
  %i.fd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fc, i1 true)
  %i.fe = zext nneg i16 %i.fd to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i17.i:                                     ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit.i, %.lr.ph.i17.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i19, %.lr.ph.i17.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit.i ]
  %i.ff = phi i64 [ %i.fg, %.lr.ph.i17.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0BW_.exit.i ]
  %i.fg = add i64 %i.ff, 16                       ; 2 uses
  %i.fh = add i64 %i.fg, %.sroa.0.010.i.i
  %.sroa.0.0.i.i19 = and i64 %i.fh, %.val13.i     ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.0.i.i19
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fi, align 1, !noalias !50
  %i.fj = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fk, 0
  br i1 %.not.i.i.i, label %.lr.ph.i17.i, label %._crit_edge.i16.i, !prof !41

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.u, %._crit_edge.i16.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fe, %bb.u ], [ %i.ex, %._crit_edge.i16.i ] ; 4 uses
  %i.fl = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fm = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fn = xor i64 %i.fm, %i.fl
  %.unshifted.i = and i64 %i.fn, %.val13.i
  %i.fo = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fo, label %bb.w, label %bb.v, !prof !53

bb.v:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %.neg12.i = mul i64 %.sroa.0.0.i5.i.i, -24
  %i.fp = getelementptr i8, ptr %.val.i18, i64 %.neg12.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 -24    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !noundef !8
  %i.ft = lshr i64 %i.ep, 57
  %i.fu = trunc nuw nsw i64 %i.ft to i8           ; 2 uses
  %i.fv = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fw = and i64 %i.fv, %.val13.i
  store i8 %i.fu, ptr %i.fr, align 1
  %i.fx = load ptr, ptr %0, align 8, !alias.scope !42, !nonnull !8, !noundef !8
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  store i8 %i.fu, ptr %i.fz, align 1
  %i.ga = icmp eq i8 %i.fs, -1
  br i1 %i.ga, label %bb.x, label %bb.z

bb.w:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.gb = lshr i64 %i.ep, 57
  %i.gc = trunc nuw nsw i64 %i.gb to i8           ; 2 uses
  %i.gd = add i64 %.sroa.0.06.i, -16
  %i.ge = and i64 %.val13.i, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.06.i
  store i8 %i.gc, ptr %i.gf, align 1
  %i.gg = load ptr, ptr %0, align 8, !alias.scope !42, !nonnull !8, !noundef !8
  %i.gh = getelementptr i8, ptr %i.gg, i64 %i.ge
  %i.gi = getelementptr i8, ptr %i.gh, i64 16
  store i8 %i.gc, ptr %i.gi, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.gj = add i64 %.sroa.0.06.i, -16
  %i.gk = load i64, ptr %i.h, align 8, !alias.scope !42, !noundef !8
  %i.gl = and i64 %i.gk, %i.gj
  %i.gm = load ptr, ptr %0, align 8, !alias.scope !42, !nonnull !8, !noundef !8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gn, align 1
  %i.go = load ptr, ptr %0, align 8, !alias.scope !42, !nonnull !8, !noundef !8
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gl
  %i.gq = getelementptr i8, ptr %i.gp, i64 16
  store i8 -1, ptr %i.gq, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fq, ptr noundef nonnull align 1 dereferenceable(24) %i.ek, i64 24, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph.i14
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i14

bb.z:                                             ; preds = %bb.v
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull %i.ek, ptr noundef nonnull %i.fq, i64 noundef 3)
          to label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.t

bb.aa:                                            ; preds = %bb.t
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.y
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !42
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1
  %i.gs = lshr i64 %.pre13.i, 3
  %i.gt = mul nuw i64 %i.gs, 7
  %i.gu = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.gu, i64 %.pre.i.fr, i64 %i.gt
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !42
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gv = phi i64 [ %i.e, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gw = phi i64 [ 0, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gy = sub i64 %i.gw, %i.gv
  store i64 %i.gy, ptr %i.gx, align 8, !alias.scope !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7JU2D1aBbVY_15deltalake_mount.exit, %bb.c, %bb.ab
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.ab ], [ %.sroa.12.035, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7JU2D1aBbVY_15deltalake_mount.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -9223372036854775807, %bb.ab ], [ %.sroa.7.034, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7JU2D1aBbVY_15deltalake_mount.exit ]
  %i.gz = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.ha = insertvalue { i64, i64 } %i.gz, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.ha
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1M_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1M_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters10filter_map15filter_map_foldTRBV_B4e_ETNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyBV_EuNCNvXB4s_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBV_BV_ENtB4s_12MountOptions16as_mount_options0NCINvNvB2n_8for_each4callB4n_NCINvXs1i_B1V_INtB1V_7HashMapB4o_BV_NtNtNtB5H_4hash6random11RandomStateEINtNtB2r_7collect6ExtendB4n_E6extendINtB3t_9FilterMapINtB5B_4IterBV_BV_EB5p_EE0E0E0E0uEB4s_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted133 = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
