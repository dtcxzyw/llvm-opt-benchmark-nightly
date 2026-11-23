Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 288
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB7_11ObjectStore24from_uri_and_params_impl0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !163352
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ld)
          to label %bb.db unwind label %bb.da, !noalias !163353

bb.da:                                            ; preds = %bb.cz
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !163352
  invoke fastcc void @_RNvXsi_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParamsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(184) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.0.0.i.i)
          to label %bb.de unwind label %bb.dc, !noalias !163353

bb.dc:                                            ; preds = %bb.db
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !163352
  call void @llvm.experimental.noalias.scope.decl(metadata !163361)
  call void @llvm.experimental.noalias.scope.decl(metadata !163362)
  %.val.i.i.i141 = load i64, ptr %i.l, align 8, !range !414, !alias.scope !163363, !noalias !163352, !noundef !411 ; 2 uses
  %i.lh = icmp eq i64 %.val.i.i.i141, 0
  br i1 %i.lh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.li = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i.i142 = load ptr, ptr %i.li, align 8, !alias.scope !163363, !noalias !163352, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i142, i64 noundef %.val.i.i.i141, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !163364
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.de:                                            ; preds = %bb.db
  store i8 1, ptr %i.jm, align 1, !noalias !163352
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lj, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !163352
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.lk, ptr noundef nonnull align 8 dereferenceable(184) %i.k, i64 184, i1 false), !noalias !163352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !163352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !163352
  %i.ll = load ptr, ptr %i.jn, align 8, !noalias !163352, !nonnull !411, !align !412, !noundef !411 ; 7 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 64 ; 10 uses
  %i.ln = load atomic i32, ptr %i.lm monotonic, align 8, !noalias !163365 ; 3 uses
  %or.cond3.i.i.i = icmp ult i32 %i.ln, 1073741822
  br i1 %or.cond3.i.i.i, label %bb.df, label %bb.dg, !prof !438

bb.df:                                            ; preds = %bb.de
  %i.lo = add nuw nsw i32 %i.ln, 1
  %i.lp = cmpxchg weak ptr %i.lm, i32 %i.ln, i32 %i.lo acquire monotonic, align 4, !noalias !163365
  %i.lq = extractvalue { i32, i1 } %i.lp, 1
  br i1 %i.lq, label %bb.dh, label %bb.dg, !prof !434

bb.dg:                                            ; preds = %bb.df, %bb.de
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 8 %i.lm)
          to label %bb.dh unwind label %bb.dl, !noalias !163353

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 72
  %i.ls = load atomic i8, ptr %i.lr monotonic, align 8, !noalias !163366
  %.not401.i = icmp eq i8 %i.ls, 0
  %.sink.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ll, i64 80
  br i1 %.not401.i, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.lt = atomicrmw add ptr %i.lm, i32 -1 release, align 4, !noalias !163367
  %i.lu = add i32 %i.lt, -1                       ; 2 uses
  %i.lv = and i32 %i.lu, -1073741825
  %or.cond.not.i.i.i.i.i = icmp eq i32 %i.lv, -2147483648
  br i1 %or.cond.not.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, label %bb.dj, !prof !439

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i: ; preds = %bb.di
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.lm, i32 noundef %i.lu)
          to label %bb.dj unwind label %bb.dl, !noalias !163353

bb.dj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, %bb.di
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !163368
  %i.lw = call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !163368 ; 3 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %bb.dk, label %bb.fc

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 29) #72
          to label %.noexc115.i unwind label %bb.dl, !noalias !163353

.noexc115.i:                                      ; preds = %bb.dk
  unreachable

bb.dl:                                            ; preds = %bb.dk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, %bb.dg
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit138.i

bb.dm:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !163369)
  call void @llvm.experimental.noalias.scope.decl(metadata !163370)
  call void @llvm.experimental.noalias.scope.decl(metadata !163371)
  call void @llvm.experimental.noalias.scope.decl(metadata !163372)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ll, i64 104
  %i.ma = load i64, ptr %i.lz, align 8, !alias.scope !163373, !noalias !163353, !noundef !411
  %i.mb = icmp eq i64 %i.ma, 0
  br i1 %i.mb, label %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ll, i64 112
  %.val.i.i117.i = load i64, ptr %i.mc, align 8, !alias.scope !163373, !noalias !163353, !noundef !411
  %i.md = getelementptr inbounds nuw i8, ptr %i.ll, i64 120
  %.val5.i.i.i = load i64, ptr %i.md, align 8, !alias.scope !163373, !noalias !163353, !noundef !411
  %i.me = invoke fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i.i117.i, i64 %.val5.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.lj)
          to label %.noexc118.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !163353 ; 2 uses

