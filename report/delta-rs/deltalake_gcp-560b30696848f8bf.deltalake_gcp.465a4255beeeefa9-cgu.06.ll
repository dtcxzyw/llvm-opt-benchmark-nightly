inline.NumInlined: 182
inline.NumDeleted: 88
begin_hunk_0_@_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3P_ENtNtB5_6marker4SendEL_EEE000EB2o_:bb.a
  %i.g = sub i64 %.sroa.01.021.i, %i.b            ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i64, ptr %i.i, align 8, !alias.scope !10, !noalias !15, !noundef !9
  %.not.i.i = icmp ule i64 %.val14.i, %.pre.i
  %i.j = zext i1 %.not.i.i to i64
  %i.k = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.j ; 2 uses
  %i.l = icmp ule i64 %i.k, %1
  tail call void @llvm.assume(i1 %i.l)
  br label %_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4f_ENtNtB5_6marker4SendEL_EEE000E0EB2O_.exit

_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4f_ENtNtB5_6marker4SendEL_EEE000E0EB2O_.exit: ; preds = %bb.a, %._crit_edge.i
  %.sroa.4.0.i = phi i64 [ 0, %bb.a ], [ %i.k, %._crit_edge.i ]
  ret i64 %.sroa.4.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !24, !noalias !19, !noundef !9 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !24, !noalias !19, !nonnull !9, !noundef !9 ; 6 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.val.i.i.i.i = load i8, ptr %1, align 1, !range !25, !alias.scope !19, !noalias !16 ; 3 uses
  %i.m = add nsw i8 %.val.i.i.i.i, -18
  %i.n = icmp samesign ugt i8 %.val.i.i.i.i, 17
  %narrow.i.i.i.i.i = select i1 %i.n, i8 %i.m, i8 5
  %narrow.i.i.i.i.fr.i = freeze i8 %narrow.i.i.i.i.i ; 3 uses
  %.not.i = icmp eq i8 %narrow.i.i.i.i.fr.i, 5
  br i1 %.not.i, label %.split.i, label %.split.us.i

.split.us.i:                                      ; preds = %bb.b, %bb.c
  %.sroa.9.0.i.us.i = phi i64 [ %i.u, %bb.c ], [ 0, %bb.b ]
  %.pn.i.us.i = phi i64 [ %i.v, %bb.c ], [ %i.e, %bb.b ]
  %.sroa.01.0.i.us.i = and i64 %.pn.i.us.i, %i.i  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.us.i
  %.sroa.0.0.copyload.i22.us.i = load <16 x i8>, ptr %i.o, align 1, !noalias !26 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.us.i, %i.l
  %i.q = bitcast <16 x i1> %i.p to i16            ; 3 uses
  %.not.i.not28.us.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not28.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

._crit_edge.split.us.us.i:                        ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, %.split.us.i
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.us.i, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %bb.c, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit, !prof !29

bb.c:                                             ; preds = %._crit_edge.split.us.us.i
  %i.u = add i64 %.sroa.9.0.i.us.i, 16            ; 2 uses
  %i.v = add i64 %.sroa.01.0.i.us.i, %i.u
  br label %.split.us.i

.lr.ph.us.i:                                      ; preds = %.split.us.i
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.q, i1 true)
  %i.x = zext nneg i16 %i.w to i64
  %i.y = add i64 %.sroa.01.0.i.us.i, %i.x
  %i.z = and i64 %i.y, %i.i
  %i.aa = sub nsw i64 0, %i.z                     ; 2 uses
  %i.ab = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -32
  %.val2.i.us40.us.i = load i8, ptr %i.ac, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9 ; 2 uses
  %i.ad = add nsw i8 %.val2.i.us40.us.i, -18
  %i.ae = icmp samesign ugt i8 %.val2.i.us40.us.i, 17
  %narrow1.i.i.i.i.us41.us.i = select i1 %i.ae, i8 %i.ad, i8 5
  %i.af = icmp eq i8 %narrow.i.i.i.i.fr.i, %narrow1.i.i.i.i.us41.us.i
  br i1 %i.af, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, !prof !37

