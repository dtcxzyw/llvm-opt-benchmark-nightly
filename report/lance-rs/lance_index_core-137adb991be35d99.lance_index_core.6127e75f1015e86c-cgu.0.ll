Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_index_core-137adb991be35d99.lance_index_core.6127e75f1015e86c-cgu.0?download=true
inline.NumInlined: 567
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB7_16BalancingContextmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core:bb.a
  %i.df = trunc nuw nsw i64 %.sroa.0.06.i9.i to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 316
  store i16 %i.df, ptr %i.dg, align 4, !noalias !34
  %i.dh = add nuw nsw i64 %.sroa.0.06.i9.i, 2     ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dc
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !34, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.dj, align 8, !noalias !34
  %i.dk = trunc nuw nsw i64 %i.dc to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 316
  store i16 %i.dk, ptr %i.dl, align 4, !noalias !34
  %i.dm = add nuw nsw i64 %.sroa.0.06.i9.i, 3     ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dh
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !34, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.do, align 8, !noalias !34
  %i.dp = trunc nuw nsw i64 %i.dh to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 316
  store i16 %i.dp, ptr %i.dq, align 4, !noalias !34
  %i.dr = add nuw nsw i64 %.sroa.0.06.i9.i, 4
  %i.ds = icmp ult i64 %.sroa.0.06.i9.i, 9
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dm
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !34, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.du, align 8, !noalias !34
  %i.dv = trunc nuw nsw i64 %i.dm to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 316
  store i16 %i.dv, ptr %i.dw, align 4, !noalias !34
  %exitcond.not.i10.i.3 = icmp eq i64 %i.dm, %i.aa
  br i1 %exitcond.not.i10.i.3, label %_RINvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB7_16BalancingContextmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutmB1k_NtB3t_14LeafOrInternalEB2R_ECs8l9P2lL5xvY_16lance_index_core.exit, label %.lr.ph.i8.i

_RINvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB7_16BalancingContextmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutmB1k_NtB3t_14LeafOrInternalEB2R_ECs8l9P2lL5xvY_16lance_index_core.exit: ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEECs8l9P2lL5xvY_16lance_index_core.exit.i
  %.sink.i = phi i64 [ 320, %_RINvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEECs8l9P2lL5xvY_16lance_index_core.exit.i ], [ 416, %.lr.ph.i8.i ], [ 416, %.lr.ph.i8.i.prol.loopexit ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %.sink.i, i64 noundef 8) #27, !noalias !34
  %i.dx = select i1 %i.g, i64 %i.z, i64 0
  %.sroa.06.0 = add nuw nsw i64 %i.dx, %3
  store ptr %i.c, ptr %0, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.06.0, ptr %i.dz, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTmuEE14reserve_rehashNCINvNtB8_3map11make_hashermuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs8l9P2lL5xvY_16lance_index_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !86, !noalias !87, !noundef !3 ; 6 uses
  %i.c = add i64 %i.b, %1                         ; 3 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !86, !noalias !87, !noundef !3 ; 14 uses
  %i.g = icmp ult i64 %i.f, 8
  %i.h = add i64 %i.f, 1                          ; 6 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = mul nuw i64 %i.i, 7
  %.sroa.03.0.i = select i1 %i.g, i64 %i.f, i64 %i.j ; 3 uses
  %i.k = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.c, %i.k
  br i1 %.not.i, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !88 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit

bb.d:                                             ; preds = %bb.b
  %i.o = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.c) ; 5 uses
  %i.p = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.p, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.q, label %bb.j, label %bb.f, !prof !4

.thread.i:                                        ; preds = %bb.d
  %i.r = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.s = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.s, 8
  %.sroa.03.0.i.i = select i1 %i.r, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i64 %.sroa.0.0.i9, 3
  %i.u = udiv i64 %i.t, 7
  %i.v = add nsw i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = lshr i64 -1, %i.w                        ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 1
  %i.z = icmp samesign ugt i64 %i.x, 4611686018427387899
  br i1 %i.z, label %bb.h, label %bb.g, !prof !89

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph7.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.y, %bb.f ] ; 5 uses
  %i.aa = shl nuw i64 %.sroa.4.0.i.ph7.i, 2
  %i.ab = add nuw i64 %i.aa, 12
  %i.ac = and i64 %i.ab, -16                      ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.4.0.i.ph7.i, 16  ; 2 uses
  %i.ae = add i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775792
  %or.cond.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i, !prof !90

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !91
  %i.ah = tail call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !91 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.i, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !91
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.thread

bb.i:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i
  %i.ak = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ae), !noalias !91
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.al = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !92
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.thread

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9
  %i.an = add nsw i64 %.sroa.4.0.i.ph7.i, -1      ; 6 uses
  %i.ao = lshr i64 %.sroa.4.0.i.ph7.i, 3
  %i.ap = mul nuw nsw i64 %i.ao, 7
  %.sroa.07.0.i.i = select i1 %i.am, i64 %i.an, i64 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ad, i1 false), !noalias !92
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = icmp eq i64 %i.b, 0
  br i1 %i.as, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.._crit_edge53_crit_edge, label %.preheader.lr.ph

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.._crit_edge53_crit_edge: ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !93, !noalias !94
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge53

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit
  %i.at = load ptr, ptr %0, align 8, !alias.scope !95, !noalias !96, !nonnull !3, !noundef !3 ; 5 uses
  %.val438 = load <16 x i8>, ptr %i.at, align 16
  %i.au = icmp sgt <16 x i8> %.val438, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  %.val.i.i10 = load i64, ptr %2, align 8, !noalias !97, !noundef !3 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i11 = load i64, ptr %i.aw, align 8, !noalias !97, !noundef !3 ; 2 uses
  %i.ax = xor i64 %.val.i.i10, 8317987319222330741
  %i.ay = xor i64 %.val1.i.i11, 7237128888997146477 ; 3 uses
  %i.az = xor i64 %.val.i.i10, 7816392313619706465
  %i.ba = add i64 %i.ay, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 13)
  %i.bc = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %invariant.op109 = xor i64 %.val1.i.i11, 8098989879002948979
  br label %.preheader

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.al, %bb.j ], [ %i.aj, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %.sroa.12.035 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.036 = extractvalue { i64, i64 } %.pn.i.pn, 0
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.021.052 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %.sroa.021.1.lcssa, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.051 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.050 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.049 = phi i16 [ %i.av, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i244 = icmp eq i16 %.sroa.13.049, 0
  br i1 %.not.i244, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.021.146 = phi ptr [ %i.bf, %.noexc3 ], [ %.sroa.021.052, %.preheader ] ; 2 uses
  %.sroa.5.145 = phi i64 [ %i.bi, %.noexc3 ], [ %.sroa.5.051, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.146) ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.021.146, i64 16 ; 3 uses
  %.val39 = load <16 x i8>, ptr %i.bf, align 16
  %i.bg = icmp sgt <16 x i8> %.val39, splat (i8 -1)
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %i.bi = add i64 %.sroa.5.145, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bh, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge53:                                    ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.._crit_edge53_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.._crit_edge53_crit_edge ], [ %i.at, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %i.bj = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.ar, ptr %0, align 8, !alias.scope !93, !noalias !94
  store i64 %i.an, ptr %i.e, align 8, !alias.scope !98, !noalias !99
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bj, ptr %i.bk, align 8, !alias.scope !100, !noalias !101
  %i.bl = icmp eq i64 %i.f, 0
  br i1 %i.bl, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bm = shl i64 %i.f, 2                         ; 2 uses
  %i.bn = add i64 %i.bm, 4
  %i.bo = add i64 %i.bm, 19                       ; 2 uses
  %i.bp = icmp uge i64 %i.bo, %i.bn
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %i.bo, -16                      ; 3 uses
  %i.br = add i64 %i.f, 17
  %i.bs = add i64 %i.br, %i.bq                    ; 4 uses
  %i.bt = icmp uge i64 %i.bs, %i.bq
  %i.bu = icmp ult i64 %i.bs, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bt)
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp eq i64 %i.bs, 0
  br i1 %i.bv, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bq
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bw
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !102
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.049, %.preheader ], [ %i.bh, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.051, %.preheader ], [ %i.bi, %.noexc3 ] ; 2 uses
  %.sroa.021.1.lcssa = phi ptr [ %.sroa.021.052, %.preheader ], [ %i.bf, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.050, -1                ; 2 uses
  %i.ce = sub nsw i64 0, %i.cc
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %.val2.i = load i32, ptr %i.cg, align 4, !alias.scope !103, !noalias !104, !noundef !3
  %.pre.i.i.i.i.i.i = zext i32 %.val2.i to i64    ; 2 uses
  %i.ch = or disjoint i64 %.pre.i.i.i.i.i.i, 288230376151711744
  %.reass55.reass.reass = xor i64 %.pre.i.i.i.i.i.i, %invariant.op109 ; 3 uses
  %i.ci = add i64 %.reass55.reass.reass, %i.az    ; 2 uses
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %.reass55.reass.reass, i64 %.reass55.reass.reass, i64 16)
  %i.ck = xor i64 %i.cj, %i.ci                    ; 3 uses
  %i.cl = add i64 %i.bc, %i.ci                    ; 3 uses
  %i.cm = add i64 %i.ck, %i.bd                    ; 2 uses
  %i.cn = xor i64 %i.cl, %i.be                    ; 3 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 21)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 32)
  %i.cr = xor i64 %i.cm, %i.ch
  %i.cs = xor i64 %i.cq, 255
  %i.ct = add i64 %i.cr, %i.cn                    ; 3 uses
  %i.cu = add i64 %i.cs, %i.cp                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 13)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 3 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 16)
  %i.cy = xor i64 %i.cu, %i.cx                    ; 3 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32)
  %i.da = add i64 %i.cw, %i.cu                    ; 3 uses
  %i.db = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.dc = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 17)
  %i.dd = xor i64 %i.da, %i.dc                    ; 3 uses
  %i.de = tail call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 21)
  %i.df = xor i64 %i.de, %i.db                    ; 3 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 32)
  %i.dh = add i64 %i.dd, %i.db                    ; 3 uses
  %i.di = add i64 %i.df, %i.dg                    ; 2 uses
  %i.dj = tail call noundef i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 13)
  %i.dk = xor i64 %i.dj, %i.dh                    ; 3 uses
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 16)
  %i.dm = xor i64 %i.dl, %i.di                    ; 3 uses
  %i.dn = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 32)
  %i.do = add i64 %i.dk, %i.di                    ; 3 uses
  %i.dp = add i64 %i.dm, %i.dn                    ; 2 uses
  %i.dq = tail call noundef i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 17)
  %i.dr = xor i64 %i.dq, %i.do                    ; 3 uses
  %i.ds = tail call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 21)
  %i.dt = xor i64 %i.ds, %i.dp                    ; 3 uses
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 32)
  %i.dv = add i64 %i.dr, %i.dp
  %i.dw = add i64 %i.dt, %i.du                    ; 2 uses
  %i.dx = tail call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 13)
  %i.dy = xor i64 %i.dx, %i.dv                    ; 3 uses
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 16)
  %i.ea = xor i64 %i.dz, %i.dw                    ; 2 uses
  %i.eb = add i64 %i.dy, %i.dw                    ; 3 uses
  %i.ec = tail call noundef i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 17)
  %i.ed = tail call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 21)
  %i.ee = tail call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 32)
  %i.ef = xor i64 %i.ec, %i.ed
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = xor i64 %i.eg, %i.eb                    ; 2 uses
  %.sroa.0.07.i = and i64 %i.eh, %i.an            ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ei, align 1, !noalias !105
  %i.ej = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ek, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !106

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i13, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ek, %._crit_edge ], [ %i.fb, %.lr.ph.i ]
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.em
  %i.eo = and i64 %i.en, %i.an                    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noundef !3
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %bb.l, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i12 = load <16 x i8>, ptr %i.aq, align 16
  %i.es = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.et, 0
  %i.eu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.et, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.ew = phi i64 [ %i.ex, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ex = add i64 %i.ew, 16                       ; 2 uses
  %i.ey = add i64 %i.ex, %.sroa.0.010.i
  %.sroa.0.0.i13 = and i64 %i.ey, %i.an           ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i13
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ez, align 1, !noalias !105
  %i.fa = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !107

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ev, %bb.l ], [ %i.eo, %._crit_edge.i ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  %i.fd = lshr i64 %i.eh, 57
  %i.fe = trunc nuw nsw i64 %i.fd to i8           ; 2 uses
  %i.ff = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.fg = and i64 %i.ff, %i.an
  store i8 %i.fe, ptr %i.fc, align 1
  %i.fh = getelementptr i8, ptr %i.aq, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  store i8 %i.fe, ptr %i.fi, align 1
  %i.fj = shl i64 %i.cc, 2
  %i.fk = sub nuw nsw i64 -4, %i.fj
  %i.fl = getelementptr inbounds i8, ptr %i.at, i64 %i.fk
  %i.fm = shl nuw i64 %.sroa.0.0.i5.i, 2
  %i.fn = sub nuw nsw i64 -4, %i.fm
  %i.fo = getelementptr inbounds i8, ptr %i.aq, i64 %i.fn
  %i.fp = load i32, ptr %i.fl, align 1
  store i32 %i.fp, ptr %i.fo, align 4
  %i.fq = icmp eq i64 %i.cd, 0
  br i1 %i.fq, label %._crit_edge53, label %.preheader

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %.val14.i = load ptr, ptr %0, align 8, !alias.scope !108, !nonnull !3, !noundef !3 ; 17 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.fr = lshr i64 %i.h, 4
  %i.fs = and i64 %i.h, 15
  %.not10.i.i.i.i = icmp ne i64 %i.fs, 0
  %i.ft = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.fr, %i.ft ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.fu = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.fu, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gl, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod100 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.fv = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.fv, align 16, !noalias !108
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.fw = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.fx = or <2 x i64> %i.fw, splat (i64 -9187201950435737472)
  store <2 x i64> %i.fx, ptr %i.fv, align 16, !noalias !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.25.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.fy = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fy, ptr nonnull align 1 %.val14.i, i64 %.25.i, i1 false), !noalias !108
  %.val.i.i.i = load i64, ptr %2, align 8         ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.fz, align 8     ; 2 uses
  %i.ga = xor i64 %.val.i.i.i, 8317987319222330741
  %i.gb = xor i64 %.val1.i.i.i, 7237128888997146477 ; 3 uses
  %i.gc = xor i64 %.val.i.i.i, 7816392313619706465
  %i.gd = add i64 %i.gb, %i.ga                    ; 3 uses
  %i.ge = tail call i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 13)
  %i.gf = xor i64 %i.ge, %i.gd                    ; 3 uses
  %i.gg = tail call i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 32)
  %i.gh = tail call i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 17)
  %invariant.op = xor i64 %.val1.i.i.i, 8098989879002948979
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.gl, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.gi, align 16, !noalias !108
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.gj = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.gk = or <2 x i64> %i.gj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gk, ptr %i.gi, align 16, !noalias !108
  %i.gl = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.gn, align 16, !noalias !108
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.go = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.gp = or <2 x i64> %i.go, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gp, ptr %i.gn, align 16, !noalias !108
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.n

