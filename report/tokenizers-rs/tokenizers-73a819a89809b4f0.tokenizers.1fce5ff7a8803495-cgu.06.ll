Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.06?download=true
inline.NumInlined: 1216
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs2_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularyNtB5_15AddedVocabulary3new:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1090, !nonnull !4, !align !8, !noundef !4
  %i.q = load atomic ptr, ptr @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !1090 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit, !prof !5

bb.c:                                             ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.s = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !1090
  br label %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit

_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit: ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.c
  %.sroa.0.0.i1.i = phi ptr [ %i.s, %bb.c ], [ %i.q, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !noalias !1090, !nonnull !4
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull %i.n), !noalias !1090, !inline_history !0
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t, i64 noundef %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = load atomic ptr, ptr @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE acquire, align 8, !noalias !1091 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.d, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i6, !prof !5

bb.d:                                             ; preds = %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit
  %i.aa = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1B_7get_src0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i6 unwind label %bb.f

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i6: ; preds = %bb.d, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit
  %.sroa.0.0.i.i7 = phi ptr [ %i.y, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.0.0.i.i7, align 8, !noalias !1091, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i7, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1091, !nonnull !4, !align !8, !noundef !4
  %i.ae = load atomic ptr, ptr @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !1091 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.e, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !5

bb.e:                                             ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i6
  %i.ag = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.f

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.e, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i6
  %.sroa.0.0.i1.i8 = phi ptr [ %i.ae, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i6 ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !4, !noalias !1091, !nonnull !4
  %i.aj = invoke noundef i64 %i.ai(ptr noundef nonnull %i.ab)
          to label %.noexc10 unwind label %bb.f, !inline_history !0

.noexc10:                                         ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i8, i64 32
  invoke void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i1.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak, i64 noundef %i.aj)
          to label %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit12 unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.m

bb.f:                                             ; preds = %.noexc10, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.e, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit

_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit12: ; preds = %.noexc10
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.an = load atomic ptr, ptr @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE acquire, align 8, !noalias !1092 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i14, !prof !5

bb.g:                                             ; preds = %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit12
  %i.ap = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1B_7get_src0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i14 unwind label %bb.i

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i14: ; preds = %bb.g, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit12
  %.sroa.0.0.i.i15 = phi ptr [ %i.an, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit12 ], [ %i.ap, %bb.g ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.0.0.i.i15, align 8, !noalias !1092, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i15, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !1092, !nonnull !4, !align !8, !noundef !4
  %i.at = load atomic ptr, ptr @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !1092 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i16, !prof !5

bb.h:                                             ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i14
  %i.av = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i16 unwind label %bb.i

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i16: ; preds = %bb.h, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i14
  %.sroa.0.0.i1.i17 = phi ptr [ %i.at, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i14 ], [ %i.av, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !4, !noalias !1092, !nonnull !4
  %i.ay = invoke noundef i64 %i.ax(ptr noundef nonnull %i.aq)
          to label %.noexc20 unwind label %bb.i, !inline_history !0

.noexc20:                                         ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i16
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i17, i64 32
  invoke void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i1.i17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.az, i64 noundef %i.ay)
          to label %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit22 unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %i.bp, %bb.l ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit unwind label %bb.m

bb.i:                                             ; preds = %.noexc20, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i16, %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit22: ; preds = %.noexc20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bc = load atomic ptr, ptr @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE acquire, align 8, !noalias !1093 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i24, !prof !5

bb.j:                                             ; preds = %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit22
  %i.be = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1B_7get_src0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i24 unwind label %bb.l

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i24: ; preds = %bb.j, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit22
  %.sroa.0.0.i.i25 = phi ptr [ %i.bc, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit22 ], [ %i.be, %bb.j ] ; 2 uses
  %i.bf = load ptr, ptr %.sroa.0.0.i.i25, align 8, !noalias !1093, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i25, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !1093, !nonnull !4, !align !8, !noundef !4
  %i.bi = load atomic ptr, ptr @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !1093 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.k, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i26, !prof !5

bb.k:                                             ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i24
  %i.bk = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i26 unwind label %bb.l

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i26: ; preds = %bb.k, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i24
  %.sroa.0.0.i1.i27 = phi ptr [ %i.bi, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i24 ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !invariant.load !4, !noalias !1093, !nonnull !4
  %i.bn = invoke noundef i64 %i.bm(ptr noundef nonnull %i.bf)
          to label %.noexc30 unwind label %bb.l, !inline_history !0

.noexc30:                                         ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i26
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i27, i64 32
  invoke void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i1.i27, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo, i64 noundef %i.bn)
          to label %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit32 unwind label %bb.l

bb.l:                                             ; preds = %.noexc30, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i26, %bb.k, %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.m

_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit32: ; preds = %.noexc30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  store i64 -1, ptr %0, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -1, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 0, ptr %i.bw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.m:                                             ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE8get_slowCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1400 x i8], align 8              ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.g, 1
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheNtNtBO_6marker4SendNtNtNtBO_5panic11unwind_safe13RefUnwindSafeNtB2J_10UnwindSafeNtB2q_4SyncEL_EIBI_uE4callCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !range !22, !alias.scope !1102, !noundef !4
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = inttoptr i64 %2 to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.r, align 8
  store i64 1, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.t, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit22

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit22: ; preds = %bb.v, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheE3newCs2JiOgHzbbc7_10tokenizers.exit9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEECs2JiOgHzbbc7_10tokenizers.exit
  ret void

common.resume:                                    ; preds = %5, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.t ], [ %i.p, %bb.f ], [ %6, %5 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #28
  unreachable

4:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit32
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #28
          to label %.noexc15 unwind label %5

.noexc15:                                         ; preds = %4
  unreachable

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.a) #29
          to label %common.resume unwind label %7

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheE3newCs2JiOgHzbbc7_10tokenizers.exit9: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bx, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %9, align 8
  store i64 0, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %11, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit22