bb.d:                                             ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.01.0.i.us.i, %i.ah
  %i.aj = and i64 %i.ai, %i.i
  %i.ak = sub nsw i64 0, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -32
  %.val2.i.us.us.i = load i8, ptr %i.am, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9 ; 2 uses
  %i.an = add nsw i8 %.val2.i.us.us.i, -18
  %i.ao = icmp samesign ugt i8 %.val2.i.us.us.i, 17
  %narrow1.i.i.i.i.us.us.i = select i1 %i.ao, i8 %i.an, i8 5
  %i.ap = icmp eq i8 %narrow.i.i.i.i.fr.i, %narrow1.i.i.i.i.us.us.i
  br i1 %i.ap, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, !prof !38

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i: ; preds = %.lr.ph.us.i, %bb.d
  %.sroa.06.0.i29.us42.us.i = phi i16 [ %i.ar, %bb.d ], [ %i.q, %.lr.ph.us.i ] ; 2 uses
  %i.aq = add i16 %.sroa.06.0.i29.us42.us.i, -1
  %i.ar = and i16 %i.aq, %.sroa.06.0.i29.us42.us.i ; 3 uses
  %.not.i.not.us.us.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.not.us.us.i, label %._crit_edge.split.us.us.i, label %bb.d

.split.i:                                         ; preds = %bb.b, %bb.e
  %.sroa.9.0.i.i = phi i64 [ %i.bj, %bb.e ], [ 0, %bb.b ]
  %.pn.i.i = phi i64 [ %i.bk, %bb.e ], [ %i.e, %bb.b ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i22.i = load <16 x i8>, ptr %i.as, align 1, !noalias !26 ; 2 uses
  %i.at = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, %i.l
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not.i.not28.i = icmp eq i16 %i.au, 0
  br i1 %.not.i.not28.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i
  %.sroa.06.0.i29.i = phi i16 [ %i.bi, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i ], [ %i.au, %.split.i ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i29.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.01.0.i.i, %i.aw
  %i.ay = and i64 %i.ax, %i.i
  %i.az = sub nsw i64 0, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  %.val2.i.i = load i8, ptr %i.bb, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9 ; 2 uses
  %i.bc = icmp samesign ult i8 %.val2.i.i, 18
  %i.bd = icmp eq i8 %.val.i.i.i.i, %.val2.i.i
  %or.cond.i = select i1 %i.bc, i1 %i.bd, i1 false, !prof !39
  br i1 %or.cond.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, !prof !39

._crit_edge.split.i:                              ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, %.split.i
  %i.be = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, splat (i8 -1)
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = icmp eq i16 %i.bf, 0
  br i1 %i.bg, label %bb.e, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit, !prof !29

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i: ; preds = %.lr.ph.i
  %i.bh = add i16 %.sroa.06.0.i29.i, -1
  %i.bi = and i16 %i.bh, %.sroa.06.0.i29.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.not.i, label %._crit_edge.split.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.split.i
  %i.bj = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.bk = add i64 %.sroa.01.0.i.i, %i.bj
  br label %.split.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i: ; preds = %.lr.ph.us.i, %bb.d, %.lr.ph.i
  %.pre-phi = phi i64 [ %i.ak, %bb.d ], [ %i.az, %.lr.ph.i ], [ %i.aa, %.lr.ph.us.i ]
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.j, i64 %.pre-phi
  br label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %._crit_edge.split.us.us.i, %._crit_edge.split.i, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i
  %i.bm = phi ptr [ %i.bl, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i ], [ null, %._crit_edge.split.i ], [ null, %._crit_edge.split.us.us.i ] ; 2 uses
  %.not = icmp eq ptr %i.bm, null
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -24
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.bn
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB6_25GoogleCloudStorageBuilder11with_configNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias noundef writable writeonly sret([872 x i8]) align 8 captures(none) dereferenceable(872) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(872) %1, i8 noundef range(i8 0, 23) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [616 x i8], align 8               ; 4 uses
  %i.b = alloca [616 x i8], align 8               ; 4 uses
  %i.c = add nsw i8 %2, -18
  %i.d = icmp samesign ugt i8 %2, 17
  %narrow = select i1 %i.d, i8 %i.c, i8 5
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.g
    i8 1, label %bb.m
    i8 2, label %bb.r
    i8 3, label %bb.w
    i8 4, label %bb.c
    i8 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 736
  invoke void @_RINvMs0_NtCsjyY8HP3IvQ6_12object_store6configINtB6_11ConfigValuebE5parseNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %3)
          to label %bb.l unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.a, ptr noundef nonnull align 8 dereferenceable(616) %1, i64 616, i1 false)
  invoke void @_RINvMs2_NtCsjyY8HP3IvQ6_12object_store6clientNtB6_13ClientOptions11with_configNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([616 x i8]) align 8 captures(none) dereferenceable(616) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(616) %i.a, i8 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %3)
          to label %bb.ab unwind label %bb.f

