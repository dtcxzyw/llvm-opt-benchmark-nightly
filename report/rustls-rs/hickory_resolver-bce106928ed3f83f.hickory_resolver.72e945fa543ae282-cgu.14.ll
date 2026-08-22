Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.14?download=true
inline.NumInlined: 331
inline.NumDeleted: 164
begin_hunk_0_@_RINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver:bb.a
  %i.g = trunc nuw i16 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !noundef !18 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.l = load i16, ptr %i.k, align 2, !noundef !18
  %i.m = zext i16 %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.i, %bb.b ], [ %i.m, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %.sroa.4.8.insert.ext = shl i64 %.sroa.01.0, 8
  %.sroa.4.8.insert.shift = and i64 %.sroa.4.8.insert.ext, 65280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137
  store ptr %0, ptr %i.a, align 8, !noalias !137
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.4.8.insert.shift, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !137
  %i.n = call { ptr, i64 } @_RNvXs2_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_9LabelIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !139 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %.not8.i.i = icmp eq ptr %i.o, null
  br i1 %.not8.i.i, label %_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name9LabelIterINtNtNtBc_5slice4iter4IterhEE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB2c_uNCINvNvB3b_8for_each4callRhNCINvXsa_B1e_NtB1e_4NameNtNtBc_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0ECs9RFwvXNxPyg_16hickory_resolver.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.p, align 8, !alias.scope !134, !noalias !142
  %.promoted20.i = load i64, ptr %i.q, align 8, !alias.scope !134, !noalias !142
  %.promoted23.i = load i64, ptr %i.r, align 8, !alias.scope !134, !noalias !142
  %.promoted.i = load i64, ptr %i.s, align 8, !alias.scope !134, !noalias !142
  %.promoted32.i = load i64, ptr %1, align 8, !alias.scope !134, !noalias !142
  %.promoted39.i = load i64, ptr %i.t, align 8, !alias.scope !134, !noalias !142
  %.promoted46.i = load i64, ptr %i.u, align 8, !alias.scope !134, !noalias !142
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i, %.lr.ph.i.i
  %.promoted1852.i = phi i64 [ %.promoted46.i, %.lr.ph.i.i ], [ %.promoted1851.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i ] ; 3 uses
  %.promoted1745.i = phi i64 [ %.promoted39.i, %.lr.ph.i.i ], [ %.promoted1744.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i ] ; 3 uses
  %.promoted1638.i = phi i64 [ %.promoted32.i, %.lr.ph.i.i ], [ %.promoted1637.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i ] ; 3 uses
  %.promoted1531.i = phi i64 [ %.promoted.i, %.lr.ph.i.i ], [ %.promoted1530.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i ] ; 3 uses
  %.promoted25.i = phi i64 [ %.promoted23.i, %.lr.ph.i.i ], [ %.promoted24.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i ] ; 2 uses
  %storemerge.i.i.lcssa22.i = phi i64 [ %.promoted20.i, %.lr.ph.i.i ], [ %storemerge.i.i.lcssa21.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i ] ; 2 uses
  %i.v = phi i64 [ %.promoted19.i, %.lr.ph.i.i ], [ %i.bs, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i ] ; 2 uses
  %i.w = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.bu, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i ]
  %i.x = phi { ptr, i64 } [ %i.n, %.lr.ph.i.i ], [ %i.bt, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i ]
  %i.y = extractvalue { ptr, i64 } %i.x, 1        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.z = icmp samesign eq i64 %i.y, 0
  br i1 %i.z, label %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i
  %.promoted1850.i = phi i64 [ %.promoted1847.i, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %.promoted1852.i, %bb.e ] ; 2 uses
  %.promoted1743.i = phi i64 [ %.promoted1740.i, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %.promoted1745.i, %bb.e ] ; 2 uses
  %.promoted1636.i = phi i64 [ %.promoted1633.i, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %.promoted1638.i, %bb.e ] ; 2 uses
  %.promoted1529.i = phi i64 [ %.promoted1526.i, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %.promoted1531.i, %bb.e ] ; 2 uses
  %i.aa = phi i64 [ %i.bl, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %.promoted1852.i, %bb.e ] ; 3 uses
  %i.ab = phi i64 [ %i.bm, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %.promoted1745.i, %bb.e ] ; 5 uses
  %i.ac = phi i64 [ %i.bn, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %.promoted1638.i, %bb.e ] ; 3 uses
  %i.ad = phi i64 [ %i.bo, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %.promoted1531.i, %bb.e ] ; 3 uses
  %.sroa.0.2.i14.i.i13.i = phi i64 [ %.sroa.0.2.i14.i.i14.i, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %.promoted25.i, %bb.e ]
  %storemerge.i7.i.i = phi i64 [ %storemerge.i.i.i, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %storemerge.i.i.lcssa22.i, %bb.e ] ; 6 uses
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.bp, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.0.i.i.i.i.i
  %.val8.i.i.i.i.i = load i8, ptr %i.ae, align 1, !alias.scope !143, !noalias !146, !noundef !18 ; 2 uses
  %i.af = add i8 %.val8.i.i.i.i.i, -65
  %i.ag = icmp ult i8 %i.af, 26
  %i.ah = select i1 %i.ag, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i = or i8 %i.ah, %.val8.i.i.i.i.i ; 2 uses
  %i.ai = icmp eq i64 %storemerge.i7.i.i, 0
  br i1 %i.ai, label %..thread.i_crit_edge.i, label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i.i.i