bb.o:                                             ; preds = %bb.w, %._crit_edge.i.i
  %.sroa.0.07.i15 = phi i64 [ 0, %._crit_edge.i.i ], [ %i.gq, %bb.w ] ; 8 uses
  %i.gq = add nuw i64 %.sroa.0.07.i15, 1
  %i.gr = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i15 ; 3 uses
  %i.gs = load i8, ptr %i.gr, align 1, !noalias !108, !noundef !3
  %.not.i16 = icmp eq i8 %i.gs, -128
  br i1 %.not.i16, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %.neg.i = xor i64 %.sroa.0.07.i15, -1
  %.neg12.i = shl i64 %.neg.i, 2
  %i.gt = getelementptr inbounds i8, ptr %.val14.i, i64 %.neg12.i ; 3 uses
  %i.gu = sub nsw i64 0, %.sroa.0.07.i15
  %i.gv = getelementptr inbounds [4 x i8], ptr %.val14.i, i64 %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -4
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %bb.p
  %.val2.i.i19 = load i32, ptr %i.gw, align 4, !alias.scope !109, !noalias !110, !noundef !3
  %.pre.i.i.i.i.i.i.i = zext i32 %.val2.i.i19 to i64 ; 2 uses
  %i.gx = or disjoint i64 %.pre.i.i.i.i.i.i.i, 288230376151711744
  %.reass.reass.reass = xor i64 %.pre.i.i.i.i.i.i.i, %invariant.op ; 3 uses
  %i.gy = add i64 %.reass.reass.reass, %i.gc      ; 2 uses
  %i.gz = tail call noundef i64 @llvm.fshl.i64(i64 %.reass.reass.reass, i64 %.reass.reass.reass, i64 16)
  %i.ha = xor i64 %i.gz, %i.gy                    ; 3 uses
  %i.hb = add i64 %i.gf, %i.gy                    ; 3 uses
  %i.hc = add i64 %i.ha, %i.gg                    ; 2 uses
  %i.hd = xor i64 %i.hb, %i.gh                    ; 3 uses
  %i.he = tail call noundef i64 @llvm.fshl.i64(i64 %i.ha, i64 %i.ha, i64 21)
  %i.hf = xor i64 %i.he, %i.hc                    ; 3 uses
  %i.hg = tail call noundef i64 @llvm.fshl.i64(i64 %i.hb, i64 %i.hb, i64 32)
  %i.hh = xor i64 %i.hc, %i.gx
  %i.hi = xor i64 %i.hg, 255
  %i.hj = add i64 %i.hh, %i.hd                    ; 3 uses
  %i.hk = add i64 %i.hi, %i.hf                    ; 2 uses
  %i.hl = tail call noundef i64 @llvm.fshl.i64(i64 %i.hd, i64 %i.hd, i64 13)
  %i.hm = xor i64 %i.hj, %i.hl                    ; 3 uses
  %i.hn = tail call noundef i64 @llvm.fshl.i64(i64 %i.hf, i64 %i.hf, i64 16)
  %i.ho = xor i64 %i.hk, %i.hn                    ; 3 uses
  %i.hp = tail call noundef i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 32)
  %i.hq = add i64 %i.hm, %i.hk                    ; 3 uses
  %i.hr = add i64 %i.ho, %i.hp                    ; 2 uses
  %i.hs = tail call noundef i64 @llvm.fshl.i64(i64 %i.hm, i64 %i.hm, i64 17)
  %i.ht = xor i64 %i.hq, %i.hs                    ; 3 uses
  %i.hu = tail call noundef i64 @llvm.fshl.i64(i64 %i.ho, i64 %i.ho, i64 21)
  %i.hv = xor i64 %i.hu, %i.hr                    ; 3 uses
  %i.hw = tail call noundef i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 32)
  %i.hx = add i64 %i.ht, %i.hr                    ; 3 uses
  %i.hy = add i64 %i.hv, %i.hw                    ; 2 uses
  %i.hz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ht, i64 %i.ht, i64 13)
  %i.ia = xor i64 %i.hz, %i.hx                    ; 3 uses
  %i.ib = tail call noundef i64 @llvm.fshl.i64(i64 %i.hv, i64 %i.hv, i64 16)
  %i.ic = xor i64 %i.ib, %i.hy                    ; 3 uses
  %i.id = tail call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 32)
  %i.ie = add i64 %i.ia, %i.hy                    ; 3 uses
  %i.if = add i64 %i.ic, %i.id                    ; 2 uses
  %i.ig = tail call noundef i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 17)
  %i.ih = xor i64 %i.ig, %i.ie                    ; 3 uses
  %i.ii = tail call noundef i64 @llvm.fshl.i64(i64 %i.ic, i64 %i.ic, i64 21)
  %i.ij = xor i64 %i.ii, %i.if                    ; 3 uses
  %i.ik = tail call noundef i64 @llvm.fshl.i64(i64 %i.ie, i64 %i.ie, i64 32)
  %i.il = add i64 %i.ih, %i.if
  %i.im = add i64 %i.ij, %i.ik                    ; 2 uses
  %i.in = tail call noundef i64 @llvm.fshl.i64(i64 %i.ih, i64 %i.ih, i64 13)
  %i.io = xor i64 %i.in, %i.il                    ; 3 uses
  %i.ip = tail call noundef i64 @llvm.fshl.i64(i64 %i.ij, i64 %i.ij, i64 16)
  %i.iq = xor i64 %i.ip, %i.im                    ; 2 uses
  %i.ir = add i64 %i.io, %i.im                    ; 3 uses
  %i.is = tail call noundef i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 17)
  %i.it = tail call noundef i64 @llvm.fshl.i64(i64 %i.iq, i64 %i.iq, i64 21)
  %i.iu = tail call noundef i64 @llvm.fshl.i64(i64 %i.ir, i64 %i.ir, i64 32)
  %i.iv = xor i64 %i.is, %i.it
  %i.iw = xor i64 %i.iv, %i.iu
  %i.ix = xor i64 %i.iw, %i.ir                    ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.ix, %i.f           ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.iy, align 1, !noalias !111
  %i.iz = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ja = bitcast <16 x i1> %i.iz to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ja, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i17.i, label %._crit_edge.i16.i, !prof !106