bb.h:                                             ; preds = %bb.c
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %14 = urem i64 %2, %i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %14
  call void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEE8try_lockCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.w)
  %i.x = load i64, ptr %i.c, align 8, !range !13, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %12, align 8, !nonnull !4, !align !8, !noundef !4 ; 9 uses
  %i.aa = load i8, ptr %13, align 8, !range !12, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.af = trunc nuw i8 %i.aa to i1
  br i1 %i.af, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !11

.noexc19:                                         ; preds = %bb.k
  %i.aj = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.aj, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.ae monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.ak = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit, !prof !5

bb.m:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = add nsw i64 %i.ac, -1                   ; 3 uses
  store i64 %i.an, ptr %i.ab, align 8
  %i.ao = load i64, ptr %i.am, align 8, !range !9, !noundef !4
  %i.ap = icmp samesign ult i64 %i.an, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  %i.as = icmp ult i64 %i.ac, 1152921504606846977
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.an
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !align !8, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.av, align 8
  store i64 0, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.az = trunc nuw i8 %i.aa to i1
  br i1 %i.az, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.bd, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.ay monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.be = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit22, !prof !5

bb.r:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit22

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.m, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheNtNtBO_6marker4SendNtNtNtBO_5panic11unwind_safe13RefUnwindSafeNtB2J_10UnwindSafeNtB2q_4SyncEL_EIBI_uE4callCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1103
  %i.bh = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 1400, i64 noundef range(i64 1, 9) 8) #27, !noalias !1103 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.s, label %bb.v, !prof !7

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #28
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.b) #29
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bh, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bl, align 8
  store i64 0, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bn, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %.val.i25 = load ptr, ptr %12, align 8, !alias.scope !1104 ; 4 uses
  %.val3.i26 = load i8, ptr %13, align 8, !range !16, !alias.scope !1104, !noundef !4 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bp = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bp, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1104
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.bt = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path(), !noalias !1104
  br i1 %i.bt, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bo monotonic, align 1, !noalias !1104
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bu = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !1104
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i29, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit32, !prof !5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i29: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !1104
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit32

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit32: ; preds = %bb.w, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheNtNtBO_6marker4SendNtNtNtBO_5panic11unwind_safe13RefUnwindSafeNtB2J_10UnwindSafeNtB2q_4SyncEL_EIBI_uE4callCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bw)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1105
  %i.bx = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 1400, i64 noundef range(i64 1, 9) 8) #27, !noalias !1105 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %4, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheE3newCs2JiOgHzbbc7_10tokenizers.exit9, !prof !7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE9put_valueCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 43 uses
  %i.b = invoke noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE9put_value0jECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @105)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp ult i64 %i.d, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #28
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.g, %bb.c
  unreachable