..thread.i_crit_edge.i:                           ; preds = %.preheader.i
  %.pre.i = zext i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i64
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i

_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i.i.i: ; preds = %.preheader.i
  %.not4.i.i = icmp eq i64 %storemerge.i7.i.i, 8
  %i.aj = zext i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0.2.i.i.i.i = select i1 %.not4.i.i, i64 0, i64 %i.aj
  %i.ak = shl i64 %storemerge.i7.i.i, 3
  %i.al = and i64 %i.ak, 56
  %i.am = shl nuw i64 %.sroa.0.2.i.i.i.i, %i.al
  %i.an = or i64 %i.am, %.sroa.0.2.i14.i.i13.i    ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !149, !noalias !152
  %notsub.i.i = add i64 %storemerge.i7.i.i, -9
  %i.ao = icmp ult i64 %notsub.i.i, -2
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i.i.i
  %i.ap = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.aq = add i64 %i.ac, %i.ab                    ; 3 uses
  %i.ar = add i64 %i.ap, %i.aa                    ; 2 uses
  %i.as = call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 13)
  %i.at = xor i64 %i.aq, %i.as                    ; 3 uses
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.av = xor i64 %i.ar, %i.au                    ; 3 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.ar, %i.at                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.ax, %i.az                    ; 3 uses
  store i64 %i.ba, ptr %i.t, align 8, !alias.scope !154, !noalias !152
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  store i64 %i.bc, ptr %i.s, align 8, !alias.scope !154, !noalias !152
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32) ; 3 uses
  store i64 %i.bd, ptr %i.u, align 8, !alias.scope !154, !noalias !152
  %i.be = xor i64 %i.ay, %i.an                    ; 3 uses
  store i64 %i.be, ptr %1, align 8, !alias.scope !149, !noalias !152
  %.not5.i.i = icmp ne i64 %storemerge.i7.i.i, 7  ; 2 uses
  %spec.select.i = zext i1 %.not5.i.i to i64
  %spec.select60.i = select i1 %.not5.i.i, i64 %i.aj, i64 0
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i

bb.g:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i.i.i
  %i.bf = add i64 %storemerge.i7.i.i, 1
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i

_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i: ; preds = %bb.f, %..thread.i_crit_edge.i
  %.promoted1848.i = phi i64 [ %i.bd, %bb.f ], [ %.promoted1850.i, %..thread.i_crit_edge.i ]
  %.promoted1741.i = phi i64 [ %i.ba, %bb.f ], [ %.promoted1743.i, %..thread.i_crit_edge.i ]
  %.promoted1634.i = phi i64 [ %i.be, %bb.f ], [ %.promoted1636.i, %..thread.i_crit_edge.i ]
  %.promoted1527.i = phi i64 [ %i.bc, %bb.f ], [ %.promoted1529.i, %..thread.i_crit_edge.i ]
  %i.bg = phi i64 [ %i.bd, %bb.f ], [ %i.aa, %..thread.i_crit_edge.i ]
  %i.bh = phi i64 [ %i.ba, %bb.f ], [ %i.ab, %..thread.i_crit_edge.i ]
  %i.bi = phi i64 [ %i.be, %bb.f ], [ %i.ac, %..thread.i_crit_edge.i ]
  %i.bj = phi i64 [ %i.bc, %bb.f ], [ %i.ad, %..thread.i_crit_edge.i ]
  %i.bk = phi i64 [ %spec.select.i, %bb.f ], [ 1, %..thread.i_crit_edge.i ]
  %.sroa.0.2.i14.i.i.i = phi i64 [ %spec.select60.i, %bb.f ], [ %.pre.i, %..thread.i_crit_edge.i ] ; 2 uses
  store i64 %.sroa.0.2.i14.i.i.i, ptr %i.r, align 8, !alias.scope !149, !noalias !152
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i