._crit_edge.i16.i:                                ; preds = %.lr.ph.i17.i, %bb.q
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.q ], [ %.sroa.0.0.i.i20, %.lr.ph.i17.i ]
  %.lcssa.i.i = phi i16 [ %i.ja, %bb.q ], [ %i.jr, %.lr.ph.i17.i ]
  %i.jb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.jc = zext nneg i16 %i.jb to i64
  %i.jd = add i64 %.sroa.0.0.lcssa.i.i, %i.jc
  %i.je = and i64 %i.jd, %i.f                     ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !noalias !108, !noundef !3
  %i.jh = icmp sgt i8 %i.jg, -1
  br i1 %i.jh, label %bb.r, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !4

bb.r:                                             ; preds = %._crit_edge.i16.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val14.i, align 16, !noalias !108
  %i.ji = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.jj = bitcast <16 x i1> %i.ji to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.jj, 0
  %i.jk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.jj, i1 true)
  %i.jl = zext nneg i16 %i.jk to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i17.i:                                     ; preds = %bb.q, %.lr.ph.i17.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i20, %.lr.ph.i17.i ], [ %.sroa.0.07.i.i, %bb.q ]
  %i.jm = phi i64 [ %i.jn, %.lr.ph.i17.i ], [ 0, %bb.q ]
  %i.jn = add i64 %i.jm, 16                       ; 2 uses
  %i.jo = add i64 %i.jn, %.sroa.0.010.i.i
  %.sroa.0.0.i.i20 = and i64 %i.jo, %i.f          ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.0.i.i20
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.jp, align 1, !noalias !111
  %i.jq = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.jr = bitcast <16 x i1> %i.jq to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.jr, 0
  br i1 %.not.i.i.i, label %.lr.ph.i17.i, label %._crit_edge.i16.i, !prof !107

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.r, %._crit_edge.i16.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.jl, %bb.r ], [ %i.je, %._crit_edge.i16.i ] ; 4 uses
  %i.js = sub i64 %.sroa.0.07.i15, %.sroa.0.07.i.i
  %i.jt = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.ju = xor i64 %i.jt, %i.js
  %.unshifted.i = and i64 %i.ju, %i.f
  %i.jv = icmp ult i64 %.unshifted.i, 16
  br i1 %i.jv, label %bb.t, label %bb.s, !prof !5

bb.s:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.jw = shl i64 %.sroa.0.0.i5.i.i, 2
  %i.jx = sub nuw nsw i64 -4, %i.jw
  %i.jy = getelementptr inbounds i8, ptr %.val14.i, i64 %i.jx ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !108, !noundef !3
  %i.kb = lshr i64 %i.ix, 57
  %i.kc = trunc nuw nsw i64 %i.kb to i8           ; 2 uses
  %i.kd = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ke = and i64 %i.kd, %i.f
  store i8 %i.kc, ptr %i.jz, align 1, !noalias !108
  %i.kf = getelementptr i8, ptr %.val14.i, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 16
  store i8 %i.kc, ptr %i.kg, align 1, !noalias !108
  %i.kh = icmp eq i8 %i.ka, -1
  br i1 %i.kh, label %bb.u, label %bb.v

bb.t:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ki = lshr i64 %i.ix, 57
  %i.kj = trunc nuw nsw i64 %i.ki to i8           ; 2 uses
  %i.kk = add i64 %.sroa.0.07.i15, -16
  %i.kl = and i64 %i.kk, %i.f
  store i8 %i.kj, ptr %i.gr, align 1, !noalias !108
  %i.km = getelementptr i8, ptr %.val14.i, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.km, i64 16
  store i8 %i.kj, ptr %i.kn, align 1, !noalias !108
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ko = add i64 %.sroa.0.07.i15, -16
  %i.kp = and i64 %i.ko, %i.f
  store i8 -1, ptr %i.gr, align 1, !noalias !108
  %i.kq = getelementptr i8, ptr %.val14.i, i64 %i.kp
  %i.kr = getelementptr i8, ptr %i.kq, i64 16
  store i8 -1, ptr %i.kr, align 1, !noalias !108
  %i.ks = load i32, ptr %i.gt, align 1, !noalias !108
  store i32 %i.ks, ptr %i.jy, align 1, !noalias !108
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %.sroa.0.0.copyload.i.i5.i.i = load i32, ptr %i.gt, align 1, !alias.scope !112, !noalias !114
  %.sroa.02.0.copyload.i.i6.i.i = load i32, ptr %i.jy, align 1, !alias.scope !113, !noalias !115
  store i32 %.sroa.02.0.copyload.i.i6.i.i, ptr %i.gt, align 1, !alias.scope !112, !noalias !114
  store i32 %.sroa.0.0.copyload.i.i5.i.i, ptr %i.jy, align 1, !alias.scope !113, !noalias !115
  br label %bb.q

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.o
  %exitcond.not.i = icmp eq i64 %.sroa.0.07.i15, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %bb.o

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.w, %bb.m
  %i.kt = phi i64 [ 0, %bb.m ], [ %.sroa.03.0.i, %bb.w ]
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kv = sub i64 %i.kt, %i.b
  store i64 %i.kv, ptr %i.ku, align 8, !alias.scope !108
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit: ; preds = %bb.k, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge53, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.thread, %bb.c, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.035, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.thread ], [ undef, %._crit_edge53 ], [ undef, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %bb.k ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.036, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core.exit.thread ], [ -1, %._crit_edge53 ], [ -1, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ -1, %bb.k ]
  %i.kw = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.kx = insertvalue { i64, i64 } %i.kw, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.kx
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCINvMsV_NtB7_3mapINtB3q_14ExtractIfInnermB1M_NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullE4nextNCINvMsi_B3q_INtB3q_8BTreeMapmB1M_E6retainNCINvMs6_B1O_NtB1O_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtBb_5alloc6GlobalE0B7a_ECs8l9P2lL5xvY_16lance_index_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 13 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  %.sroa.4.i = alloca [28 x i8], align 4          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [56 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 16 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !160, !noalias !161, !nonnull !3, !noundef !3 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 318 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !noalias !162, !noundef !3 ; 3 uses
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !160, !noalias !161, !noundef !3 ; 9 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !163, !noalias !162, !noundef !3
  %i.r = getelementptr i8, ptr %i.p, i64 4
  %i.s = xor i64 %i.o, -1
  %i.t = add i64 %i.l, %i.s                       ; 2 uses
  %i.u = shl i64 %i.t, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.r, i64 %i.u, i1 false), !alias.scope !163, !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.o ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !alias.scope !165, !noalias !162
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %i.y = mul i64 %i.t, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.x, i64 %i.y, i1 false), !alias.scope !166, !noalias !167
  %i.z = add i16 %i.k, -1                         ; 3 uses
  store i16 %i.z, ptr %i.j, align 2, !noalias !162
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !160, !noalias !161, !noundef !3 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %i.q, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i, i64 28, i1 false)
  %i.ac = icmp ult i16 %i.z, 5
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.i.sroa.gep19 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.i.sroa.gep21 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.i.sroa.gep22 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.i.sroa.gep24 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sink.i.sroa.gep25 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sink.i.sroa.gep27 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.i.sroa.gep28 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br i1 %i.ac, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ad = load ptr, ptr %i.i, align 8, !noalias !168, !noundef !3 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = add i64 %i.ab, 1                        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 316
  %i.ag = load i16, ptr %i.af, align 4, !noalias !168 ; 3 uses
  %.not.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 318
  %i.ai = load i16, ptr %i.ah, align 2, !noalias !169, !noundef !3
  %.not62.i = icmp eq i16 %i.ai, 0
  br i1 %.not62.i, label %.invoke, label %bb.f, !prof !4

.invoke:                                          ; preds = %bb.s, %bb.d
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #26
          to label %.cont unwind label %bb.ac

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.g, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ab, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.o, ptr %i.ak, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 328
  %i.am = load ptr, ptr %i.al, align 8, !noalias !169, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ad, ptr %i.e, align 8
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ae, ptr %.sroa.12.8..sroa_idx, align 8
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.16.8..sroa_idx, align 8
  %.sroa.18.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.i, ptr %.sroa.18.8..sroa_idx, align 8
  %.sroa.20.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.ab, ptr %.sroa.20.8..sroa_idx, align 8
  %.sroa.22.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.am, ptr %.sroa.22.8..sroa_idx, align 8
  %.sroa.24.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.ab, ptr %.sroa.24.8..sroa_idx, align 8
  %i.an = zext nneg i16 %i.k to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 318
  %i.ap = load i16, ptr %i.ao, align 2, !noundef !3
  %i.aq = zext i16 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.an, %i.aq
  %i.as = icmp samesign ult i64 %i.ar, 12
  br i1 %i.as, label %bb.p, label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.at = zext nneg i16 %i.ag to i64
  %i.au = add nsw i64 %i.at, -1                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 320
  %i.aw = icmp ult i16 %i.ag, 13
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !169, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ad, ptr %i.f, align 8
  %.sroa.12.8..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ae, ptr %.sroa.12.8..sroa_idx4, align 8
  %.sroa.16.8..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.au, ptr %.sroa.16.8..sroa_idx6, align 8
  %.sroa.18.8..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.ay, ptr %.sroa.18.8..sroa_idx8, align 8
  %.sroa.20.8..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.ab, ptr %.sroa.20.8..sroa_idx10, align 8
  %.sroa.22.8..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.i, ptr %.sroa.22.8..sroa_idx12, align 8
  %.sroa.24.8..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %i.ab, ptr %.sroa.24.8..sroa_idx14, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 318
  %i.ba = load i16, ptr %i.az, align 2, !noundef !3
  %i.bb = zext i16 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.bb, 1
  %i.bd = zext nneg i16 %i.z to i64
  %i.be = add nuw nsw i64 %i.bc, %i.bd
  %i.bf = icmp samesign ult i64 %i.be, 12
  br i1 %i.bf, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE15bulk_steal_leftCs8l9P2lL5xvY_16lance_index_core(ptr noalias noundef align 8 dereferenceable(56) %i.f, i64 noundef 1)
          to label %bb.i unwind label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.bg = add i64 %i.o, 1
  store ptr %i.i, ptr %i.g, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ab, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.bg, ptr %i.bi, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  invoke fastcc void @_RINvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB7_16BalancingContextmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECs8l9P2lL5xvY_16lance_index_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.f, i64 noundef 1, i64 noundef %i.o)
          to label %bb.j unwind label %bb.ac

bb.l:                                             ; preds = %bb.o, %bb.j, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !3 ; 2 uses
  %i.bl = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !3
  %i.bo = load ptr, ptr %i.bl, align 8, !noalias !170, !noundef !3 ; 3 uses
  %.not.i22 = icmp eq ptr %i.bo, null
  br i1 %.not.i22, label %.sink.split, label %bb.q