.noexc118.i:                                      ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !163374)
  call void @llvm.experimental.noalias.scope.decl(metadata !163375)
  call void @llvm.experimental.noalias.scope.decl(metadata !163376)
  %i.mf = lshr i64 %i.me, 57
  %i.mg = trunc nuw nsw i64 %i.mf to i8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ll, i64 88
  %i.mi = load i64, ptr %i.mh, align 8, !alias.scope !163377, !noalias !163353, !noundef !411 ; 2 uses
  %i.mj = load ptr, ptr %.sink.i.i.i.i, align 8, !alias.scope !163377, !noalias !163353, !nonnull !411, !noundef !411 ; 2 uses
  %i.mk = insertelement <16 x i8> poison, i8 %i.mg, i64 0
  %i.ml = shufflevector <16 x i8> %i.mk, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 576
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.mm, align 8, !alias.scope !163378, !noalias !163352 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 568
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.mn, align 8, !alias.scope !163378, !noalias !163352, !nonnull !411
  br label %bb.do

bb.do:                                            ; preds = %bb.dp, %.noexc118.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.noexc118.i ], [ %i.ni, %bb.dp ]
  %.pn.i.i.i.i.i = phi i64 [ %i.me, %.noexc118.i ], [ %i.nj, %bb.dp ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.mi ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i = load <16 x i8>, ptr %i.mo, align 1, !noalias !163379 ; 2 uses
  %i.mp = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, %i.ml
  %i.mq = bitcast <16 x i1> %i.mp to i16          ; 2 uses
  %.not.i.not33.i.i.i.i = icmp eq i16 %i.mq, 0
  br i1 %.not.i.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.do, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i
  %.sroa.06.0.i34.i.i.i.i = phi i16 [ %i.nh, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i ], [ %i.mq, %bb.do ] ; 3 uses
  %i.mr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i.i, i1 true)
  %i.ms = zext nneg i16 %i.mr to i64
  %i.mt = add i64 %.sroa.01.0.i.i.i.i.i, %i.ms
  %i.mu = and i64 %i.mt, %i.mi
  %i.mv = sub nsw i64 0, %i.mu
  %i.mw = getelementptr inbounds [216 x i8], ptr %i.mj, i64 %i.mv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163380), !noalias !163381
  call void @llvm.experimental.noalias.scope.decl(metadata !163382), !noalias !163381
  call void @llvm.experimental.noalias.scope.decl(metadata !163383), !noalias !163381
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -200
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.mx, align 8, !alias.scope !163384, !noalias !163385, !noundef !411
  %i.my = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  br i1 %i.my, label %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i, !prof !419

_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.mz = getelementptr inbounds i8, ptr %i.mw, i64 -208
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.mz, align 8, !alias.scope !163384, !noalias !163385, !nonnull !411, !noundef !411
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i), !noalias !163386
  %i.na = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.na, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i, !prof !419

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i
  %i.nb = getelementptr inbounds i8, ptr %i.mw, i64 -192
  %i.nc = invoke noundef zeroext i1 @_RNvXs6_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.lk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.nb)
          to label %.noexc119.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !163353

.noexc119.i:                                      ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  br i1 %i.nc, label %bb.dr, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i, !prof !420

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i, %bb.do
  %i.nd = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, splat (i8 -1)
  %i.ne = bitcast <16 x i1> %i.nd to i16
  %i.nf = icmp eq i16 %i.ne, 0
  br i1 %i.nf, label %bb.dp, label %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !421

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i: ; preds = %.noexc119.i, %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ng = add i16 %.sroa.06.0.i34.i.i.i.i, -1
  %i.nh = and i16 %i.ng, %.sroa.06.0.i34.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.nh, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.dp:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ni = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.nj = add i64 %.sroa.01.0.i.i.i.i.i, %i.ni
  br label %bb.do

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.dn
  %lpad.loopexit.split-lp640 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nk = atomicrmw add ptr %i.lm, i32 -1 release, align 4, !noalias !163353
  %i.nl = add i32 %i.nk, -1                       ; 2 uses
  %i.nm = and i32 %i.nl, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.nm, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.dq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit138.i, !prof !439

bb.dq:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.lm, i32 noundef %i.nl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit138.i unwind label %bb.ec, !noalias !163353