bb.e:                                             ; preds = %.body19, %.body13, %.body7, %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.g, %bb.f ], [ %eh.lpad-body8, %.body7 ], [ %eh.lpad-body14, %.body13 ], [ %eh.lpad-body20, %.body19 ]
  %.sroa.02.0 = phi i1 [ true, %.body ], [ %.sroa.02.1, %bb.f ], [ true, %.body7 ], [ true, %.body13 ], [ true, %.body19 ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.f) #16
          to label %bb.ad unwind label %bb.ac

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.02.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !range !40, !alias.scope !41, !noundef !9
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.k, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit22, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(872) %1, i64 872, i1 false)
  ret void

bb.m:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !range !40, !alias.scope !44, !noundef !9
  %i.p = icmp eq i64 %i.o, -9223372036854775808
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit10, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i6 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body7 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i6: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit10 unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i6
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body7

.body7:                                           ; preds = %bb.o, %bb.q
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.s, %bb.q ], [ %i.q, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit10: ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.l

bb.r:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 6 uses
  %i.u = load i64, ptr %i.t, align 8, !range !40, !alias.scope !47, !noundef !9
  %i.v = icmp eq i64 %i.u, -9223372036854775808
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit16, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i12 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body13 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i12: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit16 unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i12
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body13

.body13:                                          ; preds = %bb.t, %bb.v
  %eh.lpad-body14 = phi { ptr, i32 } [ %i.y, %bb.v ], [ %i.w, %bb.t ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit16: ; preds = %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.l

bb.w:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 6 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !40, !alias.scope !50, !noundef !9
  %i.ab = icmp eq i64 %i.aa, -9223372036854775808
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit22, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i18 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body19 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i18: ; preds = %bb.x
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit22 unwind label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i18
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %bb.y, %bb.aa
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.ae, %bb.aa ], [ %i.ac, %bb.y ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit22: ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.l

bb.ab:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %1, ptr noundef nonnull align 8 dereferenceable(616) %i.b, i64 616, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.ac:                                            ; preds = %bb.aq, %bb.ao, %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential13GcpCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit, %bb.al, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.e
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ad:                                            ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #16
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 664
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #16
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %bb.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 688
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #16
          to label %bb.ag unwind label %bb.ac

bb.ag:                                            ; preds = %bb.af
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 712
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #16
          to label %bb.ah unwind label %bb.ac

bb.ah:                                            ; preds = %bb.ag
  br i1 %.sroa.02.0, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.al, %bb.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !53, !noundef !9 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential13GcpCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.an = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !56
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential13GcpCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtBL_3gcp10credential13GcpCredentialEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak) #18
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential13GcpCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.ac

bb.al:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client13ClientOptionsECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(616) %1) #16
          to label %bb.ai unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential13GcpCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.aj, %bb.ai, %bb.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 736
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #16
          to label %bb.am unwind label %bb.ac

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential13GcpCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !61, !noundef !9 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential20GcpSigningCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.at = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !64
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential20GcpSigningCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtBL_3gcp10credential20GcpSigningCredentialEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq) #18
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential20GcpSigningCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential20GcpSigningCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.an, %bb.am, %bb.ao
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !69, !noundef !9 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential20GcpSigningCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.ay = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !72
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.av) #18
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.ap, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_3gcp10credential20GcpSigningCredentialEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit, %bb.aq
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB6_25GoogleCloudStorageBuilder19with_http_connectorNtNtNtNtBa_6client4http10connection23SpawnedReqwestConnectorECs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias noundef writable writeonly sret([872 x i8]) align 8 captures(none) dereferenceable(872) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(872) %1, i64 noundef range(i64 0, 2) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %i.d, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !77
  %i.e = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 32, i64 noundef range(i64 1, 9) 8) #19, !noalias !77 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.e, !prof !29

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #20
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #16
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

.body:                                            ; preds = %bb.c, %bb.h
  %.pn = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder25GoogleCloudStorageBuilderECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(872) %1) #16
          to label %bb.j unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !80, !noundef !9 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !83
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #18
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  store ptr %i.e, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 864
  store ptr @3, ptr %i.o, align 8
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.f, %bb.e, %bb.g
  store ptr %i.e, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 864
  store ptr @3, ptr %i.p, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(872) %1, i64 872, i1 false)
  ret void

bb.i:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB6_25GoogleCloudStorageBuilder8with_urlNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias noundef writable writeonly sret([872 x i8]) align 8 captures(none) dereferenceable(872) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(872) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !40, !alias.scope !88, !noundef !9
  %i.c = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
end_hunk_0