bb.m:                                             ; preds = %bb.f
  invoke fastcc void @_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE16bulk_steal_rightCs8l9P2lL5xvY_16lance_index_core(ptr noalias noundef align 8 dereferenceable(56) %i.e, i64 noundef 1)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %bb.m
  store ptr %i.i, ptr %i.g, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ab, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
end_hunk_0
begin_hunk_1_@_RINvMsd_NtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_arrayNtB6_12BooleanArray21from_trusted_len_iterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCscI6d9CVNmLh_4core6option6OptionbEEB2q_ECs8l9P2lL5xvY_16lance_index_core:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !231
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !234
  store i64 1, ptr %i.a, align 8, !noalias !234
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.be, align 8, !noalias !234
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ab, ptr %i.bf, align 8, !noalias !234
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !234
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !234
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bg = load <2 x i64>, ptr %i.l, align 16
  store <2 x i64> %i.bg, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !234
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !235
  %i.bh = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #27, !noalias !235 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.m, label %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferINtB5_4IntoNtNtBC_9immutable6BufferE4intoCs8l9P2lL5xvY_16lance_index_core.exit.i, !prof !4

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26
          to label %.noexc.i.i.i unwind label %bb.n, !noalias !234

.noexc.i.i.i:                                     ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs8l9P2lL5xvY_16lance_index_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #28
          to label %.body26.thread unwind label %bb.o, !noalias !234

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #29, !noalias !234
  unreachable

_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferINtB5_4IntoNtNtBC_9immutable6BufferE4intoCs8l9P2lL5xvY_16lance_index_core.exit.i: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  store ptr %i.bh, ptr %i.d, align 8, !alias.scope !236, !noalias !237
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ab, ptr %i.bl, align 8, !alias.scope !236, !noalias !237
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.bm, align 8, !alias.scope !236, !noalias !237
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.q)
          to label %.noexc28 unwind label %.body26.thread60

.noexc28:                                         ; preds = %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferINtB5_4IntoNtNtBC_9immutable6BufferE4intoCs8l9P2lL5xvY_16lance_index_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !231
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %.noexc29 unwind label %.body26.thread60

.noexc29:                                         ; preds = %.noexc28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !231, !noundef !3
  %.not.i = icmp eq i64 %i.bo, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !231
  br i1 %.not.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.noexc29
  store ptr null, ptr %i.h, align 8, !alias.scope !230, !noalias !238
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.bp = load ptr, ptr %i.b, align 8, !alias.scope !244, !noalias !231, !nonnull !3, !noundef !3
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !245
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.s unwind label %.body26.thread60

bb.r:                                             ; preds = %.noexc29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !238
  br label %bb.s

.body26.thread60:                                 ; preds = %bb.q, %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferINtB5_4IntoNtNtBC_9immutable6BufferE4intoCs8l9P2lL5xvY_16lance_index_core.exit.i, %.noexc28
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body26.thread

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_arrayNtB4_12BooleanArray3new(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

.body26.thread:                                   ; preds = %bb.n, %.body26.thread60
  %eh.lpad-body2759 = phi { ptr, i32 } [ %lpad.thr_comm, %.body26.thread60 ], [ %i.bj, %bb.n ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.bs = load ptr, ptr %i.j, align 8, !alias.scope !250, !nonnull !3, !noundef !3
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !250
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionbEEECs8l9P2lL5xvY_16lance_index_core.exit

bb.t:                                             ; preds = %.body26.thread
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionbEEECs8l9P2lL5xvY_16lance_index_core.exit unwind label %bb.u

bb.u:                                             ; preds = %.body, %bb.t
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %bb.c, %bb.i, %.thread51
  %.sroa.06.156 = phi i1 [ true, %.thread51 ], [ false, %bb.i ], [ false, %bb.c ]
  %.pn.pn55 = phi { ptr, i32 } [ %i.v, %.thread51 ], [ %i.ba, %bb.i ], [ %i.w, %bb.c ] ; 2 uses
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferECs8l9P2lL5xvY_16lance_index_core.exit34 unwind label %bb.u

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferECs8l9P2lL5xvY_16lance_index_core.exit34: ; preds = %.body
  br i1 %.sroa.06.156, label %bb.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionbEEECs8l9P2lL5xvY_16lance_index_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionbEEECs8l9P2lL5xvY_16lance_index_core.exit: ; preds = %.body26.thread, %bb.t, %bb.w, %bb.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferECs8l9P2lL5xvY_16lance_index_core.exit34
  %.pn.pn.pn49 = phi { ptr, i32 } [ %.pn.pn55, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferECs8l9P2lL5xvY_16lance_index_core.exit34 ], [ %.pn.pn.pn50, %bb.w ], [ %.pn.pn.pn50, %bb.v ], [ %eh.lpad-body2759, %.body26.thread ], [ %eh.lpad-body2759, %bb.t ]
  resume { ptr, i32 } %.pn.pn.pn49

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferECs8l9P2lL5xvY_16lance_index_core.exit34, %.thread
  %.pn.pn.pn50 = phi { ptr, i32 } [ %i.u, %.thread ], [ %.pn.pn55, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferECs8l9P2lL5xvY_16lance_index_core.exit34 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val25 = load i64, ptr %i.bw, align 8, !alias.scope !251, !noundef !3 ; 2 uses
  %i.bx = icmp eq i64 %.val25, 0
  br i1 %i.bx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionbEEECs8l9P2lL5xvY_16lance_index_core.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val24 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %.val25, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !252
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionbEEECs8l9P2lL5xvY_16lance_index_core.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs8l9P2lL5xvY_16lance_index_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !265, !noundef !3 ; 3 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !265 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %or.cond.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.i, label %_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.thread.i

_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.thread.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !265, !nonnull !3, !noundef !3
  %i.j = load i64, ptr %i.h, align 8, !range !266, !alias.scope !265, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.e, i64 noundef %i.j) #27, !noalias !265
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesECs8l9P2lL5xvY_16lance_index_core.exit

_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.i: ; preds = %bb.a
  %i.k = icmp eq ptr %i.b, null
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesECs8l9P2lL5xvY_16lance_index_core.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.i
  %i.l = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !267
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesECs8l9P2lL5xvY_16lance_index_core.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4YAKbnGhBJc_12arrow_buffer5alloc10AllocationEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesECs8l9P2lL5xvY_16lance_index_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesECs8l9P2lL5xvY_16lance_index_core.exit: ; preds = %_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.thread.i, %_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECs8l9P2lL5xvY_16lance_index_core(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetmNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs8l9P2lL5xvY_16lance_index_core.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = shl i64 %.8.val, 2
  %i.c = icmp slt i64 %.8.val, 4611686018427387900
  tail call void @llvm.assume(i1 %i.c)
  %i.d = and i64 %i.b, -16                        ; 2 uses
  %i.e = add i64 %i.d, 16                         ; 2 uses
  %i.f = add nsw i64 %.8.val, 17
  %i.g = add i64 %i.f, %i.e                       ; 4 uses
  %i.h = icmp uge i64 %i.g, %i.e
  %i.i = icmp ult i64 %i.g, 9223372036854775793
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetmNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs8l9P2lL5xvY_16lance_index_core.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.k = sub nuw nsw i64 -16, %i.d
  %i.l = getelementptr inbounds i8, ptr %.0.val, i64 %i.k
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 16) #27
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetmNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs8l9P2lL5xvY_16lance_index_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetmNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs8l9P2lL5xvY_16lance_index_core.exit: ; preds = %bb.a, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionECs8l9P2lL5xvY_16lance_index_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !3 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapECs8l9P2lL5xvY_16lance_index_core.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapECs8l9P2lL5xvY_16lance_index_core.exit: ; preds = %bb.h, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8l9P2lL5xvY_16lance_index_core.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !280, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !280, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8l9P2lL5xvY_16lance_index_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i, i64 %.sroa.0.07.i.i.i.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.h = load i64, ptr %i.f, align 8, !range !284, !alias.scope !285, !noalias !280, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  switch i64 %i.h, label %bb.c [
    i64 0, label %bb.e
    i64 1, label %bb.g
  ]

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %.val.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !285, !noalias !280 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !285, !noalias !280, !nonnull !3, !noundef !3
  %i.l = shl nuw i64 %.val.i.i.i.i.i.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 2) #27, !noalias !286
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %.val2.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !285, !noalias !280 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !285, !noalias !280, !nonnull !3, !noundef !3
  %i.o = shl nuw i64 %.val2.i.i.i.i.i.i, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 2) #27, !noalias !286
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !285, !noalias !280, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #27, !noalias !286
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.p = icmp eq i64 %i.g, %.val1.i.i
  br i1 %i.p, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8l9P2lL5xvY_16lance_index_core.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8l9P2lL5xvY_16lance_index_core.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i, %bb.b
  %i.q = icmp eq i64 %i.a, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapECs8l9P2lL5xvY_16lance_index_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8l9P2lL5xvY_16lance_index_core.exit.i.i
  %i.r = mul nuw i64 %i.a, 40
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !280
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapECs8l9P2lL5xvY_16lance_index_core.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs8l9P2lL5xvY_16lance_index_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !315, !noundef !3 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  switch i64 %i.a, label %bb.c [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit
    i64 1, label %bb.e
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit
    i64 3, label %bb.g
    i64 4, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !318, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !319, !nonnull !3, !noundef !3
  %i.f = shl nuw i64 %.val1.i.i.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 2) #27, !noalias !320
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !321, !noundef !3 ; 2 uses
  %i.h = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !319, !nonnull !3, !noundef !3
  %i.j = shl nuw i64 %.val3.i.i.i, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 2) #27, !noalias !322
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit

bb.g:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !319, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef 8192, i64 noundef 8) #27, !noalias !319
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.b, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.m = load i64, ptr %i.l, align 8, !range !8, !alias.scope !323, !noundef !3 ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit6, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  switch i64 %i.m, label %bb.i [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit6
    i64 1, label %bb.k
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit6
    i64 3, label %bb.m
    i64 4, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit6
  ]

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i4 = load i64, ptr %i.o, align 8, !alias.scope !326, !noundef !3 ; 2 uses
  %i.p = icmp eq i64 %.val1.i.i.i4, 0
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit6, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i.i5 = load ptr, ptr %i.q, align 8, !alias.scope !327, !nonnull !3, !noundef !3
  %i.r = shl nuw i64 %.val1.i.i.i4, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i5, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 2) #27, !noalias !328
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit6

bb.k:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val3.i.i.i2 = load i64, ptr %i.s, align 8, !alias.scope !329, !noundef !3 ; 2 uses
  %i.t = icmp eq i64 %.val3.i.i.i2, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit6, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2.i.i.i3 = load ptr, ptr %i.u, align 8, !alias.scope !327, !nonnull !3, !noundef !3
  %i.v = shl nuw i64 %.val3.i.i.i2, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i3, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 2) #27, !noalias !330
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit6