_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i, %bb.g
  %.promoted1847.i = phi i64 [ %.promoted1850.i, %bb.g ], [ %.promoted1848.i, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i ] ; 2 uses
  %.promoted1740.i = phi i64 [ %.promoted1743.i, %bb.g ], [ %.promoted1741.i, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i ] ; 2 uses
  %.promoted1633.i = phi i64 [ %.promoted1636.i, %bb.g ], [ %.promoted1634.i, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i ] ; 2 uses
  %.promoted1526.i = phi i64 [ %.promoted1529.i, %bb.g ], [ %.promoted1527.i, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i ] ; 2 uses
  %i.bl = phi i64 [ %i.aa, %bb.g ], [ %i.bg, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i ]
  %i.bm = phi i64 [ %i.ab, %bb.g ], [ %i.bh, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i ]
  %i.bn = phi i64 [ %i.ac, %bb.g ], [ %i.bi, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i ]
  %i.bo = phi i64 [ %i.ad, %bb.g ], [ %i.bj, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i ]
  %.sroa.0.2.i14.i.i14.i = phi i64 [ %i.an, %bb.g ], [ %.sroa.0.2.i14.i.i.i, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i ] ; 2 uses
  %storemerge.i.i.i = phi i64 [ %i.bf, %bb.g ], [ %i.bk, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i.i.i ] ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i, 1 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.y
  br i1 %i.bq, label %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.loopexit.i.i, label %.preheader.i

_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.loopexit.i.i: ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver.exit.i.i
  %i.br = add i64 %i.y, %i.v                      ; 2 uses
  store i64 %i.br, ptr %i.p, align 8, !alias.scope !149, !noalias !152
  store i64 %storemerge.i.i.i, ptr %i.q, align 8, !alias.scope !149, !noalias !152
  br label %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i

_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i: ; preds = %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.loopexit.i.i, %bb.e
  %.promoted1851.i = phi i64 [ %.promoted1847.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.loopexit.i.i ], [ %.promoted1852.i, %bb.e ]
  %.promoted1744.i = phi i64 [ %.promoted1740.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.loopexit.i.i ], [ %.promoted1745.i, %bb.e ]
  %.promoted1637.i = phi i64 [ %.promoted1633.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.loopexit.i.i ], [ %.promoted1638.i, %bb.e ]
  %.promoted1530.i = phi i64 [ %.promoted1526.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.loopexit.i.i ], [ %.promoted1531.i, %bb.e ]
  %.promoted24.i = phi i64 [ %.sroa.0.2.i14.i.i14.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.loopexit.i.i ], [ %.promoted25.i, %bb.e ]
  %storemerge.i.i.lcssa21.i = phi i64 [ %storemerge.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.loopexit.i.i ], [ %storemerge.i.i.lcssa22.i, %bb.e ]
  %i.bs = phi i64 [ %i.br, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.loopexit.i.i ], [ %i.v, %bb.e ]
  %i.bt = call { ptr, i64 } @_RNvXs2_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_9LabelIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !139 ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name9LabelIterINtNtNtBc_5slice4iter4IterhEE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB2c_uNCINvNvB3b_8for_each4callRhNCINvXsa_B1e_NtB1e_4NameNtNtBc_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0ECs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.e