common.resume:                                    ; preds = %bb.ch, %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.w, %.body ], [ %lpad.phi, %bb.ch ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.9
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #27
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #27
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.p, %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEECs2JiOgHzbbc7_10tokenizers.exit
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = urem i64 %i.b, %i.d                      ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEE8try_lockCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.m)
          to label %bb.h unwind label %.loopexit

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.8, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.7, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.6, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.3, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26
  %.lcssa = phi i64 [ %i.fb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.8 ], [ %i.at, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26 ], [ %i.bh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.1 ], [ %i.bv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.2 ], [ %i.cj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.3 ], [ %i.cx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.4 ], [ %i.dl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.5 ], [ %i.dz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.6 ], [ %i.en, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.7 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28
          to label %bb.d unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.cb, %bb.bu, %bb.bn, %bb.bg, %bb.az, %bb.as, %bb.al, %bb.ae, %bb.x, %bb.h
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !4, !align !8, !noundef !4 ; 7 uses
  %i.q = load i8, ptr %i.k, align 8, !range !12, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1129, !noundef !4 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !9, !alias.scope !1129, !noundef !4
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.m unwind label %bb.k, !noalias !1130

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEECs2JiOgHzbbc7_10tokenizers(ptr nonnull align 8 %1) #29
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

.body:                                            ; preds = %bb.k
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers(ptr nonnull %i.p, i8 %i.q) #29
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1129, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t
  store ptr %1, ptr %i.aa, align 8, !noalias !1130
  %i.ab = add i64 %i.t, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !1129
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = trunc nuw i8 %i.q to i1
  br i1 %i.ad, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc14, !prof !11

.noexc14:                                         ; preds = %bb.n
  %i.ah = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.ah, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc14
  store atomic i8 1, ptr %i.ac monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %.noexc14, %bb.n, %bb.m
  %i.ai = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit, !prof !5

bb.p:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.q:                                             ; preds = %bb.ch, %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.r:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %.val.i16 = load ptr, ptr %i.j, align 8, !alias.scope !1131 ; 4 uses
  %.val3.i17 = load i8, ptr %i.k, align 8, !range !16, !alias.scope !1131, !noundef !4 ; 2 uses
  %.not.i.i18 = icmp eq i8 %.val3.i17, 2
  br i1 %.not.i.i18, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i16, i64 4
  %i.am = trunc nuw i8 %.val3.i17 to i1
  br i1 %i.am, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1131
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.u, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.u
  br i1 %i.aq, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.v

bb.v:                                             ; preds = %.noexc24
  store atomic i8 1, ptr %i.al monotonic, align 1, !noalias !1131
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19: ; preds = %bb.v, %.noexc24, %bb.t, %bb.s
  %i.ar = atomicrmw xchg ptr %.val.i16, i32 0 release, align 4, !noalias !1131
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26, !prof !5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19
  invoke void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26 unwind label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.au = icmp ult i64 %i.h, %i.at
  br i1 %i.au, label %bb.w, label %bb.g

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26
  %i.av = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEE8try_lockCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.aw)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.ax = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.y, label %bb.i

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %.val.i16.1 = load ptr, ptr %i.j, align 8, !alias.scope !1132 ; 4 uses
  %.val3.i17.1 = load i8, ptr %i.k, align 8, !range !16, !alias.scope !1132, !noundef !4 ; 2 uses
  %.not.i.i18.1 = icmp eq i8 %.val3.i17.1, 2
  br i1 %.not.i.i18.1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers.exit26.1, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.1) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i16.1, i64 4
end_hunk_0