bb.m:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val4.i.i.i1 = load ptr, ptr %i.w, align 8, !alias.scope !327, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i1, i64 noundef 8192, i64 noundef 8) #27, !noalias !327
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit6: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterEECs8l9P2lL5xvY_16lance_index_core.exit, %bb.h, %bb.h, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container4IterECs8l9P2lL5xvY_16lance_index_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !341, !noundef !3
end_hunk_1
begin_hunk_2_@_RNvMs6_NtCs8l9P2lL5xvY_16lance_index_core6scalarNtB5_18OldIndexDataFilter15retain_old_rows:bb.a
  invoke fastcc void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldmTmuEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB1I_7HashSetmNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtBX_6traits7collect6ExtendmE6extendNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0NCINvNvNtNtB3l_8iterator8Iterator8for_each4callB1u_NCINvXs1i_NtB1K_3mapINtB5F_7HashMapmuB2s_EIB3h_B1u_E6extendINtBT_3MapB3V_B1z_EE0E0E0INtB7_5FnMutTumEE8call_mutCs8l9P2lL5xvY_16lance_index_core(ptr nonnull readonly align 8 dereferenceable(8) %i.i, i32 noundef %i.bz)
          to label %.noexc7.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i, !noalias !1175

.noexc7.i.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i5.i.i.i.i.i.i.i.i
  %i.ca = invoke { i32, i32 } @_RNvXsd_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB5_4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bt)
          to label %.noexc8.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i, !noalias !1175 ; 2 uses

.noexc8.i.i.i.i.i.i.i.i:                          ; preds = %.noexc7.i.i.i.i.i.i.i.i
  %i.cb = extractvalue { i32, i32 } %i.ca, 0
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %.lr.ph.i5.i.i.i.i.i.i.i.i, label %_RINvYNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECs8l9P2lL5xvY_16lance_index_core.exit.i

.body.i.i.i.i.i:                                  ; preds = %bb.t, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i, %bb.j
  %.sink.i.i.i.i.i = phi ptr [ %i.o, %bb.t ], [ %i.j, %bb.j ], [ %i.j, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.j, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i ], [ %i.j, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i ], [ %i.j, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i ]
  %eh.lpad-body6.i.i.i.i.i = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.bi, %bb.j ], [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %lpad.loopexit10.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i ], [ %lpad.loopexit13.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs8l9P2lL5xvY_16lance_index_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %.sink.i.i.i.i.i), !noalias !1187
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !noalias !1157
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val7.i.i.i = load i64, ptr %i.cd, align 8, !noalias !1157, !noundef !3
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECs8l9P2lL5xvY_16lance_index_core(ptr %.val.i.i.i, i64 %.val7.i.i.i) #28, !noalias !1161
  br label %common.resume.i

bb.t:                                             ; preds = %bb.f, %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

common.resume.i:                                  ; preds = %bb.ak, %bb.u, %.body.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.mq, %bb.ak ], [ %i.cf, %bb.u ], [ %eh.lpad-body6.i.i.i.i.i, %.body.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.u:                                             ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs8l9P2lL5xvY_16lance_index_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.o) #28, !noalias !1187
  br label %common.resume.i

_RINvYNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECs8l9P2lL5xvY_16lance_index_core.exit.i: ; preds = %.noexc8.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvXs0_NtBU_4iterNtB2E_4IterB1K_4folduNCINvNtNtB1Q_8adapters3map8map_foldmTmuEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB3X_7HashSetmNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1O_7collect6ExtendmE6extendB2O_E0NCINvNvB1K_8for_each4callB3J_NCINvXs1i_NtB3Z_3mapINtB6L_7HashMapmuB4H_EIB5w_B3J_E6extendINtB3e_3MapB2O_B3O_EE0E0E0E0ECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i.i.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs8l9P2lL5xvY_16lance_index_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.j), !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !1188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1157
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1156
  store ptr %i.n, ptr %i.g, align 8, !noalias !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1190
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.cg = load ptr, ptr %1, align 8, !alias.scope !1194, !noalias !1195, !noundef !3 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10extract_ifNCINvB2_6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullECs8l9P2lL5xvY_16lance_index_core.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_RINvYNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECs8l9P2lL5xvY_16lance_index_core.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !1194, !noalias !1195, !noundef !3 ; 5 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RINvMsq_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1l_14LeafOrInternalE11lower_boundmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.preheader

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.preheader: ; preds = %bb.v
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol.loopexit, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.preheader, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol
  %.sroa.0.0.i18.i.i.i.i.prol = phi ptr [ %i.cl, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol ], [ %i.cg, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.preheader ]
  %.sroa.3.0.i17.i.i.i.i.prol = phi i64 [ %i.cm, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol ], [ %i.ci, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol ], [ 0, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18.i.i.i.i.prol, i64 320
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !1196, !nonnull !3, !noundef !3 ; 3 uses
  %i.cm = add i64 %.sroa.3.0.i17.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol.loopexit, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol, !llvm.loop !1099

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol.loopexit: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.preheader
  %.lcssa89.unr = phi ptr [ poison, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.preheader ], [ %i.cl, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol ]
  %.sroa.0.0.i18.i.i.i.i.unr = phi ptr [ %i.cg, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.preheader ], [ %i.cl, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol ]
  %.sroa.3.0.i17.i.i.i.i.unr = phi i64 [ %i.ci, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.preheader ], [ %i.cm, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol ]
  %i.cn = icmp ult i64 %i.ci, 8
  br i1 %i.cn, label %_RINvMsq_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1l_14LeafOrInternalE11lower_boundmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol.loopexit, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i
  %.sroa.0.0.i18.i.i.i.i = phi ptr [ %i.dd, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i ], [ %.sroa.0.0.i18.i.i.i.i.unr, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol.loopexit ]
  %.sroa.3.0.i17.i.i.i.i = phi i64 [ %i.de, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i ], [ %.sroa.3.0.i17.i.i.i.i.unr, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol.loopexit ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18.i.i.i.i, i64 320
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1196, !nonnull !3, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 320
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !1196, !nonnull !3, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 320
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !1196, !nonnull !3, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 320
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !1196, !nonnull !3, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 320
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !1196, !nonnull !3, !noundef !3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 320
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !1196, !nonnull !3, !noundef !3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 320
  %i.db = load ptr, ptr %i.da, align 8, !noalias !1196, !nonnull !3, !noundef !3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 320
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !1196, !nonnull !3, !noundef !3 ; 2 uses
  %i.de = add i64 %.sroa.3.0.i17.i.i.i.i, -8      ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_RINvMsq_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1l_14LeafOrInternalE11lower_boundmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i

_RINvMsq_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1l_14LeafOrInternalE11lower_boundmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol.loopexit, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i, %bb.v
  %.sroa.0.0.i.lcssa.i.i.i.i = phi ptr [ %i.cg, %bb.v ], [ %.lcssa89.unr, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.prol.loopexit ], [ %i.dd, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1j_14LeafOrInternalE22find_lower_bound_indexmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, i8 0, i64 16, i1 false), !noalias !1197
  br label %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10extract_ifNCINvB2_6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullECs8l9P2lL5xvY_16lance_index_core.exit.i.i

_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10extract_ifNCINvB2_6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullECs8l9P2lL5xvY_16lance_index_core.exit.i.i: ; preds = %_RINvMsq_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1l_14LeafOrInternalE11lower_boundmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i, %_RINvYNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECs8l9P2lL5xvY_16lance_index_core.exit.i
  %.sroa.5.0.i.i.i = phi ptr [ %1, %_RINvMsq_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1l_14LeafOrInternalE11lower_boundmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i ], [ null, %_RINvYNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECs8l9P2lL5xvY_16lance_index_core.exit.i ]
  %.sroa.7.0.i.i.i = phi ptr [ %.sroa.0.0.i.lcssa.i.i.i.i, %_RINvMsq_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1l_14LeafOrInternalE11lower_boundmECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i ], [ null, %_RINvYNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECs8l9P2lL5xvY_16lance_index_core.exit.i ] ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.g, ptr %i.f, align 8, !alias.scope !1191, !noalias !1198
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.0.0.i.i.i, ptr %i.dg, align 8, !alias.scope !1191, !noalias !1198
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1191, !noalias !1198
  %.sroa.52.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, i64 16, i1 false), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i1.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1201
  %.sroa.6.sroa.0.0.copyload46.i.i27.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1202, !noalias !1203
  %.sroa.6.sroa.5.0.copyload47.i.i28.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !1202, !noalias !1203
  store ptr null, ptr %.sroa.52.0..sroa_idx.i.i.i, align 8, !alias.scope !1202, !noalias !1203
  %.not48.i.i29.i.i.i = icmp eq ptr %.sroa.7.0.i.i.i, null
  br i1 %.not48.i.i29.i.i.i, label %_RNvXsU_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_9ExtractIfmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullNCINvMsi_B5_INtB5_8BTreeMapmB19_E6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0ENtNtNtNtB28_4iter6traits8iterator8Iterator4nextCs8l9P2lL5xvY_16lance_index_core.exit.thread.i.i.i, label %.lr.ph.i.i.preheader.lr.ph.i.i.i

.lr.ph.i.i.preheader.lr.ph.i.i.i:                 ; preds = %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10extract_ifNCINvB2_6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullECs8l9P2lL5xvY_16lance_index_core.exit.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.432.8..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.432.i.i.i.i.i.i.i, i64 4
  %.sroa.434.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.517.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.718.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.aj, %.lr.ph.i.i.preheader.lr.ph.i.i.i
  %.sroa.6.sroa.5.0.copyload47.i.i33.i.i.i = phi i64 [ %.sroa.6.sroa.5.0.copyload47.i.i28.i.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %.sroa.6.sroa.5.0.copyload47.i.i.i.i.i, %bb.aj ]
  %.sroa.6.sroa.0.0.copyload46.i.i32.i.i.i = phi i64 [ %.sroa.6.sroa.0.0.copyload46.i.i27.i.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %.sroa.6.sroa.0.0.copyload46.i.i.i.i.i, %bb.aj ]
  %.promoted.i.i31.i.i.i = phi ptr [ %.sroa.7.0.i.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.aj ]
  %.val.i30.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %.val.i.i.i.i, %bb.aj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.6.sroa.5.0.copyload51.i.i.i.i.i = phi i64 [ %.sroa.714.0.i.i.i.i.i, %_RNvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i ], [ %.sroa.6.sroa.5.0.copyload47.i.i33.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.6.sroa.0.0.copyload50.i.i.i.i.i = phi i64 [ 0, %_RNvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i ], [ %.sroa.6.sroa.0.0.copyload46.i.i32.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.013.04549.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i, %_RNvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i ], [ %.promoted.i.i31.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.013.04549.i.i.i.i.i, i64 318
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !1206, !noundef !3
  %i.dm = zext i16 %i.dl to i64
  %i.dn = icmp ult i64 %.sroa.6.sroa.5.0.copyload51.i.i.i.i.i, %i.dm
  br i1 %i.dn, label %bb.x, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i, %bb.w
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %i.do, %bb.w ], [ %.sroa.013.04549.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i = phi i64 [ %i.dq, %bb.w ], [ %.sroa.6.sroa.0.0.copyload50.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.do = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !noalias !1207, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsU_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_9ExtractIfmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullNCINvMsi_B5_INtB5_8BTreeMapmB19_E6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0ENtNtNtNtB28_4iter6traits8iterator8Iterator4nextCs8l9P2lL5xvY_16lance_index_core.exit.thread.i.i.i, label %bb.w

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.w
  %i.dp = zext i16 %i.ds to i64
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dq = add i64 %.sroa.5.021.i.i.i.i.i.i, 1     ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 316
  %i.ds = load i16, ptr %i.dr, align 4, !noalias !1207 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 318
  %i.du = load i16, ptr %i.dt, align 2, !noalias !1206, !noundef !3
  %i.dv = icmp ult i16 %i.ds, %i.du
  br i1 %i.dv, label %._crit_edge.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.x:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i = phi i64 [ %i.dp, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.sroa.6.sroa.5.0.copyload51.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.8.0.ph.i.i.i.i.i = phi i64 [ %i.dq, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.sroa.6.sroa.0.0.copyload50.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 8 uses
  %.sroa.0.0.ph.i.i.i.i.i = phi ptr [ %i.do, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.sroa.013.04549.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i30.i.i.i) ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i, i64 272
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.sroa.10.0.ph.i.i.i.i.i
  %.val16.i.i.i.i.i = load i32, ptr %i.dx, align 4, !noalias !1208 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.val.i30.i.i.i, align 8, !noalias !1208, !nonnull !3, !align !13, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1209, !noalias !1208, !noundef !3
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %.loopexit.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !1209, !noalias !1208, !noundef !3 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 40
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !1209, !noalias !1208, !noundef !3 ; 2 uses
  %i.ed = xor i64 %.val.i.i.i.i.i.i.i.i, 8317987319222330741
  %i.ee = xor i64 %.val5.i.i.i.i.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.ef = xor i64 %.val.i.i.i.i.i.i.i.i, 7816392313619706465
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %.val16.i.i.i.i.i to i64 ; 2 uses
  %i.eg = or disjoint i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i, 288230376151711744
  %i.eh = xor i64 %.val5.i.i.i.i.i.i.i.i, %.pre.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ei = xor i64 %i.eh, 8098989879002948979      ; 3 uses
  %i.ej = add i64 %i.ee, %i.ed                    ; 3 uses
  %i.ek = add i64 %i.ei, %i.ef                    ; 2 uses
  %i.el = call noundef i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 13)
  %i.em = xor i64 %i.el, %i.ej                    ; 3 uses
  %i.en = call noundef i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 16)
  %i.eo = xor i64 %i.en, %i.ek                    ; 3 uses
  %i.ep = call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 32)
  %i.eq = add i64 %i.em, %i.ek                    ; 3 uses
  %i.er = add i64 %i.eo, %i.ep                    ; 2 uses
  %i.es = call noundef i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 17)
  %i.et = xor i64 %i.eq, %i.es                    ; 3 uses
  %i.eu = call noundef i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 21)
  %i.ev = xor i64 %i.eu, %i.er                    ; 3 uses
  %i.ew = call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 32)
  %i.ex = xor i64 %i.er, %i.eg
  %i.ey = xor i64 %i.ew, 255
  %i.ez = add i64 %i.ex, %i.et                    ; 3 uses
  %i.fa = add i64 %i.ey, %i.ev                    ; 2 uses
  %i.fb = call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 13)
  %i.fc = xor i64 %i.ez, %i.fb                    ; 3 uses
  %i.fd = call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 16)
  %i.fe = xor i64 %i.fa, %i.fd                    ; 3 uses
  %i.ff = call noundef i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 32)
  %i.fg = add i64 %i.fc, %i.fa                    ; 3 uses
  %i.fh = add i64 %i.fe, %i.ff                    ; 2 uses
  %i.fi = call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 17)
  %i.fj = xor i64 %i.fg, %i.fi                    ; 3 uses
  %i.fk = call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 21)
  %i.fl = xor i64 %i.fk, %i.fh                    ; 3 uses
  %i.fm = call noundef i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 32)
  %i.fn = add i64 %i.fj, %i.fh                    ; 3 uses
  %i.fo = add i64 %i.fl, %i.fm                    ; 2 uses
  %i.fp = call noundef i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 13)
  %i.fq = xor i64 %i.fp, %i.fn                    ; 3 uses
  %i.fr = call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 16)
  %i.fs = xor i64 %i.fr, %i.fo                    ; 3 uses
  %i.ft = call noundef i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 32)
  %i.fu = add i64 %i.fq, %i.fo                    ; 3 uses
  %i.fv = add i64 %i.fs, %i.ft                    ; 2 uses
  %i.fw = call noundef i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 17)
  %i.fx = xor i64 %i.fw, %i.fu                    ; 3 uses
  %i.fy = call noundef i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 21)
  %i.fz = xor i64 %i.fy, %i.fv                    ; 3 uses
  %i.ga = call noundef i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 32)
  %i.gb = add i64 %i.fx, %i.fv
  %i.gc = add i64 %i.fz, %i.ga                    ; 2 uses
  %i.gd = call noundef i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 13)
  %i.ge = xor i64 %i.gd, %i.gb                    ; 3 uses
  %i.gf = call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 16)
  %i.gg = xor i64 %i.gf, %i.gc                    ; 2 uses
  %i.gh = add i64 %i.ge, %i.gc                    ; 3 uses
  %i.gi = call noundef i64 @llvm.fshl.i64(i64 %i.ge, i64 %i.ge, i64 17)
  %i.gj = call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 21)
  %i.gk = call noundef i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 32)
  %i.gl = xor i64 %i.gi, %i.gj
  %i.gm = xor i64 %i.gl, %i.gk
  %i.gn = xor i64 %i.gm, %i.gh                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.go = lshr i64 %i.gn, 57
  %i.gp = trunc nuw nsw i64 %i.go to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !1212, !noalias !1213, !noundef !3 ; 2 uses
  %i.gs = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !alias.scope !1212, !noalias !1213, !nonnull !3, !noundef !3 ; 2 uses
  %i.gt = insertelement <16 x i8> poison, i8 %i.gp, i64 0
  %i.gu = shufflevector <16 x i8> %i.gt, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.y ], [ %i.hl, %bb.ab ]
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gn, %bb.y ], [ %i.hm, %bb.ab ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %i.gr ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gv, align 1, !noalias !1214 ; 2 uses
  %i.gw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i, %i.gu
  %i.gx = bitcast <16 x i1> %i.gw to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gx, 0
  br i1 %.not.i.not32.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i4.i

.lr.ph.i.i.i.i.i.i.i.i4.i:                        ; preds = %bb.z, %bb.aa
  %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hk, %bb.aa ], [ %i.gx, %bb.z ] ; 3 uses
  %i.gy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i, i1 true)
  %i.gz = zext nneg i16 %i.gy to i64
  %i.ha = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, %i.gz
  %i.hb = and i64 %i.ha, %i.gr
  %i.hc = sub nsw i64 0, %i.hb
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.hc
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -4
  %.val2.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.he, align 4, !noalias !1215, !noundef !3
  %i.hf = icmp eq i32 %.val16.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i
  br i1 %i.hf, label %_RNCINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB8_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE6retainNCINvMs6_B1d_NtB1d_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0Cs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i, label %bb.aa, !prof !5

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.aa, %bb.z
  %i.hg = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hh = bitcast <16 x i1> %i.hg to i16
  %i.hi = icmp eq i16 %i.hh, 0
  br i1 %i.hi, label %bb.ab, label %.loopexit.i.i.i.i.i, !prof !4

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i4.i
  %i.hj = add i16 %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i, -1
  %i.hk = and i16 %i.hj, %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hk, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i4.i

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.hl = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.hm = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, %i.hl
  br label %bb.z

_RNCINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB8_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE6retainNCINvMs6_B1d_NtB1d_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0Cs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i4.i
  %i.hn = icmp eq i64 %.sroa.8.0.ph.i.i.i.i.i, 0
  br i1 %i.hn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_RNCINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB8_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE6retainNCINvMs6_B1d_NtB1d_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0Cs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i
  %i.ho = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i, 1
  br label %_RNvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i