_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name9LabelIterINtNtNtBc_5slice4iter4IterhEE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB2c_uNCINvNvB3b_8for_each4callRhNCINvXsa_B1e_NtB1e_4NameNtNtBc_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0ECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Cs9RFwvXNxPyg_16hickory_resolver.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyEEB2h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.b = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.c = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.d = xor <2 x i64> %i.c, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.d, ptr %i.a, align 16, !alias.scope !157
  %i.e = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.f = xor <2 x i64> %i.e, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.f, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !157
  store <2 x i64> %i.b, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !157
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !157
  call void @_RINvXs13_NtCs4wP2HXfJTCR_5alloc4syncINtB7_3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherEBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 16, !alias.scope !160
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !160
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !160 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !160
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !160, !noundef !18
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !160, !noundef !18
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.bq
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.b = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.c = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.d = xor <2 x i64> %i.c, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.d, ptr %i.a, align 16, !alias.scope !165
  %i.e = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.f = xor <2 x i64> %i.e, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.f, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !165
  store <2 x i64> %i.b, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !165
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !165
  call void @_RINvXs13_NtCs4wP2HXfJTCR_5alloc4syncINtB7_3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 16, !alias.scope !168
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !168
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !168 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !168
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !168, !noundef !18
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !168, !noundef !18
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtCs4wP2HXfJTCR_5alloc6string6StringECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !173
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !173
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !173
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !173
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !176, !nonnull !18, !noundef !18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !noalias !176, !noundef !18
  call fastcc void @_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179
  store i8 -1, ptr %i.a, align 1, !noalias !179
  call fastcc void @_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #21, !noalias !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !189
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !189
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !189 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !189
  %i.j = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !189, !noundef !18
  %i.k = shl i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !189, !noundef !18
  %i.n = or i64 %i.k, %i.m                        ; 2 uses
  %i.o = xor i64 %i.n, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.p = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.q = add i64 %i.o, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.s = xor i64 %i.r, %i.p                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 16)
  %i.u = xor i64 %i.t, %i.q                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 32)
  %i.w = add i64 %i.q, %i.s                       ; 3 uses
  %i.x = add i64 %i.u, %i.v                       ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 17)
  %i.z = xor i64 %i.w, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 21)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = xor i64 %i.x, %i.n
  %i.ae = xor i64 %i.ac, 255
  %i.af = add i64 %i.ad, %i.z                     ; 3 uses
  %i.ag = add i64 %i.ab, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 13)
  %i.ai = xor i64 %i.af, %i.ah                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 16)
  %i.ak = xor i64 %i.aj, %i.ag                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32)
  %i.am = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ak, %i.al                    ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 17)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 21)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 13)
  %i.aw = xor i64 %i.av, %i.at                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 16)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 13)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 16)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 2 uses
  %i.bn = add i64 %i.bk, %i.bi                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 17)
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 21)
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.br = xor i64 %i.bp, %i.bo
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = xor i64 %i.bs, %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtBU_3net7ip_addr6IpAddrECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(17) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.e = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.g = xor <2 x i64> %i.f, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.g, ptr %i.d, align 16, !alias.scope !194
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.i = xor <2 x i64> %i.h, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.i, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !194
  store <2 x i64> %i.e, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !194
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !194
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.j = load i8, ptr %1, align 1, !range !130, !alias.scope !197, !noalias !200, !noundef !18 ; 2 uses
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !204
  store i64 %i.l, ptr %i.c, align 8, !noalias !204
  call fastcc void @_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #21, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !204
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.m, align 1, !alias.scope !197, !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !209
  store i128 %.sroa.0.0.copyload.i.i, ptr %i.b, align 16, !noalias !209
  call fastcc void @_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 16) #21, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !209
  br label %_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRNtNtNtBa_3net7ip_addr6IpAddrNtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.m, align 1, !alias.scope !197, !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !212
  store i32 %.sroa.01.0.copyload.i.i, ptr %i.a, align 4, !noalias !212
  call fastcc void @_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4) #21, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !212
  br label %_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRNtNtNtBa_3net7ip_addr6IpAddrNtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver.exit

_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRNtNtNtBa_3net7ip_addr6IpAddrNtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.b, %bb.c
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i3 = load i64, ptr %i.d, align 16, !alias.scope !215
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !215
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !215 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !215
  %i.n = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !215, !noundef !18
  %i.o = shl i64 %i.n, 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !215, !noundef !18
  %i.r = or i64 %i.o, %i.q                        ; 2 uses
  %i.s = xor i64 %i.r, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.t = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i3 ; 3 uses
  %i.u = add i64 %i.s, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.w = xor i64 %i.v, %i.t                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 16)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = add i64 %i.u, %i.w                      ; 3 uses
  %i.ab = add i64 %i.y, %i.z                      ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 17)
  %i.ad = xor i64 %i.aa, %i.ac                    ; 3 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 21)
  %i.af = xor i64 %i.ae, %i.ab                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 32)
  %i.ah = xor i64 %i.ab, %i.r
  %i.ai = xor i64 %i.ag, 255
  %i.aj = add i64 %i.ah, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.af, %i.ai                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 13)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 16)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 17)
  %i.at = xor i64 %i.aq, %i.as                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 21)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 13)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 16)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay                    ; 3 uses
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 17)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 21)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 32)
  %i.bl = add i64 %i.bh, %i.bf
  %i.bm = add i64 %i.bj, %i.bk                    ; 2 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 13)
  %i.bo = xor i64 %i.bn, %i.bl                    ; 3 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 16)
  %i.bq = xor i64 %i.bp, %i.bm                    ; 2 uses
  %i.br = add i64 %i.bo, %i.bm                    ; 3 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 17)
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 21)
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 32)
  %i.bv = xor i64 %i.bt, %i.bs
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = xor i64 %i.bw, %i.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.bx
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.b = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.c = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.d = xor <2 x i64> %i.c, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.d, ptr %i.a, align 16, !alias.scope !220
  %i.e = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.f = xor <2 x i64> %i.e, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.f, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !220
  store <2 x i64> %i.b, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !220
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !220
  call fastcc void @_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #21
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 16, !alias.scope !223
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !223
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !223 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !223
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !223, !noundef !18
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !223, !noundef !18
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.d = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.f = xor <2 x i64> %i.e, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.f, ptr %i.c, align 16, !alias.scope !228
  %i.g = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.h = xor <2 x i64> %i.g, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.h, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !228
  store <2 x i64> %i.d, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !228
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !228
  %.val.i = load i16, ptr %1, align 2, !range !109, !noalias !231, !noundef !18 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val1.i = load i16, ptr %i.i, align 2, !noalias !231
  %i.j = zext nneg i16 %.val.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  store i64 %i.j, ptr %i.b, align 8, !noalias !234
  call fastcc void @_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %i.k = icmp eq i16 %.val.i, 37
  br i1 %i.k, label %bb.b, label %_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !241
  store i16 %.val1.i, ptr %i.a, align 2, !noalias !241
  call fastcc void @_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !241
  br label %_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver.exit