bb.dr:                                            ; preds = %.noexc119.i
  %i.nn = getelementptr inbounds i8, ptr %i.mw, i64 -8
  call void @llvm.experimental.noalias.scope.decl(metadata !163387)
  %.val.i122.i = load ptr, ptr %i.nn, align 8, !alias.scope !163387, !noalias !163353, !nonnull !411, !noundef !411 ; 3 uses
  %i.no = icmp eq ptr %.val.i122.i, inttoptr (i64 -1 to ptr)
  br i1 %i.no, label %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.np = getelementptr inbounds nuw i8, ptr %.val.i122.i, i64 8
  %i.nq = atomicrmw add ptr %i.np, i64 1 monotonic, align 8, !noalias !163388
  %i.nr = icmp slt i64 %i.nq, 0
  br i1 %i.nr, label %bb.dt, label %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.trap()
  unreachable

_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %._crit_edge.i.i.i.i, %bb.ds, %bb.dr, %bb.dm
  %.sroa.02.0.i.i = phi ptr [ %.val.i122.i, %bb.ds ], [ inttoptr (i64 -1 to ptr), %bb.dr ], [ null, %bb.dm ], [ null, %._crit_edge.i.i.i.i ] ; 15 uses
  %i.ns = atomicrmw add ptr %i.lm, i32 -1 release, align 4, !noalias !163353
  %i.nt = add i32 %i.ns, -1                       ; 2 uses
  %i.nu = and i32 %i.nt, -1073741825
  %or.cond.not.i.i123.i = icmp eq i32 %i.nu, -2147483648
  br i1 %or.cond.not.i.i123.i, label %bb.du, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit125.i, !prof !439

bb.du:                                            ; preds = %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.lm, i32 noundef %i.nt)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit125.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit136.i, !noalias !163353

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit125.i: ; preds = %bb.du, %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.not24.i = icmp eq ptr %.sroa.02.0.i.i, null
  br i1 %.not24.i, label %bb.ez, label %bb.dv

bb.dv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit125.i
  %i.nv = icmp eq ptr %.sroa.02.0.i.i, inttoptr (i64 -1 to ptr) ; 3 uses
  br i1 %i.nv, label %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nw = load atomic i64, ptr %.sroa.02.0.i.i monotonic, align 8, !noalias !163353
  br label %bb.dx

bb.dx:                                            ; preds = %bb.ea, %bb.dw
  %.sroa.06.0.i.i.i = phi i64 [ %i.nw, %bb.dw ], [ %.sroa.01.0.i.i.i.i, %bb.ea ] ; 4 uses
  %i.nx = icmp eq i64 %.sroa.06.0.i.i.i, 0
  br i1 %i.nx, label %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ny = icmp sgt i64 %.sroa.06.0.i.i.i, -1
  br i1 %i.ny, label %bb.ea, label %bb.dz, !prof !434

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !163352
  store ptr @3489, ptr %i.e, align 8, !noalias !163352
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !163352
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3529) #72
          to label %.noexc127.i unwind label %bb.es, !noalias !163353

.noexc127.i:                                      ; preds = %bb.dz
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.nz = add nuw i64 %.sroa.06.0.i.i.i, 1
  %i.oa = cmpxchg weak ptr %.sroa.02.0.i.i, i64 %.sroa.06.0.i.i.i, i64 %i.nz acquire monotonic, align 8, !noalias !163353 ; 2 uses
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.oa, 1
  %.sroa.01.0.i.i.i.i = extractvalue { i64, i1 } %i.oa, 0
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.dx

_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.dx, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !163352
  %i.ob = load ptr, ptr %i.jn, align 8, !noalias !163352, !nonnull !411, !align !412, !noundef !411
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 64
  invoke fastcc void @_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB1K_4sync4WeakNtB2k_11ObjectStoreEEE5writeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.oc)
          to label %bb.ee unwind label %bb.ed, !noalias !163353

_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.ea
  %i.od = load ptr, ptr %i.jn, align 8, !noalias !163352, !nonnull !411, !align !412, !noundef !411
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 128
  %i.of = atomicrmw add ptr %i.oe, i64 1 monotonic, align 8, !noalias !163353 ; 0 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 8
  %i.oh = atomicrmw add ptr %i.og, i64 -1 release, align 8, !noalias !163353
  %i.oi = icmp eq i64 %i.oh, 1
  %i.oj = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.lm, i64 0 ; 2 uses
  br i1 %i.oi, label %bb.eb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.eb:                                            ; preds = %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.0.i.i, i64 noundef 144, i64 noundef 8) #68, !noalias !163353
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.ec:                                            ; preds = %bb.hy, %bb.hw, %bb.hk, %.body.thread.i, %bb.hf, %bb.fp, %bb.fm, %bb.er, %bb.dq
  %i.ok = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !163353
  unreachable

bb.ed:                                            ; preds = %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !163352
  br label %bb.ew