bb.ad:                                            ; preds = %_RNCINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB8_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE6retainNCINvMs6_B1d_NtB1d_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0Cs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i
  %i.hp = icmp slt i64 %.sroa.10.0.ph.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.hp)
  %i.hq = getelementptr i8, ptr %.sroa.0.0.ph.i.i.i.i.i, i64 328
  %i.hr = getelementptr [8 x i8], ptr %i.hq, i64 %.sroa.10.0.ph.i.i.i.i.i ; 2 uses
  %xtraiter90 = and i64 %.sroa.8.0.ph.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ad, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.prol = phi ptr [ %i.hs, %.prol.preheader ], [ %i.hr, %bb.ad ]
  %.sroa.019.0.in.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.8.0.ph.i.i.i.i.i, %bb.ad ]
  %prol.iter92 = phi i64 [ %prol.iter92.next, %.prol.preheader ], [ 0, %bb.ad ]
  %.sroa.019.0.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.prol, align 8, !noalias !1216, !nonnull !3, !noundef !3 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter92.next = add i64 %prol.iter92, 1     ; 2 uses
  %prol.iter92.cmp.not = icmp eq i64 %prol.iter92.next, %xtraiter90
  br i1 %prol.iter92.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1129

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ad
  %.sroa.017.0.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ad ], [ %.sroa.017.0.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.unr = phi ptr [ %i.hr, %bb.ad ], [ %i.hs, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.unr = phi i64 [ %.sroa.8.0.ph.i.i.i.i.i, %bb.ad ], [ %.sroa.019.0.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ht = icmp ult i64 %.sroa.8.0.ph.i.i.i.i.i, 8
  br i1 %i.ht, label %_RNvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i = phi ptr [ %i.ic, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i, align 8, !noalias !1216, !nonnull !3, !noundef !3
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i, i64 320
  %.sroa.017.0.i.i.i.i.i.i.1 = load ptr, ptr %i.hu, align 8, !noalias !1216, !nonnull !3, !noundef !3
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.1, i64 320
  %.sroa.017.0.i.i.i.i.i.i.2 = load ptr, ptr %i.hv, align 8, !noalias !1216, !nonnull !3, !noundef !3
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.2, i64 320
  %.sroa.017.0.i.i.i.i.i.i.3 = load ptr, ptr %i.hw, align 8, !noalias !1216, !nonnull !3, !noundef !3
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.3, i64 320
  %.sroa.017.0.i.i.i.i.i.i.4 = load ptr, ptr %i.hx, align 8, !noalias !1216, !nonnull !3, !noundef !3
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.4, i64 320
  %.sroa.017.0.i.i.i.i.i.i.5 = load ptr, ptr %i.hy, align 8, !noalias !1216, !nonnull !3, !noundef !3
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.5, i64 320
  %.sroa.017.0.i.i.i.i.i.i.6 = load ptr, ptr %i.hz, align 8, !noalias !1216, !nonnull !3, !noundef !3
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.6, i64 320
  %.sroa.019.0.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.7 = load ptr, ptr %i.ia, align 8, !noalias !1216, !nonnull !3, !noundef !3 ; 2 uses
  %i.ib = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.7, 0
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.7, i64 320
  br i1 %i.ib, label %_RNvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i, label %.new

_RNvMsp_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i: ; preds = %.prol.loopexit, %.new, %bb.ac
  %.sroa.714.0.i.i.i.i.i = phi i64 [ %i.ho, %bb.ac ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 2 uses
  %.sroa.013.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i, %bb.ac ], [ %.sroa.017.0.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.7, %.new ]
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1217, !noalias !1203
  store i64 %.sroa.714.0.i.i.i.i.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !1217, !noalias !1203
  store ptr null, ptr %.sroa.52.0..sroa_idx.i.i.i, align 8, !alias.scope !1217, !noalias !1203
  br label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.x, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.id = load ptr, ptr %i.dg, align 8, !alias.scope !1217, !noalias !1203, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !noalias !1208, !noundef !3
  %i.if = add i64 %i.ie, -1
  store i64 %i.if, ptr %i.id, align 8, !noalias !1208
  %i.ig = icmp eq i64 %.sroa.8.0.ph.i.i.i.i.i, 0
end_hunk_2
begin_hunk_3_@_RNvMs6_NtCs8l9P2lL5xvY_16lance_index_core6scalarNtB5_18OldIndexDataFilter15retain_old_rows:bb.a
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 320
  %i.kk = icmp ult i16 %i.kh, 12
  call void @llvm.assume(i1 %i.kk)
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.ki
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !1221, !nonnull !3, !noundef !3 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 318
  %i.ko = load i16, ptr %i.kn, align 2, !noalias !1221, !noundef !3 ; 2 uses
  %i.kp = zext nneg i16 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 320
  %i.kr = icmp ult i16 %i.ko, 12
  call void @llvm.assume(i1 %i.kr)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kp
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !1221, !nonnull !3, !noundef !3 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 318
  %i.kv = load i16, ptr %i.ku, align 2, !noalias !1221, !noundef !3 ; 2 uses
  %i.kw = zext nneg i16 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 320
  %i.ky = icmp ult i16 %i.kv, 12
  call void @llvm.assume(i1 %i.ky)
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kw
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !1221, !nonnull !3, !noundef !3 ; 2 uses
  %i.lb = add i64 %.sroa.05.07.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1k_14LeafOrInternalE14last_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1k_14LeafOrInternalE14last_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.af
  %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ik, %bb.af ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.la, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i, i64 318
  %i.le = load i16, ptr %i.ld, align 2, !noalias !1221, !noundef !3 ; 2 uses
  %i.lf = zext i16 %i.le to i64
  %i.lg = icmp ne i16 %i.le, 0
  call void @llvm.assume(i1 %i.lg)
  %i.lh = add nsw i64 %i.lf, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1222
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !1222
  store i64 0, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1222
  store i64 %i.lh, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1222
  invoke fastcc void @_RINvMs_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCINvMsV_NtB7_3mapINtB3q_14ExtractIfInnermB1M_NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullE4nextNCINvMsi_B3q_INtB3q_8BTreeMapmB1M_E6retainNCINvMs6_B1O_NtB1O_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtBb_5alloc6GlobalE0B7a_ECs8l9P2lL5xvY_16lance_index_core(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i.i.i)
          to label %.noexc5.i unwind label %bb.ak, !noalias !1219

.noexc5.i:                                        ; preds = %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1k_14LeafOrInternalE14last_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.a, align 8, !noalias !1222
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !1222, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.42.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1222 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1222 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, i64 318
  %i.lj = load i16, ptr %i.li, align 2, !noalias !1223, !noundef !3
  %i.lk = zext i16 %i.lj to i64
  %i.ll = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, %i.lk
  br i1 %i.ll, label %bb.ag, label %.lr.ph.i16.i.i.i.i.i.i.i

.lr.ph.i16.i.i.i.i.i.i.i:                         ; preds = %.noexc5.i, %.lr.ph.i16.i.i.i.i.i.i.i
  %.sroa.0.022.i.i.i.i.i.i.i.i = phi ptr [ %i.lm, %.lr.ph.i16.i.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.i.i, %.noexc5.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i = phi i64 [ %i.ln, %.lr.ph.i16.i.i.i.i.i.i.i ], [ %.sroa.42.0.copyload.i.i.i.i.i.i.i, %.noexc5.i ]
  %i.lm = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, align 8, !noalias !1224, !nonnull !3, !noundef !3 ; 3 uses
  %i.ln = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, i64 316
  %i.lp = load i16, ptr %i.lo, align 4, !noalias !1224 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 318
  %i.lr = load i16, ptr %i.lq, align 2, !noalias !1223, !noundef !3
  %i.ls = icmp ult i16 %i.lp, %i.lr
  br i1 %i.ls, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i16.i.i.i.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i16.i.i.i.i.i.i.i
  %i.lt = zext i16 %i.lp to i64
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %.noexc5.i
  %.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %i.lt, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.noexc5.i ] ; 5 uses
  %.sroa.515.0.i.i.i.i.i.i.i = phi i64 [ %i.ln, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.42.0.copyload.i.i.i.i.i.i.i, %.noexc5.i ] ; 5 uses
  %.sroa.014.0.i.i.i.i.i.i.i = phi ptr [ %i.lm, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.i.i, %.noexc5.i ] ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i.i.i.i.i, i64 272
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %.sroa.7.0.i.i.i.i.i.i.i ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i.i.i.i.i, i64 8
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %.sroa.7.0.i.i.i.i.i.i.i ; 2 uses
  %i.ly = load i32, ptr %i.lv, align 4, !noalias !1225, !noundef !3
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.lv, align 4, !noalias !1225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.432.8..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lx, i64 24, i1 false), !noalias !1220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.di, i64 24, i1 false), !noalias !1220
  %i.lz = icmp eq i64 %.sroa.515.0.i.i.i.i.i.i.i, 0
  br i1 %i.lz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ma = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i.i, 1
  br label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCINvMsV_NtB8_3mapINtB3z_14ExtractIfInnermB1N_NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullE4nextNCINvMsi_B3z_INtB3z_8BTreeMapmB1N_E6retainNCINvMs6_B1P_NtB1P_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtBc_5alloc6GlobalE0B7j_ECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.mb = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.mb)
  %i.mc = getelementptr i8, ptr %.sroa.014.0.i.i.i.i.i.i.i, i64 328
  %i.md = getelementptr [8 x i8], ptr %i.mc, i64 %.sroa.7.0.i.i.i.i.i.i.i ; 2 uses
  %xtraiter99 = and i64 %.sroa.515.0.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.prol.loopexit97, label %.prol.preheader96

.prol.preheader96:                                ; preds = %bb.ai, %.prol.preheader96
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.me, %.prol.preheader96 ], [ %i.md, %bb.ai ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader96 ], [ %.sroa.515.0.i.i.i.i.i.i.i, %bb.ai ]
  %prol.iter101 = phi i64 [ %prol.iter101.next, %.prol.preheader96 ], [ 0, %bb.ai ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !1226, !nonnull !3, !noundef !3 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter101.next = add i64 %prol.iter101, 1   ; 2 uses
  %prol.iter101.cmp.not = icmp eq i64 %prol.iter101.next, %xtraiter99
  br i1 %prol.iter101.cmp.not, label %.prol.loopexit97, label %.prol.preheader96, !llvm.loop !1152

.prol.loopexit97:                                 ; preds = %.prol.preheader96, %bb.ai
  %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ai ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader96 ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.md, %bb.ai ], [ %i.me, %.prol.preheader96 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.515.0.i.i.i.i.i.i.i, %bb.ai ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader96 ]
  %i.mf = icmp ult i64 %.sroa.515.0.i.i.i.i.i.i.i, 8
  br i1 %i.mf, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCINvMsV_NtB8_3mapINtB3z_14ExtractIfInnermB1N_NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullE4nextNCINvMsi_B3z_INtB3z_8BTreeMapmB1N_E6retainNCINvMs6_B1P_NtB1P_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtBc_5alloc6GlobalE0B7j_ECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i, label %.new98

.new98:                                           ; preds = %.prol.loopexit97, %.new98
  %.sroa.017.0.in.i.i.i.i.i.i.i.i = phi ptr [ %i.mo, %.new98 ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit97 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.7, %.new98 ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit97 ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i, align 8, !noalias !1226, !nonnull !3, !noundef !3
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.mg, align 8, !noalias !1226, !nonnull !3, !noundef !3
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.1, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.mh, align 8, !noalias !1226, !nonnull !3, !noundef !3
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.2, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.mi, align 8, !noalias !1226, !nonnull !3, !noundef !3
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.3, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.mj, align 8, !noalias !1226, !nonnull !3, !noundef !3
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.4, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.mk, align 8, !noalias !1226, !nonnull !3, !noundef !3
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.5, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ml, align 8, !noalias !1226, !nonnull !3, !noundef !3
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.6, i64 320
  %.sroa.019.0.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.mm, align 8, !noalias !1226, !nonnull !3, !noundef !3 ; 2 uses
  %i.mn = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.7, 0
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.7, i64 320
  br i1 %i.mn, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCINvMsV_NtB8_3mapINtB3z_14ExtractIfInnermB1N_NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullE4nextNCINvMsi_B3z_INtB3z_8BTreeMapmB1N_E6retainNCINvMs6_B1P_NtB1P_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtBc_5alloc6GlobalE0B7j_ECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i, label %.new98

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCINvMsV_NtB8_3mapINtB3z_14ExtractIfInnermB1N_NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullE4nextNCINvMsi_B3z_INtB3z_8BTreeMapmB1N_E6retainNCINvMs6_B1P_NtB1P_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtBc_5alloc6GlobalE0B7j_ECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i: ; preds = %.prol.loopexit97, %.new98, %bb.ah
  %.sroa.718.0.i.i.i.i.i.i.i = phi i64 [ %i.ma, %bb.ah ], [ 0, %.new98 ], [ 0, %.prol.loopexit97 ]
  %.sroa.016.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.014.0.i.i.i.i.i.i.i, %bb.ah ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit97 ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.7, %.new98 ]
  store i32 %i.ly, ptr %i.d, align 16, !noalias !1227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.434.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.432.i.i.i.i.i.i.i, i64 28, i1 false), !noalias !1227
  store ptr %.sroa.016.0.i.i.i.i.i.i.i, ptr %i.dh, align 16, !noalias !1227
  store i64 0, ptr %.sroa.517.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1227
  store i64 %.sroa.718.0.i.i.i.i.i.i.i, ptr %.sroa.718.0..sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.432.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1218
  br label %_RNvXsU_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_9ExtractIfmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullNCINvMsi_B5_INtB5_8BTreeMapmB19_E6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0ENtNtNtNtB28_4iter6traits8iterator8Iterator4nextCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i