_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.a, %bb.b
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 16, !alias.scope !244
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !244
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !244 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !244
  %i.l = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !244, !noundef !18
  %i.m = shl i64 %i.l, 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !244, !noundef !18
  %i.p = or i64 %i.m, %i.o                        ; 2 uses
  %i.q = xor i64 %i.p, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.r = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.s = add i64 %i.q, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.u = xor i64 %i.t, %i.r                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.w = xor i64 %i.v, %i.s                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.y = add i64 %i.s, %i.u                       ; 3 uses
  %i.z = add i64 %i.w, %i.x                       ; 2 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 17)
  %i.ab = xor i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 21)
  %i.ad = xor i64 %i.ac, %i.z                     ; 3 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 32)
  %i.af = xor i64 %i.z, %i.p
  %i.ag = xor i64 %i.ae, 255
  %i.ah = add i64 %i.af, %i.ab                    ; 3 uses
  %i.ai = add i64 %i.ad, %i.ag                    ; 2 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 13)
  %i.ak = xor i64 %i.ah, %i.aj                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 16)
  %i.am = xor i64 %i.al, %i.ai                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.ao = add i64 %i.ak, %i.ai                    ; 3 uses
  %i.ap = add i64 %i.am, %i.an                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 17)
  %i.ar = xor i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 21)
  %i.at = xor i64 %i.as, %i.ap                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  %i.av = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.aw = add i64 %i.at, %i.au                    ; 2 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ay = xor i64 %i.ax, %i.av                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 16)
  %i.ba = xor i64 %i.az, %i.aw                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.bc = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bf = xor i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bh = xor i64 %i.bg, %i.bd                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 13)
  %i.bm = xor i64 %i.bl, %i.bj                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 16)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = add i64 %i.bm, %i.bk                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 17)
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 21)
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 32)
  %i.bt = xor i64 %i.br, %i.bq
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = xor i64 %i.bu, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %i.bv
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.b = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.c = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.d = xor <2 x i64> %i.c, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.d, ptr %i.a, align 16, !alias.scope !249
  %i.e = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.f = xor <2 x i64> %i.e, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.f, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !249
  store <2 x i64> %i.b, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !249
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !249
  call void @_RINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 16, !alias.scope !252
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !252
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !252 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !252
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !252, !noundef !18
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !252, !noundef !18
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneReECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !257
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !257
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !257
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !257
  call fastcc void @_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !260
  store i8 -1, ptr %i.a, align 1, !noalias !260
  call fastcc void @_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #21, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !260
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !273
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !273
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !273 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !273
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !273, !noundef !18
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !273, !noundef !18
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash10hash_sliceNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %2) unnamed_addr #1 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 88
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 88 ; 2 uses
  tail call fastcc void @_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.03, ptr noalias nofree noundef align 8 dereferenceable(72) %2) #21
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9RFwvXNxPyg_16hickory_resolver11system_conf4unix16read_system_conf(ptr dead_on_unwind noalias nofree noundef writable sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [200 x i8], align 8               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [176 x i8], align 8               ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [176 x i8], align 8               ; 6 uses
  %.sroa.10.i.i = alloca [160 x i8], align 8      ; 7 uses
end_hunk_0