bb.ee:                                            ; preds = %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i
  %i.om = invoke fastcc { ptr, i1 } @_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBQ_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2u_4sync4WeakNtB34_11ObjectStoreEEEINtBM_11PoisonErrorBH_EE6expectCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %bb.eg unwind label %bb.ef     ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !163352
  br label %bb.ew

bb.eg:                                            ; preds = %bb.ee
  %i.oo = extractvalue { ptr, i1 } %i.om, 0       ; 4 uses
  %i.op = extractvalue { ptr, i1 } %i.om, 1
  %i.oq = zext i1 %i.op to i8                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !163352
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oo) ]
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 16 ; 2 uses
  %i.os = invoke fastcc noundef align 8 ptr @_RINvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB19_4sync4WeakNtB1J_11ObjectStoreEE3getB14_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.or, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.lj)
          to label %bb.eh unwind label %bb.eo, !noalias !163353 ; 2 uses

bb.eh:                                            ; preds = %bb.eg
  %.not28.i = icmp eq ptr %i.os, null
  br i1 %.not28.i, label %bb.eq, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !163352
  %.val92.i = load ptr, ptr %i.os, align 8, !noalias !163353, !nonnull !411, !noundef !411
  %i.ot = invoke fastcc noundef ptr @_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull %.val92.i)
          to label %bb.ek unwind label %bb.ej, !noalias !163353 ; 3 uses

bb.ej:                                            ; preds = %bb.em, %bb.ei
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !163352
  br label %bb.er

bb.ek:                                            ; preds = %bb.ei
  store ptr %i.ot, ptr %i.i, align 8, !noalias !163352
  %.not.i129.i = icmp eq ptr %i.ot, null
  br i1 %.not.i129.i, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ov = atomicrmw add ptr %i.ot, i64 -1 release, align 8, !noalias !163389
  %i.ow = icmp eq i64 %i.ov, 1
  br i1 %i.ow, label %bb.em, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsfR8GmIBoxTX_21lance_namespace_impls.exit132.i

bb.em:                                            ; preds = %bb.el
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsfR8GmIBoxTX_21lance_namespace_impls.exit132.i unwind label %bb.ej, !noalias !163353

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsfR8GmIBoxTX_21lance_namespace_impls.exit132.i: ; preds = %bb.em, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !163352
  br label %bb.eq

bb.en:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !163352
  %i.ox = invoke fastcc noundef ptr @_RINvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB19_4sync4WeakNtB1J_11ObjectStoreEE6removeB14_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.or, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.lj)
          to label %bb.ep unwind label %bb.eo, !noalias !163353

bb.eo:                                            ; preds = %bb.en, %bb.eg
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.ep:                                            ; preds = %bb.en
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %i.ox), !noalias !163353
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsfR8GmIBoxTX_21lance_namespace_impls.exit132.i, %bb.eh
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull %i.oo, i8 %i.oq)
          to label %bb.et unwind label %bb.es, !noalias !163353

bb.er:                                            ; preds = %bb.eo, %bb.ej
  %.pn31.pn.pn.i = phi { ptr, i32 } [ %i.ou, %bb.ej ], [ %i.oy, %bb.eo ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull %i.oo, i8 %i.oq) #73
          to label %bb.ew unwind label %bb.ec, !noalias !163353

bb.es:                                            ; preds = %bb.eq, %bb.dz
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.et:                                            ; preds = %bb.eq
  br i1 %i.nv, label %bb.ez, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 8
  %i.pb = atomicrmw add ptr %i.pa, i64 -1 release, align 8, !noalias !163353
  %i.pc = icmp eq i64 %i.pb, 1
  br i1 %i.pc, label %bb.ev, label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.0.i.i, i64 noundef 144, i64 noundef 8) #68, !noalias !163353
  br label %bb.ez

bb.ew:                                            ; preds = %bb.es, %bb.er, %bb.ef, %bb.ed
  %.pn53.pn.i = phi { ptr, i32 } [ %i.on, %bb.ef ], [ %i.ol, %bb.ed ], [ %i.oz, %bb.es ], [ %.pn31.pn.pn.i, %bb.er ] ; 3 uses
  br i1 %i.nv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit138.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 8
  %i.pe = atomicrmw add ptr %i.pd, i64 -1 release, align 8, !noalias !163353
  %i.pf = icmp eq i64 %i.pe, 1
  br i1 %i.pf, label %bb.ey, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit138.i

bb.ey:                                            ; preds = %bb.ex
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.0.i.i, i64 noundef 144, i64 noundef 8) #68, !noalias !163353
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit138.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsfR8GmIBoxTX_21lance_namespace_impls.exit136.i: ; preds = %bb.du
  %i.pg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %magicptr.i = ptrtoint ptr %.sroa.02.0.i.i to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
end_hunk_0