_RNvXsU_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_9ExtractIfmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullNCINvMsi_B5_INtB5_8BTreeMapmB19_E6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0ENtNtNtNtB28_4iter6traits8iterator8Iterator4nextCs8l9P2lL5xvY_16lance_index_core.exit.thread.i.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i, %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10extract_ifNCINvB2_6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullECs8l9P2lL5xvY_16lance_index_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1228
  br label %.loopexit.i

_RNvXsU_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_9ExtractIfmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullNCINvMsi_B5_INtB5_8BTreeMapmB19_E6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0ENtNtNtNtB28_4iter6traits8iterator8Iterator4nextCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCINvMsV_NtB8_3mapINtB3z_14ExtractIfInnermB1N_NtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullE4nextNCINvMsi_B3z_INtB3z_8BTreeMapmB1N_E6retainNCINvMs6_B1P_NtB1P_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0NtNtBc_5alloc6GlobalE0B7j_ECs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i, %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(24) %i.dh, i64 24, i1 false), !noalias !1203
  %.sroa.5.0.copyload4.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !1229
  %i.mp = load <2 x i64>, ptr %i.d, align 16, !noalias !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i1.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.0..sroa_idx5.i.i.i, i64 16, i1 false), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1228
  %.not.i.i.i = icmp eq i64 %.sroa.5.0.copyload4.i.i.i, -2
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.aj

bb.aj:                                            ; preds = %_RNvXsU_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_9ExtractIfmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullNCINvMsi_B5_INtB5_8BTreeMapmB19_E6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0ENtNtNtNtB28_4iter6traits8iterator8Iterator4nextCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.57.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i1.i.i, i64 16, i1 false), !noalias !1230
  store <2 x i64> %i.mp, ptr %i.e, align 16, !noalias !1230
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionECs8l9P2lL5xvY_16lance_index_core(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i2.i.i), !noalias !1231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1230
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i1.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i1.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1233, !noalias !1234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1235
  %.promoted.i.i.i.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.i, align 8, !alias.scope !1236, !noalias !1203 ; 2 uses
  %.sroa.6.sroa.0.0.copyload46.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1236, !noalias !1203
  %.sroa.6.sroa.5.0.copyload47.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !1236, !noalias !1203
  store ptr null, ptr %.sroa.52.0..sroa_idx.i.i.i, align 8, !alias.scope !1236, !noalias !1203
  %.not48.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i, null
  br i1 %.not48.i.i.i.i.i, label %_RNvXsU_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_9ExtractIfmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullNCINvMsi_B5_INtB5_8BTreeMapmB19_E6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0ENtNtNtNtB28_4iter6traits8iterator8Iterator4nextCs8l9P2lL5xvY_16lance_index_core.exit.thread.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

bb.ak:                                            ; preds = %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1k_14LeafOrInternalE14last_leaf_edgeCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i.i.i.i.i, %bb.ae
  %i.mq = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load ptr, ptr %i.n, align 8, !noalias !1156
  %i.mr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val3.i = load i64, ptr %i.mr, align 8, !noalias !1156, !noundef !3
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECs8l9P2lL5xvY_16lance_index_core(ptr %.val2.i, i64 %.val3.i) #28, !noalias !1219
  br label %common.resume.i

.loopexit.i:                                      ; preds = %_RNvXsU_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_9ExtractIfmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullNCINvMsi_B5_INtB5_8BTreeMapmB19_E6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0ENtNtNtNtB28_4iter6traits8iterator8Iterator4nextCs8l9P2lL5xvY_16lance_index_core.exit.i.i.i, %_RNvXsU_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_9ExtractIfmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtNtNtCscI6d9CVNmLh_4core3ops5range9RangeFullNCINvMsi_B5_INtB5_8BTreeMapmB19_E6retainNCINvMs6_B1b_NtB1b_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterE0E0ENtNtNtNtB28_4iter6traits8iterator8Iterator4nextCs8l9P2lL5xvY_16lance_index_core.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i1.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1156
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !1156 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i = load i64, ptr %i.ms, align 8, !noalias !1156, !noundef !3 ; 4 uses
  %i.mt = icmp eq i64 %.val1.i, 0
  br i1 %i.mt, label %_RINvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB6_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs8l9P2lL5xvY_16lance_index_core.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.mu = shl i64 %.val1.i, 2
  %i.mv = icmp slt i64 %.val1.i, 4611686018427387900
  call void @llvm.assume(i1 %i.mv)
  %i.mw = and i64 %i.mu, -16                      ; 2 uses
  %i.mx = add i64 %i.mw, 16                       ; 2 uses
  %i.my = add nsw i64 %.val1.i, 17
  %i.mz = add i64 %i.my, %i.mx                    ; 4 uses
  %i.na = icmp uge i64 %i.mz, %i.mx
  %i.nb = icmp ult i64 %i.mz, 9223372036854775793
  call void @llvm.assume(i1 %i.na)
  call void @llvm.assume(i1 %i.nb)
  %i.nc = icmp eq i64 %i.mz, 0
  br i1 %i.nc, label %_RINvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB6_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs8l9P2lL5xvY_16lance_index_core.exit, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.nd = sub nuw nsw i64 -16, %i.mw
  %i.ne = getelementptr inbounds i8, ptr %.val.i, i64 %i.nd
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ne, i64 noundef %i.mz, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !1219
  br label %_RINvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB6_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs8l9P2lL5xvY_16lance_index_core.exit

_RINvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB6_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs8l9P2lL5xvY_16lance_index_core.exit: ; preds = %.loopexit.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.am

bb.am:                                            ; preds = %_RINvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB6_14RowAddrTreeMap16retain_fragmentsNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs8l9P2lL5xvY_16lance_index_core.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @_RNvMs_NtCs8l9P2lL5xvY_16lance_index_core7metricsNtB4_21LocalMetricsCollector16index_cache_hits(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @_RNvMs_NtCs8l9P2lL5xvY_16lance_index_core7metricsNtB4_21LocalMetricsCollector18index_cache_misses(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs8l9P2lL5xvY_16lance_index_core7metricsNtB4_21LocalMetricsCollector9dump_into(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(280) %2) unnamed_addr #0 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.c(ptr noundef nonnull %1, i64 noundef %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.g(ptr noundef nonnull %1, i64 noundef %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.k(ptr noundef nonnull %1, i64 noundef %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.o(ptr noundef nonnull %1, i64 noundef %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load atomic i64, ptr %i.p monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.s(ptr noundef nonnull %1, i64 noundef %i.q)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array7builder15boolean_builderNtB4_14BooleanBuilder12append_array(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !10, !noundef !3
  %.not1 = icmp eq i64 %i.g, 0
  br i1 %.not1, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1241, !noundef !3 ; 2 uses
  %i.j = add i64 %i.i, %i.e                       ; 3 uses
  %i.k = lshr i64 %i.j, 3                         ; 2 uses
  %i.l = and i64 %i.j, 7                          ; 2 uses
  %.not.i = icmp ne i64 %i.l, 0                   ; 2 uses
  %i.m = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.k, %i.m       ; 8 uses
  %i.n = and i64 %i.i, 7                          ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !1241 ; 5 uses
  br i1 %i.o, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.g, %bb.d
  %i.p = icmp ugt i64 %.sroa.0.0.i, %.pre.i
  br i1 %i.p, label %bb.h, label %bb.m

bb.e:                                             ; preds = %bb.d
  %.not8.i = icmp eq i64 %.pre.i, 0
  br i1 %.not8.i, label %bb.f, label %bb.g, !prof !4

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #26, !noalias !1241
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1241, !nonnull !3, !noundef !3
  %i.s = trunc nuw nsw i64 %i.n to i8
  %notmask.i = shl nsw i8 -1, %i.s
  %i.t = getelementptr i8, ptr %i.r, i64 %.pre.i
  %i.u = getelementptr i8, ptr %i.t, i64 -1       ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !1241, !noundef !3
  %i.w = or i8 %i.v, %notmask.i
  store i8 %i.w, ptr %i.u, align 1, !noalias !1241
  br label %._crit_edge.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = sub nuw nsw i64 %.sroa.0.0.i, %.pre.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1243, !noundef !3 ; 2 uses
  %i.aa = icmp ugt i64 %.sroa.0.0.i, %i.z
  br i1 %i.aa, label %bb.i, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.ab = and i64 %.sroa.0.0.i, 63
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 4611686018427387840
  %i.ad = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ad, %.sroa.0.0.i
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.i ], [ %i.ad, %bb.j ]
  %i.af = shl nuw nsw i64 %i.z, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.af, i64 %.sroa.4.0.i.i)
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f, i64 noundef %.sroa.0.0.i.i)
  %.pre11.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !1241
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #26, !noalias !1243
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %bb.k, %bb.h
  %i.ag = phi i64 [ %.pre.i, %bb.h ], [ %.pre11.i, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1241, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 -1, i64 %i.x, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.phi.trans.insert.i, align 8, !alias.scope !1241
  br i1 %.not.i, label %bb.n, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1241, !nonnull !3, !noundef !3
  %i.am = trunc nuw nsw i64 %i.l to i8
  %notmask9.i = shl nsw i8 -1, %i.am
  %i.an = xor i8 %notmask9.i, -1
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.k   ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !3
  %i.aq = and i8 %i.ap, %i.an
  store i8 %i.aq, ptr %i.ao, align 1
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.m, %bb.n
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !1241
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !3
  %i.at = add i64 %i.as, %i.e
  store i64 %i.at, ptr %i.ar, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.o, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXCs8l9P2lL5xvY_16lance_index_coreNtB2_9IndexTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !12, !noundef !3
end_hunk_3
